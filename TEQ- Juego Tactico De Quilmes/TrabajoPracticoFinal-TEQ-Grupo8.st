!classDefinition: #TEQTest category: 'TrabajoPracticoFinal-TEQ-Grupo8'!
TestCase subclass: #TEQTest
	instanceVariableNames: 'quilmes ezpeleta donBosco bernal solano laFlorida teqDe2Jugadores jugadorAmarillo jugadorAzul tiradorDeDados unArchivoVacio'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoPracticoFinal-TEQ-Grupo8'!

!TEQTest methodsFor: 'Localidades -- Test' stamp: 'LPC 12/8/2020 22:18:23'!
test001_elNombreDeLaLocalidadEsQuilmes

	| unQuilmes |
	unQuilmes _ Localidad conNombre: 'Quilmes'.
	
	Assert that: 	unQuilmes nombreLocalidad isEqualTo: 'Quilmes'.! !

!TEQTest methodsFor: 'Localidades -- Test' stamp: 'LPC 12/8/2020 22:19:16'!
test002_laLocalidadQuilmesEsLimitrofeConEzpeleta

	| unQuilmes unEzpeleta |
	unQuilmes _ Localidad conNombre: 'Quilmes'.
	unEzpeleta _ Localidad conNombre: 'Ezpeleta'.
	
	unQuilmes esLimitrofeCon: {unEzpeleta}.
	
	Assert isTrue: (unQuilmes limitaCon: unEzpeleta).! !

!TEQTest methodsFor: 'Localidades -- Test' stamp: 'LPC 12/8/2020 22:19:58'!
test003_laLocalidadQuilmesNoEsLimitrofeConDonBosco

	| unQuilmes unEzpeleta unDonBosco |
	unQuilmes _ Localidad conNombre: 'Quilmes'.
	unEzpeleta _ Localidad conNombre: 'Ezpeleta'.
	unDonBosco _ Localidad conNombre: 'Don Bosco'.
	
	unQuilmes esLimitrofeCon: {unEzpeleta}.
	
	Assert isFalse: (unQuilmes limitaCon: unDonBosco).! !

!TEQTest methodsFor: 'Localidades -- Test' stamp: 'ft 12/10/2020 16:22:21'!
test004_laLocalidadQuilmesTiene0LocalidadesCuandoNoEstaEnJuego

	| unQuilmes |
	unQuilmes _ Localidad conNombre: 'Quilmes'.
	
	
	Assert that: unQuilmes cantidadDeEjercitos isEqualTo: 0! !


!TEQTest methodsFor: 'TEQ -- Test' stamp: 'LPC 12/8/2020 13:08:53'!
test001_comienzaElTEQYNoTieneJugadores

	
	| unTeq |
	unTeq _ TEQ new.
	
	Assert that: unTeq cantidadDeJugadores isEqualTo: 0. ! !

!TEQTest methodsFor: 'TEQ -- Test' stamp: 'LPC 12/8/2020 13:31:40'!
test002_comienzaElTEQYSeAgregaAUnJugadorYElTotalDeJugadoresEsUno

	
	| unTeq unJugadorAmarillo |
	unTeq _ TEQ new.
	unJugadorAmarillo _ Jugador conFichasDeColor: 'Amarillo' conNombre: 'Juan'.
	
	unTeq agregarJugador: unJugadorAmarillo.
	
	Assert that: unTeq cantidadDeJugadores isEqualTo: 1. ! !

!TEQTest methodsFor: 'TEQ -- Test' stamp: 'ft 12/10/2020 15:19:59'!
test003_comienzaElTEQYSeIniciaConUnTotalDe6Localidades

	

	Assert that: teqDe2Jugadores cantidadDeLocalidades isEqualTo: 6. 
	! !

!TEQTest methodsFor: 'TEQ -- Test' stamp: 'ft 12/10/2020 15:19:59'!
test004_comienzaElTEQYSeRepartenLasLocalidadesEntreLosDosJugadoresYCadaUnoTiene3Localidades

	"Se paso a la inicializacion"
	"teq repartirLocalidadesYPonerFichasDeColor."

	
	Assert that: teqDe2Jugadores cantidadDeLocalidades isEqualTo: 6. 
	Assert that: jugadorAmarillo cantidadDeLocalidades isEqualTo: 3. 
	Assert that: jugadorAzul cantidadDeLocalidades isEqualTo: 3. 
	! !

!TEQTest methodsFor: 'TEQ -- Test' stamp: 'ft 12/10/2020 15:20:00'!
test005_comienzaElTEQYSeRepartenLasLocalidadesEntreLosDosJugadoresYCadaLocalidadIniciaCon2Fichas

	"Se paso a la inicializacion"
	"teq repartirLocalidadesYPonerFichasDeColor."

	
	Assert that: teqDe2Jugadores cantidadDeLocalidades isEqualTo: 6. 
	Assert that: quilmes cantidadDeEjercitos isEqualTo: 2. 
	Assert that: bernal cantidadDeEjercitos isEqualTo: 2. 
	
	! !

!TEQTest methodsFor: 'TEQ -- Test' stamp: 'ft 12/10/2020 15:19:59'!
test006_comienzaElTEQYSeRepartenLasLocalidadesEntreLosDosJugadoresYAlJugadorAzulLeTocaLaLocalidadDeQuilmes

	"Se paso a la inicializacion"
	"teq repartirLocalidadesYPonerFichasDeColor."

	
	Assert that: teqDe2Jugadores cantidadDeLocalidades isEqualTo: 6. 
	Assert that: quilmes cantidadDeEjercitos isEqualTo: 2. 
	Assert that: quilmes colorDeEjercito isEqualTo: 'Azul'.
	
	
	
	! !

!TEQTest methodsFor: 'TEQ -- Test' stamp: 'ft 12/10/2020 15:19:59'!
test007_comienzaElTEQYElPrimerTurnoEsDelJugadorAmarillo

	"Se paso a la inicializacion"
	"teq repartirLocalidadesYPonerFichasDeColor."

	
	Assert isTrue: (teqDe2Jugadores esTurnoDe: jugadorAmarillo)
	
	

	
	! !

!TEQTest methodsFor: 'TEQ -- Test' stamp: 'ft 12/10/2020 15:19:59'!
test008_elJugadorAmarilloSalteaSuTurnoYEsElTurnoDelJugadorAzul

	"Se paso a la inicializacion"
	"teq repartirLocalidadesYPonerFichasDeColor."

	teqDe2Jugadores terminarTurnoDe: jugadorAmarillo. 
	
	Assert isTrue: (teqDe2Jugadores esTurnoDe: jugadorAzul)
	
	
	
	
	! !

!TEQTest methodsFor: 'TEQ -- Test' stamp: 'ft 12/10/2020 15:20:00'!
test009_elJugadorAmarilloAtacaCon1DadoConLaFloridaAQuilmesDelJugadorAzulQueSeDefiendeCon1DadoYGanaElDefensor

	"Se paso a la inicializacion"
	"teq repartirLocalidadesYPonerFichasDeColor."

	tiradorDeDados siguientesNumerosEnSalir: {1 . 6}.
	jugadorAzul quitarEjercitoEn: quilmes.
	
	teqDe2Jugadores realizaAtaqueElJugador: jugadorAmarillo de: laFlorida a: quilmes de: jugadorAzul unaTiradaDeDados: tiradorDeDados .
	
	Assert that: laFlorida cantidadDeEjercitos isEqualTo: 1
	
	
	
	
	! !

!TEQTest methodsFor: 'TEQ -- Test' stamp: 'ft 12/10/2020 15:20:00'!
test010_elJugadorAmarilloAtacaCon1DadoConLaFloridaAQuilmesDelJugadorAzulQueSeDefiendeCon2DadoYGanaElAtacante

	"Se paso a la inicializacion"
	"teq repartirLocalidadesYPonerFichasDeColor."

	tiradorDeDados siguientesNumerosEnSalir: {6 . 1 . 3}.
	
	teqDe2Jugadores realizaAtaqueElJugador: jugadorAmarillo de: laFlorida a: quilmes de: jugadorAzul unaTiradaDeDados: tiradorDeDados .
	
	Assert that: quilmes cantidadDeEjercitos isEqualTo: 1
	
	
	
	! !

