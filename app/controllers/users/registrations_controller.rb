class Users::RegsitrationController < Devise::RegistrationsController
   def create
       super do |resource|
           if params[:plan]
               resource.plan_id = paramas[:plan]
               if resource.plan_id == 2
                   resource.save_with_payment
               else
                   resource.save
               end
           end
       end
    end
end