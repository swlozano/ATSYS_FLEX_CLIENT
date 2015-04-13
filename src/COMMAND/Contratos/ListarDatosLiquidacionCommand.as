package COMMAND.Contratos
{
	import BUSINESS.LiquidacionDelegate;
	
	import MODEL.ContratoMl;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class ListarDatosLiquidacionCommand implements ICommand, IResponder
	{
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;
		
		[Embed(source="/REC/IMAGENES/alertopt.png")]
			public var alertidea:Class;

		public function execute(event:CairngormEvent):void
		{
			new LiquidacionDelegate(this).listarDatosLiquidacion();
		}
		
		public function result(data:Object):void
		{
			
		  ContratoMl.getInstance().listDatosLiquidacion = data.result;
			
		}
		
			
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}