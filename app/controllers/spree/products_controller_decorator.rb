Spree::ProductsController.class_eval do

    def index
      @searcher = Spree::Config.searcher_class.new(params)
      @searcher.current_user = try_spree_current_user
      @searcher.current_currency = current_currency

      order = params[:order]
      case order
        when "descend_by_popularity" then @products = @searcher.retrieve_products.descend_by_popularity
        when "descend_by_master_price" then @products = @searcher.retrieve_products.descend_by_master_price
        when "ascend_by_master_price" then @products = @searcher.retrieve_products.ascend_by_master_price
        when "descend_by_name" then @products = @searcher.retrieve_products.descend_by_name
        when "ascend_by_name" then @products = @searcher.retrieve_products.ascend_by_name
        when "descend_by_updated_at" then @products = @searcher.retrieve_products.descend_by_updated_at
        when "ascend_by_updated_at" then @products = @searcher.retrieve_products.ascend_by_updated_at
        else  @products = @searcher.retrieve_products
      end

      respond_with(@products)
    end
end
