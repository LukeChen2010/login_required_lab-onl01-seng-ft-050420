class SecretsController < ApplicationController
  before_action :require_logged_in
  
  def show
    if !params[:name] || params[:name] == ""
      redirect_to(controller: 'sessions', action: 'new')
    else
      session[:name] = params[:name]
      redirect_to controller: 'application', action: 'hello'
    end
  end
end