!TEQTest methodsFor: 'TEQ -- Test' stamp: 'ft 12/10/2020 15:19:59'!
test011_elJugadorAmarilloAtacaCon2DadosConLaFloridaAQuilmesDelJugadorAzulQueSeDefiendeCon2DadosYPierdeUnaFichaCadaJugador

	"Se paso a la inicializacion"
	"teq repartirLocalidadesYPonerFichasDeColor."

	tiradorDeDados siguientesNumerosEnSalir: {1 . 6 . 3 . 5}.
        jugadorAmarillo agregarEjercitoEn: laFlorida .
	
	teqDe2Jugadores realizaAtaqueElJugador: jugadorAmarillo de: laFlorida a: quilmes de: jugadorAzul unaTiradaDeDados: tiradorDeDados .
	       
        Assert that: quilmes cantidadDeEjercitos isEqualTo: 1.
        Assert that: laFlorida cantidadDeEjercitos isEqualTo: 2 .
	
	
	! !

!TEQTest methodsFor: 'TEQ -- Test' stamp: 'ft 12/10/2020 15:20:00'!
test012_elJugadorAmarilloAtacaCon2DadosConLaFloridaAQuilmesDelJugadorAzulQueSeDefiendeCon3DadosYPierdeElAtacante2Fichas

	"Se paso a la inicializacion"
	"teq repartirLocalidadesYPonerFichasDeColor."

	tiradorDeDados siguientesNumerosEnSalir: {1 . 2 . 3 . 5 . 5}.
        jugadorAmarillo agregarEjercitoEn: laFlorida .
        jugadorAzul agregarEjercitoEn: quilmes .

        teqDe2Jugadores  realizaAtaqueElJugador: jugadorAmarillo de: laFlorida  a: quilmes de: jugadorAzul unaTiradaDeDados: tiradorDeDados .
        Assert that: quilmes cantidadDeEjercitos isEqualTo: 3.
        Assert that: laFlorida cantidadDeEjercitos isEqualTo: 1.
	
	! !

!TEQTest methodsFor: 'TEQ -- Test' stamp: 'ft 12/10/2020 15:19:59'!
test013_elJugadorAmarilloAtacaCon3DadosConLaFloridaAQuilmesDelJugadorAzulQueSeDefiendeCon3Dados_PierdeElAtacante2FichasYElDefensor1Ficha

	"Se paso a la inicializacion"
	"teq repartirLocalidadesYPonerFichasDeColor."

	tiradorDeDados siguientesNumerosEnSalir: {1 . 6 . 3 . 5 . 5 . 4}.
        jugadorAmarillo agregarEjercitoEn: laFlorida .
        jugadorAmarillo agregarEjercitoEn: laFlorida .
        jugadorAzul agregarEjercitoEn: quilmes .

        teqDe2Jugadores  realizaAtaqueElJugador: jugadorAmarillo de: laFlorida  a: quilmes de: jugadorAzul unaTiradaDeDados: tiradorDeDados  .
        Assert that: quilmes cantidadDeEjercitos isEqualTo: 2.
        Assert that: laFlorida cantidadDeEjercitos isEqualTo: 2.
	
	! !

!TEQTest methodsFor: 'TEQ -- Test' stamp: 'ft 12/10/2020 15:20:00'!
test014_elJugadorAmarilloAtacaCon1DadoConLaFloridaAQuilmesDelJugadorAzulQueSeDefiendeCon1DadoYGanaElAtacanteYSeQuedaConLaLocalidad

	"Se paso a la inicializacion"
	"teq repartirLocalidadesYPonerFichasDeColor."

	tiradorDeDados siguientesNumerosEnSalir: {6 . 1}.
	jugadorAzul quitarEjercitoEn: quilmes. "esto es para que el defensor solo tenga un dado para defenderse."
	
	teqDe2Jugadores realizaAtaqueElJugador: jugadorAmarillo de: laFlorida a: quilmes de: jugadorAzul unaTiradaDeDados: tiradorDeDados .
	
	Assert that: quilmes cantidadDeEjercitos isEqualTo: 1.
	Assert that: quilmes colorDeEjercito isEqualTo: 'Amarillo'.
	
	
	
	
	! !

!TEQTest methodsFor: 'TEQ -- Test' stamp: 'ft 12/10/2020 15:19:59'!
test015_ElJugadorAmarilloNoPuedeAtacarPorqueLaLocalidadAtacanteNoLePertenece
	
	tiradorDeDados siguientesNumerosEnSalir: {1 . 2. 4}.
	
	Assert should: [teqDe2Jugadores realizaAtaqueElJugador: jugadorAmarillo de: quilmes  a: solano de: jugadorAzul  unaTiradaDeDados: tiradorDeDados] signal: Error withDescription: 'El jugador atacante no ocupa la localidad'.
	
	
	
	
	! !

!TEQTest methodsFor: 'TEQ -- Test' stamp: 'ft 12/10/2020 15:19:59'!
test016_ElJugadorAzulNoPuedeAtacarPorqueLaLocalidadDefensoraLePertenece
	"este test es basicamente que el jugador no puede autoatacarse."
	tiradorDeDados siguientesNumerosEnSalir: {1 . 2. 4}.
	
	Assert should: [teqDe2Jugadores realizaAtaqueElJugador: jugadorAzul de: quilmes  a: solano  de: jugadorAzul  unaTiradaDeDados: tiradorDeDados] signal: Error withDescription: 'No podes atacar a tu propia localidad'.
	
	
	
	
	! !

!TEQTest methodsFor: 'TEQ -- Test' stamp: 'ft 12/10/2020 15:20:00'!
test017_jugadorAzulIntentaAtacarPeroNoPuedePorqueYaHayUnGanador
	
	tiradorDeDados siguientesNumerosEnSalir: {6 . 1}.
	jugadorAzul quitarEjercitoEn: quilmes. "esto es para que el defensor solo tenga un dado para defenderse."
	
	teqDe2Jugadores realizaAtaqueElJugador: jugadorAmarillo de: laFlorida a: quilmes de: jugadorAzul unaTiradaDeDados: tiradorDeDados.
	 
	Assert should: [teqDe2Jugadores terminarTurnoDe: jugadorAmarillo] signal: Error withDescription: 'Ya hay un ganador'.
	Assert that: teqDe2Jugadores ganadorDePartida isEqualTo: jugadorAmarillo. 
	"aca el jugadorAmarillo gana porque logra conseguir 4 localidades"
	
	! !

!TEQTest methodsFor: 'TEQ -- Test' stamp: 'ft 12/10/2020 15:19:59'!
test018_elJugadorAzulNoPuedeAtacarPorqueNoEsSuTurno

	"Se paso a la inicializacion"
	"teq repartirLocalidadesYPonerFichasDeColor."

	tiradorDeDados siguientesNumerosEnSalir: {6 . 1 . 5}.

	
	
	Assert should: [teqDe2Jugadores realizaAtaqueElJugador: jugadorAzul de: quilmes a: laFlorida de: jugadorAmarillo unaTiradaDeDados: tiradorDeDados .] signal: Error withDescription: 'No es tu turno'.
	
	
	
	! !

!TEQTest methodsFor: 'TEQ -- Test' stamp: 'ft 12/10/2020 15:20:00'!
test019_elJugadorAmarilloNoPuedeAtacarPorqueNoTieneSuficientesFichasEnLaLocalidadAtacante

	"Se paso a la inicializacion"
	"teq repartirLocalidadesYPonerFichasDeColor."

	tiradorDeDados siguientesNumerosEnSalir: {6 . 1 . 5}.
	jugadorAmarillo pierdeFichaEn: laFlorida .
	
	
	Assert should: [teqDe2Jugadores realizaAtaqueElJugador: jugadorAmarillo de: laFlorida a: quilmes de: jugadorAzul unaTiradaDeDados: tiradorDeDados .] signal: Error withDescription: 'No tenes suficientes tropas para atacar'.
	
	
	
	! !

