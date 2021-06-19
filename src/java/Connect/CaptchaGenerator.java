/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connect;

/**
 *
 * @author dell pc
 */
import java. util.Random;
public class CaptchaGenerator 
{
    public String GetCode()
    {
        String CaptchaCode="";
        char ch;
        ch=(char)randInt(65,90);
       CaptchaCode=CaptchaCode+ch;
                ch=(char)randInt(65,90);
        CaptchaCode=CaptchaCode+ch;
        ch=(char)randInt(97,122);
        CaptchaCode=CaptchaCode+ch;
        ch=(char)randInt(97,122);
        CaptchaCode=CaptchaCode+ch;
        ch=(char)randInt(48,57);
        CaptchaCode=CaptchaCode+ch;
        ch=(char)randInt(48,57);
        CaptchaCode=CaptchaCode+ch;
        return CaptchaCode;
    }
    static int randInt (int min,int max)
    {
        Random rand=new Random();
        int randomNum=rand.nextInt ((max-min)+1)+min;
        return randomNum;
    }
}
    

