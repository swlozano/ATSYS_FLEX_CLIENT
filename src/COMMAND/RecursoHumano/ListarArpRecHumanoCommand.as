package COMMAND.RecursoHumano
{
	import BUSINESS.RecursoHumanoDelegate;
	
	import EVENT.RecursoHumanoEvent;
	
	import MODEL.PantallasMl;
	import MODEL.RecursoHumanoMl;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class ListarArpRecHumanoCommand implements ICommand, IResponder
	{
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;

		public function execute(event:CairngormEvent):void
		{
			new RecursoHumanoDelegate(this).listarArp();
		}
		
		public function result(data:Object):void
		{
			RecursoHumanoMl.getInstance().listArp = data.result;
			
			switch(PantallasMl.ESTADO_PANTALLA){
				
			   case PantallasMl.getInstance().PANTALLA_AGREGAR_RECURSO_HUMANO:
			   
			       if(RecursoHumanoMl.getInstance().listArp!=null){
			       	
			       	  var e:RecursoHumanoEvent = new RecursoHumanoEvent(RecursoHumanoEvent.LISTAR_EPS_RECURSO_HUMANO,null,null);
			       	  CairngormEventDispatcher.getInstance().dispatchEvent(e);
			       	
			       }else
					{
						PantallasMl.ESTADO_PANTALLA = -1;
						
            	 	     Alert.show("Para poder agregar un Recurso Humano necesitas  ARP, contactate con el administrador de la Base de datos paa que Ingrese ARP","Mensaje de alerta",0,null,null,alerta,0);
						
					}
			    
			   break;
			   
			   case PantallasMl.getInstance().PANTALLA_MODIFICAR_RECURSO_HUMANO:
			   
			      if(RecursoHumanoMl.getInstance().RecursoHumanoPpl!=null){
			      	
			      	  var arpSeleccionado:Object = RecursoHumanoMl.getInstance().RecursoHumanoPpl.dgrecursohumano.selectedItem;
			      	  
			      	  if(arpSeleccionado!=null){
			      	  	
			      	      
			      	      fijarARP(arpSeleccionado);
			      	      
			      	  	  var e2:RecursoHumanoEvent = new RecursoHumanoEvent(RecursoHumanoEvent.LISTAR_EPS_RECURSO_HUMANO,null,null);
			       	      CairngormEventDispatcher.getInstance().dispatchEvent(e2);
			      	  	  
			      	  }
			      	
			      }
			   
			   break;
				
			}
			
		}
		
		public function fijarARP(arpselect:Object):void{
		
		  var cont:int = 0;
		  var ban:Boolean=false;
		
		  for each(var x:* in RecursoHumanoMl.getInstance().listArp){
		  
		     if(arpselect.arp.id!=x.id && ban==false){
		     
		       cont++;
		     
		     }else{
		     
		       ban=true;
		       
		      
		     }
		     
		     if(arpselect.arp.id==x.id){
		     	
		     	RecursoHumanoMl.getInstance().txtmodARP = x.nombre;
		     	
		     }
		     
		  
		  }
		  
		  RecursoHumanoMl.getInstance().cbxARPselectedIndex=cont;
		
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}




