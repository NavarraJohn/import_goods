class GoodsController < ApplicationController
 

  def home
    #@good = Good.all

    #<%= @good1.title %>
    #<%= @good2.title %>
    #<%= @good3.title%>
    #      or
    @goods = Good.all 
  end  


  def index
    @goods = Good.all 
  end  

  def show
    @good = Good.find_by(id: params[:id])
  end

  def new
  end
  
  def create
    @good = Good.new({title: params[:title], price: params[:price]})
    @good.save
  end  

  def edit
    @good = Good.find_by(id: params[:id])
  end
  
  def destroy
    @good = Good.find_by(id: params[:id])
    @good.destroy
  end 

  def update
    good = Good.find_by(id: params[:id])
    good.assign_attributes({title: params[:title], price: params[:price]})
    good.save
  end  
end
