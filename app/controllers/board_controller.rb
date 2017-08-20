class BoardController < ApplicationController

  def home
  end

  def action
  	flash[:success] = "done! action..."
    redirect_to action: 'home'
  end

  private

end
