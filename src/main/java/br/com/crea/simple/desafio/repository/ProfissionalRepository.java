package br.com.crea.simple.desafio.repository;

import java.util.List;
import java.util.Optional;

import br.com.crea.simple.desafio.model.Profissional;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Named;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Named
@ApplicationScoped
public class ProfissionalRepository {

    @PersistenceContext
    private EntityManager em;

    @Transactional
    public Profissional create(Profissional profissional) {
        this.em.persist(profissional);
        this.em.flush();
        return profissional; 
    }

    @Transactional
    public Profissional update(Profissional profissional) {
        profissional = this.em.merge(profissional);
        this.em.flush();
        return profissional;
    }
    
    public List<Profissional> findAll() {
        return em.createQuery("SELECT p FROM Profissional p", Profissional.class).getResultList();
    }

    public Optional<Profissional> findById(Long id) {
        return Optional.ofNullable(em.find(Profissional.class, id));
    }

}
