package COMMAND.Movimientos
{
	import BUSINESS.MovimientoDelegate;
	
	import MODEL.MovimientoMl;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;


    //data.result.idCentroCosto;
    //data.result.idPersona
    //data.result.idcaja
    //data.result.nomcaja
    //data.result.tipoMovimiento
    //data.result.centroCosto
    //data.result.persona
    //data.result.nomcaja

	public class ListarMovimientosCajaMenorCommand implements ICommand, IResponder
	{
		
        [Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;

		public function execute(event:CairngormEvent):void
		{
			new MovimientoDelegate(this).listarMovimientosCajaMenor();
		}
		
		public function result(data:Object):void
		{
			MovimientoMl.getInstance().listMovimientoCajaMenor=data.result;
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}