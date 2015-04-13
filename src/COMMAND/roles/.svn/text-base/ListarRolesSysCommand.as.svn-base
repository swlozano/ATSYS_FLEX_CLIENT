package COMMAND.roles
{
	import BUSINESS.RolSysDelegate;
	
	import MODEL.RolSysMl;
	import MODEL.UsuariosSysMl;
	
	import VO.RolSysVO;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class ListarRolesSysCommand implements ICommand, IResponder
	{
		
		public function execute(event:CairngormEvent):void
		{
			new RolSysDelegate(this).listarRoles();
		}
		
		public function result(data:Object):void
		{
			RolSysMl.getInstance().listRol = data.result;
			//123456
			if(UsuariosSysMl.getInstance().usuariosPpl != null)
			var usuarioSeleccionado:Object = UsuariosSysMl.getInstance().usuariosPpl.dgUsuarios.selectedItem;
			
			
			if(UsuariosSysMl.getInstance().opcSubMenuUsuario == 2){
			  UsuariosSysMl.getInstance().opcSubMenuUsuario = -1;
			   if(usuarioSeleccionado!=null){
				fijarAsignado(usuarioSeleccionado);
			   }
			}
			
		}
		
		public function fault(info:Object):void
		{
			Alert.show("ER2 CX ");
		}
		
		
		
		public function fijarAsignado(usuarioSeleccionado:Object):void
		{
			var ar:ArrayCollection = new ArrayCollection();
			var rol:RolSysVO;
			var ban:Boolean ;
			for each(var x:* in RolSysMl.getInstance().listRol)
			{
				//
				ban = false;
			
				
				for each(var z:* in usuarioSeleccionado.usuarioSistemaRols)
				{
					if(x.id == z.rol.id)
					{
						rol = new RolSysVO(x.id,x.nombre,true,null);
						ar.addItem(rol);
						ban = true;	
					}
					if(ban)
						break;
				}
				
				if(!ban)
				{
					rol = new RolSysVO(x.id,x.nombre,false,null);
					ar.addItem(rol);
				}
				
			}
			
			RolSysMl.getInstance().listRol = ar;
				
		}
		
		
	}
}