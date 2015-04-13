package EVENT
{
	import VO.ConsultarMovimientosVO;
	import VO.MovimientoVO;
	
	import com.adobe.cairngorm.control.CairngormEvent;

	public class MovimientoEvent extends CairngormEvent
	{
		
		public static var ADICIONAR_MOVIMIENTO		:	String = "adicionarMovimiento";
		public static var MODIFICAR_MOVIMIENTO		:	String = "modificarMovimiento";
		public static var ELIMINAR_MOVIMIENTO		:	String = "eliminarMovimiento";
		public static var LISTAR_MOVIMIENTO_CAJA_MENOR:	String = "listarMovimientoCajaMenor";
		public static var CONSULTAR_MOVIMIENTOS_CAJAS_MENORES:	String = "consultarMovimientosCajasMenores";
		
		
		public var movimientoVO:MovimientoVO;
		
		
		public function MovimientoEvent(type:String, movimientovo:MovimientoVO)
		{
			super(type);
			this.movimientoVO=movimientovo;
		}
		
	}
}