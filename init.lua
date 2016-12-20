-- Bathroom Kit

			--Toilet

			minetest.register_node("bathroom:toilet_open",
				{ description = 'Toilet',
				tiles = {
					"bathroom_marble_top_toilet.png", "bathroom_marble.png",
					"bathroom_marble_sb1.png", "bathroom_marble_sb1.png",
					"bathroom_marble_sb2.png", "bathroom_marble_sb2.png",
				},
				drawtype = "nodebox",
				sunlight_propagates = false,
				paramtype = 'light',
				paramtype2 = 'facedir',
				node_box = {
					type = "fixed",
					fixed = {
						{-0.2,-0.5,-0.2, 0.2,-0.45,0.5},
						{-0.1,-0.45,-0.1, 0.1,-0.2,0.5},
						{-0.1,-0.2,0.3, 0.1,0,0.5},
						{-0.3,-0.2,0.1, 0.3,0,0.35},
						{-0.3,-0.2,-0.3, -0.1,-0.15,0.1},
						{-0.1,-0.2,-0.3, 0.1,-0.15,-0.1},
						{0.1,-0.2,-0.3, 0.3,-0.15,0.1},
						{-0.3,-0.15,-0.3, -0.2,0,0.1},
						{-0.2,-0.15,-0.3, 0.2,0,-0.2},
						{0.2,-0.15,-0.3, 0.3,0,0.1},
						{-0.25,0,0.2, 0.25,0.5,0.25},
						{-0.3,0,0.3, 0.3,0.4,0.5},
					},
				},
				drop = "bathroom:toilet",
				groups = {cracky = 3,},
				sounds = {dig = "bathroom_dig_toilet",  gain=0.5},
				on_rightclick = function(pos, node, puncher)
					minetest.swap_node(pos, {name = "bathroom:toilet", param2 = node.param2})
				end,
			})


			minetest.register_node("bathroom:toilet",{
				description = "Toilet",
				tiles = { 
					"bathroom_marble.png", "bathroom_marble.png", 
					"bathroom_marble_s1.png", "bathroom_marble_s1.png", 
					"bathroom_marble_s2.png", "bathroom_marble_s2.png",
					},
				drawtype = "nodebox",
				sunlight_propagates = false,
				paramtype = 'light',
				paramtype2 = "facedir",
				node_box = {
					type = "fixed",
					fixed = {
						{-0.2,-0.5,-0.2, 0.2,-0.45,0.5},
						{-0.1,-0.45,-0.1, 0.1,0,0.5},
						{-0.3,-0.2,-0.3, 0.3,0,0.35},
						{-0.25,0,-0.25, 0.25,0.05,0.25},
						{-0.3,0,0.3, 0.3,0.4,0.5},
						{-0.05,0.4,0.35, 0.05,0.45,0.45},
					},
				},
				drop ="bathroom:toilet",
				groups = {cracky=3,},
				on_rightclick = function(pos, node, puncher)
					minetest.swap_node(pos, {name = "bathroom:toilet_open", param2 = node.param2})
				end,
			})


			--Sink
			minetest.register_node("bathroom:sink",
				{description = 'Sink',
				tiles = {
					"bathroom_marble_top_sink.png", "bathroom_marble.png",
					"bathroom_marble_sb1.png", "bathroom_marble_sb1.png",
					"bathroom_marble_sb2.png", "bathroom_marble_sb2.png",
				},
				inventory_image = "bathroom_inv_sink.png",
				drawtype = "nodebox",
				sunlight_propagates = true,
				paramtype = 'light',
				paramtype2 = 'facedir',
				node_box = {
					type = "fixed",
					fixed = {
						{-0.15,0.35,0.2,0.15,0.4,0.5},
						{-0.25,0.4,0.4, 0.25,0.45,0.5},
						{-0.25,0.4,0.15, -0.15,0.45,0.4},
						{0.15,0.4,0.15, 0.25,0.45,0.4},
						{-0.15,0.4,0.15, 0.15,0.45,0.2},
						{-0.3,0.45,0.4, 0.3,0.5,0.5},
						{-0.3,0.45,0.1, -0.25,0.5,0.4},
						{0.25,0.45,0.1, 0.3,0.5,0.4},
						{-0.25,0.45,0.1, 0.25,0.5,0.15},
					},
				},
				selection_box = {
					type = "fixed",
					fixed = {-0.3,0.35,0.1, 0.3,0.5,0.5},
				},
				groups = {cracky=2,}
			})

			--Taps
			minetest.register_node("bathroom:taps",
				{ description = 'Taps',
				tiles = {
					"bathroom_metal.png", "bathroom_metal.png",
					"bathroom_metal_s1.png", "bathroom_metal_s1.png",
					"bathroom_metal_s2.png", "bathroom_metal_s2.png",
				},
				inventory_image = "bathroom_inv_taps.png",
				drawtype = "nodebox",
				sunlight_propagates = true,
				paramtype = 'light',
				paramtype2 = 'facedir',
				node_box = {
					type = "fixed",
					fixed = {
						--Base
						{-0.25,-0.45,0.49, 0.25,-0.3,0.5},
						{-0.05,-0.4,0.25, 0.05,-0.35,0.5},
						{-0.05,-0.425,0.25,0.05,-0.4,0.3},

						--taps 1
						{-0.2,-0.4,0.45, -0.15,-0.35,0.5},
						{-0.2,-0.45,0.4, -0.15,-0.3,0.45},
						{-0.25,-0.4,0.4, -0.1,-0.35,0.45},

						--taps 2 
						{0.15,-0.4,0.45, 0.2,-0.35,0.5},
						{0.15,-0.45,0.4, 0.2,-0.3,0.45},
						{0.1,-0.4,0.4, 0.25,-0.35,0.45},
					},
				},
				selection_box = {
					type = "fixed",
					fixed = {-0.25,-0.45,0.25, 0.25,-0.3,0.5},
				},
				groups = {cracky=2,}
			})

			--Shower Tray
			minetest.register_node("bathroom:shower_tray",
				{ description = 'Shower Tray',
				tiles = {
					"bathroom_marble_base_ducha_top.png",
					"bathroom_marble_base_ducha_top.png",
					"bathroom_marble_sb1.png",
					"bathroom_marble_sb1.png",
					"bathroom_marble_sb2.png",
					"bathroom_marble_sb2.png",
				},
				inventory_image = "bathroom_inv_shower_tray.png",
				drawtype = "nodebox",
				sunlight_propagates = true,
				paramtype = 'light',
				paramtype2 = 'facedir',
				legacy_facedir_simple = true,
				node_box = {
					type = "fixed",
					fixed = {
						{-0.5,-0.5,-0.5, 0.5,-0.45,0.5},
						{-0.5,-0.45,-0.5, 0.5,-0.4,-0.45},
						{-0.5,-0.45,0.45, 0.5,-0.4,0.5},
						{-0.5,-0.45,-0.45, -0.45,-0.4,0.45},
						{0.45,-0.45,-0.45, 0.5,-0.4,0.45},
					},
				},
				selection_box = {
					type = "fixed",
					fixed = {-0.5,-0.5,-0.5, 0.5,-0.4,0.5},
				},
				groups = {cracky=2,}
			})

			--Shower Head
			minetest.register_node("bathroom:shower_head",
				{description = 'Shower Head',
				tiles = {
					"bathroom_metal.png",
					"bathroom_metal.png",
					"bathroom_metal_s1.png",
					"bathroom_metal_s1.png",
					"bathroom_metal_s2.png",
					"bathroom_metal_s2.png",
				},
				inventory_image = "bathroom_inv_shower_head.png",
				drawtype = "nodebox",
				sunlight_propagates = true,
				paramtype = 'light',
				paramtype2 = 'facedir',
				node_box = {
					type = "fixed",
					fixed = {
						{-0.1,-0.5,0.1, 0.1,-0.4,0.3},
						{-0.05,-0.4,0.15, 0.05,-0.3,0.25},
						{-0.05,-0.35,0.25,0.05,-0.3,0.5},
						{-0.1,-0.4,0.49, 0.1,-0.25,0.5},
					},
				 },
				 selection_box = {
					type = "fixed",
					fixed = {-0.1,-0.5,0.1, 0.1,-0.25,0.5},
				},
				groups = {cracky=2,}
			})

-- Bathroom Kit

		--Toilet
		minetest.register_craft( {
			output = 'bathroom:toilet',
			recipe = {
				{'','','bucket:bucket_water'},
				{ 'default:cobble','default:cobble', 'default:cobble' },
				{ '', 'bucket:bucket_empty', '' },
			},
		})

		--Sink
		minetest.register_craft( {
			output = 'bathroom:sink',
			recipe = {
				{ 'default:cobble','bucket:bucket_empty', 'default:cobble' },
			},
		})

		--Taps
		minetest.register_craft( {
			output = 'bathroom:taps',
			recipe = {
				{ 'default:steel_ingot','bucket:bucket_water', 'default:steel_ingot' },
			},
		})

		--Shower Tray
		minetest.register_craft( {
			output = 'bathroom:shower_tray',
			recipe = {
				{ 'default:cobble','bucket:bucket_water', 'default:cobble' },
			},
		})

		--Shower Head
		minetest.register_craft( {
			output = 'bathroom:shower_head',
			recipe = {
				{'default:steel_ingot', 'bucket:bucket_water'},
			},
		})

