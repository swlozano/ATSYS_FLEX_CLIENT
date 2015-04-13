package EVENT
{
	import VO.FichaVO;
	
	import com.adobe.cairngorm.control.CairngormEvent;

	public class SolicitudesServiciosEvent extends CairngormEvent
	{  
		public static var ADICIONAR_FICHA_PERMISO		:	String = "adicionarFichaPermiso";
		public static var ELIMINAR_FICHA_PERMISO        :   String = "eliminarFichaPermiso";
		public static var MODIFICAR_FICHA_PERMISO       :   String = "modificarFichaPermiso";
		public static var LISTAR_FICHA_PERMISO          :   String = "listarFichaPermiso";
		
		public static var ADICIONAR_FICHA_PRESTAMO      :   String = "adicionarFichasPrestamo";
		//ublic static var MODIFICAR_FICHA_
		
        //public static var ELIMINAR_CENTRO_COSTO         :   String = "eliminarCentroCosto";
		//public static var MODIFICAR_CENTRO_COSTO        :   String = "modificarCentroCosto";
	    //public static var LISTAR_CENTRO_COSTO		    :	String = "listarCentroCosto";
	    
	    public var fichasVo:FichaVO;
		
		public function SolicitudesServiciosEvent(type:String, ficha:FichaVO)
		{
			super(type);
		    this.fichasVo=ficha;
		}
		
	}
}