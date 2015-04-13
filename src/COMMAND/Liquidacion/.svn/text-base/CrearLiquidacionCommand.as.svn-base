package COMMAND.Liquidacion
{
	import BUSINESS.LiquidacionDelegate;
	
	import EVENT.LiquidacionEvent;
	
	import MODEL.LiquidacionMl;
	import MODEL.PantallasMl;
	
	import VIEW.Items.AlertImprimirLiquidacion;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.controls.Alert;
	import mx.events.CloseEvent;
	import mx.managers.PopUpManager;
	import mx.rpc.IResponder;

	public class CrearLiquidacionCommand implements ICommand, IResponder
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
			new LiquidacionDelegate(this).crearliquidacion((event as LiquidacionEvent).liquidacionvo);
		}
		
		public function result(data:Object):void
		{
			if(data.result.idRespuesta==1){
			    Alert.show(data.result.mensajeRespuesta,"",0,null,null,Non,0);
			 }else if(data.result.idRespuesta==15){
			          Alert.show(data.result.mensajeRespuesta,"",0,null,null,warn,0);
			         }else if(data.result.idRespuesta==5){
			         	     
			         	      LiquidacionMl.getInstance().MensajeConfirmacionLiq = data.result.mensajeRespuesta;
			         	      
			         	      var alertImpr:AlertImprimirLiquidacion = AlertImprimirLiquidacion(PopUpManager.createPopUp(PantallasMl.atsys,AlertImprimirLiquidacion,true));
			         	      PopUpManager.centerPopUp(alertImpr);
			         	      
			         	      
			                  }
		
		
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}








