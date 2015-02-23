class PlayersController < ApplicationController
	def new
		@player = Player.new
	end

	def create
		@player = Player.new(player_params)

		if @player.valid?
			@player.save
			flash.notice = "El jugador ha sido creado correctamente"
			redirect_to  "/players/new"
		else
=begin	
			flash.alert = "El nombre no puede ser vacío"
=end
			render :new
		end

	end

=begin
			puts "ERROR!!!!"
			puts @player.errors.to_yaml
			if @player.name == ''
				render :new
			end
		else
			flash.notice = "El jugador se ha creado"
			render :new
=end
	private

	def player_params
		params.require(:player).permit(:email, :name, :username, :points, :active)
	end

end


=begin

1. Crea una aplicación llamada game.

2. Usando el generador de Rails crea un modelo llamado Player con los siguientes atributos:

email (no puede ser nulo ni vacío, debe ser un email válido)
name (no puede ser nulo ni vacío).
username (entre 5 y 20 caracteres, no se debe repetir, debe ser único).
points (debe ser un entero mayor o igual a cero).
active (puede ser true o false).

=end

# 3. Usando el generador de Rails, crea un controlador para los jugadores (player_controller). Debe tener las acciones new (con su respectiva vista) y create (no necesita vista, cuando se crea el jugador, vuelve a mostrar el formulario de crear jugador y muestra el mensaje "El jugador se ha creado").

# 4. Publica tu solución en Github.	
