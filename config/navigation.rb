# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|
  # Specify a custom renderer if needed.
  # The default renderer is SimpleNavigation::Renderer::List which renders HTML lists.
  # The renderer can also be specified as option in the render_navigation call.
  # Use Bootstrap renderer provided by the
3  # simple-navigation-bootstrap gem
  navigation.renderer = SimpleNavigation::Renderer::Bootstrap

  # Specify the class that will be applied to active navigation items. Defaults to 'selected'
  navigation.selected_class = 'active'

  # Specify the class that will be applied to the current leaf of
  # active navigation items. Defaults to 'simple-navigation-active-leaf'
  # navigation.active_leaf_class = 'your_active_leaf_class'

  # Item keys are normally added to list items as id.
  # This setting turns that off
  # navigation.autogenerate_item_ids = false

  # You can override the default logic that is used to autogenerate the item ids.
  # To do this, define a Proc which takes the key of the current item as argument.
  # The example below would add a prefix to each key.
  navigation.id_generator = Proc.new {|key| "nav-#{key}"}

  # If you need to add custom html around item names, you can define a proc that will be called with the name you pass in to the navigation.
  # The example below shows how to wrap items spans.
  # navigation.name_generator = Proc.new {|name| "<span>#{name}</span>"}

  # The auto highlight feature is turned on by default.
  # This turns it off globally (for the whole plugin)
  # navigation.auto_highlight = false

  # Define the primary navigation
  navigation.items do |primary|
    #primary.item :books, 'Books', books_path
    #primary.item :music, 'Music', musics_path
    #primary.item :dvds, 'Dvds', dvds_path
    # Add an item to the primary navigation. The following params apply:
    # key - a symbol which uniquely defines your navigation item in the scope of the primary_navigation
    # name - will be displayed in the rendered navigation. This can also be a call to your I18n-framework.
    # url - the address that the generated item links to. You can also use url_helpers (named routes, restful routes helper, url_for etc.)
    # options - can be used to specify attributes that will be included in the rendered navigation item (e.g. id, class etc.)
    #           some special options that can be set:
    #           :if - Specifies a proc to call to determine if the item should
    #                 be rendered (e.g. <tt>:if => Proc.new { current_user.admin? }</tt>). The
    #                 proc should evaluate to a true or false value and is evaluated in the context of the view.
    #           :unless - Specifies a proc to call to determine if the item should not
    #                     be rendered (e.g. <tt>:unless => Proc.new { current_user.admin? }</tt>). The
    #                     proc should evaluate to a true or false value and is evaluated in the context of the view.
    #           :method - Specifies the http-method for the generated link - default is :get.
    #           :highlights_on - if autohighlighting is turned off and/or you want to explicitly specify
    #                            when the item should be highlighted, you can set a regexp which is matched
    #                            against the current URI.  You may also use a proc, or the symbol <tt>:subpath</tt>. 
    #

    primary.item :clients, 'Clients', clients_path
    primary.item :servicePartners, 'Service Partners', service_partners_path
    primary.item :jobs, 'Jobs', jobs_path
    primary.item :languages, 'Languages', languages_path
    primary.item :user, (user_signed_in? ? current_user.email : "Not logged in"), '#', :icon => 'icon-user', :class => 'pull-right' do |user_nav|
      user_nav.item :user_signIn, 'Sign in', new_user_session_path, :unless => lambda{user_signed_in?}
      user_nav.item :user_signUp, 'Register', new_user_registration_path, :unless => lambda{user_signed_in?}
      user_nav.item :user_signOut, 'Sign out', destroy_user_session_path, :method => :delete, :if => lambda{user_signed_in?}
      user_nav.item :user_settings, 'Settings', '#'
    end

    # Add an item which has a sub navigation (same params, but with block)
    #    primary.item :key_2, 'name', url, options do |sub_nav|
    # Add an item to the sub navigation (same params again)
    #      sub_nav.item :key_2_1, 'name', url, options
    #    end

    # You can also specify a condition-proc that needs to be fullfilled to display an item.
    # Conditions are part of the options. They are evaluated in the context of the views,
    # thus you can use all the methods and vars you have available in the views.
    #    primary.item :key_3, 'Admin', url, :class => 'special', :if => Proc.new { current_user.admin? }
    #    primary.item :key_4, 'Account', url, :unless => Proc.new { logged_in? }

    # you can also specify a css id or class to attach to this particular level
    # works for all levels of the menu
    # primary.dom_id = 'menu-id'
    primary.dom_class = 'nav'

    # You can turn off auto highlighting for a specific level
    # primary.auto_highlight = false

  end

end
