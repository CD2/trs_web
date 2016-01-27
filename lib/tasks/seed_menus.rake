task :gen_menus do

    admin_top_menu = Menu.create!(name: 'Admin Menu', machine_name: 'admin_top_menu')
    admin_side_menu = Menu.create!(name: 'Admin Side Menu', machine_name: 'admin_side_menu')
    main_menu = Menu.create!(name: 'Main Menu', machine_name: 'main_menu')
	
	admin_top_menu.menu_item.create!(name: 'Home', path: '/', weight: 1)
	admin_top_menu.menu_item.create!(name: 'Admin', path: '/admin', weight: 2)
	admin_top_menu.menu_item.create!(name: 'Logout', path: '/logout', weight: 3)

	admin_side_menu.menu_item.create!(name: 'Services', path: '/admin/services', weight: 1)
	admin_side_menu.menu_item.create!(name: 'Pages', path: '/admin/pages', weight: 3)
	admin_side_menu.menu_item.create!(name: 'Users', path: '/admin/users', weight: 5)
	admin_side_menu.menu_item.create!(name: 'Enquiries', path: '/admin/enquiries', weight: 6)
	admin_side_menu.menu_item.create!(name: 'Menus', path: '/admin/menus', weight: 7)
	
	# main_menu.menu_item.create!(name: 'Home', path: '/', weight: 1)
	# main_menu.menu_item.create!(name: 'What We Do', path: '/services', weight: 2)
	# main_menu.menu_item.create!(name: 'Blog', path: '/blogs', weight: 3)
	# main_menu.menu_item.create!(name: 'About Us', path: '/about', weight: 4)
	# main_menu.menu_item.create!(name: 'Contact Us', path: '/contact_us', weight: 5)
end