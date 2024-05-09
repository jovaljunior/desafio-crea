package br.com.crea.simple.desafio.service;

import java.util.List;

import br.com.crea.simple.desafio.model.Titulo;
import br.com.crea.simple.desafio.repository.TituloRepository;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.inject.Named;

@Named
@ApplicationScoped
public class TituloService {

    @Inject
    TituloRepository repository;

    public List<Titulo> listarTodos() {
        return this.repository.findAll();
    }
}
