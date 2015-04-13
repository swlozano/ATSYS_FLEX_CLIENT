package COMMAND.Movimientos
{
	import BUSINESS.MovimientoDelegate;
	
	import EVENT.ConsultasMovimientosEvent;
	
	import MODEL.BusquedaMovtsMl;
	import MODEL.MovimientoMl;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class ConsultarMovimientosCentroCostoCommand implements IResponder, ICommand
	{
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
		
		public function execute(event:CairngormEvent):void
		{
			new MovimientoDelegate(this).consultarMovimientosCentroCostos((event as ConsultasMovimientosEvent).ConsultasMovimientosVO);
		}
		
		public function result(data:Object):void
		{
			MovimientoMl.getInstance().listConsultaMovimientoCajaMenor = new ArrayCollection();
			MovimientoMl.getInstance().listConsultaMovimientoCajaMenor=data.result as ArrayCollection;
			//BusquedaMovtsMl.getInstance().busquedaMovimientosPpl.cbxBusqueda.selectedIndex=0;
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}