ActiveAdmin.register Manager do
 menu :label => "Place Manager"
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
permit_params do
  permitted = [:name, :role,:phone_no ,:work_type]
  #permitted << :other if params[:action] == 'create' && current_user.admin?
  permitted
end




controller do
    def scoped_collection
      Manager.where(:work_type => "Waitlist Manager")
    end
  end

end
