class ContactSharesController < ApplicationController
  def create
    contact_share = ContactShare.new(contact_share_params)

    if contact_share.save
      render json: user
    else
      render(
        json: user.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def destroy
    contact_share = ContactShare.find_by(id: params[:id])

    if contact_share.destroy
      render json: contact_share
    else
      render(
        json: "Unable to delete contact share"
      )
    end
  end

  private
  def contact_share_params
    params.require(:user).permit(:user_id, :contact_id)
  end
end
