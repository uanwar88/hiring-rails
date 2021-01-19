class Api::V1::SessionsController < Devise::SessionsController
  private

  def sign_in_params
    params.require(:user).permit(:email, :password)
  end

  def respond_with(resource, _opts = {})
    render json: resource
  end

  def respond_to_on_destroy
    head :ok
  end
end
