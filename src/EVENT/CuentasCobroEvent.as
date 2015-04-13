package EVENT
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class CuentasCobroEvent extends CairngormEvent
	{
		public static var FILTRAR_POR_CONTRATO		    :	String = "filtrarxcontrato";
        public static var FILTRAR_POR_FECHAS		    :	String = "filtrarxfechas";
		public static var FILTRAR_POR_REC_HUMANO		:	String = "filtrarxrechumano";
	    public static var LISTAR_TODO		            :	String = "listartodo";
	    public static var CAMBIAR_ESTADO	            :	String = "cambiarestado";
		
		public function CuentasCobroEvent(type:String)
		{
			super(type);
		}
		
	}
}