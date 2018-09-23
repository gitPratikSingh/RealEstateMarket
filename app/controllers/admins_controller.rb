class AdminsController < ApplicationController

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new

    @admin.name = current_user.name
    @admin.email = current_user.email
    @admin.user = current_user

    if @admin.save
      redirect_to @admin
    else
      render 'new'
    end
  end

  def show
    @admin = Admin.find(params['id'])
  end

  def index
    @admins = Admin.all
  end

  def edit
    @admin = Admin.find(params['id'])
  end

  def update
    @admin = Admin.find(params['id'])

    if @admin.update(params.require(:admin).permit(:email,:name))
      redirect_to @admin
    else
      render 'edit'
    end
  end

end
