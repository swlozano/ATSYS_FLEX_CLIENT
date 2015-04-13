package COMMAND.Liquidacion
{
	import BUSINESS.LiquidacionDelegate;
	
	import MODEL.LiquidacionMl;
	import MODEL.PantallasMl;
	
	import VIEW.contratacion.Liquidarcontrato;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	  
	import mx.controls.Alert;
	import mx.managers.PopUpManager;
	import mx.rpc.IResponder;
        
	public class ObtenerDiasTrabajadosCommand implements ICommand, IResponder
	{
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;	
		
		[Embed(source="/REC/IMAGENES/alertopt.png")]
		public var alertidea:Class;

		public function execute(event:CairngormEvent):void
		{
			new LiquidacionDelegate(this).obtenerDiasTrabajados();
		}
		  
		public function result(data:Object):void
		{ 
			LiquidacionMl.getInstance().DiasTrabajados = data.result;
			
			    var liqudacion:Liquidarcontrato = Liquidarcontrato(PopUpManager.createPopUp(PantallasMl.atsys,Liquidarcontrato,true));
				PopUpManager.centerPopUp(liqudacion);
			
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}