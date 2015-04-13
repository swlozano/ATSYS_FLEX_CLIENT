package EVENT
{
	import VO.RolSysVO;
	
	import com.adobe.cairngorm.control.CairngormEvent;

	public class RolesSysEvent extends CairngormEvent
	{
	    public static var ADICIONAR_ROLES		:	String = "adicionarRoles";
	    public static var MODIFICAR_ROLES       :   String = "modificarRoles";
	    public static var ELIMINAR_ROLES        :   String = "eliminarRoles";
	    public static var LISTAR_ROLES		    :	String = "listarRoles";
	    
	    public var rolSysVo:RolSysVO;
		
		public function RolesSysEvent(type:String, rolsysVo:RolSysVO)
		{
			super(type);
			this.rolSysVo=rolsysVo;
		}
		
	}
}