package br.com.crea.simple.desafio.controller;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.Arrays;
import java.util.List;
import java.util.Random;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import br.com.crea.simple.desafio.model.Profissional;
import br.com.crea.simple.desafio.model.Situacao;
import br.com.crea.simple.desafio.model.TipoCadastro;
import br.com.crea.simple.desafio.model.Titulo;
import br.com.crea.simple.desafio.service.ProfissionalService;
import br.com.crea.simple.desafio.service.TituloService;
import jakarta.annotation.PostConstruct;
import jakarta.faces.application.FacesMessage;
import jakarta.faces.context.FacesContext;
import jakarta.faces.view.ViewScoped;
import jakarta.inject.Inject;
import jakarta.inject.Named;
import lombok.Data;

@Named
@ViewScoped
@Data
public class ProfissionalController implements Serializable {

    private Profissional profissional;
    private List<Profissional> profissionais;
    private List<Titulo> titulos;
    private List<TipoCadastro> tiposCadastro;
    private List<Situacao> situacoes;
    private Random random;

    @Inject
    ProfissionalService profissionalService;

    @Inject
    TituloService tituloService;

    @PostConstruct
    public void init() {
        this.profissional = new Profissional();
        this.profissionais = profissionalService.listarTodos();
        this.titulos = tituloService.listarTodos();
        this.tiposCadastro = Arrays.asList(TipoCadastro.values());
        this.situacoes = Arrays.asList(Situacao.values());
        this.random = new Random();
    }

    public void salvar() {
        this.profissional.setSenha(passwordEncoder().encode(this.profissional.getSenha()));
        this.profissional.setSituacao(Situacao.INATIVO);
        this.profissionalService.salvar(profissional);
        this.profissionais = profissionalService.listarTodos();
        this.profissional = new Profissional();
        addMessage("Inclusão de Profissional", "Profissional Incluído com Sucesso!");
    }

    public void atualizar() {
        if (this.profissional.getTipoCadastro() == TipoCadastro.REGISTRO) {
            this.profissional.setDataRegistro(LocalDate.now());
        } else {
            this.profissional.setDataVisto(LocalDate.now());
        }
        this.profissional.setSituacao(Situacao.ATIVO);
        this.profissional.setCodigoCREA(gerarCodigoCREA());
        this.profissionalService.atualizar(profissional);
        this.profissionais = profissionalService.listarTodos();
        addMessage("Ativação de Profissional", "Profissional Ativado com Sucesso!");
    }

    public void cancelar() {
        this.profissional.setSituacao(Situacao.CANCELADO);
        this.profissionalService.atualizar(profissional);
        this.profissionais = profissionalService.listarTodos();
        addMessage("Cancelamento de Profissional", "Profissional Cancelado com Sucesso!");
    }

    public void addMessage(String sumario, String detalhe) {
        FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_INFO, sumario, detalhe);
        FacesContext.getCurrentInstance().addMessage(null, message);
    }

    private String gerarCodigoCREA() {        
        Long codigoCrea = this.random.nextLong(999999999);
        return String.format("%010dPI", codigoCrea);
    }

    private PasswordEncoder passwordEncoder() { 
        return new BCryptPasswordEncoder(); 
    }

}
