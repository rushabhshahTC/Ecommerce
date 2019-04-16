class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    if current_user.email.eql?('sh.rushabh.tc@gmail.com')
      admin_path
  #   elsif current_user.profile.role.eql?('Club Admin')
  #     user_profile_path(current_user, current_user.profile)
    # elsif current_user.profile.role.eql?('Guest User')
    #   guest_user_page_path
    else
      new_user_registration_path
    end
  end


end
