package EVENT
{
	import VO.ConsultarMovimientosVO;
	
	import com.adobe.cairngorm.control.CairngormEvent;

	public class ConsultasMovimientosEvent extends CairngormEvent
	{
		public static var CONSULTAR_MOVIMIENTOS_CAJAS_MENORES:	String = "consultarMovimientosCajasMenores";
		public static var CONSULTAR_MOVIMIENTOS_CENTROS_COSTO:	String = "consultarMovimientosCentrosCosto";
		public static var CONSULTAR_MOVIMIENTOS_PERSONAS:	String = "consultarMovimientosPersonas";
		
		public var ConsultasMovimientosVO:ConsultarMovimientosVO;
		
		public function ConsultasMovimientosEvent(type:String, consultas:ConsultarMovimientosVO)
		{
			super(type);
			this.ConsultasMovimientosVO=consultas;
		}
		
	}
}