

Given(/^que estoy en la pantalla de login$/) do
  
  @pagina=LoginPage.new($browser)
  @pagina.visitar_pagina
  puts "He podido acceder a la pantalla de login"
end

Given(/^ingreso mis credenciales$/) do
  @pagina.usuario="alumnocurso"
  @pagina.contraseña="pass1234"
  puts "He podido ingresar mis credenciales" 
end

When(/^presiono el botón acceder$/) do
  @pagina.acceder
  puts "He podido presionar el botón acceder" 
end

Then(/^debo aparecer en el escritorio$/) do
  @pagina = EscritorioPage.new($browser)
 
  fail "No se encontró la página del escritorio" unless  @pagina.es_escritorio?
  puts "He podido acceder al escritorio "
end

Dado(/^ingresa '(.*)' en el campo usuario$/) do |valor|
  @pagina.usuario= valor
end

Dado(/^ingresa '(.*)' en el campo contraseña$/) do |valor|
  @pagina.contraseña= valor
end

Entonces(/^el mensaje de error debe decir '(.*)'$/) do |msj_esperado|
  msj_obtenido = @pagina.mensaje_error
  fail "No se encontró el mensaje.
    Se esperaba: #{msj_esperado}
    Se obtuvo: #{msj_obtenido}" unless msj_obtenido == msj_esperado

end