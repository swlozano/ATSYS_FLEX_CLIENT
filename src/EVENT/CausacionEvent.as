package EVENT
{
	import VO.CentroCostroVO;
	
	import com.adobe.cairngorm.control.CairngormEvent;

	public class CausacionEvent extends CairngormEvent
	{
		public static var LISTAR_BONIFICACIONES	 :	String = "LISTAR_BONIFICACIONES";
		public static var LISTAR_DEDUCCIONES	 :	String = "LISTAR_DEDUCCIONES";
		public static var LISTAR_PROVISIONES	 :	String = "LISTAR_PROVISIONES";
		public static var CREAR_CAUSACIONES	 	 :	String = "CREAR_CAUSACIONES";
		public static var CALCULAR_CAUSACION_NOMINA	 	:	String = "CALCULAR_CAUSACION_NOMINA";
		public static var CALCULAR_CAUSACION_PS	 	    :	String = "CALCULAR_CAUSACION_PS";
		public static var CREAR_CAUSACIONES_PS	 	 	:	String = "CREAR_CAUSACIONES_PS";
		public function CausacionEvent(type:String)
		{
			super(type);
		}
		
	}
}