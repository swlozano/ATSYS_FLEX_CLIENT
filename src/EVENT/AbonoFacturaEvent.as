package EVENT
{
	import VO.AbonoFacturaVO;
	
	import com.adobe.cairngorm.control.CairngormEvent;

	public class AbonoFacturaEvent extends CairngormEvent
	{
		
		public static var ADICIONAR_ABONO_FACTURA	  :	  String = "adicionarabonoFactura";
        public static var ELIMINAR_ABONO_FACTURA      :   String = "eliminarabonoFactura";
		public static var MODIFICAR_ABONO_FACTURA     :   String = "modificarabonoFactura";
		public static var LISTAR_ABONO_FACTURA        :   String = "listarabonoFactura";
		
		public var abonofacturaVo:AbonoFacturaVO;
		
		
		public function AbonoFacturaEvent(type:String, abonofacVo:AbonoFacturaVO)
		{
			super(type);
			this.abonofacturaVo=abonofacVo;
		}
		
	}
}