class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    if params[:query].present?
      sql_query = "name ILIKE :query OR category ILIKE :query OR description ILIKE :query"
      @products = policy_scope(Product).where(sql_query, query: "%#{params[:query]}%")
    else
      @products = policy_scope(Product).order(created_at: :desc)
    end
  end
end
