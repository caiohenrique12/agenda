class InfosController < ApplicationController
  
  def index
    @infos = Info.all
  end

end
