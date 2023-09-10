package com.framework.service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;


@Service
public class EmailSenderService {
    @Autowired
    private JavaMailSender mailSender;

    public void sendSimpleEmail(String toEmail,
                                String subject,
                                String body
    ) throws MessagingException {
		
		/*
		 * SimpleMailMessage message = new SimpleMailMessage();
		 * message.setFrom("madhuelavarasan98@gmail.com"); message.setTo(toEmail); //
		 * message.setText(body); message.setContent(body, "text/html; charset=utf-8");
		 * 
		 * message.setSubject(subject); mailSender.send(message);
		 */
    	
    	MimeMessage mimeMessage = mailSender.createMimeMessage();
        MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true, "utf-8");
        mimeMessage.setContent(body, "text/html;charset=utf-8");
        messageHelper.setFrom("madhuelavarasan98@gmail.com");
        messageHelper.setSubject(subject); //主题
        messageHelper.setTo(toEmail); //发送给
        mailSender.send(mimeMessage);
        System.out.println("Mail Send...");


    }

    }

