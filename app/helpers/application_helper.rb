module ApplicationHelper
  def index_or_not(ind = false)
    if ind
      render :inline => '<div class= "wrap for-content home">'
    else
      render :inline => '<div class= "wrap for-content static about">'
    end
  end
end
