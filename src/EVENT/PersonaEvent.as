package EVENT
{
	import VO.PersonaVO;
	
	import com.adobe.cairngorm.control.CairngormEvent;

	public class PersonaEvent extends CairngormEvent
	{
		public static var ADICIONAR_PERSONA		:	String = "adicionarPersona";
		public static var MODIFICAR_PERSONA     :   String = "modificarPersona";
		public static var ELIMINAR_PERSONA      :   String = "eliminarPersona";
		public static var LISTAR_PERSONAS		:	String = "listarPersonas";
        public static var COMPROBAR_EXISTENCIA_PERSONAS		:	String = "comprobarexistenciapersonas";
		
		public var personaVo:PersonaVO;
		
		public function PersonaEvent(type:String, personavo:PersonaVO)
		{
			super(type);
			this.personaVo=personavo;
		}
		
	}
}