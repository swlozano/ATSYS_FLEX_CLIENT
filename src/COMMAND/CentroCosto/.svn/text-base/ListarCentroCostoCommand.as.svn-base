package COMMAND.CentroCosto
{
	import BUSINESS.CentroCostoDelegate;
	
	import EVENT.PersonaEvent;
	
	import MODEL.CentroCostoMl;
	import MODEL.MovimientoMl;
	import MODEL.PantallasMl;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class ListarCentroCostoCommand implements ICommand, IResponder
	{
		
        [Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;
		
		public function execute(event:CairngormEvent):void
		{
			new CentroCostoDelegate(this).listarCentroCosto();
		}
		
		public function result(data:Object):void
		{
			CentroCostoMl.getInstance().listCentroCosto = data.result;
			
			switch(PantallasMl.ESTADO_PANTALLA)
			{
				case PantallasMl.getInstance().PANTALLA_ADD_CAJA_MENOR:
					if(CentroCostoMl.getInstance().listCentroCosto!=null)
					{
					   var evento:PersonaEvent = new PersonaEvent(PersonaEvent.LISTAR_PERSONAS,null);
            	 	   CairngormEventDispatcher.getInstance().dispatchEvent(evento);
					}
					else
					{
						PantallasMl.ESTADO_PANTALLA = -1;
						
            	 	     Alert.show("Para poder agregar una CAJA MENOR necesitas CREAR Centros de Costo","Mensaje de alerta",0,null,null,alerta,0);
						
					}
				break;
				
				case PantallasMl.getInstance().PANTALLA_ADD_CUENTA_BANCO:
				
				     if(CentroCostoMl.getInstance().listCentroCosto!=null)
					{
					   var eventoSS:PersonaEvent = new PersonaEvent(PersonaEvent.LISTAR_PERSONAS,null);
            	 	   CairngormEventDispatcher.getInstance().dispatchEvent(eventoSS);
					}else
					{
						PantallasMl.ESTADO_PANTALLA = -1;
						
            	 	     Alert.show("Para poder agregar una CUENTA DE BANCO necesitas CREAR Centros de Costo","Mensaje de alerta",0,null,null,alerta,0);
						
					}
				
				break;
				
				case PantallasMl.getInstance().PANTALLA_ADD_MOVIMIENTO:
				
				     if(CentroCostoMl.getInstance().listCentroCosto!=null){
				     
				       var even:PersonaEvent = new PersonaEvent(PersonaEvent.LISTAR_PERSONAS,null);
            	 	   CairngormEventDispatcher.getInstance().dispatchEvent(even);
				     
				     }else
				     {
				     
				        PantallasMl.ESTADO_PANTALLA = -1;
						
            	 	    Alert.show("Para poder agregar un MOVIMIENTO necesitas CREAR Centros de Costo","Mensaje de alerta",0,null,null,alerta,0);
				      
				     }
				
				break;
				
				case PantallasMl.getInstance().PANTALLA_MODIFICAR_MOVIMIENTO:
				   
				    if(MovimientoMl.getInstance().MovimientoPpl!=null){
				    	
				    	var movimentoseleccionado:Object=MovimientoMl.getInstance().MovimientoPpl.dgMovimientos.selectedItem;
				    	if(movimentoseleccionado!=null){
				    	
				    	   MovimientoMl.getInstance().txtmodcentrocostoMovimento = movimentoseleccionado.centroCosto;
				    	
				    	   fijarCentrocosto(movimentoseleccionado);
				    	   
				    	   var eventt:PersonaEvent = new PersonaEvent(PersonaEvent.LISTAR_PERSONAS,null);
            	 	       CairngormEventDispatcher.getInstance().dispatchEvent(eventt);
				    	   
            	 	     
				    	}
				 
				    }
				     
				    
				break;
				
				case PantallasMl.getInstance().PANTALLA_BUSCAR_MOVIMIENTOS:
				
				    
				    var event1:PersonaEvent = new PersonaEvent(PersonaEvent.LISTAR_PERSONAS,null);
		            CairngormEventDispatcher.getInstance().dispatchEvent(event1);
				
				
				break;
				
			}   
			
		
		}
		
		public function fijarCentrocosto(Ccostoselect:Object):void{
		
		  var cont:int = 0;
		  var ban:Boolean=false;
		
		  for each(var x:* in CentroCostoMl.getInstance().listCentroCosto){
		  
		     if(Ccostoselect.idCentroCosto!=x.id && ban==false){
		     
		       cont++;
		     
		     }else{
		     
		       ban=true;
		      
		     }
		  
		  }
		  
		  MovimientoMl.getInstance().cbxmodCentroCostoselectedIndex=cont;
		
		}
		
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}

















