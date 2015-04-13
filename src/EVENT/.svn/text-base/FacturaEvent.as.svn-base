package EVENT
{
	import VO.FacturaVO;
	
	import com.adobe.cairngorm.control.CairngormEvent;

	public class FacturaEvent extends CairngormEvent
	{
		
		public static var ADICIONAR_FACTURA		:	String = "adicionarFactura";
        public static var ELIMINAR_FACTURA      :   String = "eliminarFactura";
		public static var MODIFICAR_FACTURA     :   String = "modificarFactura";
	    public static var LISTAR_FACTURA		:	String = "listarFacturas";
	    public static var LISTAR_IVAS		    :	String = "listarIvas";
	    public static var LISTAR_RETENCIONES    :	String = "listarRetenciones";
	    public static var REPORTES_FACTURAS     :   String = "reportesFacturas";
		
		public var factura:FacturaVO;
		
		public function FacturaEvent(type:String, facturaVo:FacturaVO)
		{
			super(type);
			
			this.factura=facturaVo;
		}
		
	}
}