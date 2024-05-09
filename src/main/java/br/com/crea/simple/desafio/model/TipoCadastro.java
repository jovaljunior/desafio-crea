package br.com.crea.simple.desafio.model;

public enum TipoCadastro {
    VISTO,
    REGISTRO;

    private String descricao;

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

}
