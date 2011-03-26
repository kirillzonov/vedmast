module ApplicationHelper
  def index_or_not(page = 'other')
    case page
    when 'index'
      render :inline => '<div class= "wrap for-content home">'
    when 'products'
      render :inline => '<div class= "wrap for-content static products">'
    when 'product'
      render :inline => '<div class="wrap for-content static product agd">'
    else
      render :inline => '<div class= "wrap for-content static about">'
    end
  end
end
