package COMMAND.CentroCosto
{
	import BUSINESS.CentroCostoDelegate;
	
	import EVENT.CentroCostoEvent;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class EliminarCentroCostoCommand implements ICommand, IResponder
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
			new CentroCostoDelegate(this).eliminarCentroCosto();
		}
		
		public function result(data:Object):void
		{
			if(data.result.idRespuesta==8){
			    Alert.show(data.result.mensajeRespuesta,"",0,null,null,Non,0);
			 }else if(data.result.mensajeRespuesta=="No se eliminaron los datos. - El centro de costo tiene asignado movimientos.."){
			          Alert.show(data.result.mensajeRespuesta,"",0,null,null,warn,0);
			         }else if(data.result.idRespuesta==9){
			         	     Alert.show(data.result.mensajeRespuesta,"",0,null,null,check,0);
			         	     var e:CentroCostoEvent = new CentroCostoEvent(CentroCostoEvent.LISTAR_CENTRO_COSTO,null);
		                     CairngormEventDispatcher.getInstance().dispatchEvent(e);
			                }
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}