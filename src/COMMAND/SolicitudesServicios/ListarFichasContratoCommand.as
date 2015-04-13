package COMMAND.SolicitudesServicios
{
	import BUSINESS.SolicitudesServiciosDelegate;
	
	import MODEL.FacturasMl;
	import MODEL.SolicitudesServiciosMl;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class ListarFichasContratoCommand implements ICommand, IResponder
	{  
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;

		public function execute(event:CairngormEvent):void
		{
			new SolicitudesServiciosDelegate(this).listarFichas();
		}
	 
		public function result(data:Object):void
		{
			
			  
			
			var arrRecorrerFIchas:ArrayCollection = new ArrayCollection();
			
			var arrayPrestamos:ArrayCollection = new ArrayCollection();
			var arrayPermisos:ArrayCollection = new ArrayCollection();
			var arrayIncapacidades:ArrayCollection = new ArrayCollection();
			var arrayObservacionesMemos:ArrayCollection = new ArrayCollection();
			
			arrRecorrerFIchas = data.result;
			
			for each(var x:* in arrRecorrerFIchas){
				
				
				switch(x.idTipoFicha){
					
					case 2:
					
					   arrayPrestamos.addItem(x);
					
					    //SolicitudesServiciosMl.getInstance().listFichaPrestamo;
					
					break;
					
					case 3:
					 
					   arrayPermisos.addItem(x);  
					 // SolicitudesServiciosMl.getInstance().listFichaPermiso;
					break;
					
					case 4:
					
					   arrayIncapacidades.addItem(x);
					 // SolicitudesServiciosMl.getInstance().listFichaIncapacidad = x;
					 
					 
					break;
					
					case 5:
					
					   arrayObservacionesMemos.addItem(x);
					
					 // SolicitudesServiciosMl.getInstance().listObservacionesMemos = x;
					
					break;
					
				}
				
			}
			
			if(arrayPrestamos.length>0){
				
				SolicitudesServiciosMl.getInstance().listFichaPrestamo = arrayPrestamos;
				
			}else{
				   
				   SolicitudesServiciosMl.getInstance().listFichaPrestamo=null;
				   
			     }
			
			if(arrayPermisos.length > 0){
				
				SolicitudesServiciosMl.getInstance().listFichaPermiso = arrayPermisos;
				
			}else{
				
			       SolicitudesServiciosMl.getInstance().listFichaPermiso = null;
			      
			     }
			
			if(arrayIncapacidades.length>0){
				
				SolicitudesServiciosMl.getInstance().listFichaIncapacidad = arrayIncapacidades;
				
			}else{
				
			      SolicitudesServiciosMl.getInstance().listFichaIncapacidad=null;
			     
			     }
			
			if(arrayObservacionesMemos.length>0){
				
				SolicitudesServiciosMl.getInstance().listObservacionesMemos = arrayObservacionesMemos;
				
			}else{
				 
				  SolicitudesServiciosMl.getInstance().listObservacionesMemos=null;
				 
			     }
			
			
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}







