package COMMAND.Contratos
{
	import BUSINESS.ContratoDelegate;
	
	import EVENT.ContratoEvent;
	
	import MODEL.ContratoMl;
	import MODEL.PantallasMl;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class ListarTipoPagoCommand implements ICommand, IResponder
	{
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;

		public function execute(event:CairngormEvent):void
		{
			new ContratoDelegate(this).listarTipopago();
		}
		
		public function result(data:Object):void
		{
			ContratoMl.getInstance().listTipopago = data.result;
			
			switch(PantallasMl.ESTADO_PANTALLA){
				
				case PantallasMl.getInstance().PANTALLA_AGREGAR_VALOR_FORMA_PAGO:
				
				  if(ContratoMl.getInstance().listTipopago!=null){
				  	
				  	 var e:ContratoEvent = new ContratoEvent(ContratoEvent.LISTAR_RETENCIONES_PAGO,null,null,null);
				  	 CairngormEventDispatcher.getInstance().dispatchEvent(e);
				  	
				  }
				
				break;
				
			}
			
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}