!TEQTest methodsFor: 'TEQ -- Test' stamp: 'ft 12/10/2020 15:19:59'!
test020_elJugadorAmarilloNoPuedeAtacarPorqueLaLocalidadAtacanteNoLimitaConLaLocalidadDefensora

	"Se paso a la inicializacion"
	"teq repartirLocalidadesYPonerFichasDeColor."

	tiradorDeDados siguientesNumerosEnSalir: {6 . 1 . 5}.	
	
	Assert should: [teqDe2Jugadores realizaAtaqueElJugador: jugadorAmarillo de: laFlorida a: donBosco de: jugadorAzul unaTiradaDeDados: tiradorDeDados .] signal: Error withDescription: 'La localidad atacante no limita con la localidad defensora'.
	
	
	
	! !

!TEQTest methodsFor: 'TEQ -- Test' stamp: 'ft 12/10/2020 15:20:00'!
test021_losJugadoresTerminanSusTurnosYEmpiezaLaFaseDeEnrolamiento

	"Se paso a la inicializacion"
	"teq repartirLocalidadesYPonerFichasDeColor."

	teqDe2Jugadores terminarTurnoDe: jugadorAmarillo .
	teqDe2Jugadores terminarTurnoDe: jugadorAzul .
	
	teqDe2Jugadores iniciarFaseDeEnrolamiento.
	
	Assert isTrue: (teqDe2Jugadores esTurnoDe: jugadorAmarillo).
	Assert that: quilmes cantidadDeEjercitos isEqualTo: 3.
	
	
	
	
	
	
	! !

!TEQTest methodsFor: 'TEQ -- Test' stamp: 'ft 12/10/2020 15:19:59'!
test022_SeIniciaFaseDeEnrolamientoSinQueLosJugadoresTerminaranSuTurnoYSeVuelveAlOrdenDeTurnosOriginal

	"Se paso a la inicializacion"
	"teq repartirLocalidadesYPonerFichasDeColor."

	teqDe2Jugadores terminarTurnoDe: jugadorAmarillo .
	
	teqDe2Jugadores iniciarFaseDeEnrolamiento.
	
	Assert isTrue: (teqDe2Jugadores esTurnoDe: jugadorAmarillo).
	Assert that: quilmes cantidadDeEjercitos isEqualTo: 3.
	
	
	
	
	
	
	! !

!TEQTest methodsFor: 'TEQ -- Test' stamp: 'ft 12/10/2020 16:10:49'!
test023_empiezaUnaNuevaPartidaDeTEQYSeImprime

	"Se paso a la inicializacion"
	"teq repartirLocalidadesYPonerFichasDeColor."

	"unArchivoVacio _ 'EstadoDePartida.txt' asFileEntry" .
	
	teqDe2Jugadores imprimirEstadoDePartidaEn: unArchivoVacio .
	
	Assert that: teqDe2Jugadores estadoDePartida isEqualTo: unArchivoVacio fileContents 
	
	
	
	
	
	
	! !

!TEQTest methodsFor: 'TEQ -- Test' stamp: 'ft 12/10/2020 16:10:37'!
test024_ImprimirEstadoDePartidaYHayUnGanador

	"Se paso a la inicializacion"
	"teq repartirLocalidadesYPonerFichasDeColor."
	
	tiradorDeDados siguientesNumerosEnSalir: {6 . 1}.
	jugadorAzul quitarEjercitoEn: quilmes.
	
	teqDe2Jugadores realizaAtaqueElJugador: jugadorAmarillo de: laFlorida a: quilmes de: jugadorAzul unaTiradaDeDados: tiradorDeDados .
	"unArchivoVacio _ 'EstadoDePartida.txt' asFileEntry ."
	teqDe2Jugadores imprimirEstadoDePartidaEn: unArchivoVacio .
	
	Assert that: teqDe2Jugadores estadoDePartida isEqualTo: unArchivoVacio fileContents 
	
	
	
	
	
	
	! !

!TEQTest methodsFor: 'TEQ -- Test' stamp: 'ft 12/10/2020 16:09:55'!
test025_RepartoDeLocalidadesYFichasCon4Jugadores

	"Se paso a la inicializacion"
	"teq repartirLocalidadesYPonerFichasDeColor."
	
	|unTeqDe4Jugadores jugadorRosa jugadorCeleste jugadorColorado jugadorMarron unBernal unDonBosco unEzpeleta unLaFlorida unQuilmes unSolano |
	"Jugadores" 
	jugadorRosa _ Jugador conFichasDeColor: 'Rosa' conNombre: 'Lautaro'.
	jugadorCeleste _ Jugador conFichasDeColor: 'Celeste' conNombre: 'Flavio' .
	jugadorColorado _ Jugador conFichasDeColor: 'Colorado' conNombre: 'David' .
	jugadorMarron _ Jugador conFichasDeColor: 'Marron' conNombre: 'Sofia'.
	"Localidades"
	unQuilmes _ Localidad conNombre: 'Quilmes'.
	unEzpeleta _ Localidad conNombre: 'Ezpeleta'.
	unDonBosco _ Localidad conNombre: 'Don Bosco'.
	unBernal _ Localidad conNombre: 'Bernal'.
	unSolano _ Localidad conNombre: 'San Francisco Solano'.
	unLaFlorida _ Localidad conNombre: 'La Florida'.
	"Este es un TEQ con 4 jugadores"
	unTeqDe4Jugadores _ TEQ conLocalidades: {unQuilmes . unEzpeleta . unDonBosco . unBernal . unSolano . unLaFlorida} conJugadores: {jugadorRosa . jugadorCeleste . jugadorColorado. jugadorMarron} conTiradaDeDados: tiradorDeDados.
	"las localidades limitrofes"
	unQuilmes esLimitrofeCon: {unEzpeleta . unLaFlorida . unSolano . unBernal}.
	unEzpeleta esLimitrofeCon: {unQuilmes}.
	unLaFlorida esLimitrofeCon: {unQuilmes . unSolano}.
	unBernal esLimitrofeCon: {unQuilmes . unDonBosco}.
	unSolano esLimitrofeCon: {unQuilmes . unLaFlorida }.
	unDonBosco esLimitrofeCon: {unBernal}.
	"unArchivoVacio _ 'EstadoDePartida.txt' asFileEntry ."
	
	unTeqDe4Jugadores imprimirEstadoDePartidaEn: unArchivoVacio .
	
	Assert that: jugadorRosa cantidadDeLocalidades isEqualTo: 1.
	Assert that: jugadorCeleste cantidadDeLocalidades isEqualTo: 2.
	Assert that: jugadorColorado cantidadDeLocalidades isEqualTo: 2.
	Assert that: jugadorMarron cantidadDeLocalidades isEqualTo: 1.
	Assert that: unTeqDe4Jugadores cantidadDeJugadores isEqualTo: 4.
	Assert that: unQuilmes cantidadDeEjercitos  isEqualTo: 2.
	Assert that: unTeqDe4Jugadores estadoDePartida isEqualTo: unArchivoVacio fileContents 
	
	
	
	
	! !

