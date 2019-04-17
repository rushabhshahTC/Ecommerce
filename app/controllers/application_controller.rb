class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    if current_user.profile.role.eql?('Admin')
      admin_path
    elsif current_user.profile.role.eql?('customer')
      root_path
    elsif current_user.profile.role.eql?('seller')
      guest_user_page_path
    else
      new_user_registration_path
    end
  end

end
