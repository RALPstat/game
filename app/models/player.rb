class Player < ActiveRecord::Base
	validates :name, presence: true
	validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i } 
	validates :username, presence: true, uniqueness: true, length: { in: 5..20 }
	validates :points, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

end

=begin

1. Crea una aplicación llamada game.

2. Usando el generador de Rails crea un modelo llamado Player con los siguientes atributos:

email (no puede ser nulo ni vacío, debe ser un email válido)
name (no puede ser nulo ni vacío).
username (entre 5 y 20 caracteres, no se debe repetir, debe ser único).
points (debe ser un entero mayor o igual a cero).
active (puede ser true o false).

3. Usando el generador de Rails, crea un controlador para los jugadores (player_controller). Debe tener las acciones new (con su respectiva vista) y create (no necesita vista, cuando se crea el jugador, vuelve a mostrar el formulario de crear jugador y muestra el mensaje "El jugador se ha creado").

4. Publica tu solución en Github.	

=end