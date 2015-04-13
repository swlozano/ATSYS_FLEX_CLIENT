package COMMAND.cajamenor
{
	import BUSINESS.CajaMenorDelegate;
	
	import EVENT.CajaMenorEvent;
	
	import VO.CajaMenorVO;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import mx.controls.Alert;
	import mx.core.Application;
	import mx.rpc.IResponder;

	public class EliminarCajaMenorCommand implements ICommand, IResponder
	{
		
		[Bindable]
        [Embed(source="/REC/IMAGENES/check.png")]
        public var check:Class;
		[Bindable]
        [Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Bindable]
        [Embed(source="/REC/IMAGENES/delete.png")]
        public var Non:Class;
        [Bindable]
        [Embed(source="/REC/IMAGENES/warn.png")]
        public var warn:Class;
		
		public function execute(event:CairngormEvent):void
		{
			new CajaMenorDelegate(this).eliminarCajamenor();
		}
		
		public function result(data:Object):void
		{
			if(data.result.idRespuesta==8){
			          
			          if(Application.application.currentView==3)
			    	  {
			          Alert.show(data.result.mensajeRespuesta,"",0,null,null,warn,0);
			          }else{
			          	    Alert.show("No se eliminaron los datos. - La Cuenta de banco tiene asignado movimientos.","",0,null,null,Non,0);
			                }
			         
			         }else if(data.result.idRespuesta==9){
			         	     Alert.show(data.result.mensajeRespuesta,"",0,null,null,check,0);
			         	     
			         	     var cjmenor:CajaMenorVO;
			   				 var ban:Number;
			   				 if(Application.application.currentView==3)
			    			 {
			    				ban=0;
			    			 }else{
			    				ban=1;
			    			 }
			   
		 	   				 cjmenor = new CajaMenorVO(0,0,"",0,0,0,null,0,0,ban,false);
			         	     var event:CajaMenorEvent=new CajaMenorEvent(CajaMenorEvent.LISTAR_CAJA_MENOR,cjmenor);
			                 CairngormEventDispatcher.getInstance().dispatchEvent(event);
			                
			                }
		}
		
		public function fault(info:Object):void 
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}