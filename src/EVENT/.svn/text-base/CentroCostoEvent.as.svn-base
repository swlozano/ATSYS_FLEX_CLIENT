package EVENT
{
	import VO.CentroCostroVO;
	
	import com.adobe.cairngorm.control.CairngormEvent;

	public class CentroCostoEvent extends CairngormEvent
	{
		public static var ADICIONAR_CENTRO_COSTO		:	String = "adicionarCentroCosto";
        public static var ELIMINAR_CENTRO_COSTO         :   String = "eliminarCentroCosto";
		public static var MODIFICAR_CENTRO_COSTO        :   String = "modificarCentroCosto";
	    public static var LISTAR_CENTRO_COSTO		    :	String = "listarCentroCosto";

        public var centroCostoVo:CentroCostroVO;

		public function CentroCostoEvent(type:String, centrocostoVo:CentroCostroVO)
		{
			super(type);
			this.centroCostoVo=centrocostoVo;
		}
		
	}
}