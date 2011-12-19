class StoresController < Spree::BaseController
  resource_controller

  show.wants.html { redirect_to collection_url }

  def show
    path = case params[:path]
    when Array
      params[:path].join("/")
    when String
      params[:path]
    when nil
      request.path
    end

    #####wuyu:find_by_code
    if @store = Store.find_by_code(path)
      @products = @store.products
    #####wuyu:find_by_id
    elsif @store = Store.find(path)
      @products = @store.products
    else
      render_404
    end
  end
end
