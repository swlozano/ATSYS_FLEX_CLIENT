package COMMAND.ValorFormaPago
{
	import BUSINESS.ContratoDelegate;
	
	import EVENT.ValorFpagoEvent;
	
	import MODEL.PantallasMl;
	import MODEL.ValorFormaPagoMl;
	
	import VIEW.contratacion.Adendo.FechasDePago;
	
	import VO.FechasPagoVO;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.managers.PopUpManager;
	import mx.rpc.IResponder;

	public class ListarFechasPagoCommand implements ICommand, IResponder
	{
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;
		
		public function execute(event:CairngormEvent):void
		{
			new ContratoDelegate(this).listarfechasPago((event as ValorFpagoEvent).fechapago);
		}
		
		public function result(data:Object):void
		{
			ValorFormaPagoMl.getInstance().listfechasPago = data.result;
			
			ValorFormaPagoMl.getInstance().arrayCopiaFechasPago = new ArrayCollection();
			ValorFormaPagoMl.getInstance().arrayFechasPago = new ArrayCollection();
			
			var fechas:FechasPagoVO;
			var fech:FechasPagoVO;
			
			switch(PantallasMl.ESTADO_PANTALLA){
				
				case PantallasMl.getInstance().PANTALLA_FECHAS_DE_PAGO_ADENDO:
				
				  
				   for each(var y:* in ValorFormaPagoMl.getInstance().listfechasPago){
				
					    fech = new FechasPagoVO(y.fechaPago,y.fechaIni,y.fechaFin,0);
					    ValorFormaPagoMl.getInstance().arrayFechasPago.addItem(fech);
				
			       }    
				   
				   var fechasPago:FechasDePago = FechasDePago(PopUpManager.createPopUp(PantallasMl.atsys,FechasDePago,true));
				   PopUpManager.centerPopUp(fechasPago);
				   PantallasMl.ESTADO_PANTALLA=-1;
				   
				break;
				
			}
			
			for each(var x:* in ValorFormaPagoMl.getInstance().listfechasPago){
				
				    fechas = new FechasPagoVO(x.fechaPago,x.fechaIni,x.fechaFin,0);
				    ValorFormaPagoMl.getInstance().arrayCopiaFechasPago.addItem(fechas);
				
			}
			
			
			//ValorFormaPagoMl.getInstance().arrayCopiaFechasPago = data.result;
			
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	} 
}