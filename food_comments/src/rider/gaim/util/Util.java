package rider.gaim.util;

import java.security.MessageDigest;

/**
 * 通用工具类
 */
public class Util {

	/**
	 * 对字符串进行MD5加密
	 * 
	 * @param str
	 * @return String
	 */
	public static String md5Encryption(String str) {
		String newStr = null;
		try {
			MessageDigest mdTemp = MessageDigest.getInstance("MD5");
			mdTemp.update(str.getBytes());
			byte[] md = mdTemp.digest();
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < md.length; i++) { // 字节数组转换成十六进制字符串，形成最终的密文
				int v = md[i] & 0xff;
				if (v < 16) {
					sb.append(0);
				}
				sb.append(Integer.toHexString(v));
			}
			newStr = sb.toString();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return newStr;
	}

	/**
	 * 判断字符串是否为空
	 * 
	 * @param str
	 *            字符串
	 * @return true：为空； false：非空
	 */
	public static boolean isNull(String str) {
		if (str != null && !str.trim().equals("")) {
			return false;
		} else {
			return true;
		}
	}
}