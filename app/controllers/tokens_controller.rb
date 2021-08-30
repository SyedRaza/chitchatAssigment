class TokensController < ApplicationController
  def token
    @link = Link.find_by_token(params[:token])
    render 'errors/404', status: 404 if @link.nil?
    @linkVisit = LinkVisit.new({ ip_address: request.remote_ip, link_id: @link.id })
    if @linkVisit.save()
      redirect_to @link.url
    else
      render 'errors/500'
    end
  end

  def info
    @link = Link.find_by_token(params[:token])
    render 'errors/404', status: 404 if @link.nil?
  end
end
