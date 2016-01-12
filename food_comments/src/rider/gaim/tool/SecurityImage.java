package rider.gaim.tool;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.Random;

import com.sun.image.codec.jpeg.ImageFormatException;
import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

public class SecurityImage {

	private static final String str = "qwertyuipasdfghjkzxcvbnm1023456789QWERTYUIPASDFGHJK";

	public static BufferedImage createImage(String securityCode){
		Random r = new Random();
		//在内存中创建一张图片
		BufferedImage image = 
			new BufferedImage(92, 31, BufferedImage.TYPE_INT_RGB);
		//获取画笔
		Graphics g = 
			image.getGraphics();
		g.setColor(Color.WHITE);
		//绘制背景
		g.fillRect(0, 0, 92, 31);
		
		g.setColor(getColor(r));
		g.setFont(new Font("微软雅黑", Font.BOLD, 20));

		//绘制字符
		for(int i=0;i<4;i++){
			g.setColor(getColor(r));
			g.drawString(String.valueOf(securityCode.charAt(i)), i*(75/4), 15);
		}
		
		//绘制干扰线
		for(int i=0;i<10;i++){
			g.setColor(getColor(r));
			g.drawLine(r.nextInt(92),r.nextInt(31),
					r.nextInt(60),r.nextInt(31));
		}
		//图片生效
		g.dispose();
		
		return image;
	}
		
	private static char getChar(Random r){
		
		return str.charAt(r.nextInt(str.length()));
	}
	
	private static Color getColor(Random r){
		Color c = new Color(r.nextInt(256), r.nextInt(256), r.nextInt(256));
		return c;
	}

	 /**
     * 返回验证码图片的流格式
     * @param securityCode  验证码
     * @return ByteArrayInputStream 图片流
     */
    public static ByteArrayInputStream getImageAsInputStream(String securityCode){
        
        BufferedImage image = createImage(securityCode);
        return convertImageToStream(image);
    }
    
    /**
     * 将BufferedImage转换成ByteArrayInputStream
     * @param image  图片
     * @return ByteArrayInputStream 流
     */
    private static ByteArrayInputStream convertImageToStream(BufferedImage image){
        
        ByteArrayInputStream inputStream = null;
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        JPEGImageEncoder jpeg = JPEGCodec.createJPEGEncoder(bos);
        try {
            jpeg.encode(image);
            byte[] bts = bos.toByteArray();
            inputStream = new ByteArrayInputStream(bts);
        } catch (ImageFormatException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return inputStream;
    }

	public static String getSecurityCode() {
		StringBuilder builder = 
				new StringBuilder();
			//绘制字符
			for(int i=0;i<4;i++){
				String s = String.valueOf( getChar(new Random()) );
				builder.append(s);
			}
			return builder.toString();
	}
}
