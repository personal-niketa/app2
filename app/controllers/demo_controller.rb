class DemoController < ApplicationController
  
  def home
    render layout: 'blue'
  end

  def about
  end

  def products
  	render layout: 'green'
  end

  def services
  end

  def design
  	render layout: 'green'
  end

  def contact
  	render layout: 'blue'
  end

  def detail
    render layout: 'blue'
  end
  
  def data
    if params[:fname].eql?('nik')
      @name = "you are Nik"
      else
      @name = "You are someone else"
    end  
    @adrs = params[:address]
    @address = "Your address is:#{@adrs} " 
    @message1 = params[:Hindi].present? ? 'You have selected Hindi' : ' '
    @message2 = params[:English].present? ? 'You have selected English' : ' '
    @gndr = "Your gender is:#{params[:gender]} " 
    @city = "Your city is:#{params[:selectcity]} " 
    render layout: 'blue'
  end   

  def class_registration

  end

  def ajax_demo
    @var = 'hey you are trying ajax'
    respond_to do |format|
      format.js   { render :layout => false }
   end
  end  
   
  def cls_details
    @first_name = params[:st_fname]
    @last_name = params[:st_lname]
    @address = params[:address]
    @gender = params[:gender]
    @dob = params[:dob]
    @list_of_cls = params[:selectclass]
    respond_to do |format|
      format.js   { render :layout => false }
   end
  end 

  def air_ticket_details
    @passenger_name = params[:p_name]
    respond_to do |format|
      format.js   { render :layout => false }
   end
  end   

  def plane_air_ticketing
  end  
end
