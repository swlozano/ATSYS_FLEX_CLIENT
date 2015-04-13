package COMMAND.ValorFormaPago
{
	import BUSINESS.ContratoDelegate;
	
	import MODEL.ContratoMl;
	import MODEL.PantallasMl;
	
	import VIEW.contratacion.valorformapagoPpl;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.controls.Alert;
	import mx.managers.PopUpManager;
	import mx.rpc.IResponder;

	public class ListarVFPToVisualizarCommand implements ICommand, IResponder
	{
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;

		public function execute(event:CairngormEvent):void
		{
			new ContratoDelegate(this).listarValoresFpagoToVisualizar();
		}
		
		public function result(data:Object):void
		{
			ContratoMl.getInstance().listVFPtoVisualizar = data.result;
			
			var vfpPpl:valorformapagoPpl = valorformapagoPpl(PopUpManager.createPopUp(PantallasMl.atsys,valorformapagoPpl,true));
			PopUpManager.centerPopUp(vfpPpl);
			
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}