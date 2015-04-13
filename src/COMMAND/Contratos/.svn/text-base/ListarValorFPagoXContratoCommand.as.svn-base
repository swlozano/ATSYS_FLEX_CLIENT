package COMMAND.Contratos
{
	import BUSINESS.ContratoDelegate;
	
	import MODEL.ContratoMl;
	import MODEL.PantallasMl;
	
	import VIEW.contratacion.Adendo.ResValorFormaPagoView;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.managers.PopUpManager;
	import mx.rpc.IResponder;

	public class ListarValorFPagoXContratoCommand implements ICommand, IResponder
	{
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;

		public function execute(event:CairngormEvent):void
		{
			new ContratoDelegate(this).listarValoresFpagoXContrato();
		}
		
		public function result(data:Object):void
		{
			ContratoMl.getInstance().listValoresFPagoXContrato = data.result;
			
			ContratoMl.getInstance().ClonArrayCollectionOflistValoresFPagoXContrato = new ArrayCollection();
			
			for each(var x:* in ContratoMl.getInstance().listValoresFPagoXContrato){
				
				ContratoMl.getInstance().ClonArrayCollectionOflistValoresFPagoXContrato.addItem(x);
				
			} 
			
			var leng:int = ContratoMl.getInstance().ClonArrayCollectionOflistValoresFPagoXContrato.length;
			
			
			
			ContratoMl.getInstance().Contador=0;
			ContratoMl.getInstance().Contadorlength=0;
			
			var obj:Object = ContratoMl.getInstance().ClonArrayCollectionOflistValoresFPagoXContrato.getItemAt(ContratoMl.getInstance().Contador);
			
			
			
			ContratoMl.getInstance().idValorFpago = obj.id;
						
			ContratoMl.getInstance().tipodePago = obj.tipoPago.nombre;
			
			ContratoMl.getInstance().Concepto = obj.concepto;
			
			ContratoMl.getInstance().Observacion = obj.observacion;
			
			ContratoMl.getInstance().periodoPago = obj.periodoPago;
			
			ContratoMl.getInstance().fechaInicioPago = obj.fechaInicioPago;
			
			ContratoMl.getInstance().esIbc =obj.esIbc;
			
			ContratoMl.getInstance().valorDelPago = obj.valorPago;
			
			
			var valFpago:ResValorFormaPagoView = ResValorFormaPagoView(PopUpManager.createPopUp(PantallasMl.atsys,ResValorFormaPagoView,true));
			PopUpManager.centerPopUp(valFpago);
			ContratoMl.getInstance().Contador++;
			ContratoMl.getInstance().Contadorlength++;
			
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}




















