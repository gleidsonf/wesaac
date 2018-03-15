class CreateSubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :subscriptions do |t|
      t.string :nome
      t.string :cpf
      t.string :celular
      t.string :email
      t.string :filiacao
      t.string :endereco
      t.string :cidade
      t.string :profissao
      t.string :portador
      t.string :necessidade
      t.string :cidade

      t.timestamps
    end
    add_index :subscriptions, :cpf, unique: true
    add_index :subscriptions, :email, unique: true
  end
end
