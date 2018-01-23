class MetaTagsCell < Cell::ViewModel
  include MetaTags::ViewHelper
  def show
    render
  end

  def meta_tags
    model
  end
end
