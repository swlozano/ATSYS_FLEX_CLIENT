package EVENT
{
	import VO.UsuariosSysVO;
	
	import com.adobe.cairngorm.control.CairngormEvent;

	public class UsuariosSysEvent extends CairngormEvent
	{
		public static var ADICIONAR_US		:	String = "adicionarUs";
		public static var LISTAR_US		:	String = "listarUs";
		public static var ASIGNAR_ROL_TO_USUS	:	String = "asiganrRolToUsus";
		public static var ELIMINAR_USUARIOS : String = "eliminarUsuarios";
		public static var MODIFICAR_USUARIOS:String = "modificarUsuarios";
		public static var VALIDAR_USUARIOS:String = "validarUsuarios";
		
		public var usuariosSysVo:UsuariosSysVO;
		
		
		
		
		public function UsuariosSysEvent(type:String, usuarioSysVo:UsuariosSysVO)
		{
			super(type);
			this.usuariosSysVo = usuarioSysVo;
		}
		
	}
}