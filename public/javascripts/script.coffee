jQuery(document).ready ($) ->
	phoneAutoComplete = ->
		number = $("input.phone").val().length
		textNumber = $("input.phone").val()
		# switch number
		# 	when 3
		# 		$("input.phone").val("#{textNumber}-")

	$("input.phone").mask "999-999-9999"
