package COMMAND.roles
{
	import BUSINESS.PermisosDelegate;
	
	import MODEL.PermisosMl;
	import MODEL.RolSysMl;
	
	import VO.PermisosVO;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class ListarPermisosCommand implements ICommand, IResponder
	{
		
		public function execute(event:CairngormEvent):void
		{
			new PermisosDelegate(this).listarPermisos();
		}
		
		public function result(data:Object):void
		{
			PermisosMl.getInstance().listPermisos = data.result;
			if(PermisosMl.getInstance().rolesPpl != null)
			var rolseleccionado:Object = RolSysMl.getInstance().rolesPpl.dgroles.selectedItem;
			if(RolSysMl.getInstance().opcSubMenuRol == 2){
				fijarRolAsignado(rolseleccionado);
			}
		}
		
		public function fault(info:Object):void
		{
			Alert.show("ER2 CX ");
		}
		public function fijarRolAsignado(RolSeleccionado:Object):void
		{
			var ar:ArrayCollection = new ArrayCollection();
			var permiso:PermisosVO;
			var ban:Boolean ;
			for each(var x:* in PermisosMl.getInstance().listPermisos)
			{
				ban = false;
				
				for each(var z:* in RolSeleccionado.rolPermisoses)
				{
					if(x.id == z.permisos.id)
					{
						permiso = new PermisosVO(x.id,x.nombre,true);
						ar.addItem(permiso);
						ban = true;	
					}
					if(ban)
						break;
				}
				
				if(!ban)
				{
					permiso = new PermisosVO(x.id,x.nombre,false);
					ar.addItem(permiso);
				}
				
			}
			
			PermisosMl.getInstance().listPermisos = ar;
				
		}
		
	}
}