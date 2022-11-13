if SERVER then return end

local convars, convarValues = vrmod.GetConvars()


hook.Add("VRMod_Menu","addsettings",function(frame)

	--Settings02 Start
		--add VRMod_Menu Settings02 propertysheet start
		local sheet = vgui.Create( "DPropertySheet", frame.DPropertySheet )
		frame.DPropertySheet:AddSheet( "Settings02", sheet )
		sheet:Dock( FILL )
		--add VRMod_Menu Settings02 propertysheet end
		--Panel1 "TAB1" Start
			local panel1 = vgui.Create( "DPanel", sheet )
			panel1.Paint = function( self, w, h ) draw.RoundedBox( 4, 0, 0, w, h, Color( 0, 0, 0, self:GetAlpha() ) ) end 
			sheet:AddSheet( "Client", panel1, "icon16/cog_add.png" )
			
			
				--DCheckBoxLabel Start
				local lefthand = panel1:Add( "DCheckBoxLabel" ) -- Create the checkbox
					lefthand:SetPos( 25, 10 )						-- Set the position
					lefthand:SetText("LeftHand\n(WIP)")					-- Set the text next to the box
					lefthand:SetConVar( "vrmod_LeftHand" )				-- Change a ConVar when the box it ticked/unticked
					lefthand:SizeToContents()						-- Make its size the same as the contents
				--DCheckBoxLabel end

				--DCheckBoxLabel Start
				local lefthandleftfire = panel1:Add( "DCheckBoxLabel" ) -- Create the checkbox
					lefthandleftfire:SetPos( 130, 10 )						-- Set the position
					lefthandleftfire:SetText("lefthand leftfire\n(WIP)")					-- Set the text next to the box
					lefthandleftfire:SetConVar( "vrmod_lefthandleftfire" )				-- Change a ConVar when the box it ticked/unticked
					lefthandleftfire:SizeToContents()						-- Make its size the same as the contents
				--DCheckBoxLabel end
				
				--DCheckBoxLabel Start
				local lefthandholdmode = panel1:Add( "DCheckBoxLabel" ) -- Create the checkbox
					lefthandholdmode:SetPos( 250, 10 )						-- Set the position
					lefthandholdmode:SetText("lefthand holdmode\n(WIP)")					-- Set the text next to the box
					lefthandholdmode:SetConVar( "vrmod_LeftHandmode" )				-- Change a ConVar when the box it ticked/unticked
					lefthandholdmode:SizeToContents()						-- Make its size the same as the contents
				--DCheckBoxLabel end


				
				--vrmod_attach_quickmenu
				local attach_quickmenu= vgui.Create( "DComboBox", panel1 )
					attach_quickmenu:SetPos( 25, 50 )				-- Set the position (X,Y)
					attach_quickmenu:SetSize( 320, 25 )			-- Set the size (X,Y)
					attach_quickmenu:SetText( "quickmenu Attach Position" )	-- Set the text above the slider
					attach_quickmenu:AddChoice( "left hand" )
					attach_quickmenu:AddChoice( "□(buggy)" )
					attach_quickmenu:AddChoice( "HMD" )
					attach_quickmenu:AddChoice( "right hand" )
					attach_quickmenu.OnSelect = function( self, index, value )
						LocalPlayer():ConCommand("vrmod_attach_quickmenu " .. index )
					end
				--DNumSlider end
				
				--vrmod_attach_weaponmenu
				local attach_weaponmenu= vgui.Create( "DComboBox", panel1 )
					attach_weaponmenu:SetPos( 25, 75 )				-- Set the position (X,Y)
					attach_weaponmenu:SetSize( 320, 25 )			-- Set the size (X,Y)
					attach_weaponmenu:SetText( "weaponmenu Attach Position" )	-- Set the text above the slider
					attach_weaponmenu:AddChoice( "left hand" )
					attach_weaponmenu:AddChoice( "□(buggy)" )
					attach_weaponmenu:AddChoice( "HMD" )
					attach_weaponmenu:AddChoice( "right hand" )
					attach_weaponmenu.OnSelect = function( self, index, value )
						LocalPlayer():ConCommand("vrmod_attach_weaponmenu " .. index )
					end
				--DNumSlider end

				--vrmod_attach_popup
				local attach_popup= vgui.Create( "DComboBox", panel1 )
					attach_popup:SetPos( 25, 100 )				-- Set the position (X,Y)
					attach_popup:SetSize( 320, 25 )			-- Set the size (X,Y)
					attach_popup:SetText( "popup Attach Position" )	-- Set the text above the slider
					attach_popup:AddChoice( "left hand" )
					attach_popup:AddChoice( "□(buggy)" )
					attach_popup:AddChoice( "HMD" )
					attach_popup:AddChoice( "right hand" )
					attach_popup.OnSelect = function( self, index, value )
						LocalPlayer():ConCommand("vrmod_attach_popup " .. index )
					end
				--DNumSlider end

				--DCheckBoxLabel Start
				local vremenu_attach = panel1:Add( "DCheckBoxLabel" ) -- Create the checkbox
					vremenu_attach:SetPos( 25, 130 )						-- Set the position
					vremenu_attach:SetText("VRE UI AttachToLeftHand")					-- Set the text next to the box
					vremenu_attach:SetConVar( "vre_ui_attachtohand" )				-- Change a ConVar when the box it ticked/unticked
					vremenu_attach:SizeToContents()						-- Make its size the same as the contents
				--DCheckBoxLabel end
	
				--DCheckBoxLabel Start
				local ui_realtime = panel1:Add( "DCheckBoxLabel" ) -- Create the checkbox
					ui_realtime :SetPos( 25, 150 )						-- Set the position
					ui_realtime:SetText("ui_realtime")					-- Set the text next to the box
					ui_realtime:SetConVar( "vrmod_ui_realtime" )				-- Change a ConVar when the box it ticked/unticked
					ui_realtime:SizeToContents()						-- Make its size the same as the contents
				--DCheckBoxLabel end



				

				--DCheckBoxLabel Start
				local allow_teleport_client = panel1:Add( "DCheckBoxLabel" ) -- Create the checkbox
					allow_teleport_client:SetPos( 25, 170 )						-- Set the position
					allow_teleport_client:SetText("allow_teleport_client")					-- Set the text next to the box
					allow_teleport_client:SetConVar( "vrmod_allow_teleport_client" )				-- Change a ConVar when the box it ticked/unticked
					allow_teleport_client:SizeToContents()						-- Make its size the same as the contents
				--DCheckBoxLabel end

				--DCheckBoxLabel Start
				local pickup_disable_client = panel1:Add( "DCheckBoxLabel" ) -- Create the checkbox
					pickup_disable_client:SetPos( 25, 190 )						-- Set the position
					pickup_disable_client:SetText("VR Disable Pickup(Client)")					-- Set the text next to the box
					pickup_disable_client:SetConVar( "vr_pickup_disable_client" )				-- Change a ConVar when the box it ticked/unticked
					pickup_disable_client:SizeToContents()						-- Make its size the same as the contents
				--DCheckBoxLabel end
				
				--DCheckBoxLabel Start
				local r_3dsky = panel1:Add( "DCheckBoxLabel" ) -- Create the checkbox
					r_3dsky:SetPos( 25, 210 )						-- Set the position
					r_3dsky:SetText("Skybox Enable(Client)")					-- Set the text next to the box
					r_3dsky:SetConVar( "r_3dsky" )				-- Change a ConVar when the box it ticked/unticked
					r_3dsky:SizeToContents()						-- Make its size the same as the contents
				--DCheckBoxLabel end
				
				--DCheckBoxLabel Start
				local r_shadows = panel1:Add( "DCheckBoxLabel" ) -- Create the checkbox
					r_shadows:SetPos( 25, 230 )						-- Set the position
					r_shadows:SetText("Shadows Enable(Client)")					-- Set the text next to the box
					r_shadows:SetConVar( "r_shadows" )				-- Change a ConVar when the box it ticked/unticked
					r_shadows:SizeToContents()						-- Make its size the same as the contents
				--DCheckBoxLabel end

				
				--DNumSlider Start
				--znear
				local znear= vgui.Create( "DNumSlider", panel1 )
					znear:SetPos( 25, 245 )				-- Set the position (X,Y)
					znear:SetSize( 320, 25 )			-- Set the size (X,Y)
					znear:SetText( "znear" )	-- Set the text above the slider
					znear:SetMin( 0 )				 	-- Set the minimum number you can slide to
					znear:SetMax( 1 )				-- Set the maximum number you can slide to
					znear:SetDecimals( 2 )				-- Decimal places - zero for whole number (set 2 -> 0.00)
					znear:SetConVar( "vrmod_znear" )	-- Changes the ConVar when you slide

					-- If not using convars, you can use this hook + Panel.SetValue()
					znear.OnValueChanged = function( self, value )

					-- Called when the slider value changes
					end
				--DNumSlider end

								
				--DNumSlider Start
				--vr_r_mapextents
				local r_mapextents= vgui.Create( "DNumSlider", panel1 )
					r_mapextents:SetPos( 25, 270 )				-- Set the position (X,Y)
					r_mapextents:SetSize( 320, 25 )			-- Set the size (X,Y)
					r_mapextents:SetText( "Visible range of map \n (sv_cheats 1 is required)" )	-- Set the text above the slider
					r_mapextents:SetMin( 1000 )				 	-- Set the minimum number you can slide to
					r_mapextents:SetMax( 16384 )				-- Set the maximum number you can slide to
					r_mapextents:SetDecimals( 0 )				-- Decimal places - zero for whole number (set 2 -> 0.00)
					r_mapextents:SetConVar( "r_mapextents" )	-- Changes the ConVar when you slide

					-- If not using convars, you can use this hook + Panel.SetValue()
					r_mapextents.OnValueChanged = function( self, value )

					-- Called when the slider value changes
					end
				--DNumSlider end


				


				--DButton Start
				--gmod_optimization
				local gmod_optimization = vgui.Create( "DButton", panel1 ) -- Create the button and parent it to the frame
				gmod_optimization:SetText( "vrmod_gmod_optimization" )					-- Set the text on the button
				gmod_optimization:SetPos( 50, 310 )					-- Set the position on the frame
				gmod_optimization:SetSize( 300, 25 )					-- Set the size
				gmod_optimization.DoClick = function()				-- A custom function run when clicked ( note the . instead of : )
					RunConsoleCommand( "vrmod_gmod_optimization" )			-- Run the console command "say hi" when you click it ( command, args )
				end

				gmod_optimization.DoRightClick = function()
					RunConsoleCommand( "vrmod_gmod_optimization" )
				end
				--DButton end		


			--Panel1 "TAB1" end
				

			local panel2 = vgui.Create( "DPanel", sheet )
			sheet:AddSheet( "Character", panel2, "icon16/user_edit.png" )
			panel2.Paint = function( self, w, h ) draw.RoundedBox( 4, 0, 0, w, h, Color( 0, 0, 0, self:GetAlpha() ) ) end 

			--Panel2 "TAB2" Start
								
				-- --DCheckBoxLabel Start
				-- local heightmenu_toggle = panel2:Add( "DCheckBoxLabel" ) -- Create the checkbox
					-- heightmenu_toggle:SetPos( 25, 25 )						-- Set the position
					-- heightmenu_toggle:SetText("Show height adjustment menu")					-- Set the text next to the box
					-- heightmenu_toggle:SetConVar( "vrmod_heightmenu" )				-- Change a ConVar when the box it ticked/unticked
					-- heightmenu_toggle:SizeToContents()						-- Make its size the same as the contents
				-- --DCheckBoxLabel end


								
				-- --DNumSlider Start
				-- --scale
				-- local scale= vgui.Create( "DNumSlider", panel2 )
					-- scale:SetPos( 25, 0 )				-- Set the position (X,Y)
					-- scale:SetSize( 320, 25 )			-- Set the size (X,Y)
					-- scale:SetText( "scale" )	-- Set the text above the slider
					-- scale:SetMin( 1.00 )				 	-- Set the minimum number you can slide to
					-- scale:SetMax( 60.00 )				-- Set the maximum number you can slide to
					-- scale:SetDecimals( 2 )				-- Decimal places - zero for whole number (set 2 -> 0.00)
					-- scale:SetConVar( "vrmod_scale" )	-- Changes the ConVar when you slide
					
					-- -- If not using convars, you can use this hook + Panel.SetValue()
					-- scale.OnValueChanged = function( self, value )
					-- -- RunConsoleCommand( "vrmod_scale_apply" )
					
						-- -- Called when the slider value changes

					-- end
				-- --DNumSlider end
				
								
				--DNumSlider Start
				--scale
				local scale= vgui.Create( "DLabel", panel2 )
					scale:SetPos( 25, 5 )				-- Set the position (X,Y)
					scale:SetText( "scale" )	-- Set the text above the slider					
					-- If not using convars, you can use this hook + Panel.SetValue()
				--DNumSlider end

				
				--DButton Start
				--scaleplus
				local scaleplus = vgui.Create( "DButton", panel2 ) -- Create the button and parent it to the frame
				scaleplus:SetText( "+" )					-- Set the text on the button
				scaleplus:SetPos( 25, 25 )					-- Set the position on the frame
				scaleplus:SetSize( 160, 25 )					-- Set the size
				scaleplus.DoClick = function()	
					g_VR.scale = g_VR.scale + 0.5
					convars.vrmod_scale:SetFloat(g_VR.scale)
				end

				scaleplus.DoRightClick = function()
					g_VR.scale = g_VR.scale + 1.0
					convars.vrmod_scale:SetFloat(g_VR.scale)
				end
				--DButton end
				
								--DButton Start
				--scalebutton
				local scaleminus = vgui.Create( "DButton", panel2 ) -- Create the button and parent it to the frame
				scaleminus:SetText( "-" )					-- Set the text on the button
				scaleminus:SetPos( 190, 25 )					-- Set the position on the frame
				scaleminus:SetSize( 160, 25 )					-- Set the size
				scaleminus.DoClick = function()	
					g_VR.scale = g_VR.scale - 0.5
					convars.vrmod_scale:SetFloat(g_VR.scale)
				end

				scaleminus.DoRightClick = function()
					g_VR.scale = g_VR.scale - 1.0
					convars.vrmod_scale:SetFloat(g_VR.scale)
				end
				--DButton end

				
				--DNumSlider Start
				--characterEyeHeight
				local characterEyeHeight= vgui.Create( "DNumSlider", panel2 )
					characterEyeHeight:SetPos( 25, 60 )				-- Set the position (X,Y)
					characterEyeHeight:SetSize( 320, 25 )			-- Set the size (X,Y)
					characterEyeHeight:SetText( "characterEyeHeight" )	-- Set the text above the slider
					characterEyeHeight:SetMin( 25.0 )				 	-- Set the minimum number you can slide to
					characterEyeHeight:SetMax( 66.8 )				-- Set the maximum number you can slide to
					characterEyeHeight:SetDecimals( 1 )				-- Decimal places - zero for whole number (set 2 -> 0.00)
					characterEyeHeight:SetConVar( "vrmod_characterEyeHeight" )	-- Changes the ConVar when you slide

					-- If not using convars, you can use this hook + Panel.SetValue()
					characterEyeHeight.OnValueChanged = function( self, value )
							LocalPlayer():ConCommand("vrmod_character_apply")

					end
				--DNumSlider end				
				
				--DNumSlider Start
				--crouchthreshold
				local crouchthreshold= vgui.Create( "DNumSlider", panel2 )
					crouchthreshold:SetPos( 25, 80 )				-- Set the position (X,Y)
					crouchthreshold:SetSize( 320, 25 )			-- Set the size (X,Y)
					crouchthreshold:SetText( "crouchthreshold" )	-- Set the text above the slider
					crouchthreshold:SetMin( 1.0 )				 	-- Set the minimum number you can slide to
					crouchthreshold:SetMax( 66.8 )				-- Set the maximum number you can slide to
					crouchthreshold:SetDecimals( 1 )				-- Decimal places - zero for whole number (set 2 -> 0.00)
					crouchthreshold:SetConVar( "vrmod_crouchthreshold" )	-- Changes the ConVar when you slide

					-- If not using convars, you can use this hook + Panel.SetValue()
					crouchthreshold.OnValueChanged = function( self, value )
					end
				--DNumSlider end				
				
				
				-- --DButton Start
				-- --character_apply
				-- local character_apply = vgui.Create( "DButton", panel2 ) -- Create the button and parent it to the frame
																  
															   
				-- character_apply:SetText( "characterEyeHeight_set" )					-- Set the text on the button
				-- character_apply:SetPos( 25, 90 )					-- Set the position on the frame
				-- character_apply:SetSize( 320, 25 )					-- Set the size
				-- character_apply.DoClick = function()	
				-- -- A custom function run when clicked ( note the . instead of : )
					-- RunConsoleCommand( "vrmod_character_apply" )


															 
				-- end
						

				-- character_apply.DoRightClick = function()
					-- RunConsoleCommand( "vrmod_character_apply" )
				-- end
				-- --DButton end
				
				
				--DNumSlider Start
				--characterHeadToHmdDist
				local characterHeadToHmdDist= vgui.Create( "DNumSlider", panel2 )
					characterHeadToHmdDist:SetPos( 25, 100 )				-- Set the position (X,Y)
					characterHeadToHmdDist:SetSize( 320, 25 )			-- Set the size (X,Y)
					characterHeadToHmdDist:SetText( "characterHeadToHmdDist" )	-- Set the text above the slider
					characterHeadToHmdDist:SetMin( -15.3 )				 	-- Set the minimum number you can slide to
					characterHeadToHmdDist:SetMax( 15.3 )				-- Set the maximum number you can slide to
					characterHeadToHmdDist:SetDecimals( 2 )				-- Decimal places - zero for whole number (set 2 -> 0.00)
					characterHeadToHmdDist:SetConVar( "vrmod_characterHeadToHmdDist" )	-- Changes the ConVar when you slide

					-- If not using convars, you can use this hook + Panel.SetValue()
					characterHeadToHmdDist.OnValueChanged = function( self, value )
					
					-- Called when the slider value changes
					end
				--DNumSlider end
								
				--DButton Start
				--character_restart
				local character_restart = vgui.Create( "DButton", panel2 ) -- Create the button and parent it to the frame
				character_restart:SetText( "characterHeadToHmdDist_apply \n (VRMod Restart)" )					-- Set the text on the button
				character_restart:SetPos( 25, 130 )					-- Set the position on the frame
				character_restart:SetSize( 320, 30 )					-- Set the size
				character_restart.DoClick = function()				-- A custom function run when clicked ( note the . instead of : )
					RunConsoleCommand( "vrmod_character_restart" )			-- Run the console command "say hi" when you click it ( command, args )
				end

				character_restart.DoRightClick = function()

				end
				--DButton end


				--DCheckBoxLabel Start
				local oldcharacteryaw = panel2:Add( "DCheckBoxLabel" ) -- Create the checkbox
					oldcharacteryaw:SetPos( 25, 180 )						-- Set the position
					oldcharacteryaw:SetText("Alternative Character Yaw")					-- Set the text next to the box
					oldcharacteryaw:SetConVar( "vrmod_oldcharacteryaw" )				-- Change a ConVar when the box it ticked/unticked
					-- oldcharacteryaw:SetValue( true )						-- Initial value
					oldcharacteryaw:SizeToContents()						-- Make its size the same as the contents
				--DCheckBoxLabel end
				
				--DCheckBoxLabel Start
				local animation_Enable = panel2:Add( "DCheckBoxLabel" ) -- Create the checkbox
					animation_Enable:SetPos( 25, 200 )						-- Set the position
					animation_Enable:SetText("Character_Animation_Enable(Client)")					-- Set the text next to the box
					animation_Enable:SetConVar( "vrmod_animation_Enable" )				-- Change a ConVar when the box it ticked/unticked
					animation_Enable:SizeToContents()						-- Make its size the same as the contents
				--DCheckBoxLabel end


				

				--DCheckBoxLabel Start
				local seatedmode = panel2:Add( "DCheckBoxLabel" ) -- Create the checkbox
					seatedmode:SetPos( 25, 240 )						-- Set the position
					seatedmode:SetText("Enable seated mode")					-- Set the text next to the box
					seatedmode:SetConVar( "vrmod_seated" )				-- Change a ConVar when the box it ticked/unticked
					seatedmode:SizeToContents()						-- Make its size the same as the contents
				--DCheckBoxLabel end



				--DNumSlider Start
				--seatedoffset
				local seatedoffset = vgui.Create( "DNumSlider", panel2 )
					seatedoffset:SetPos( 25, 260 )				-- Set the position (X,Y)
					seatedoffset:SetSize( 320, 25 )			-- Set the size (X,Y)
					seatedoffset:SetText( "Seated Offset" )	-- Set the text above the slider
					seatedoffset:SetMin( -66.80 )				 	-- Set the minimum number you can slide to
					seatedoffset:SetMax( 66.80 )				-- Set the maximum number you can slide to
					seatedoffset:SetDecimals( 2 )				-- Decimal places - zero for whole number(set 2 -> 0.00)
					seatedoffset:SetConVar( "vrmod_seatedoffset" )	-- Changes the ConVar when you slide

					-- If not using convars, you can use this hook + Panel.SetValue()
					seatedoffset.OnValueChanged = function( self, value )
						-- Called when the slider value changes
					end
				--DNumSlider end
								
				
				--DButton Start
				--character_restart
				local character_reset = vgui.Create( "DButton", panel2 ) -- Create the button and parent it to the frame
				character_reset:SetText( "vrmod_character_reset" )					-- Set the text on the button
				character_reset:SetPos( 25, 310 )					-- Set the position on the frame
				character_reset:SetSize( 320, 25 )					-- Set the size
				character_reset.DoClick = function()				-- A custom function run when clicked ( note the . instead of : )
					RunConsoleCommand( "vrmod_character_reset" )			-- Run the console command "say hi" when you click it ( command, args )
				end

				character_reset.DoRightClick = function()

				end
				--DButton end

				
			--Panel2 "TAB2" end
			
			
			local Panel3 = vgui.Create( "DPanel", sheet )
			sheet:AddSheet( "hud", Panel3, "icon16/palette.png" )
			Panel3.Paint = function( self, w, h ) draw.RoundedBox( 4, 0, 0, w, h, Color( 0, 0, 0, self:GetAlpha() ) ) end 

				--Panel3 "TAB3" Start

				--DCheckBoxLabel Start
				local vrmod_hud = Panel3:Add( "DCheckBoxLabel" ) -- Create the checkbox
					vrmod_hud:SetPos( 25, 5 )						-- Set the position
					vrmod_hud:SetText("Hud Enable")					-- Set the text next to the box
					vrmod_hud:SetConVar( "vrmod_hud" )				-- Change a ConVar when the box it ticked/unticked
					vrmod_hud:SizeToContents()						-- Make its size the same as the contents
				--DCheckBoxLabel end
				
			
				--DNumSlider Start
					--hudcurve
					local hudcurve= vgui.Create( "DNumSlider", Panel3 )
						hudcurve:SetPos( 25, 25 )				-- Set the position (X,Y)
						hudcurve:SetSize( 320, 25 )			-- Set the size (X,Y)
						hudcurve:SetText( "Hud curve" )	-- Set the text above the slider
						hudcurve:SetMin( 1 )				 	-- Set the minimum number you can slide to
						hudcurve:SetMax( 60 )				-- Set the maximum number you can slide to
						hudcurve:SetDecimals( 0 )				-- Decimal places - zero for whole number (set 2 -> 0.00)
						hudcurve:SetConVar( "vrmod_hudcurve" )	-- Changes the ConVar when you slide

						-- If not using convars, you can use this hook + Panel.SetValue()
						hudcurve.OnValueChanged = function( self, value )
						
						-- Called when the slider value changes
						end
				--DNumSlider end
				
				--DNumSlider Start
					--huddistance
					local huddistance= vgui.Create( "DNumSlider", Panel3 )
						huddistance:SetPos( 25, 50 )			-- Set the position (X,Y)
						huddistance:SetSize( 320, 25 )			-- Set the size (X,Y)
						huddistance:SetText( "Hud distance" )	-- Set the text above the slider
						huddistance:SetMin( 1 )				 	-- Set the minimum number you can slide to
						huddistance:SetMax( 60 )				-- Set the maximum number you can slide to
						huddistance:SetDecimals( 0 )				-- Decimal places - zero for whole number (set 2 -> 0.00)
						huddistance:SetConVar( "vrmod_huddistance" )	-- Changes the ConVar when you slide

						-- If not using convars, you can use this hook + Panel.SetValue()
						huddistance.OnValueChanged = function( self, value )
						
						-- Called when the slider value changes
						end
				--DNumSlider end

				--DNumSlider Start
					--hudscale
					local hudscale= vgui.Create( "DNumSlider", Panel3 )
						hudscale:SetPos( 25, 75 )			-- Set the position (X,Y)
						hudscale:SetSize( 320, 25 )			-- Set the size (X,Y)
						hudscale:SetText( "Hud scale" )	-- Set the text above the slider
						hudscale:SetMin( 0.01 )				 	-- Set the minimum number you can slide to
						hudscale:SetMax( 0.1 )				-- Set the maximum number you can slide to
						hudscale:SetDecimals( 2 )				-- Decimal places - zero for whole number (set 2 -> 0.00)
						hudscale:SetConVar( "vrmod_hudscale" )	-- Changes the ConVar when you slide

						-- If not using convars, you can use this hook + Panel.SetValue()
						hudscale.OnValueChanged = function( self, value )
						
						-- Called when the slider value changes
						end
				--DNumSlider end


				--DNumSlider Start
					--hudtestalpha
					local hudtestalpha= vgui.Create( "DNumSlider", Panel3 )
						hudtestalpha:SetPos( 25, 125 )			-- Set the position (X,Y)
						hudtestalpha:SetSize( 320, 25 )			-- Set the size (X,Y)
						hudtestalpha:SetText( "Hud alpha Transparency" )	-- Set the text above the slider
						hudtestalpha:SetMin( 0 )				 	-- Set the minimum number you can slide to
						hudtestalpha:SetMax( 255 )				-- Set the maximum number you can slide to
						hudtestalpha:SetDecimals( 0 )				-- Decimal places - zero for whole number (set 2 -> 0.00)
						hudtestalpha:SetConVar( "vrmod_hudtestalpha" )	-- Changes the ConVar when you slide

						-- If not using convars, you can use this hook + Panel.SetValue()
						hudtestalpha.OnValueChanged = function( self, value )
						
						-- Called when the slider value changes
						end
				--DNumSlider end




			
				--Panel3 "TAB3" end

			
		--Panel5 "TAB5" Start
			local Panel5 = vgui.Create( "DPanel", sheet )
			sheet:AddSheet( "Server", Panel5, "icon16/ipod_cast_add.png" )
			Panel5.Paint = function( self, w, h ) draw.RoundedBox( 4, 0, 0, w, h, Color( 0, 0, 0, self:GetAlpha() ) ) end 
				
				--DNumSlider Start
				--vr_net_delay
				local net_delay= vgui.Create( "DNumSlider", Panel5 )
					net_delay:SetPos( 25, 25 )				-- Set the position (X,Y)
					net_delay:SetSize( 320, 25 )			-- Set the size (X,Y)
					net_delay:SetText( "net_delay" )	-- Set the text above the slider
					net_delay:SetMin(0.000)				 	-- Set the minimum number you can slide to
					net_delay:SetMax(1.000)				-- Set the maximum number you can slide to
					net_delay:SetDecimals( 3 )				-- Decimal places - zero for whole number (set 2 -> 0.00)
					net_delay:SetConVar( "vrmod_net_delay" )	-- Changes the ConVar when you slide

					-- If not using convars, you can use this hook + Panel.SetValue()
					net_delay.OnValueChanged = function( self, value )

					-- Called when the slider value changes
					end
				--DNumSlider end
				
				--DNumSlider Start
				--vr_net_delaymax
				local net_delaymax= vgui.Create( "DNumSlider", Panel5 )
					net_delaymax:SetPos( 25, 50 )				-- Set the position (X,Y)
					net_delaymax:SetSize( 320, 25 )			-- Set the size (X,Y)
					net_delaymax:SetText( "net_delaymax" )	-- Set the text above the slider
					net_delaymax:SetMin( 1.00 )				 	-- Set the minimum number you can slide to
					net_delaymax:SetMax( 100.00 )				-- Set the maximum number you can slide to
					net_delaymax:SetDecimals( 3 )				-- Decimal places - zero for whole number (set 2 -> 0.00)
					net_delaymax:SetConVar( "vrmod_net_delaymax" )	-- Changes the ConVar when you slide

					-- If not using convars, you can use this hook + Panel.SetValue()
					net_delaymax.OnValueChanged = function( self, value )

					-- Called when the slider value changes
					end
				--DNumSlider end
				
				--DNumSlider Start
				--vr_net_storedframes
				local net_storedframes= vgui.Create( "DNumSlider", Panel5 )
					net_storedframes:SetPos( 25, 75 )				-- Set the position (X,Y)
					net_storedframes:SetSize( 320, 25 )			-- Set the size (X,Y)
					net_storedframes:SetText( "net_storedframes" )	-- Set the text above the slider
					net_storedframes:SetMin( 1.00 )				 	-- Set the minimum number you can slide to
					net_storedframes:SetMax( 25.00 )				-- Set the maximum number you can slide to
					net_storedframes:SetDecimals( 3 )				-- Decimal places - zero for whole number (set 2 -> 0.00)
					net_storedframes:SetConVar( "vrmod_net_storedframes" )	-- Changes the ConVar when you slide

					-- If not using convars, you can use this hook + Panel.SetValue()
					net_storedframes.OnValueChanged = function( self, value )

					-- Called when the slider value changes
					end
				--DNumSlider end

				--DNumSlider Start
				--vr_net_tickrate
				local net_tickrate= vgui.Create( "DNumSlider", Panel5 )
					net_tickrate:SetPos( 25, 100 )				-- Set the position (X,Y)
					net_tickrate:SetSize( 320, 25 )			-- Set the size (X,Y)
					net_tickrate:SetText( "net_tickrate" )	-- Set the text above the slider
					net_tickrate:SetMin( 1.00 )				 	-- Set the minimum number you can slide to
					net_tickrate:SetMax( 100.00 )				-- Set the maximum number you can slide to
					net_tickrate:SetDecimals( 3 )				-- Decimal places - zero for whole number (set 2 -> 0.00)
					net_tickrate:SetConVar( "vrmod_net_tickrate" )	-- Changes the ConVar when you slide

					-- If not using convars, you can use this hook + Panel.SetValue()
					net_tickrate.OnValueChanged = function( self, value )

					-- Called when the slider value changes
					end
				--DNumSlider end

				--DCheckBoxLabel Start
				local allow_teleport = Panel5:Add( "DCheckBoxLabel" ) -- Create the checkbox
					allow_teleport:SetPos( 25, 130 )						-- Set the position
					allow_teleport:SetText("server allow VRteleport")					-- Set the text next to the box
					allow_teleport:SetConVar( "vrmod_allow_teleport" )				-- Change a ConVar when the box it ticked/unticked
					allow_teleport:SizeToContents()						-- Make its size the same as the contents
				--DCheckBoxLabel end


				--DNumSlider Start
				--vrmod_pickup_weight
				local pickup_weight= vgui.Create( "DNumSlider", Panel5 )
					pickup_weight:SetPos( 25, 175 )				-- Set the position (X,Y)
					pickup_weight:SetSize( 320, 25 )			-- Set the size (X,Y)
					pickup_weight:SetText( "pickup_weight(serverlimit)" )	-- Set the text above the slider
					pickup_weight:SetMin( 1 )				 	-- Set the minimum number you can slide to
					pickup_weight:SetMax( 99999 )				-- Set the maximum number you can slide to
					pickup_weight:SetDecimals( 0 )				-- Decimal places - zero for whole number (set 2 -> 0.00)
					pickup_weight:SetConVar( "vrmod_pickup_weight" )	-- Changes the ConVar when you slide

					-- If not using convars, you can use this hook + Panel.SetValue()
					pickup_weight.OnValueChanged = function( self, value )

					-- Called when the slider value changes
					end
				--DNumSlider end
				
				--DNumSlider Start
				--vr_vrmod_pickup_range
				local vrmod_pickup_range= vgui.Create( "DNumSlider", Panel5 )
					vrmod_pickup_range:SetPos( 25, 200 )				-- Set the position (X,Y)
					vrmod_pickup_range:SetSize( 320, 25 )			-- Set the size (X,Y)
					vrmod_pickup_range:SetText( "vrmod_pickup_range(serverlimit)" )	-- Set the text above the slider
					vrmod_pickup_range:SetMin( 1.0 )				 	-- Set the minimum number you can slide to
					vrmod_pickup_range:SetMax( 99.0 )				-- Set the maximum number you can slide to
					vrmod_pickup_range:SetDecimals( 1 )				-- Decimal places - zero for whole number (set 2 -> 0.00)
					vrmod_pickup_range:SetConVar( "vrmod_pickup_range" )	-- Changes the ConVar when you slide

					-- If not using convars, you can use this hook + Panel.SetValue()
					vrmod_pickup_range.OnValueChanged = function( self, value )

					-- Called when the slider value changes
					end
				--DNumSlider end
				
				--DNumSlider Start
				--vr_vrmod_pickup_limit
				local vrmod_pickup_limit= vgui.Create( "DNumSlider", Panel5 )
					vrmod_pickup_limit:SetPos( 25, 225 )				-- Set the position (X,Y)
					vrmod_pickup_limit:SetSize( 320, 25 )			-- Set the size (X,Y)
					vrmod_pickup_limit:SetText( "vrmod_pickup_limit" )	-- Set the text above the slider
					vrmod_pickup_limit:SetMin( 0 )				 	-- Set the minimum number you can slide to
					vrmod_pickup_limit:SetMax( 2 )				-- Set the maximum number you can slide to
					vrmod_pickup_limit:SetDecimals( 0 )				-- Decimal places - zero for whole number (set 2 -> 0.00)
					vrmod_pickup_limit:SetConVar( "vrmod_pickup_limit" )	-- Changes the ConVar when you slide

					-- If not using convars, you can use this hook + Panel.SetValue()
					vrmod_pickup_limit.OnValueChanged = function( self, value )

					-- Called when the slider value changes
					end
				--DNumSlider end

				

				
				

				--DButton Start
				--vrmod_mapbrowser
				local vrmod_mapbrowser = vgui.Create( "DButton", Panel5 ) -- Create the button and parent it to the frame
				vrmod_mapbrowser:SetText( "vrmod_mapbrowser" )					-- Set the text on the button
				vrmod_mapbrowser:SetPos( 25, 300 )					-- Set the position on the frame
				vrmod_mapbrowser:SetSize( 320, 30 )					-- Set the size

				vrmod_mapbrowser.DoClick = function()				-- A custom function run when clicked ( note the . instead of : )
				VRUtilMenuClose("miscmenu")
				LocalPlayer():ConCommand("vrmod_mapbrowser")
				end

				vrmod_mapbrowser.DoRightClick = function()
				end
				--DButton end


				-- --Panel5 "TAB5" end
				
				
	--Settings02 end
	

end)


