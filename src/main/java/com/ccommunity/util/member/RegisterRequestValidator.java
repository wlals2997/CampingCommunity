package com.ccommunity.util.member;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
 
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.ccommunity.model.member.dto.RegisterRequest;
 
public class RegisterRequestValidator implements Validator{
    
    private static final String emailRegExp =
            "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@" +
            "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
    private Pattern pattern;
 
    public RegisterRequestValidator() {
        pattern = Pattern.compile(emailRegExp);
    }
 
    @Override
    public boolean supports(Class<?> clazz) {
        return RegisterRequest.class.isAssignableFrom(clazz);
    }
 
    @Override
    public void validate(Object target, Errors errors) {
        RegisterRequest regReq = (RegisterRequest) target;
        
        if(regReq.getEmail() == null || regReq.getEmail().trim().isEmpty()) {
            errors.rejectValue("email", "required", "필수 정보 입니다.");
        } else {
            Matcher matcher = pattern.matcher(regReq.getEmail());
            if(!matcher.matches()) {
                errors.rejectValue("email", "bad", "이메일 형식이 올바르지 않습니다.");
            }
        }
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "required", "필수 정보 입니다.");
        ValidationUtils.rejectIfEmpty(errors, "id", "required", "필수 정보 입니다.");
        ValidationUtils.rejectIfEmpty(errors, "pw", "required", "필수 정보 입니다.");
        ValidationUtils.rejectIfEmpty(errors, "checkPw", "required", "필수 정보 입니다.");
        ValidationUtils.rejectIfEmpty(errors, "tel", "required", "필수 정보 입니다.");
        if(!regReq.getPw().isEmpty()) {
            if(!regReq.isPwEqualToCheckPw()) {
                errors.rejectValue("checkPw", "nomatch", "비밀번호가 일치하지 않습니다.");
            }
        }
    }
 
}
