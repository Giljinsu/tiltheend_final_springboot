package com.final_project.tiltheend_final_springboot.utils;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.final_project.tiltheend_final_springboot.service.CoordinationService;
import com.final_project.tiltheend_final_springboot.service.FilesService;

public class CommonUtils {

    public String makeUuid() {
        UUID uuid = UUID.randomUUID();
        return uuid.toString();
    }

    // 절대 경로는 기존 작업 디렉토리에 관계없이 파일 또는 폴더의 위치를 ..으로 설명하는 경로입니다. 사실 그것은 루트 디렉토리에
    // 상대적입니다.
    // 상대 경로는 현재 작업 디렉토리를 기준으로 파일 또는 폴더의 위치를 ​​설명하는 경로입니다.
    public String getAbsolutePath() {
        String relativePath = "src\\main\\resources\\static\\files\\";
        // String relativePathWithSeparator = relativePath.replace("/", File.separator);
        String relativePathWithSeparator = relativePath.replace("\\", File.separator);
        String absolutePath = new File(relativePathWithSeparator).getAbsolutePath() + File.separator;
        return absolutePath;
    }

    public List createFiles(MultipartHttpServletRequest multipartHttpServletRequest, Map params) {
        Map attachFile;
        List attachfiles = new ArrayList<>();
        Iterator<String> fileNames = multipartHttpServletRequest.getFileNames();
        String absolutePath = getAbsolutePath();
        String physicalFileName = this.makeUuid();
        String storePath = absolutePath + physicalFileName + File.separator;
        File newPath = new File(storePath);
        newPath.mkdir();
        int fileOrder = 0;
        while (fileNames.hasNext()) {
            String fileName = fileNames.next();
            MultipartFile multipartFile = multipartHttpServletRequest.getFile(fileName);
            String originalFileName = multipartFile.getOriginalFilename();

            if (originalFileName != null && multipartFile.getSize() != 0) {
                String storeFilePath = storePath + originalFileName;
                try {
                    multipartFile.transferTo(new File(storeFilePath));

                    attachFile = new HashMap<>();
                    attachFile.put("ATTACHFILE_SEQ", this.makeUuid());
                    attachFile.put("SOURCE_UNIQUE_SEQ", params.get("COMMON_CODE_ID"));
                    attachFile.put("ORGINALFILE_NAME", originalFileName);
                    attachFile.put("PHYSICALFILE_NAME", physicalFileName);
                    attachFile.put("REGISTER_SEQ", params.get("REGISTER_SEQ"));
                    attachFile.put("MODIFIER_SEQ", params.get("MODIFIER_SEQ"));
                    attachFile.put("FILE_ORDER", ++fileOrder);

                    attachfiles.add(attachFile);
                } catch (IllegalStateException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
        }
        return attachfiles;
    }

    public void deleteFile(Object path) {
        String absolutePath = getAbsolutePath();
        String physicalfile_name = (String) path;
        String storePath = absolutePath + physicalfile_name + File.separator;
        File file = new File(storePath); // 폴더
        // 파일이 존재하면
        if (file.exists()) {
            if (file.isDirectory()) { // 폴더이면
                File[] files = file.listFiles(); // 안에 내용물 리스트로저장
                for (int i = 0; i < files.length; i++) {
                    files[i].delete(); // 하나씩 지움
                }
            }
            file.delete(); // 마지막으로 폴더 지우
        }
    }

    public List updateFiles(MultipartHttpServletRequest multipartHttpServletRequest, String physicalFileName,
            List originalFileName) { // 새로 들어온 파일 이름들을 저장함
        // 파일 업데이트 = 삭제 후 저장
        Iterator<String> fileNames = multipartHttpServletRequest.getFileNames();
        String absolutePath = this.getAbsolutePath();
        String storePath = absolutePath + physicalFileName + File.separator;
        File file = new File(storePath); // 폴더

        // 삭제
        if (file.exists()) {
            if (file.isDirectory()) { // 폴더이면
                File[] files = file.listFiles(); // 안에 내용물 리스트로저장
                for (int i = 0; i < files.length; i++) {
                    for (int j = 0; j < originalFileName.size(); j++) {
                        if (files[i].getName().equals(originalFileName.get(j))) {// 기존의 있던 파일 삭제
                            files[i].delete();
                        }
                    }
                }
            }
        }

        originalFileName = new ArrayList<>();
        // 저장
        while (fileNames.hasNext()) {
            String fileName = fileNames.next();
            MultipartFile multipartFile = multipartHttpServletRequest.getFile(fileName);
            String currentFileName = multipartFile.getOriginalFilename();
            if (currentFileName != null && multipartFile.getSize() != 0) {
                originalFileName.add(multipartFile.getOriginalFilename());
                String storeFilePath = storePath + currentFileName;
                try {
                    multipartFile.transferTo(new File(storeFilePath));

                } catch (IllegalStateException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
        }
        return originalFileName;
    }

    public Boolean viewCountUp(Map params, HttpServletRequest req, HttpServletResponse res) {

        Cookie oldCookie = null;
        CoordinationService coordinationService = new CoordinationService();

        String id = (String)params.get("COORDINATION_ID");

        Cookie[] cookies = req.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("boardView")) {
                    oldCookie = cookie;
                }
            }
        }

        if (oldCookie != null) {
            if (!oldCookie.getValue().contains("[" + id.toString() + "]")) {
                // coordinationService.viewCountUp(params);
                oldCookie.setValue(oldCookie.getValue() + "_[" + id + "]");
                oldCookie.setPath("/");
                oldCookie.setMaxAge(60 * 60 * 24);
                res.addCookie(oldCookie);
                return true;
            }
        } else {
            // coordinationService.viewCountUp(params);
            Cookie newCookie = new Cookie("boardView","[" + id + "]");
            newCookie.setPath("/");
            newCookie.setMaxAge(60 * 60 * 24);
            res.addCookie(newCookie);
            return true;
        }
        return false;
    }
}