!TEQTest methodsFor: 'TEQ -- Test' stamp: 'ft 12/10/2020 16:06:46'!
test026_LasLocalidadesDelNuevoTeqTienen2FichasDeEjercitosDelColorCorrespondiente

	"Se paso a la inicializacion"
	"teq repartirLocalidadesYPonerFichasDeColor."
	
	|unTeqDe4Jugadores jugadorRosa jugadorCeleste jugadorColorado jugadorMarron unBernal unDonBosco unEzpeleta unLaFlorida unQuilmes unSolano |
	"Jugadores" 
	jugadorRosa _ Jugador conFichasDeColor: 'Rosa' conNombre: 'Lautaro' .
	jugadorCeleste _ Jugador conFichasDeColor: 'Celeste' conNombre: 'Flavio' .
	jugadorColorado _ Jugador conFichasDeColor: 'Colorado' conNombre: 'David' .
	jugadorMarron _ Jugador conFichasDeColor: 'Marron' conNombre: 'Sofia'.
	"Localidades"
	unQuilmes _ Localidad conNombre: 'Quilmes'.
	unEzpeleta _ Localidad conNombre: 'Ezpeleta'.
	unDonBosco _ Localidad conNombre: 'Don Bosco'.
	unBernal _ Localidad conNombre: 'Bernal'.
	unSolano _ Localidad conNombre: 'San Francisco Solano'.
	unLaFlorida _ Localidad conNombre: 'La Florida'.
	"Este es un TEQ con 4 jugadores"
	unTeqDe4Jugadores _ TEQ conLocalidades: {unQuilmes . unEzpeleta . unDonBosco . unBernal . unSolano . unLaFlorida} conJugadores: {jugadorRosa . jugadorCeleste . jugadorColorado. jugadorMarron} conTiradaDeDados: tiradorDeDados.
	"las localidades limitrofes"
	unQuilmes esLimitrofeCon: {unEzpeleta . unLaFlorida . unSolano . unBernal}.
	unEzpeleta esLimitrofeCon: {unQuilmes}.
	unLaFlorida esLimitrofeCon: {unQuilmes . unSolano}.
	unBernal esLimitrofeCon: {unQuilmes . unDonBosco}.
	unSolano esLimitrofeCon: {unQuilmes . unLaFlorida }.
	unDonBosco esLimitrofeCon: {unBernal}.
	
	"unArchivoVacio _ 'EstadoDePartida.txt' asFileEntry ."
	unTeqDe4Jugadores imprimirEstadoDePartidaEn: unArchivoVacio .
	
	Assert that: unQuilmes cantidadDeEjercitos  isEqualTo: 2.
	Assert that: unQuilmes colorDeEjercito isEqualTo: 'Celeste'.
	Assert that: unEzpeleta cantidadDeEjercitos  isEqualTo: 2.
	Assert that: unEzpeleta colorDeEjercito isEqualTo: 'Colorado'.
	Assert that: unDonBosco cantidadDeEjercitos  isEqualTo: 2.
	Assert that: unDonBosco colorDeEjercito  isEqualTo: 'Marron'.
	Assert that: unBernal cantidadDeEjercitos  isEqualTo: 2.
	Assert that: unBernal colorDeEjercito  isEqualTo: 'Rosa'.
	Assert that: unTeqDe4Jugadores estadoDePartida isEqualTo: unArchivoVacio fileContents 
	
	
	
	
	
	
	! !

!TEQTest methodsFor: 'TEQ -- Test' stamp: 'ft 12/10/2020 16:06:27'!
test027_JugadorCelesteAtacaAJugadorRosaYGanaLaLocalidadDejandoloFueraDeJuego

	"Se paso a la inicializacion"
	"teq repartirLocalidadesYPonerFichasDeColor."
	
	|unTeqDe4Jugadores jugadorRosa jugadorCeleste jugadorColorado jugadorMarron unBernal unDonBosco unEzpeleta unLaFlorida unQuilmes unSolano |
	"Jugadores" 
	jugadorRosa _ Jugador conFichasDeColor: 'Rosa' conNombre: 'Lautaro'.
	jugadorCeleste _ Jugador conFichasDeColor: 'Celeste' conNombre: 'Flavio' .
	jugadorColorado _ Jugador conFichasDeColor: 'Colorado' conNombre: 'David' .
	jugadorMarron _ Jugador conFichasDeColor: 'Marron' conNombre: 'Sofia'.
	"Localidades"
	unQuilmes _ Localidad conNombre: 'Quilmes'.
	unEzpeleta _ Localidad conNombre: 'Ezpeleta'.
	unDonBosco _ Localidad conNombre: 'Don Bosco'.
	unBernal _ Localidad conNombre: 'Bernal'.
	unSolano _ Localidad conNombre: 'San Francisco Solano'.
	unLaFlorida _ Localidad conNombre: 'La Florida'.
	"Este es un TEQ con 4 jugadores"
	unTeqDe4Jugadores _ TEQ conLocalidades: {unQuilmes . unEzpeleta . unDonBosco . unBernal . unSolano . unLaFlorida} conJugadores: {jugadorRosa . jugadorCeleste . jugadorColorado. jugadorMarron} conTiradaDeDados: tiradorDeDados.
	"las localidades limitrofes"
	unQuilmes esLimitrofeCon: {unEzpeleta . unLaFlorida . unSolano . unBernal}.
	unEzpeleta esLimitrofeCon: {unQuilmes}.
	unLaFlorida esLimitrofeCon: {unQuilmes . unSolano}.
	unBernal esLimitrofeCon: {unQuilmes . unDonBosco}.
	unSolano esLimitrofeCon: {unQuilmes . unLaFlorida }.
	unDonBosco esLimitrofeCon: {unBernal}.
	
	tiradorDeDados siguientesNumerosEnSalir: {6 . 1}.
	jugadorRosa quitarEjercitoEn: unBernal.
	unTeqDe4Jugadores terminarTurnoDe: jugadorRosa.
	unTeqDe4Jugadores realizaAtaqueElJugador: jugadorCeleste de: unQuilmes  a: unBernal  de:jugadorRosa unaTiradaDeDados: tiradorDeDados. 
	"unArchivoVacio _ 'EstadoDePartida.txt' asFileEntry ."
	
	unTeqDe4Jugadores imprimirEstadoDePartidaEn: unArchivoVacio .
	
	Assert that: unBernal cantidadDeEjercitos  isEqualTo: 1.
	Assert that: unBernal colorDeEjercito  isEqualTo: 'Celeste'.
	Assert that: jugadorRosa  estadoDeJugadorEnJuego isEqualTo: 'Fuera de juego'. 
	Assert that: jugadorRosa cantidadDeLocalidades isEqualTo:0. 
	Assert that: unTeqDe4Jugadores estadoDePartida isEqualTo: unArchivoVacio fileContents 
	
	
	
	
	! !


!TEQTest methodsFor: 'Jugador -- Test' stamp: 'LPC 12/9/2020 00:32:27'!
test001_elNombreDelJugadorAmarilloEsJuan
	
	
	
	| unJugadorAmarillo |
	unJugadorAmarillo := Jugador conFichasDeColor: 'Amarillo' conNombre: 'Juan'.
	
	Assert that: unJugadorAmarillo nombre isEqualTo: 'Juan'.
	
	"nombre"
	"cantidad de localidades que tiene"
	"las localidades que tiene"
	"Defensa y ataque - dados"
	"Es ganador"
	""! !

!TEQTest methodsFor: 'Jugador -- Test' stamp: 'LPC 12/9/2020 01:22:13'!
test002_elJugadorAmarilloComienzaCon3LocalidadesCuandoHayDosjugadores
	
	
	
	Assert that: jugadorAmarillo cantidadDeLocalidades isEqualTo: 3.
	
	! !

!TEQTest methodsFor: 'Jugador -- Test' stamp: 'LPC 12/9/2020 01:22:10'!
test003_elJugadorAmarilloComienzaCon3LocalidadesCuandoHayDosjugadoresQueSonEzpeletaBernalYLaFlorida
	
	
	
	Assert that: jugadorAmarillo localidades isEqualTo: {ezpeleta . bernal  .laFlorida} asSet.
	
	! !

!TEQTest methodsFor: 'Jugador -- Test' stamp: 'LPC 12/9/2020 01:22:06'!
test004_elJugadorAmarilloSeDefiendeConDosDadosPorqueTiene2EjercitosEnLaFlorida
	
	tiradorDeDados siguientesNumerosEnSalir: {1 . 2 . 4}.
	
	Assert that: (jugadorAmarillo cantidadDeDatosCorrespondientesParaDefenderseConLaLocalidad: laFlorida ) isEqualTo: 2.
	
	! !

