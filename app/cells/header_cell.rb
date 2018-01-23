class HeaderCell < Cell::ViewModel
  def show
    render
  end

  def navigation
    @navigation ||= generate_navigation
  end

  def logo
    "<a href='#{page_path('')}'>#{image_tag('logo.svg')}<span class='text'>Mugshot</span></a>"
  end

  private
  def generate_navigation
    array_navigation = []
    links.each do |link|
      array_navigation << navigation_link(link[:path], link[:title])
    end
    array_navigation.join('')
  end

  def links
    [
      {
        path: '',
        title: 'Home'
      },
      {
        path: 'about',
        title: 'About'
      },
      {
        path: 'process',
        title: 'Process'
      },
      {
        path: 'contact',
        title: 'Contact'
      }
    ]
  end

  def navigation_link(path = nil, title = nil)
    "<li class='#{current_class?(page_path(path))} nav-item'> #{link_to title, page_path(path), class: "nav-link"} </li>"
  end

  def current_class?(url_path)
    return 'active' if request.path == url_path
    ''
  end
end
