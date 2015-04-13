package EVENT
{
	import VO.OficioVO;
	
	import com.adobe.cairngorm.control.CairngormEvent;

	public class OficioEvent extends CairngormEvent
	{
		public static var ADICIONAR_OFICIO		:	String = "adicionarOficio";
        public static var ELIMINAR_OFICIO       :   String = "eliminarOficio";
		public static var MODIFICAR_OFICIO      :   String = "modificarOficio";
	    public static var LISTAR_OFICIO		    :	String = "listarOficio";
	    
	    public var oficioVo:OficioVO;
		
		public function OficioEvent(type:String,oficoVO:OficioVO)
		{
			super(type);
			this.oficioVo=oficoVO;
		}
		
	}
}