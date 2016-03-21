class User::RegistrationsController < Devise::RegistrationsController
# before_filter :configure_sign_up_params, only: [:create]
# before_filter :configure_account_update_params, only: [:update]

  private

  def sign_up_params
    params.require(:user).permit(:name, :surname, :email, :password, :password_confirmation, :designer)
  end

  def account_update_params
    params.require(:user).permit(:name, :surname, :email, :password, :password_confirmation, :current_password, :designer)
  end
end
