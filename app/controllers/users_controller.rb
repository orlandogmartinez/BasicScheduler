class UsersController < ApplicationController
  before_action :load_user, only: [:show, :edit, :update]

  def index

  end

  def new

  end

  def create

  end

  def show

  end

  def edit

  end

  def update

  end

  def _form

  end

  private

  def user_params

  end

  def load_user
    @user = User.find(params[:id])
  end
end
