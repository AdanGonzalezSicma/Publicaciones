var miAudio = document.getElementById("miAudio");
var vid = document.getElementById("miAudio");
var interval;

function iniciar() {
	if (miAudio.paused) {
    	miAudio.play();

    	try{
    		var btnCarpetaEntorno = document.getElementById("btnCarpetaEntorno");
    		
    		if(btnCarpetaEntorno.value == "1"){
    			document.getElementById("iniciar").innerHTML = "<img src=../img/Pause.ico style=width:150%>";	
    		}else{
    			document.getElementById("iniciar").innerHTML = "<img src=img/Pause.ico style=width:150%>";	
    		}
    	}catch(error){

    	}

    	fncIconoPlay();
	} else {
    	miAudio.pause();
    	var btnPlay = document.getElementById("iniciar");
    	btnPlay.disabled = false;
    	document.getElementById("iniciar").innerHTML = "<img src=img/Play.ico style=width:150%>";
  	}
}

function reiniciar() {
  // nos posicionamos al inicio de la cancion
  miAudio.currentTime = 0;
  if (miAudio.paused) {
    miAudio.play();
    document.getElementById("iniciar").innerHTML = "<img src=img/Pause.ico style=width:150%>";
  }
}

function setHalfVolume() {
  vid.volume = 0.2;
}

function setFullVolume() {
  vid.volume = 1.0;
}

