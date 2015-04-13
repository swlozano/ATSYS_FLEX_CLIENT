package MODEL
{
	import VO.RolSysVO;
	
	import com.adobe.cairngorm.model.ModelLocator;
	
	import mx.collections.ArrayCollection;

	public class RolSysMl implements ModelLocator
	{
		private static var instance:RolSysMl = null;

        [Bindable] public var listRol:Object = null;
        [Bindable] public var rolesPpl:Object;
        [Bindable] public var idRolToEliminar:int;
        [Bindable] public var idRolesSelect:Array;
        
        [Bindable] public var opcSubMenuRol:int = -1;
        [Bindable] public var selectableRol:Boolean = true;
        
        public static function getInstance():RolSysMl
		{
			if(instance == null)
			{ 
				instance = new RolSysMl();
			}
			return instance;
		}

       public  function checarallCheckbox():void
		{
			var ar:ArrayCollection = new ArrayCollection();
			var rol:RolSysVO;
			for each(var x:* in RolSysMl.getInstance().listRol)
			{
					
						rol = new RolSysVO(x.id,x.nombre,false,null);
						ar.addItem(rol);
					
			}
			
			RolSysMl.getInstance().listRol = ar;
				
		}

	}
}