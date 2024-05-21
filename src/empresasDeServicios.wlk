import profesionales.*
class Empresas {
	const property profesionales = #{}
	var property honorariosDeReferencia
	
	method agregarProfesional(unProfesional)
	{
		profesionales.add(unProfesional)
	}
	method quitarProfesional(unProfesional)
	{
		profesionales.remove(unProfesional)
	}
	method cuantosEstudiaronEn(unaUniversidad)= profesionales.count({profesional => profesional.universidad() == unaUniversidad})
	method profesionalesCaros()= profesionales.filter({profesional => profesional.honorariosPorHora() > honorariosDeReferencia})
	method universidadesFormadoras()= profesionales.map({profesional => profesional.universidad()}).asSet()
	method elprofesionalMasBarato()= profesionales.min({profesional => profesional.honorariosPorHora()})	
	method esDeGenteAcotada()= profesionales.all({profesional => profesional.provinciasDondePuedeTrabajar().size() <= 3})
}
