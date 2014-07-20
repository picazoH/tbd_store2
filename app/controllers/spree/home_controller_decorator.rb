Spree::HomeController.class_eval do

 # def index

    #@searcher = Spree::Config.searcher_class.new(params)
    #@searcher.current_user = try_spree_current_user
    #@searcher.current_currency = current_currency
    #@products = @searcher.retrieve_products.descend_by_master_price

    #featured = Spree::Taxon.where(:name => 'Destacados').first
    #@featured_products = featured.products.select("DISTINCT spree_products.id").active if featured
    #@featured_products = featured.products.active.uniq if featured

    #respond_with(@products)

 # end

end
