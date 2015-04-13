package VO
{
	import com.adobe.cairngorm.vo.ValueObject;
    
    [Bindable]
	public class RolSysVO implements ValueObject
	{
		public var id:int;
		public var nombre:String;
		public var asignado:Boolean;
		public var idPermisosSelect:Array;
				
		public function RolSysVO(id:int,nombre:String,asignado:Boolean,idPermisosSelect:Array)
		{
			
			this.id = id;
			this.nombre = nombre;
			this.asignado =asignado;
			this.idPermisosSelect=idPermisosSelect;
			
		}

	}
}