!TEQTest methodsFor: 'Jugador -- Test' stamp: 'LPC 12/9/2020 01:22:03'!
test005_elJugadorAmarilloSeDefiendeConTresDadosPorqueTiene3EjercitosEnLaFlorida
	
	tiradorDeDados siguientesNumerosEnSalir: {1 . 2 . 4}.
	jugadorAmarillo agregarEjercitoEn: laFlorida .
	
	
	Assert that: (jugadorAmarillo cantidadDeDatosCorrespondientesParaDefenderseConLaLocalidad: laFlorida ) isEqualTo: 3.
	
	! !

!TEQTest methodsFor: 'Jugador -- Test' stamp: 'LPC 12/9/2020 01:21:59'!
test006_elJugadorAmarilloSeDefiendeConTresDadosAunqueTengaMasDe3EjercitosEnLaLocalidad
	
	tiradorDeDados siguientesNumerosEnSalir: {1 . 2 . 4}.
	jugadorAmarillo agregarEjercitoEn: laFlorida .
	jugadorAmarillo agregarEjercitoEn: laFlorida .
	
	
	Assert that: (jugadorAmarillo cantidadDeDatosCorrespondientesParaDefenderseConLaLocalidad: laFlorida ) isEqualTo: 3.
	
	! !

!TEQTest methodsFor: 'Jugador -- Test' stamp: 'LPC 12/9/2020 01:21:56'!
test007_elJugadorAmarilloAtacaConUnDadosPorqueTieneDosEjercitosEnLaLocalidad
	
	tiradorDeDados siguientesNumerosEnSalir: {1 . 2 . 4}.
		
	
	Assert that: (jugadorAmarillo cantidadDeDatosCorrespondientesParaAtacarConLaLocalidad: laFlorida ) isEqualTo: 1.
	
	! !

!TEQTest methodsFor: 'Jugador -- Test' stamp: 'LPC 12/9/2020 01:21:50'!
test008_elJugadorAmarilloAtacaConTresDadosAunqueTenga5Ejercitos
	
	tiradorDeDados siguientesNumerosEnSalir: {1 . 2 . 4}.
	jugadorAmarillo agregarEjercitoEn: laFlorida .
	jugadorAmarillo agregarEjercitoEn: laFlorida .
	jugadorAmarillo agregarEjercitoEn: laFlorida .
	
	
	Assert that: (jugadorAmarillo cantidadDeDatosCorrespondientesParaAtacarConLaLocalidad: laFlorida ) isEqualTo: 3.
	
	! !

!TEQTest methodsFor: 'Jugador -- Test' stamp: 'ft 12/9/2020 16:44:54'!
test009_ElEstadoDelJugadorEsEnCurso
	
	
	
	
	Assert that: jugadorAmarillo estadoDeJugadorEnJuego isEqualTo: 'En curso'.
	
	! !

!TEQTest methodsFor: 'Jugador -- Test' stamp: 'ft 12/9/2020 17:02:01'!
test010_unJugadoNuevoQueNoEsteEnElTeqNoTieneLocalidades	
	

       | jugadorNuevo |
	jugadorNuevo _ Jugador conFichasDeColor: 'Negro' conNombre: 'anonimo'. 	
	Assert that: jugadorNuevo cantidadDeLocalidades isEqualTo: 0.
	
	! !


!TEQTest methodsFor: 'setUp' stamp: 'ft 12/10/2020 16:16:14'!
setUp
	"localidades del TEQ"
	quilmes _ Localidad conNombre: 'Quilmes'.
	ezpeleta _ Localidad conNombre: 'Ezpeleta'.
	donBosco _ Localidad conNombre: 'Don Bosco'.
	bernal _ Localidad conNombre: 'Bernal'.
	solano _ Localidad conNombre: 'San Francisco Solano'.
	laFlorida _ Localidad conNombre: 'La Florida'.
	"este es nuestro objeto que nos da los numeros de dados a salir"
	tiradorDeDados _ TiradorDeDados new.
	"estos son los jugadores del TEQ"
	jugadorAmarillo _ Jugador conFichasDeColor: 'Amarillo' conNombre: 'Juan' .
	jugadorAzul _ Jugador conFichasDeColor: 'Azul' conNombre: 'Gaston' .
	
	"partida de TEQ con 2 jugadores."
	teqDe2Jugadores _ TEQ conLocalidades: {quilmes . ezpeleta . donBosco . bernal . solano . laFlorida} conJugadores: {jugadorAmarillo . jugadorAzul} conTiradaDeDados: tiradorDeDados.
	
	
	quilmes esLimitrofeCon: {ezpeleta . laFlorida . solano . bernal}.
	ezpeleta esLimitrofeCon: {quilmes}.
	laFlorida esLimitrofeCon: {quilmes . solano}.
	bernal esLimitrofeCon: {quilmes . donBosco}.
	solano esLimitrofeCon: {quilmes . laFlorida }.
	donBosco esLimitrofeCon: {bernal}.
	
	unArchivoVacio _ ArchivoDeMentiras new. 

	
	
	! !


!classDefinition: #ArchivoDeMentiras category: 'TrabajoPracticoFinal-TEQ-Grupo8'!
Object subclass: #ArchivoDeMentiras
	instanceVariableNames: 'contenido'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoPracticoFinal-TEQ-Grupo8'!

!ArchivoDeMentiras methodsFor: 'as yet unclassified' stamp: 'ft 12/10/2020 16:02:09'!
fileContents
	
	^ contenido contents .! !

!ArchivoDeMentiras methodsFor: 'as yet unclassified' stamp: 'ft 12/10/2020 16:01:36'!
forceWriteStreamDo: aBlockClosure 
	aBlockClosure value: contenido. ! !

!ArchivoDeMentiras methodsFor: 'as yet unclassified' stamp: 'ft 12/10/2020 16:01:05'!
initialize
	
	contenido _ ReadWriteStream on: ''.! !


!classDefinition: #Jugador category: 'TrabajoPracticoFinal-TEQ-Grupo8'!
Object subclass: #Jugador
	instanceVariableNames: 'colorDeFicha listaDeLocalidades nombre estadoDeJugadorEnJuego'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoPracticoFinal-TEQ-Grupo8'!

!Jugador methodsFor: 'initialize' stamp: 'ft 12/9/2020 16:21:19'!
initializeConFichasDeColor: unColorDeFicha conNombre: unNombreDejugador  
	
	colorDeFicha := unColorDeFicha.
	listaDeLocalidades  := Set new.
	nombre := unNombreDejugador .
	estadoDeJugadorEnJuego := 'En curso' 
	! !


!Jugador methodsFor: 'acciones' stamp: 'LPC 12/9/2020 04:07:17'!
agregar1FichaEnTodasSusLocalidades
	
	^ listaDeLocalidades do:[:localidad | self agregarEjercitoEn: localidad ]! !

!Jugador methodsFor: 'acciones' stamp: 'LPC 12/9/2020 00:59:07'!
agregarEjercitoEn: unaLocalidad 
	
	unaLocalidad agregarEjercito: 1.! !

!Jugador methodsFor: 'acciones' stamp: 'LPC 12/8/2020 14:33:13'!
agregarLocalidad: unaLocalidad 
	
	listaDeLocalidades add: unaLocalidad .! !

!Jugador methodsFor: 'acciones' stamp: 'ft 12/9/2020 16:23:12'!
cambiarEstadoDeJuego: unEstadoDeJuego 
	estadoDeJugadorEnJuego _ unEstadoDeJuego.! !

!Jugador methodsFor: 'acciones' stamp: 'LPC 12/9/2020 01:15:09'!
cantidadDeDatosCorrespondientesParaAtacarConLaLocalidad: unaLocalidad 
	
	^((unaLocalidad cantidadDeEjercitos) - 1) min: 3.! !

!Jugador methodsFor: 'acciones' stamp: 'LPC 12/9/2020 00:46:32'!
cantidadDeDatosCorrespondientesParaDefenderseConLaLocalidad: unaLocalidad 
	
	^(unaLocalidad cantidadDeEjercitos) min: 3.! !

