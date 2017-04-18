class WelcomeController < ApplicationController

  def index
      flash[:notice] = "Jude,动起来吧！"
  end
  
end
