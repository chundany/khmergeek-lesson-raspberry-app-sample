class BoardController < ApplicationController

  def home
  end

  def action
  	flash[:success] = "hellohellohellohellohellohello! action..."
    redirect_to action: 'home'
  end

  private

end
