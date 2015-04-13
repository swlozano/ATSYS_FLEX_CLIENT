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

	public class ListarEpsRecHumanoCommand implements ICommand, IResponder
	{
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;

		public function execute(event:CairngormEvent):void
		{
			new RecursoHumanoDelegate(this).listarEps();
		}
		
		public function result(data:Object):void
		{
			RecursoHumanoMl.getInstance().listEps = data.result;
			
			switch(PantallasMl.ESTADO_PANTALLA){
				
				case PantallasMl.getInstance().PANTALLA_AGREGAR_RECURSO_HUMANO:
				
				   if(RecursoHumanoMl.getInstance().listEps!=null){
				   	
				   	  var e:RecursoHumanoEvent = new RecursoHumanoEvent(RecursoHumanoEvent.LISTAR_AFP_RECURSO_HUMANO,null,null);
				   	  CairngormEventDispatcher.getInstance().dispatchEvent(e);
				   	
				   }else
					{
						PantallasMl.ESTADO_PANTALLA = -1;
						
            	 	     Alert.show("Para poder agregar un Recurso Humano necesitas  EPS, contactate con el administrador de la Base de datos paa que Ingrese EPS","Mensaje de alerta",0,null,null,alerta,0);
						
					}
				
				break;
				
				case PantallasMl.getInstance().PANTALLA_MODIFICAR_RECURSO_HUMANO:
				
				   if(RecursoHumanoMl.getInstance().RecursoHumanoPpl!=null){
				   	
				   	var epsSeleccionado:Object = RecursoHumanoMl.getInstance().RecursoHumanoPpl.dgrecursohumano.selectedItem;
				   	
				   	  if(epsSeleccionado!=null){
				   		
				   		  fijarEPS(epsSeleccionado);
				   		  var e2:RecursoHumanoEvent = new RecursoHumanoEvent(RecursoHumanoEvent.LISTAR_AFP_RECURSO_HUMANO,null,null);
				   	      CairngormEventDispatcher.getInstance().dispatchEvent(e2);
				   		 
				   	    }
				   	
				   }
				
				break;
				
			}
			
		}
		
		public function fijarEPS(epsselect:Object):void{
		
		  var cont:int = 0;
		  var ban:Boolean=false;
		
		  for each(var x:* in RecursoHumanoMl.getInstance().listEps){
		  
		     if(epsselect.eps.id!=x.id && ban==false){
		     
		       cont++;
		     
		     }else{
		     
		       ban=true;
		       
		      
		     }
		     if(epsselect.eps.id==x.id){
		     	
		     	RecursoHumanoMl.getInstance().txtmodEPS = x.nombre;
		     	
		     }
		     
		  
		  }
		  
		  RecursoHumanoMl.getInstance().cbxEPSselectedIndex=cont;
		
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}















