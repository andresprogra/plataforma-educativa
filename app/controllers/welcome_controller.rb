class WelcomeController < ApplicationController
  def index
  	@articles = Article.last
  end
end
