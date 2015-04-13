package COMMAND.causaciones
{
	import BUSINESS.ContratoDelegate;
	
	import MODEL.CausacionesMl;
	import MODEL.ContratoMl;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class CalcularCausacionNominaCommand implements ICommand, IResponder
	{
		
        [Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;
		
		public function execute(event:CairngormEvent):void
		{
			new ContratoDelegate(this).calcularCausacionNomina();
		}
		
		public function result(data:Object):void
		{ 
			ContratoMl.getInstance().listCausacionNomina = data.result;
			/*if(ContratoMl.getInstance().listCausacionNomina != null)
			{
				CausacionesMl.getInstance().listaToCausacionesNominaVO(ContratoMl.getInstance().listCausacionNomina);
			
				
			}*/
			trace();
		}
				
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}

















