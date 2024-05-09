package br.com.crea.simple.desafio.configuration;

import org.springframework.security.web.context.AbstractSecurityWebApplicationInitializer;

public class SecurityWebApplicationInitializer extends AbstractSecurityWebApplicationInitializer {


    public SecurityWebApplicationInitializer() {
        super(SpringSecurityConfig.class);
    }

}
