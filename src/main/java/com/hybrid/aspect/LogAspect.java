package com.hybrid.aspect;

import java.util.Arrays;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class LogAspect {
//	static Log log = LogFactory.getLog(LogDaoAspect.class);
	
	@Pointcut("execution(public * com.hybrid.dao.*Dao.*(..))")
	public void dao() {
		
	}
	
	@Pointcut("execution(public * com.hybrid.service.*Service.*(..))")
	public void service() {
		
	}
	
	@Before("dao() || service()")
	public void before(JoinPoint jp) {
		Log log = LogFactory.getLog(jp.getTarget().getClass());
		log.info("### " + jp.getSignature().getName()
						+ "("
						+ Arrays.toString(jp.getArgs())
						+ ")"
						+ " START");
	}
	
	@After("dao() || service()")
	public void after(JoinPoint jp) {
		Log log = LogFactory.getLog(jp.getTarget().getClass());
		log.info("### " + jp.getSignature().getName()
						+ "("
						+ Arrays.toString(jp.getArgs())
						+ ")"
						+ " END");
	}

}