function fncIconoPlay(){

    var cont = 0;
    var id = setInterval(function () {

        if (miAudio.played){
        	try{
				var btnPlay = document.getElementById("iniciar");
	    		btnPlay.disabled = true;
        	}catch(error){

        	}

        	try{
				var btnComenzarCurso = document.getElementById("btnComenzarCurso");
				btnComenzarCurso.disabled = true;
        	}catch(error){
        		
        	}

        	try{
				var btnContinuarOrientaciones1 = document.getElementById("btnContinuarOrientaciones1");
				btnContinuarOrientaciones1.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarOrientaciones2 = document.getElementById("btnContinuarOrientaciones2");
        		btnContinuarOrientaciones2.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarOrientaciones3 = document.getElementById("btnContinuarOrientaciones3");
        		btnContinuarOrientaciones3.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarOrientaciones4 = document.getElementById("btnContinuarOrientaciones4");
        		btnContinuarOrientaciones4.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarImplementacion = document.getElementById("btnContinuarImplementacion");
        		btnContinuarImplementacion.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarImplementacion2 = document.getElementById("btnContinuarImplementacion2");
        		btnContinuarImplementacion2.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarInicioCurso = document.getElementById("btnContinuarInicioCurso");
        		btnContinuarInicioCurso.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarContenido = document.getElementById("btnContinuarContenido");
        		btnContinuarContenido.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarObjetivoNOM035 = document.getElementById("btnContinuarObjetivoNOM035");
        		btnContinuarObjetivoNOM035.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarObjetivo = document.getElementById("btnContinuarObjetivo");
        		btnContinuarObjetivo.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarRetroalimentacionObjetivo = document.getElementById("btnContinuarRetroalimentacionObjetivo");
        		btnContinuarRetroalimentacionObjetivo.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarFactoresPsicosociales = document.getElementById("btnContinuarFactoresPsicosociales");
        		btnContinuarFactoresPsicosociales.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarFactoresPsicosociales2 = document.getElementById("btnContinuarFactoresPsicosociales2");
        		btnContinuarFactoresPsicosociales2.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarFactoresPsicosociales3 = document.getElementById("btnContinuarFactoresPsicosociales3");
        		btnContinuarFactoresPsicosociales3.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarFactoresPsicosociales4 = document.getElementById("btnContinuarFactoresPsicosociales4");
        		btnContinuarFactoresPsicosociales4.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarViolenciaLaboral = document.getElementById("btnContinuarViolenciaLaboral");
        		btnContinuarViolenciaLaboral.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarRetroalimentacion = document.getElementById("btnContinuarRetroalimentacion");
        		btnContinuarRetroalimentacion.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarAcontecimientosTraumaticos = document.getElementById("btnContinuarAcontecimientosTraumaticos");
        		btnContinuarAcontecimientosTraumaticos.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarAcontecimientosTraumaticos2 = document.getElementById("btnContinuarAcontecimientosTraumaticos2");
        		btnContinuarAcontecimientosTraumaticos2.disabled = true;
        	}catch(error){
        		
        	}
        	
        	try{
        		var btnContinuarFactoresResponsabilidad = document.getElementById("btnContinuarFactoresResponsabilidad");
        		btnContinuarFactoresResponsabilidad.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarConsecuenciasEfectos = document.getElementById("btnContinuarConsecuenciasEfectos");
        		btnContinuarConsecuenciasEfectos.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarRetroalimentacionEventos = document.getElementById("btnContinuarRetroalimentacionEventos");
        		btnContinuarRetroalimentacionEventos.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarEnternoOrganizacional = document.getElementById("btnContinuarEnternoOrganizacional");
        		btnContinuarEnternoOrganizacional.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarSentidoPertenencia = document.getElementById("btnContinuarSentidoPertenencia");
        		btnContinuarSentidoPertenencia.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarResponsabilidades = document.getElementById("btnContinuarResponsabilidades");
        		btnContinuarResponsabilidades.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarResponsabilidadesTrabajadores = document.getElementById("btnContinuarResponsabilidadesTrabajadores");
        		btnContinuarResponsabilidadesTrabajadores.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarParticipacionProactiva = document.getElementById("btnContinuarParticipacionProactiva");
        		btnContinuarParticipacionProactiva.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarDistribucionAdecuada = document.getElementById("btnContinuarDistribucionAdecuada");
        		btnContinuarDistribucionAdecuada.disabled = true;
        	}catch(error){
        		
        	}

			try{
        		var btnContinuarEvaluacionReconocimiento = document.getElementById("btnContinuarEvaluacionReconocimiento");
        		btnContinuarEvaluacionReconocimiento.disabled = true;
        	}catch(error){
        		
        	}
        	
			try{
        		var btnContinuarRetroalimentacionEntornoTrabajo = document.getElementById("btnContinuarRetroalimentacionEntornoTrabajo");
        		btnContinuarRetroalimentacionEntornoTrabajo.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarCampoAplicacion = document.getElementById("btnContinuarCampoAplicacion");
        		btnContinuarCampoAplicacion.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarObligacionesTrabajador = document.getElementById("btnContinuarObligacionesTrabajador");
        		btnContinuarObligacionesTrabajador.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarMedidasAcciones = document.getElementById("btnContinuarMedidasAcciones");
        		btnContinuarMedidasAcciones.disabled = true;
        	}catch(error){
        		
        	}
        	
        	try{
        		var btnContinuarPracticasContrarias = document.getElementById("btnContinuarPracticasContrarias");
        		btnContinuarPracticasContrarias.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarCasosViolencia = document.getElementById("btnContinuarCasosViolencia");
        		btnContinuarCasosViolencia.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarInformarViolencia = document.getElementById("btnContinuarInformarViolencia");
        		btnContinuarInformarViolencia.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarInformarEscrito = document.getElementById("btnContinuarInformarEscrito");
        		btnContinuarInformarEscrito.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarParticiparEventos = document.getElementById("btnContinuarParticiparEventos");
        		btnContinuarParticiparEventos.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarExamenesMedicos = document.getElementById("btnContinuarExamenesMedicos");
        		btnContinuarExamenesMedicos.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarIdentificanFactores = document.getElementById("btnContinuarIdentificanFactores");
        		btnContinuarIdentificanFactores.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarRetroalimentacion = document.getElementById("btnContinuarRetroalimentacion");
        		btnContinuarRetroalimentacion.disabled = true;
        	}catch(error){
        		
        	}

			try{
        		var btnContinuarRetroalimentacionObliga = document.getElementById("btnContinuarRetroalimentacionObliga");
        		btnContinuarRetroalimentacionObliga.disabled = true;
        	}catch(error){
        		
        	}

        	try{
        		var btnContestarEncuestas = document.getElementById("btnContestarEncuestas");
        		btnContestarEncuestas.disabled = true;
        	}catch(error){
        		
        	}

        	
        	
        }

        if (miAudio.ended){
        	cont++;
        }

        if (cont == 1) {

	    	try{
	    		var btnCarpetaEntorno = document.getElementById("btnCarpetaEntorno");
	    		if(btnCarpetaEntorno.value == "1"){
	    			document.getElementById("iniciar").innerHTML = "<img src=../img/Play.ico style=width:150%>";
	    		}else{
	    			document.getElementById("iniciar").innerHTML = "<img src=img/Play.ico style=width:150%>";
	    		}
	    	}catch(error){

	    	}

		    try{
				var btnPlay = document.getElementById("iniciar");
		    	btnPlay.disabled = false;
		    }catch(error){

		    }
		    
		    try{
				var btnComenzarCurso = document.getElementById("btnComenzarCurso");
				btnComenzarCurso.disabled = false;
		    }catch(error){

		    }

		    try{
				var btnContinuarOrientaciones1 = document.getElementById("btnContinuarOrientaciones1");
				btnContinuarOrientaciones1.disabled = false;
		    }catch(error){
		    	
		    }

        	try{
        		var btnContinuarOrientaciones2 = document.getElementById("btnContinuarOrientaciones2");
        		btnContinuarOrientaciones2.disabled = false;
        	}catch(error){

        	}

        	try{
        		var btnContinuarOrientaciones3 = document.getElementById("btnContinuarOrientaciones3");
        		btnContinuarOrientaciones3.disabled = false;
        	}catch(error){

        	}

        	try{
        		var btnContinuarOrientaciones4 = document.getElementById("btnContinuarOrientaciones4");
        		btnContinuarOrientaciones4.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarImplementacion = document.getElementById("btnContinuarImplementacion");
        		btnContinuarImplementacion.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarImplementacion2 = document.getElementById("btnContinuarImplementacion2");
        		btnContinuarImplementacion2.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarInicioCurso = document.getElementById("btnContinuarInicioCurso");
        		btnContinuarInicioCurso.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarContenido = document.getElementById("btnContinuarContenido");
        		btnContinuarContenido.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarObjetivoNOM035 = document.getElementById("btnContinuarObjetivoNOM035");
        		btnContinuarObjetivoNOM035.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarObjetivo = document.getElementById("btnContinuarObjetivo");
        		btnContinuarObjetivo.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarRetroalimentacionObjetivo = document.getElementById("btnContinuarRetroalimentacionObjetivo");
        		btnContinuarRetroalimentacionObjetivo.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarFactoresPsicosociales = document.getElementById("btnContinuarFactoresPsicosociales");
        		btnContinuarFactoresPsicosociales.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarFactoresPsicosociales2 = document.getElementById("btnContinuarFactoresPsicosociales2");
        		btnContinuarFactoresPsicosociales2.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarFactoresPsicosociales3 = document.getElementById("btnContinuarFactoresPsicosociales3");
        		btnContinuarFactoresPsicosociales3.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarFactoresPsicosociales4 = document.getElementById("btnContinuarFactoresPsicosociales4");
        		btnContinuarFactoresPsicosociales4.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarViolenciaLaboral = document.getElementById("btnContinuarViolenciaLaboral");
        		btnContinuarViolenciaLaboral.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarRetroalimentacion = document.getElementById("btnContinuarRetroalimentacion");
        		btnContinuarRetroalimentacion.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarAcontecimientosTraumaticos = document.getElementById("btnContinuarAcontecimientosTraumaticos");
        		btnContinuarAcontecimientosTraumaticos.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarAcontecimientosTraumaticos2 = document.getElementById("btnContinuarAcontecimientosTraumaticos2");
        		btnContinuarAcontecimientosTraumaticos2.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarFactoresResponsabilidad = document.getElementById("btnContinuarFactoresResponsabilidad");
        		btnContinuarFactoresResponsabilidad.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarConsecuenciasEfectos = document.getElementById("btnContinuarConsecuenciasEfectos");
        		btnContinuarConsecuenciasEfectos.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarRetroalimentacionEventos = document.getElementById("btnContinuarRetroalimentacionEventos");
        		btnContinuarRetroalimentacionEventos.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarEnternoOrganizacional = document.getElementById("btnContinuarEnternoOrganizacional");
        		btnContinuarEnternoOrganizacional.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarSentidoPertenencia = document.getElementById("btnContinuarSentidoPertenencia");
        		btnContinuarSentidoPertenencia.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarResponsabilidades = document.getElementById("btnContinuarResponsabilidades");
        		btnContinuarResponsabilidades.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarResponsabilidadesTrabajadores = document.getElementById("btnContinuarResponsabilidadesTrabajadores");
        		btnContinuarResponsabilidadesTrabajadores.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarParticipacionProactiva = document.getElementById("btnContinuarParticipacionProactiva");
        		btnContinuarParticipacionProactiva.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarDistribucionAdecuada = document.getElementById("btnContinuarDistribucionAdecuada");
        		btnContinuarDistribucionAdecuada.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarEvaluacionReconocimiento = document.getElementById("btnContinuarEvaluacionReconocimiento");
        		btnContinuarEvaluacionReconocimiento.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarRetroalimentacionEntornoTrabajo = document.getElementById("btnContinuarRetroalimentacionEntornoTrabajo");
        		btnContinuarRetroalimentacionEntornoTrabajo.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarCampoAplicacion = document.getElementById("btnContinuarCampoAplicacion");
        		btnContinuarCampoAplicacion.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarObligacionesTrabajador = document.getElementById("btnContinuarObligacionesTrabajador");
        		btnContinuarObligacionesTrabajador.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarMedidasAcciones = document.getElementById("btnContinuarMedidasAcciones");
        		btnContinuarMedidasAcciones.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarPracticasContrarias = document.getElementById("btnContinuarPracticasContrarias");
        		btnContinuarPracticasContrarias.disabled = false;
        	}catch(error){
        		
        	}

			try{
        		var btnContinuarCasosViolencia = document.getElementById("btnContinuarCasosViolencia");
        		btnContinuarCasosViolencia.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarInformarViolencia = document.getElementById("btnContinuarInformarViolencia");
        		btnContinuarInformarViolencia.disabled = false;
        	}catch(error){
        		
        	}
        	
        	try{
        		var btnContinuarInformarEscrito = document.getElementById("btnContinuarInformarEscrito");
        		btnContinuarInformarEscrito.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarParticiparEventos = document.getElementById("btnContinuarParticiparEventos");
        		btnContinuarParticiparEventos.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarExamenesMedicos = document.getElementById("btnContinuarExamenesMedicos");
        		btnContinuarExamenesMedicos.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarIdentificanFactores = document.getElementById("btnContinuarIdentificanFactores");
        		btnContinuarIdentificanFactores.disabled = false;
        	}catch(error){
        		
        	}

			try{
        		var btnContinuarRetroalimentacion = document.getElementById("btnContinuarRetroalimentacion");
        		btnContinuarRetroalimentacion.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContinuarRetroalimentacionObliga = document.getElementById("btnContinuarRetroalimentacionObliga");
        		btnContinuarRetroalimentacionObliga.disabled = false;
        	}catch(error){
        		
        	}

        	try{
        		var btnContestarEncuestas = document.getElementById("btnContestarEncuestas");
        		btnContestarEncuestas.disabled = false;
        	}catch(error){
        		
        	}

            clearInterval(id);
        }
    }, 100);
}