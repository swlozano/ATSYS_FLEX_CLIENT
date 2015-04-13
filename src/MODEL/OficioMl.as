package MODEL
{
	import com.adobe.cairngorm.model.ModelLocator;

	public class OficioMl implements ModelLocator
	{
		private static var instance:OficioMl = null;
		
		[Bindable] public var listOficio:Object = null;
		[Bindable] public var OficioPpl:Object;
		[Bindable] public var idOficioToEliminar:int;
		
		[Bindable] public var selectableOficio:Boolean = true;
		
		public static function getInstance():OficioMl
		{
			if(instance == null)
			{ 
				instance = new OficioMl();
			}
			return instance;
		}

	}
}