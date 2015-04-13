package EVENT
{
	import VO.CuentaBancariaVO;
	import VO.RecursoHumanoVO;
	
	import com.adobe.cairngorm.control.CairngormEvent;

	public class RecursoHumanoEvent extends CairngormEvent
	{
		
		public static var ADICIONAR_RECURSO_HUMANO	           :	String = "adicionarRecursoHumano";
		public static var MODIFICAR_RECURSO_HUMANO             :    String = "modificarRecursoHumano";
	    public static var LISTAR_RECURSO_HUMANO		           :	String = "listarRecursoHumano";
	    
	    public static var LISTAR_PAISES_RECURSO_HUMANO         :    String = "listarPaises";
	    public static var LISTAR_CIUDADES_RECURSO_HUMANO       :    String = "listarCiudades";
	    
	    public static var LISTAR_ARP_RECURSO_HUMANO            :    String = "listarArp";
	    public static var LISTAR_EPS_RECURSO_HUMANO            :    String = "listarEps";
	    public static var LISTAR_AFP_RECURSO_HUMANO            :    String = "listarAfp";
	    
	    public static var LISTAR_BANCOS                        :    String = "listarbancoss";
		
		public static var LISTAR_TIPO_CUENTA                   :    String = "listartipocuentass";
		
		public static var LISTAR_CUENTA_BANCARIA               :    String = "listarCuentaBancaria";
		
		public static var ADICIONAR_CUENTA_BANCARIA	           :	String = "adicionarCuentaBancaria";
		
		public static var ELIMINAR_CUENTA_BANCARIA	           :	String = "eliminarCuentabancaria";
		
		public static var MODIFICAR_CUENTA_BANCARIA	           :	String = "modificarCuentaBancaria";
		
		public var recurso:RecursoHumanoVO;
		public var cuenta:CuentaBancariaVO;
		
		public function RecursoHumanoEvent(type:String,recurso:RecursoHumanoVO,cuenta:CuentaBancariaVO)
		{
			super(type);
			
			this.recurso=recurso;
			this.cuenta = cuenta;
		}
		
	}
}