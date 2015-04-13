package EVENT
{
	import VO.LiquidacionVO;
	
	import com.adobe.cairngorm.control.CairngormEvent;

	public class LiquidacionEvent extends CairngormEvent
	{
		public static var LISTAR_LIQUIDACION		:	String = "listarliquidacion";
		public static var LISTAR_FORMULAS_X_TIPO	:	String = "listarformulasXtipo";
        public static var GENERAR_LIQUIDACION       :   String = "generarLiquidacion";
		public static var OBTENER_DIAS_TRABAJADOS   :   String = "obtenerDiastrabajados";
	    public static var CREAR_LIQUIDACION		    :	String = "crearliquidacion";
        public static var ELIMINAR_LIQUIDACION		:	String = "eliminarliquidacion";
    	public static var LISTAR_DATOS_LIQUIDACION		:	String = "LISTAR_DATOS_LIQUIDACION";
        
		public var liquidacionvo:LiquidacionVO;
		
		public function LiquidacionEvent(type:String,liquidar:LiquidacionVO)
		{
			super(type);
			this.liquidacionvo = liquidar;
		}
		
	}
}