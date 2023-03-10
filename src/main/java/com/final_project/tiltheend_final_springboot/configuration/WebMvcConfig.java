package com.final_project.tiltheend_final_springboot.configuration;

import java.io.File;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {

  @Override
  public void addResourceHandlers(ResourceHandlerRegistry registry) {
    registry.addResourceHandler("/files/**")
        .addResourceLocations("classpath:/static/files/");
  }

  public String getAbsolutePath() {
    String relativePath = "src\\main\\resources\\static\\files\\";
    // String relativePath = "images\\";
    String relativePathWithSeparator = relativePath.replace("\\", File.separator);
    String absolutePath = new File(relativePathWithSeparator).getAbsolutePath() + File.separator;
    return absolutePath;
  }
}
