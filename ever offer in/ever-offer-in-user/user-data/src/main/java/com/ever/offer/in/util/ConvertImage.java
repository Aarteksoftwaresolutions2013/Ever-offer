package com.ever.offer.in.util;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;

import sun.misc.BASE64Encoder;

import javax.imageio.ImageIO;

@SuppressWarnings("restriction")
public class ConvertImage {

    public static String convertImage(String imagePath) throws IOException {

        BufferedImage bufferedImage = ImageIO.read(new File(imagePath));

        String format = "png";
        BASE64Encoder base64Encoder = new BASE64Encoder();
        String imageString = null;
        String encodedImage = null;
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        try {
            ImageIO.write(bufferedImage, format, bos);
            byte[] imageBytes = bos.toByteArray();
            encodedImage = base64Encoder.encode(imageBytes);
            imageString = "data:image/" + format + ";base64," + encodedImage;
            bos.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return imageString;
    }

    public static String encodeToString(BufferedImage image, String type) {
        String imageString = null;
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        try {
            ImageIO.write(image, type, bos);
            byte[] imageBytes = bos.toByteArray();
            BASE64Encoder encoder = new BASE64Encoder();
            imageString = encoder.encode(imageBytes);
            bos.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return imageString;
    }

}
