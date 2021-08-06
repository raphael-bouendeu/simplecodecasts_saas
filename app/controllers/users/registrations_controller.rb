class Users::RegistrationsController < Devise::RegistrationsController
before_action :select_plan, only: [:new]

def create

super do |resource|

   if params[:plan]
      stripe_id  = params[:plan]
     if stripe_id =='prod_JyjsjOWeUecuvP'
        resource.save_with_payment
     else
       resource.save
     end
   end
end
end
private

def select_plan
   unless params[:plan] && (params[:plan] == 'prod_JyjsjOWeUecuvP' || params[:plan] == 'prod_JyjqlgNIRjtEju')
   flash[:notice]="Please select a membership plan to sign up."
   redirect_to root_url
   end
end
end
