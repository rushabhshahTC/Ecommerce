class ProfilesController < ApplicationController
  def show
    @profile = current_user.profile
  end

  def edit
    @user = current_user
    @profile = current_user.profile
  end

  def update
    @profile = current_user.profile
    if @profile.update(profile_params)
      redirect_to user_profile_path(current_user, @profile)
    else
      render 'edit'
    end
  end

  private

    def profile_params
      params.require(:profile).permit(
        :first_name, :last_name, :address,
        :city, :state, :dob, :phone_number,
        :gender, :company_name, :owner_name)
    end
end
