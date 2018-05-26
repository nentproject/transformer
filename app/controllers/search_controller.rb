class SearchController < ApplicationController
  respond_to :json

  def index
    # only accept post request, otherwise go to homepage
    redirect_to root_path and return if request.get?

    sleep 2

    qtum_address = params[:search][:qtum_address]
    render json: { status: :failed, errors: "empty" } and return if qtum_address.blank?

    if Qtum.valid_address? qtum_address
      bfcy = Bfcy.find_by_qtum_address(qtum_address)

      render json: { status: :success, bfcy: bfcy.as_json(only: [:qtum_address, :amount]) }
    else
      render json: { status: :failed, errors: I18n.t("activerecord.errors.messages.invalid_qtum_address") }
    end
  end

  private
  def search_param
    params.require(:search).permit(:qtum_address)
  end

end
