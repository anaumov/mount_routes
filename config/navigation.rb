SimpleNavigation::Configuration.run do |navigation|
    navigation.items do |primary|
    navigation.auto_highlight = true
    primary.selected_class = 'active'
    
    primary.dom_class = 'nav navbar-nav'
    primary.item :index, 'Main', '/', :class => 'menu-item'
    primary.item :routes, 'Routes', routes_path, :class => 'menu-item'
    primary.item :mounts, 'Mounts', mounts_path, :class => 'menu-item'
  end
end