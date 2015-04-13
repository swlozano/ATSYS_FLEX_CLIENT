package COMMAND.Contratos
{
	import BUSINESS.ContratoDelegate;
	
	import MODEL.ContratoMl;
	import MODEL.PantallasMl;
	
	import VIEW.contratacion.agregarvalorformapago;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.controls.Alert;
	import mx.managers.PopUpManager;
	import mx.rpc.IResponder;

	public class ListarRetencionesPagoCommand implements ICommand, IResponder
	{
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;

		public function execute(event:CairngormEvent):void
		{
			new ContratoDelegate(this).listarRetencionespago();
		}
		
		public function result(data:Object):void
		{
			ContratoMl.getInstance().listRetencionespago = data.result;
			
			switch(PantallasMl.ESTADO_PANTALLA){
				
				case PantallasMl.getInstance().PANTALLA_AGREGAR_VALOR_FORMA_PAGO:
				
				  if(ContratoMl.getInstance().listRetencionespago!=null){
				  	
				  	  var addvalfpago:agregarvalorformapago=agregarvalorformapago(PopUpManager.createPopUp(PantallasMl.atsys,agregarvalorformapago,true));
            	 	  PopUpManager.centerPopUp(addvalfpago);
            	 	  PantallasMl.ESTADO_PANTALLA = -1;
				  	
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