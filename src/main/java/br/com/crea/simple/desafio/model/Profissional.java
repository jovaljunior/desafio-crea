package br.com.crea.simple.desafio.model;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.List;

import org.hibernate.validator.constraints.br.CPF;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.SequenceGenerator;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 *
 * @author jovaljunior
 */
@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Profissional implements Serializable{

    @Id
    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator="profissional_seq")
    @SequenceGenerator(name="profissional_seq", allocationSize = 1)
    private Long id;

    @Column(nullable = false) @NotEmpty(message="Nome não pode ser vazio.")
    private String nome;

    @Column(nullable = false, unique = true) @CPF(message="CPF deve ser válido.") 
    @NotEmpty(message="CPF não pode ser vazio.")
    private String cpf;

    @Column(nullable = false, unique = true) 
    @Email(message="E-mail deve ser válido", regexp = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}") 
    @NotEmpty(message="E-mail não pode ser vazio.")
    private String email;

    @Column(nullable = false) @NotEmpty(message="Senha não pode ser vazia.")
    private String senha;

    @Column(nullable = false) @NotNull(message="Data de Nascimento não pode ser vazia.")
    private LocalDate nascimento;

    @Column(nullable = false) @NotEmpty(message="Telefone não pode ser vazio.")
    private String telefone;
    
    @Enumerated(EnumType.STRING)
    @Column(nullable = false) @NotNull(message="Escolha um tipo de cadastro.")
    private TipoCadastro tipoCadastro;

    @Enumerated(EnumType.STRING)
    private Situacao situacao;

    private LocalDate dataRegistro;
    private LocalDate dataVisto;

    @Column(nullable = true, unique = true)
    private String codigoCREA;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(
        name="profissional_titulo",
        joinColumns=@JoinColumn(name="profissional_id"),
        inverseJoinColumns=@JoinColumn(name="titulo_id")
    )
    private List<Titulo> titulos;
    
}
