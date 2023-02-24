package com.final_project.tiltheend_final_springboot.utils;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.final_project.tiltheend_final_springboot.service.FilesService;

public class CommonUtils {
    public String makeUuid() {
        UUID uuid = UUID.randomUUID();
        return uuid.toString();
    }

    // 절대 경로는 기존 작업 디렉토리에 관계없이 파일 또는 폴더의 위치를 ..으로 설명하는 경로입니다. 사실 그것은 루트 디렉토리에 상대적입니다. 
    // 상대 경로는 현재 작업 디렉토리를 기준으로 파일 또는 폴더의 위치를 ​​설명하는 경로입니다. 
    public String getAbsolutePath() {
        String relativePath = "src\\main\\resources\\static\\files\\";
        String relativePathWithSeparator = relativePath.replace("/", File.separator);
        String absolutePath = new File(relativePathWithSeparator).getAbsolutePath()+File.separator;
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
        while(fileNames.hasNext()) {
            String fileName = fileNames.next();
            MultipartFile multipartFile = multipartHttpServletRequest.getFile(fileName);
            String originalFileName = multipartFile.getOriginalFilename();

            if(originalFileName != null && multipartFile.getSize() !=0) {
                String storeFilePath = storePath+originalFileName;
                try {
                    multipartFile.transferTo(new File(storeFilePath));

                    attachFile = new HashMap<>();
                    attachFile.put("ATTACHFILE_SEQ", this.makeUuid());
                    attachFile.put("SOURCE_UNIQUE_SEQ", params.get("COMMON_CODE_ID"));
                    attachFile.put("ORGINALFILE_NAME", originalFileName);
                    attachFile.put("PHYSICALFILE_NAME", physicalFileName);
                    attachFile.put("REGISTER_SEQ", params.get("REGISTER_SEQ"));
                    attachFile.put("MODIFIER_SEQ", params.get("MODIFIER_SEQ"));
                
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
        String physicalfile_name = (String)path;
        String storePath = absolutePath+physicalfile_name+File.separator;
        File file = new File(storePath); //폴더
        // 파일이 존재하면
        if(file.exists()) {
            if(file.isDirectory()) { //폴더이면
                File[] files= file.listFiles(); //안에 내용물 리스트로저장
                for(int i=0; i<files.length ; i++) {
                    files[i].delete(); //하나씩 지움
                }
            }
            file.delete(); //마지막으로 폴더 지우
        }
    }
}
