package EVENT
{
	import VO.PermisosVO;
	
	import com.adobe.cairngorm.control.CairngormEvent;

	public class PermisosEvent extends CairngormEvent
	{
		public static var LISTAR_PERMISOS		:	String = "listarPermisos";
		
		public var permisosVo:PermisosVO;
		
		public function PermisosEvent(type:String,permisosvo:PermisosVO)
		{
			super(type);
			this.permisosVo=permisosvo;
		}
		
	}
}