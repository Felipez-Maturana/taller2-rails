class PagesController < ApplicationController
  def x
  	@users=User.all
  end

  def new_user
  	if params[:nombre].present? && params[:edad].present? && params[:email].present?
  		@user = User.new
  		@user.nombre = params[:nombre]
  		@user.email = params[:email]
  		@user.edad = params[:edad]
  		@user.save
  		redirect_to pages_x_path, notice: "Usuario creado exitosamente"
  	else 
  		redirect_to pages_x_path, alert: "Ingrese todos los campos solicitados"
  	end
  end
end
