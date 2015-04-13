package COMMAND.RecursoHumano
{
	import BUSINESS.RecursoHumanoDelegate;
	
	import MODEL.PantallasMl;
	import MODEL.PermisosMl;
	import MODEL.RecursoHumanoMl;
	
	import VIEW.contratacion.agregarrecursohumano;
	import VIEW.contratacion.modificarrecursohumano;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.controls.Alert;
	import mx.managers.PopUpManager;
	import mx.rpc.IResponder;

	public class ListarAFPRecursoHumanoCommand implements ICommand, IResponder
	{
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;

		public function execute(event:CairngormEvent):void
		{
			new RecursoHumanoDelegate(this).listaraAfp();
		}
		
		public function result(data:Object):void
		{
			RecursoHumanoMl.getInstance().listAfp = data.result;
			
			switch(PantallasMl.ESTADO_PANTALLA){
				
				case PantallasMl.getInstance().PANTALLA_AGREGAR_RECURSO_HUMANO:
				
				    if(RecursoHumanoMl.getInstance().listAfp){
				    	
				    	var addrechumano:agregarrecursohumano=agregarrecursohumano(PopUpManager.createPopUp(PantallasMl.atsys,agregarrecursohumano,false));
            	 	    PopUpManager.centerPopUp(addrechumano);
            	 	    PermisosMl.getInstance().deshabilitarMenus();
				    	PantallasMl.ESTADO_PANTALLA=-1;
				    	
				    }else
					{
						PantallasMl.ESTADO_PANTALLA = -1;
						
            	 	     Alert.show("Para poder agregar un Recurso Humano necesitas  AFP, contactate con el administrador de la Base de datos paa que Ingrese AFP","Mensaje de alerta",0,null,null,alerta,0);
						
					}
				 
				break;
				
				case PantallasMl.getInstance().PANTALLA_MODIFICAR_RECURSO_HUMANO:
				
				   if(RecursoHumanoMl.getInstance().RecursoHumanoPpl!=null){
				   	
				   	   var afpSeleccionado:Object = RecursoHumanoMl.getInstance().RecursoHumanoPpl.dgrecursohumano.selectedItem;
				   	   
				   	   if(afpSeleccionado!=null){
				   	   	
				   	   	   fijarAFP(afpSeleccionado);
				   	   	   var modrechumano:modificarrecursohumano=modificarrecursohumano(PopUpManager.createPopUp(PantallasMl.atsys,modificarrecursohumano,false));
            	 	       PopUpManager.centerPopUp(modrechumano);
            	 	       PermisosMl.getInstance().deshabilitarMenus();
            	 	       RecursoHumanoMl.getInstance().selectableRecursoHumano=false;
				   	   	   PantallasMl.ESTADO_PANTALLA =-1;
				   	   	   
				   	   }
				   	   
				   	
				   }
				
				break;
				
			}
			
		}
		
		public function fijarAFP(afpselect:Object):void{
		
		  var cont:int = 0;
		  var ban:Boolean=false;
		
		  for each(var x:* in RecursoHumanoMl.getInstance().listAfp){
		  
		     if(afpselect.afp.id!=x.id && ban==false){
		     
		       cont++;
		     
		     }else{
		     
		       ban=true;
		       
		      
		     }
		     if(afpselect.afp.id==x.id){
		     	
		     	RecursoHumanoMl.getInstance().txtmodAFP = x.nombre;
		     	
		     }
		     
		  
		  }
		  
		  RecursoHumanoMl.getInstance().cbxAFPselectedIndex=cont;
		
		}
		
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}











