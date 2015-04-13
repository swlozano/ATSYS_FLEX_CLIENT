package EVENT
{
	import VO.CuentaPorPagarVO;
	
	import com.adobe.cairngorm.control.CairngormEvent;

	public class CuentasPorPagarEvent extends CairngormEvent
	{
		
		public static var ADICIONAR_CUENTA_X_PAGAR		   :	String = "adicionarCuentaporpagar";
        public static var ELIMINAR_CUENTA_X_PAGAR          :    String = "eliminarCuentaporpagar";
		public static var MODIFICAR_CUENTA_X_PAGAR         :    String = "modificarCuentaporpagar";
		
		public static var MODIFICAR_ESTADO_CUENTA_X_PAGAR  :    String = "modificarEstadoCuentaporpagar";
		
	    public static var LISTAR_CUENTA_X_PAGAR		       :	String = "listarCuentaporpagar";
		public static var LISTAR_ESTADO_CUENTA_X_PAGAR	   :	String = "listarEstadoCuentaporpagar";
		public static var LISTAR_GENERADOR_CUENTA_X_PAGAR  :	String = "listarGeneradorCuentaporpagar";
		
		public var cuentaporPagarVo:CuentaPorPagarVO;
		
		public function CuentasPorPagarEvent(type:String, cuentaxpagarVO:CuentaPorPagarVO)
		{
			super(type);
			this.cuentaporPagarVo = cuentaxpagarVO;
		}
		
	}
}