!Jugador methodsFor: 'acciones' stamp: 'LPC 12/9/2020 03:25:14'!
ganaLocalidad: unaLocalidad de: unJugador 
	
	self agregarLocalidad: ((unJugador localidades) remove: unaLocalidad ).
	self agregarEjercitoEn: unaLocalidad .
	unaLocalidad cambiarColorA: (self color)! !

!Jugador methodsFor: 'acciones' stamp: 'ft 12/9/2020 16:55:08'!
imprimirEstadoDeJuego: unStream
	(self nombre) printOn: unStream .
	unStream nextPutAll: (':').
	unStream space.
	(self estadoDeJugadorEnJuego) printOn: unStream. 
	unStream newLine.! !

!Jugador methodsFor: 'acciones' stamp: 'ft 12/9/2020 15:03:20'!
imprimirLocalidadesQueTiene: unStream
	unStream nextPutAll: ('Localidades de').
	unStream space.
	(self nombre) printOn: unStream. 
	unStream nextPutAll: (':'). 
	(self localidades) do: [:localidad | (localidad nombreLocalidad) printOn: unStream ].
	unStream space.
	unStream nextPutAll: (';').
	unStream nextPutAll: ('Color de jugador:').
	unStream  space.
	(self color) printOn: unStream.
	unStream newLine .! !

!Jugador methodsFor: 'acciones' stamp: 'LPC 12/9/2020 03:34:37'!
pierdeFichaEn: unaLocalidad 
	
	unaLocalidad quitarFicha: 1.! !

!Jugador methodsFor: 'acciones' stamp: 'LPC 12/9/2020 01:58:08'!
quitarEjercitoEn: unaLocalidad 
	
	unaLocalidad quitarFicha: 1.! !

!Jugador methodsFor: 'acciones' stamp: 'LPC 12/9/2020 02:28:56'!
realizaAtaqueCon: unaLocalidadAtacante a: unaLocalidadDefensora de: unJugadorDefensor unaTiradaDeDados: tiradaDeDados 
	
	| dadosAtacante dadosDefensor |
	dadosAtacante _ self tirarDadosAtacantes: tiradaDeDados para: unaLocalidadAtacante. 
	dadosDefensor _ unJugadorDefensor tirarDadosDefensor: tiradaDeDados para: unaLocalidadDefensora.
	
	(self cantidadDeVecesQueSePuedeRealizarDueloEntre: dadosAtacante y: dadosDefensor)
	do: [:numero | (self resoluciondeCombateCantidadVeces: numero con: dadosDefensor y: dadosAtacante) resolverCombatePara: self en: unaLocalidadAtacante con: unJugadorDefensor de: unaLocalidadDefensora ]! !

!Jugador methodsFor: 'acciones' stamp: 'LPC 12/9/2020 02:44:45'!
resoluciondeCombateCantidadVeces: unaCantidadDeVeces con: dadosDefensores y: dadosAtacantes 
	
	^ResolucionDeCombate resolucionDeCombateCantidadDeVeces: unaCantidadDeVeces con: dadosDefensores y: dadosAtacantes ! !

!Jugador methodsFor: 'acciones' stamp: 'LPC 12/9/2020 02:32:28'!
tirarDadosAtacantes: unaTiradorDeDados para: unaLocalidad 
	
	^(unaTiradorDeDados generarUnaTiradaDeDadosDe: (self cantidadDeDatosCorrespondientesParaAtacarConLaLocalidad: unaLocalidad )) asSortedCollection: [:primerValor : segundoValor | primerValor > segundoValor ]! !

!Jugador methodsFor: 'acciones' stamp: 'LPC 12/9/2020 02:34:45'!
tirarDadosDefensor: unaTiradorDeDados para: unaLocalidad 
	
	^(unaTiradorDeDados generarUnaTiradaDeDadosDe: (self cantidadDeDatosCorrespondientesParaDefenderseConLaLocalidad: unaLocalidad )) asSortedCollection: [:primerValor :segundoValor | primerValor > segundoValor ]! !


!Jugador methodsFor: 'accessing' stamp: 'LPC 12/8/2020 14:39:30'!
cantidadDeLocalidades
	
	^listaDeLocalidades size.! !

!Jugador methodsFor: 'accessing' stamp: 'LPC 12/9/2020 02:38:09'!
cantidadDeVecesQueSePuedeRealizarDueloEntre: dadosDefensores y: dadosAtacantes 
	
	^1 to: ((dadosAtacantes size) min: (dadosDefensores size))! !

!Jugador methodsFor: 'accessing' stamp: 'LPC 12/8/2020 14:54:11'!
color
	^colorDeFicha.! !

!Jugador methodsFor: 'accessing' stamp: 'ft 12/9/2020 16:44:54'!
estadoDeJugadorEnJuego
	^ estadoDeJugadorEnJuego! !

!Jugador methodsFor: 'accessing' stamp: 'LPC 12/9/2020 00:36:07'!
localidades
	^listaDeLocalidades ! !

!Jugador methodsFor: 'accessing' stamp: 'LPC 12/9/2020 00:31:24'!
nombre
	
	^nombre .
	! !

!Jugador methodsFor: 'accessing' stamp: 'LPC 12/9/2020 02:10:24'!
ocupaA: unaLocalidad 
	
	^listaDeLocalidades anySatisfy: [:localidad | localidad = unaLocalidad ]! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Jugador class' category: 'TrabajoPracticoFinal-TEQ-Grupo8'!
Jugador class
	instanceVariableNames: ''!

!Jugador class methodsFor: 'instance creation' stamp: 'LPC 12/9/2020 00:30:42'!
conFichasDeColor: unColorDeFicha conNombre: nombre  
	
	^self new initializeConFichasDeColor: unColorDeFicha conNombre: nombre ! !


!classDefinition: #Localidad category: 'TrabajoPracticoFinal-TEQ-Grupo8'!
Object subclass: #Localidad
	instanceVariableNames: 'cantidadDeFichasEnLocalidad colorDeFichaEnLocalidad nombreDeLocalidad listaDeLocalidadesLimitrofes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoPracticoFinal-TEQ-Grupo8'!

!Localidad methodsFor: 'acciones' stamp: 'LPC 12/9/2020 00:59:42'!
agregarEjercito: unaCantidadDeEjercitos
	
	cantidadDeFichasEnLocalidad _ cantidadDeFichasEnLocalidad + unaCantidadDeEjercitos .! !

!Localidad methodsFor: 'acciones' stamp: 'LPC 12/9/2020 03:25:43'!
cambiarColorA: unColorDeFicha 
	
	colorDeFichaEnLocalidad _ unColorDeFicha ! !

!Localidad methodsFor: 'acciones' stamp: 'ft 12/9/2020 14:47:50'!
imprimirCantidadDeEjercitosQueTieneYColorQueDeEjercito: unStream 
	
	
	(self nombreLocalidad) printOn: unStream.
	unStream space.
	unStream nextPutAll: ('Cantidad de ejercitos:').
	(self cantidadDeEjercitos) printOn: unStream .
	unStream space.
	unStream nextPutAll: ('Color de ejercito actual:').
	(self colorDeEjercito) printOn: unStream .
	unStream newLine.! !

!Localidad methodsFor: 'acciones' stamp: 'LPC 12/9/2020 02:00:24'!
quitarFicha: unaCantidadDeFichas
	
	cantidadDeFichasEnLocalidad _ cantidadDeFichasEnLocalidad - unaCantidadDeFichas ! !


!Localidad methodsFor: 'accessing' stamp: 'LPC 12/8/2020 14:43:52'!
cantidadDeEjercitos
	^ cantidadDeFichasEnLocalidad.! !

!Localidad methodsFor: 'accessing' stamp: 'LPC 12/8/2020 14:49:25'!
colorDeEjercito
	
	^colorDeFichaEnLocalidad ! !

!Localidad methodsFor: 'accessing' stamp: 'LPC 12/8/2020 15:54:48'!
esLimitrofeCon: unaListaDeLocalidades
	
	listaDeLocalidadesLimitrofes _ unaListaDeLocalidades asSet.! !

