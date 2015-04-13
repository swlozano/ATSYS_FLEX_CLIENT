package COMMAND.Liquidacion
{
	import BUSINESS.LiquidacionDelegate;
	
	import EVENT.LiquidacionEvent;
	
	import MODEL.LiquidacionMl;
	import MODEL.PantallasMl;
	
	import VIEW.contratacion.VerLiquidacion;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import mx.controls.Alert;
	import mx.events.CloseEvent;
	import mx.managers.PopUpManager;
	import mx.rpc.IResponder;

	public class ListarLiquidacionCommand implements ICommand, IResponder
	{
	
	   [Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;	
		
		[Embed(source="/REC/IMAGENES/alertopt.png")]
			public var alertidea:Class;


		public function execute(event:CairngormEvent):void
		{
			new LiquidacionDelegate(this).listarLiquidacion();
		}
		
		public function result(data:Object):void
		{
			LiquidacionMl.getInstance().listLiquidaciones = data.result;
			
			    if(LiquidacionMl.getInstance().BanderaGenerarOListar==true){
			
					 if(LiquidacionMl.getInstance().listLiquidaciones==null){
					 	
				 	    	LiquidacionMl.getInstance().idtipoListarFormula = 1;
				 	    	var e:LiquidacionEvent = new LiquidacionEvent(LiquidacionEvent.LISTAR_FORMULAS_X_TIPO,null);
				 	    	CairngormEventDispatcher.getInstance().dispatchEvent(e);
				 	    
							var eventDatosLiquidacion:LiquidacionEvent = new LiquidacionEvent(LiquidacionEvent.LISTAR_DATOS_LIQUIDACION,null);
				 	    	CairngormEventDispatcher.getInstance().dispatchEvent(eventDatosLiquidacion);		 	    			 	
				 	    		 	
					 }else{
					 	
					         Alert.yesLabel="SI";
		                     Alert.noLabel="NO";
		                     Alert.show("!!EL CONTRATO YA HA SIDO LIQUIDADO¡¡" + "\n\n" + "Deseas Eliminar la liquidación?","Mensaje de Alerta",Alert.YES|Alert.NO,null,closeHandlereliminarLiquidacion,alertidea,0);
					      
					      }
			    }else{
			    	
			            if(LiquidacionMl.getInstance().listLiquidaciones==null){
			            
			                Alert.show("Este contrato No tiene liquidaciones","Mensaje de Alerta",0,null,null,alertidea,0);
			            	
			            }else{
			            	
			                   var verliq:VerLiquidacion = VerLiquidacion(PopUpManager.createPopUp(PantallasMl.atsys,VerLiquidacion,true));
			                   PopUpManager.centerPopUp(verliq);
			                 
			                 }
			          
			         }
			
		}
		
		private function closeHandlereliminarLiquidacion(event:CloseEvent):void{
             
               switch(event.detail){
               
                 case Alert.YES:
                   
                   LiquidacionMl.getInstance().idliquidacionToeliminar = LiquidacionMl.getInstance().listLiquidaciones.id;
                   
                   var ee:LiquidacionEvent = new LiquidacionEvent(LiquidacionEvent.ELIMINAR_LIQUIDACION,null);
                   CairngormEventDispatcher.getInstance().dispatchEvent(ee);
                   
                 break;
               
               }
             
        }
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}





















