import universidades.*
class ProfesionalVinculado {
	const property universidad
	
	
	method provinciasDondePuedeTrabajar()= #{universidad.provincia()}
	
	method honorariosPorHora()= universidad.honorariosRecomendados()
}


class ProfesionalAsociado {
	const property universidad
	method honorariosPorHora()= 3000 
	method provinciasDondePuedeTrabajar()= #{"Entre Ríos", "Corrientes", "Santa Fe"} 
	
}


class ProfesionalLibre {
	const property universidad
	const provincias = #{}
	var honorarios
	method provinciasDondePuedeTrabajar()= provincias
	
	method honorariosPorHora()= honorarios
	method agregarProvincia(provincia)
	{
		provincias.add(provincia)
	}
	method quitarProvincia(provincia)
	{
		provincias.remove(provincia)
	}
	

}
