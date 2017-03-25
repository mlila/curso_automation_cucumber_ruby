class EscritorioPage


	def initialize browser
		$browser = browser
	end

		###### WEB ELEMENTS LOCATORS
	def escritorio
		$browser.find_element(:id, "wpwrap")

	end


	#def es_escritorio?
	#	@browser.title.start_with? "Escritorio"
	#end

	# Devuelve el texto de la clase donde está la palabra escritorio
	def es_escritorio?
    	
    	 escritorio.text.include?"Escritorio"
    	
	end

end