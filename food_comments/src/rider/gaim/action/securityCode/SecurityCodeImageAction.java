package rider.gaim.action.securityCode;

import java.io.ByteArrayInputStream;

import rider.gaim.action.BaseAction;
import rider.gaim.tool.SecurityImage;


/**
 * 提供图片验证码
 */
@SuppressWarnings("serial")
public class SecurityCodeImageAction extends BaseAction{
    
    //图片流
    private ByteArrayInputStream imageStream;

    public ByteArrayInputStream getImageStream() {
        return imageStream;
    }

    public void setImageStream(ByteArrayInputStream imageStream) {
        this.imageStream = imageStream;
    }

    
    public String execute() throws Exception { 
        //获取默认难度和长度的验证码
        String securityCode = SecurityImage.getSecurityCode();
        System.out.println(securityCode);
        imageStream = SecurityImage.getImageAsInputStream(securityCode);
        //放入session中
        session.put("SESSION_SECURITY_CODE", securityCode);
        return SUCCESS;
    }

}