class RpgsController < ApplicationController
  def index
  	session[:log]= []
  	unless session[:gold]
  		session[:gold] = 0
  	end
  	@gold = session[:gold]
  	@log = session[:log]
  end

  def farm
  	random = rand(10..20)
  	session[:gold] = session[:gold] + random 
  	session[:log] << "Earned #{random} gold!"
  	redirect_to "/rpgs/index"
  end

  def cave
  	session[:gold] = session[:gold] + rand(5..10)
  	redirect_to "/rpgs/index"
  end

  def casino
  	session[:gold] = session[:gold] + rand(-50..50)  	
  	redirect_to "/rpgs/index"
  end

  def house
  	session[:gold] = session[:gold] + rand(2..5)
  	redirect_to "/rpgs/index"
  end
end
