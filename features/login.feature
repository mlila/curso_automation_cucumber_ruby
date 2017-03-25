Feature: Login al backoffice
 
Como un usuario del backoffice quiero poder logarme al mismo con mis credenciales correctas y que me muestre un error en caso de no usar credenciales correctas.

Background: Página de lógin
	Given que estoy en la pantalla de login 

Scenario: Login exitoso como editor del backoffice

 	When ingreso mis credenciales
 	And presiono el botón acceder 
 	Then debo aparecer en el escritorio


Scenario Outline: Login erroneo como editor al ingresar credenciales incorrectas

	* ingresa '<usuario>' en el campo usuario
	* ingresa '<contraseña>' en el campo contraseña
	When presiono el botón acceder 
	Then el mensaje de error debe decir '<mensaje>'

Examples:
	|usuario    |contraseña |mensaje                                                       |
	|           |asijdoaisjd|ERROR: El campo Nombre de usuario está vacío.                 |
	

Scenario: ¿Has perdido tu contraseña?

 	When ingreso mis credenciales
 	And presiono el botón acceder 
 	Then debo aparecer en el escritorio