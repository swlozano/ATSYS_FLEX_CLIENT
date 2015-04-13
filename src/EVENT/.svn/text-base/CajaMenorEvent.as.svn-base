package EVENT
{
	import VO.CajaMenorVO;
	
	import com.adobe.cairngorm.control.CairngormEvent;

	public class CajaMenorEvent extends CairngormEvent
	{
		public static var ADICIONAR_CAJA_MENOR		:	String = "adicionarCajamenor";
		public static var CONFIGURAR_CAJA_MENOR     :   String = "configurarCajamenor";
		public static var LISTAR_CAJA_MENOR         :   String = "listarCajamenor";
		public static var ELIMINAR_CAJA_MENOR       :   String = "eliminarCajamenor";
		public static var LISTAR_CAJA_USUARIO_ESPECIFICO         :   String = "listarCajaUsuarioEspecifico";
		public static var LISTAR_TODA_CAJA         :   String = "listartodasCajas";
		
		public var cajaMenorVo:CajaMenorVO;
		
		public function CajaMenorEvent(type:String, cajamenorVo:CajaMenorVO)
		{
			super(type);
			this.cajaMenorVo=cajamenorVo;
		}
		
	}
}