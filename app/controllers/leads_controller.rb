class LeadsController < ApplicationController

  respond_to :json

  def create
    Leads::SignUpTransaction.run(lead_params) do |c|
      c.success do |lead|
        render json: { lead: lead }
      end

      c.failure do |errors|
        render json: { errors: errors }, status: :unprocessable_entity
      end
    end
  end

  private

  def lead_params
    params.require(:lead).permit([:first_name, :last_name, :phone, :email, :message])
  end
end
