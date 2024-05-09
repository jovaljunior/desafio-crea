package br.com.crea.simple.desafio.repository;

import java.util.List;

import br.com.crea.simple.desafio.model.Titulo;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Named;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@Named
@ApplicationScoped
public class TituloRepository {

    @PersistenceContext
    private EntityManager em;

    public List<Titulo> findAll() {
        return em.createQuery("SELECT t FROM Titulo t", Titulo.class).getResultList();
    }
    
}
