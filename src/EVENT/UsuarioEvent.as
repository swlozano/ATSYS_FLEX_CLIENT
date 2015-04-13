package EVENT
{
	import VO.UsuarioVO;
	
	import com.adobe.cairngorm.control.CairngormEvent;

	public class UsuarioEvent extends CairngormEvent
	{
		
		public static var ADICIONAR_US		:	String = "adicionarUs";
		public static var EDITAR_US			:	String = "editarUs";
		public static var REMOVER_US		:	String = "removerUs";
		public static var LISTAR_US			:	String = "listarUs";		
		public static var VER_PERMISOS_US	:	String = "permisosUs";
		public static var GET_USUARIO		:	String = "getUsuario";
		public static var BLOQ_USUARIO		:	String = "bloquearUsuario";
		public static var VALIDAR_US		:	String = "validarUsuario";
		public static var CAMBIAR_CONTRASENA		:	String = "cambiarContrasena";
		
		public var usuario	:	UsuarioVO;
		
		
		public function UsuarioEvent(type:String, u:UsuarioVO)
		{
			super(type);
			this.usuario = u;
		}
		
	}
}