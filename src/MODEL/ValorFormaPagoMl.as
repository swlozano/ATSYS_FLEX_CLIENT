package MODEL
{
	import com.adobe.cairngorm.model.ModelLocator;
	
	import mx.collections.ArrayCollection;

	public class ValorFormaPagoMl implements ModelLocator
	{
		private static var instance:ValorFormaPagoMl = null;
		
		[Bindable] public var listfechasPago:Object = null;
		[Bindable] public var valorFPagoPpl:Object = null;
		[Bindable] public var arrValoresfpago:ArrayCollection = new ArrayCollection();
		[Bindable] public var arrayCopiaFechasPago:ArrayCollection;
		
		[Bindable] public var arrayFechasPago:ArrayCollection;
		
		
		public static function getInstance():ValorFormaPagoMl
		{
			if(instance == null)
			{ 
				instance = new ValorFormaPagoMl();
			}
			return instance;
		}

	}
}