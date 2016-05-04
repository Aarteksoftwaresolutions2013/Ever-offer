package com.ever.offer.in.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.apache.commons.io.FilenameUtils;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class ImageUploadUtils {

    public static String getImage(CommonsMultipartFile[] upload) {

        String attchmentName = null;
        InputStream inputStream = null;
        OutputStream outputStream = null;
        if (upload != null && upload.length > 0) {
            for (CommonsMultipartFile multipartFile : upload) {
                attchmentName = multipartFile.getOriginalFilename();
                try {
                    inputStream = multipartFile.getInputStream();
                    File newFile = new File(IConstant.FILE_PATH);
                    File filePath = new File(newFile + File.separator + attchmentName);
                    if (!newFile.exists()) {
                        newFile.mkdir();
                        filePath.createNewFile();
                    }
                    outputStream = new FileOutputStream(filePath);
                    int read = 0;
                    int length = (int) attchmentName.length();
                    byte[] bytes = new byte[length];
                    while ((read = inputStream.read(bytes)) != -1) {
                        outputStream.write(bytes, 0, read);
                    }
                    String profilePic = FilenameUtils.getExtension(multipartFile.getOriginalFilename());
                    if (profilePic.equals("jpg") || profilePic.equals("png") || profilePic.equals("bpg")
                                    || profilePic.equals("jpeg")) {

                    }
                    outputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        return attchmentName;
    }

}