!Localidad methodsFor: 'accessing' stamp: 'LPC 12/8/2020 15:55:27'!
limitaCon: unaLocalidad 
	
	^listaDeLocalidadesLimitrofes includes: unaLocalidad .! !

!Localidad methodsFor: 'accessing' stamp: 'LPC 12/8/2020 15:44:54'!
nombreLocalidad
	
	^nombreDeLocalidad ! !


!Localidad methodsFor: 'initialize' stamp: 'ft 12/10/2020 15:25:56'!
inicializarCon: unJugador 
	
	colorDeFichaEnLocalidad _ unJugador color.
	cantidadDeFichasEnLocalidad _ 2.! !

!Localidad methodsFor: 'initialize' stamp: 'ft 12/10/2020 16:22:07'!
initialize
	
	cantidadDeFichasEnLocalidad _ 0.
	colorDeFichaEnLocalidad _ nil.! !

!Localidad methodsFor: 'initialize' stamp: 'LPC 12/8/2020 15:44:42'!
initializeConNombre: unNombreDeLocalidad 

	nombreDeLocalidad := unNombreDeLocalidad.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Localidad class' category: 'TrabajoPracticoFinal-TEQ-Grupo8'!
Localidad class
	instanceVariableNames: ''!

!Localidad class methodsFor: 'instance creation' stamp: 'LPC 12/8/2020 15:44:12'!
conNombre: unNombreDeLocalidad 
	
	^self new initializeConNombre: unNombreDeLocalidad ! !


!classDefinition: #ResolucionDeCombate category: 'TrabajoPracticoFinal-TEQ-Grupo8'!
Object subclass: #ResolucionDeCombate
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoPracticoFinal-TEQ-Grupo8'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ResolucionDeCombate class' category: 'TrabajoPracticoFinal-TEQ-Grupo8'!
ResolucionDeCombate class
	instanceVariableNames: ''!

!ResolucionDeCombate class methodsFor: 'as yet unclassified' stamp: 'LPC 12/9/2020 02:49:27'!
resolucionDeCombateCantidadDeVeces: unaCantidadDeVeces con: dadosDefensores y: dadosAtacantes 
	
	^(self allSubclasses detect: [:resolucionDeCombate | resolucionDeCombate sePuedeHacerCargoCon: unaCantidadDeVeces con: dadosDefensores y: dadosAtacantes ]) new.! !


!classDefinition: #GanaAtacante category: 'TrabajoPracticoFinal-TEQ-Grupo8'!
ResolucionDeCombate subclass: #GanaAtacante
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoPracticoFinal-TEQ-Grupo8'!

!GanaAtacante methodsFor: 'as yet unclassified' stamp: 'ft 12/9/2020 16:32:02'!
resolverCombatePara: unJugadorAtacante en: unaLocalidadAtacante con: unJugadorDefensor de: unaLocalidadDefensora
	
	unJugadorDefensor quitarEjercitoEn: unaLocalidadDefensora .
	
	((unaLocalidadDefensora cantidadDeEjercitos ) = 0)
		ifTrue: [unJugadorAtacante ganaLocalidad: unaLocalidadDefensora de: unJugadorDefensor ].
	((unJugadorDefensor cantidadDeLocalidades) = 0)
		ifTrue: [unJugadorDefensor cambiarEstadoDeJuego: 'Fuera de juego'].
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'GanaAtacante class' category: 'TrabajoPracticoFinal-TEQ-Grupo8'!
GanaAtacante class
	instanceVariableNames: ''!

!GanaAtacante class methodsFor: 'as yet unclassified' stamp: 'LPC 12/9/2020 02:51:21'!
sePuedeHacerCargoCon: unaCantidadDeVeces con: dadosDefensores y: dadosAtacante 
	
	^((dadosAtacante at: unaCantidadDeVeces ) > (dadosDefensores at: unaCantidadDeVeces )).! !


!classDefinition: #GanaDefensor category: 'TrabajoPracticoFinal-TEQ-Grupo8'!
ResolucionDeCombate subclass: #GanaDefensor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoPracticoFinal-TEQ-Grupo8'!

!GanaDefensor methodsFor: 'acciones' stamp: 'LPC 12/9/2020 02:54:18'!
resolverCombatePara: unJugadorAtacante en: unaLocalidadAtacante con: unJugadorDefensor de: unaLocalidadDefensora 
	
	unJugadorAtacante quitarEjercitoEn: unaLocalidadAtacante ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'GanaDefensor class' category: 'TrabajoPracticoFinal-TEQ-Grupo8'!
GanaDefensor class
	instanceVariableNames: ''!

!GanaDefensor class methodsFor: 'as yet unclassified' stamp: 'LPC 12/9/2020 02:52:32'!
sePuedeHacerCargoCon: unaCantidadDeVeces con: dadosDefensores y: dadosAtacante 
	
	^((dadosDefensores at:unaCantidadDeVeces ) >= (dadosAtacante at: unaCantidadDeVeces)).! !


!classDefinition: #TEQ category: 'TrabajoPracticoFinal-TEQ-Grupo8'!
Object subclass: #TEQ
	instanceVariableNames: 'jugadores localidades jugadoresARepartir ordenDeJugadores'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoPracticoFinal-TEQ-Grupo8'!

!TEQ methodsFor: 'accessing' stamp: 'LPC 12/8/2020 13:16:07'!
cantidadDeJugadores
	
	^jugadores size.! !

!TEQ methodsFor: 'accessing' stamp: 'LPC 12/8/2020 13:22:55'!
cantidadDeLocalidades
	^localidades size.! !

!TEQ methodsFor: 'accessing' stamp: 'ft 12/9/2020 16:53:02'!
estadoDePartida
	
	|estadoDePartida|
	
	estadoDePartida _ String streamContents: [:unStream | unStream nextPutAll: ('Estado de partida').
		unStream newLine .
		unStream nextPutAll: ('Cantidad de jugadores en Partida:') .
		unStream space.
		(self cantidadDeJugadores) printOn: unStream. 
		unStream newLine .
		unStream nextPutAll: ('Nombres de jugadores en partida:').
		unStream space.
		jugadores do: [:jugador| (jugador nombre)printOn: unStream].
		unStream newLine.
		unStream nextPutAll: ('Estado de juego de los jugadores:').
		unStream newLine.
		jugadores do: [:jugador | jugador imprimirEstadoDeJuego: unStream].
		jugadores do: [:jugador | 
					jugador imprimirLocalidadesQueTiene: unStream].
		unStream newLine .
		unStream nextPutAll: ('Estas son las localidades con su cantidad de ejercitos y color de ejercito correspondiente:'). 
		unStream newLine.
		localidades do: [: localidad | localidad imprimirCantidadDeEjercitosQueTieneYColorQueDeEjercito:unStream].
		unStream newLine.
		self imprimirSiHayGanador: unStream .
	].
	^estadoDePartida .! !

!TEQ methodsFor: 'accessing' stamp: 'ft 12/9/2020 15:09:50'!
ganadorDePartida
	^ jugadores detect: [: jugador| (jugador cantidadDeLocalidades) = 4].  ! !


!TEQ methodsFor: 'acciones' stamp: 'LPC 12/8/2020 13:14:45'!
agregarJugador: unJugador 
	
	jugadores add: unJugador .! !

!TEQ methodsFor: 'acciones' stamp: 'ft 12/10/2020 16:13:28'!
darLocalidad: unaLocalidad a: unJugador 
	
	unJugador agregarLocalidad: unaLocalidad .
	unaLocalidad inicializarCon: unJugador. ! !

!TEQ methodsFor: 'acciones' stamp: 'ft 12/10/2020 15:26:30'!
imprimirEstadoDePartidaEn: unArchivo
	"self halt."
	unArchivo forceWriteStreamDo: [:fileStream | fileStream nextPutAll: (self estadoDePartida) ].! !

