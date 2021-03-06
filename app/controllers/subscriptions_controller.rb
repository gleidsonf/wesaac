class SubscriptionsController < ApplicationController

  def new
    @subscription = Subscription.new
  end

  def create
    @subscription = Subscription.new subscription_params
    if @subscription.save
      redirect_to root_path, notice: "Inscrição realizada com sucesso!"
    else
      render :new
    end
  end

  private
    def subscription_params
      params.require(:subscription).permit(:nome, :cpf, :celular, :email, :filiacao, :endereco, :cidade, :profissao, :portador, :necessidade, :cidade)
    end
end
