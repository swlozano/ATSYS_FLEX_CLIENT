package COMMAND.Factura
{
	import BUSINESS.FacturaDelegate;
	
	import MODEL.FacturasMl;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class ListarFacturaCommand implements ICommand, IResponder
	{
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;
		
		public function execute(event:CairngormEvent):void
		{
			new FacturaDelegate(this).listarfactura();
		}
		
		public function result(data:Object):void
		{
			FacturasMl.getInstance().listfacturas = data.result;
			
			if(FacturasMl.getInstance().banderaPantallaabonosPpl==false){
			FacturasMl.getInstance().FacturasPpl.dgfacturas.selectedIndex = FacturasMl.getInstance().indiceGrilla;
			}
		}  
		  
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}