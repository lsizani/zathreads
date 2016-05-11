class User::RegistrationsController < Devise::RegistrationsController
# before_filter :configure_sign_up_params, only: [:create]
# before_filter :configure_account_update_params, only: [:update]

  private

  def sign_up_params
    params.require(:user).permit(:name, :surname, :email,
                                 :password, :password_confirmation, :current_password, :designer,
                                 :address_line_1, :address_line_2, :address_line_3, :suburb,
                                 :city, :province, :country, :is_designer, :bio, :store_name)
  end

  def account_update_params
    params.require(:user).permit(:name, :surname, :email,
                                 :password, :password_confirmation, :current_password, :designer,
                                 :address_line_1, :address_line_2, :address_line_3, :suburb,
                                 :city, :province, :country, :is_designer, :bio, :store_name)
  end
end
