module ApplicationHelper
  def index_or_not(page = 'other')
    case page
    when 'index'
      render :inline => '<div class= "wrap for-content home">'
    when 'products'
      render :inline => '<div class= "wrap for-content static products">'
    else
      render :inline => '<div class= "wrap for-content static about">'
    end
  end
end
