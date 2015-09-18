package br.pucpr.prog4.lojavirtual.models.dao;

public interface IDaoManager 
{
    void iniciar() throws DaoException;
    void encerrar();
    void confirmarTransação();
    void abortarTransação();
    
    PessoaDAO getPessoaDAO();
    
}