# This is a manifest file that'll be compiled into including all the files listed below.
# Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
# be included in the compiled file accessible from http://example.com/assets/application.js
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# the compiled file.
#
#=require_tree ./_user_landing
#=require_self
jQuery ->
	setInterval (->
		d = new Date()
		$("#date-container .hour").text "#{if d.getHours() < 10 then "0" else ""}#{d.getHours()}:#{if d.getMinutes() < 10 then "0" else ""}#{d.getMinutes()}")
		, 500
		d = new Date()
		$("#date-container .date").text d.toDateString()