!TEQ methodsFor: 'acciones' stamp: 'ft 12/9/2020 15:10:07'!
imprimirSiHayGanador: unStream 
	^(self hayGanadorDePartida) ifTrue: [unStream nextPutAll: ('El ganador de la partida es:'). 
								((self ganadorDePartida) nombre) printOn: unStream .].! !

!TEQ methodsFor: 'acciones' stamp: 'ft 12/10/2020 14:35:01'!
iniciarFaseDeEnrolamiento
	"Se asume que cuando se inicia la fase de enrolamiento todos los jugadores terminaron su turno y se vuelve al orden original de jugadores para los turnos sean correspondientes a cada uno."
	"es decir que si el jugador amarillo termino su turno y se inicia la fase de enrolamiento antes de que el jugador azul pudiese hacer algo, quiere decir, que el jugador azul no decidio atacar y simplemente salto su turno."
	self validarQueNoHayUnGanador .
	jugadores  _ ordenDeJugadores.  "esto es para volver al orden de jugadores original, ya que el mensaje terminarTurnoDe: Xjugador altera las posiciones de los jugadores."
	jugadores do: [:jugador | jugador agregar1FichaEnTodasSusLocalidades]. "estas es la manera en la que repartimos fichas en la fase de enrolamiento".
	! !

!TEQ methodsFor: 'acciones' stamp: 'ft 12/9/2020 16:32:59'!
realizaAtaqueElJugador: unJugadorAtacante de: unaLocalidadAtacante a: unaLocalidadDefensora de: unJugadorDefensor unaTiradaDeDados: unaTiradorDeDados 
	
	self validarQueNoHayUnGanador .
	self validarQueLaLocalidadTengaSuficientesTropasParaAtacar: unaLocalidadAtacante.
	self validarQue: unJugadorAtacante ocupa: unaLocalidadAtacante.
	self validarQue: unaLocalidadAtacante limitaCon: unaLocalidadDefensora.
	self validarQue: unaLocalidadDefensora noEsOcupadaPor: unJugadorAtacante .
	self validarQueEsTurnoDe: unJugadorAtacante.
	self validarQueEstaEnCursoElJugador: unJugadorDefensor.
	self validarQueEstaEnCursoElJugador: unJugadorAtacante.  
	
	unJugadorAtacante realizaAtaqueCon: unaLocalidadAtacante a: unaLocalidadDefensora de: unJugadorDefensor unaTiradaDeDados: unaTiradorDeDados .
	! !

!TEQ methodsFor: 'acciones' stamp: 'ft 12/10/2020 16:30:21'!
repartirLocalidadesYPonerFichasDeColor
	"el reparto de localidades empieza desde el segundo jugador ya que estamos utilizando un CircularReadStream y hacemos uso del mensaje next"
	localidades do: [: localidad | self darLocalidad: localidad a: jugadoresARepartir next]! !

!TEQ methodsFor: 'acciones' stamp: 'LPC 12/9/2020 01:48:31'!
terminarTurnoDe: unJugador 
	
	self validarQueEsTurnoDe: unJugador .
	self validarQueNoHayUnGanador.
	jugadores addLast: (jugadores removeFirst).
	 ! !


!TEQ methodsFor: 'initialize' stamp: 'ft 12/9/2020 16:41:32'!
initialize 

	jugadores _ OrderedCollection new.! !

!TEQ methodsFor: 'initialize' stamp: 'ft 12/10/2020 14:26:20'!
initializeConLocalidades: unaListaDeLocalidades conJugadores: unaListaDeJugadores  
	
	localidades := unaListaDeLocalidades.
	jugadores := unaListaDeJugadores asOrderedCollection .
	jugadoresARepartir := (CircularReadStream on: unaListaDeJugadores moving: NullUnit new startingCircleAtIndex: 1).
	self repartirLocalidadesYPonerFichasDeColor.
	ordenDeJugadores := unaListaDeJugadores asOrderedCollection.
	! !


!TEQ methodsFor: 'validacionesDeTeq' stamp: 'LPC 12/9/2020 02:14:56'!
validarQue: unaLocalidadAtacante limitaCon: unaLocalidadDefensora
	
	^(unaLocalidadAtacante limitaCon: unaLocalidadDefensora) 
		ifFalse: [self error: 'La localidad atacante no limita con la localidad defensora']! !

!TEQ methodsFor: 'validacionesDeTeq' stamp: 'LPC 12/9/2020 03:49:15'!
validarQue: unaLocalidad noEsOcupadaPor: unJugador 
	
	^((unJugador ocupaA: unaLocalidad) not) 
		ifFalse: [self error: 'No podes atacar a tu propia localidad']! !

!TEQ methodsFor: 'validacionesDeTeq' stamp: 'LPC 12/9/2020 02:09:34'!
validarQue: unJugador ocupa: unaLocalidad 
	
	^(unJugador ocupaA: unaLocalidad ) 
		ifFalse: [self error: 'El jugador atacante no ocupa la localidad']! !

!TEQ methodsFor: 'validacionesDeTeq' stamp: 'LPC 12/9/2020 01:37:47'!
validarQueEsTurnoDe: unJugador 
	
	^(self esTurnoDe: unJugador)
		ifFalse: [self error: 'No es tu turno']! !

!TEQ methodsFor: 'validacionesDeTeq' stamp: 'ft 12/9/2020 16:44:26'!
validarQueEstaEnCursoElJugador: unJugador 
	((self estaEnCursoEl: unJugador))
		ifFalse: [self error: 'este jugador esta fuera de juego'].! !

!TEQ methodsFor: 'validacionesDeTeq' stamp: 'LPC 12/9/2020 02:08:29'!
validarQueLaLocalidadTengaSuficientesTropasParaAtacar: unaLocalidad 
	
	^ (unaLocalidad cantidadDeEjercitos >= 2)
		ifFalse: [self error: 'No tenes suficientes tropas para atacar']! !

!TEQ methodsFor: 'validacionesDeTeq' stamp: 'LPC 12/9/2020 01:40:58'!
validarQueNoHayUnGanador
	
	^ (jugadores anySatisfy: [:jugador | (jugador cantidadDeLocalidades) = 4])
		ifTrue: [self error: 'Ya hay un ganador']! !


!TEQ methodsFor: 'testing' stamp: 'LPC 12/9/2020 01:30:08'!
esTurnoDe: unJugador 
	
	^((jugadores first) = unJugador )! !

!TEQ methodsFor: 'testing' stamp: 'ft 12/9/2020 16:44:54'!
estaEnCursoEl: unJugador

	^ (unJugador estadoDeJugadorEnJuego)  = 'En curso'! !

!TEQ methodsFor: 'testing' stamp: 'ft 12/9/2020 15:08:36'!
hayGanadorDePartida
	^jugadores anySatisfy: [: jugador| (jugador cantidadDeLocalidades) =  4]. ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TEQ class' category: 'TrabajoPracticoFinal-TEQ-Grupo8'!
TEQ class
	instanceVariableNames: ''!

!TEQ class methodsFor: 'instance creation' stamp: 'LPC 12/9/2020 00:39:21'!
conLocalidades: unaListaDeLocalidades conJugadores: unaListaDeJugadores conTiradaDeDados: unaTiradaDeDados   
	
	^self new initializeConLocalidades: unaListaDeLocalidades conJugadores: unaListaDeJugadores ! !


!classDefinition: #TiradorDeDados category: 'TrabajoPracticoFinal-TEQ-Grupo8'!
Object subclass: #TiradorDeDados
	instanceVariableNames: 'valoresDeDados'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrabajoPracticoFinal-TEQ-Grupo8'!

!TiradorDeDados methodsFor: 'acciones' stamp: 'LPC 12/9/2020 02:33:08'!
generarUnaTiradaDeDadosDe: unaCantidadDeDados
	
	^valoresDeDados removeFirst: unaCantidadDeDados ! !

!TiradorDeDados methodsFor: 'acciones' stamp: 'LPC 12/9/2020 00:43:44'!
siguientesNumerosEnSalir: unosValoresDeDados
	
	valoresDeDados := unosValoresDeDados asOrderedCollection .! !
