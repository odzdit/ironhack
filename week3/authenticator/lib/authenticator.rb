class Authenticator
	def initialize(name, password)
		@name = "Josh"
		@password = "swordfish"
	end

	def authenticate(name, password)
	if @name == name && @password == password
		true
	else
		false
	end
	end
end
