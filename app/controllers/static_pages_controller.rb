class StaticPagesController < ApplicationController
  def home        
    respond_to do |format|
      format.mobile
      format.html
    end
  end
  
  def social_dialog    
    render action: 'social_dialog', formats: [:mobile] 
  end
  
  def switch_to_mobile_format
    session[:mobylette_override] = :force_mobile
    redirect_to action: 'home', formats: [:mobile] 
  end
end
