class Subscription < ApplicationRecord
  validates_presence_of :nome, :cpf, :celular, :email, :filiacao, :endereco, :cidade, :profissao, :portador, :cidade
  validates :email, uniqueness: true, format: { with: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/,
    message: "e-mail inválido, verifique novamente" }
  validates :cpf, uniqueness: true, length: { is: 11 }
end
