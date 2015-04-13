package COMMAND.Factura
{
	import BUSINESS.FacturaDelegate;
	
	import MODEL.FacturasMl;
	import MODEL.PantallasMl;
	
	import VIEW.facturas.VerReportesFacturas;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.controls.Alert;
	import mx.managers.PopUpManager;
	import mx.rpc.IResponder;

	public class GenerarReporteFacturaCommand implements ICommand, IResponder
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
			new FacturaDelegate(this).generarReporteFactura();
		}
		
		public function result(data:Object):void
		{
			FacturasMl.getInstance().reporteFacturas = data.result;
			
			var ResultReporteFac:VerReportesFacturas = VerReportesFacturas(PopUpManager.createPopUp(PantallasMl.atsys,VerReportesFacturas,true));
			PopUpManager.centerPopUp(ResultReporteFac);
			
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}