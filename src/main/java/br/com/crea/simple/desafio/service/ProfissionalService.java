package br.com.crea.simple.desafio.service;

import java.util.List;
import java.util.Optional;

import br.com.crea.simple.desafio.model.Profissional;
import br.com.crea.simple.desafio.repository.ProfissionalRepository;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.inject.Named;

@Named
@ApplicationScoped
public class ProfissionalService {

    @Inject
    private ProfissionalRepository repository;

    public Profissional salvar(Profissional profissional) {
        return this.repository.create(profissional);
    }

    public List<Profissional> listarTodos() {
        return this.repository.findAll();
    }

    public Profissional procurarPorId(Long id) {
        Optional<Profissional> optProfissional = this.repository.findById(id);
        if (!optProfissional.isEmpty()) {
            return optProfissional.get();
        }
        return null;
    }

    public Profissional atualizar(Profissional profissional) {
        return this.repository.update(profissional);
    }

}
