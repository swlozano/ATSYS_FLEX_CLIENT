package MODEL
{
	import com.adobe.cairngorm.model.ModelLocator;
	
	import mx.collections.ArrayCollection;

	public class RecursoHumanoMl implements ModelLocator
	{
		private static var instance:RecursoHumanoMl = null;
		
		
		[Bindable] public var listRecursoHumano:Object = null;
		
		[Bindable] public var listBancos:Object = null;
		[Bindable] public var listCuentas:Object = null;
		
		[Bindable] public var listtipoCuenta:Object = null;
		
		[Bindable] public var tipocuentaindex:int;
		
		[Bindable] public var idCuentaToeliminar:int;
		
		[Bindable] public var idRechumano:int;
		
		[Bindable] public var bancoindex:int;
		
		[Bindable] public var listPaisesExp:Object = null;
		[Bindable] public var listPaisesNat:Object = null;
		
		[Bindable] public var selectableRecursoHumano:Boolean = true;
		
		[Bindable] public var listCiudadesExp:Object = null;
		[Bindable] public var listCiudadesNat:Object = null;
		
		[Bindable] public var listArp:Object = null;
		[Bindable] public var listEps:Object = null;
		[Bindable] public var listAfp:Object = null;
		
		[Bindable] public var BanderaPaises:Boolean;
		[Bindable] public var BanderaCiudades:Boolean;
		
		[Bindable] public var ModidCiudadExp:int;
		[Bindable] public var ModidCiudadNat:int;
		
		[Bindable] public var RecursoHumanoPpl:Object;
		[Bindable] public var ClonModificarRecursoHumano:Object;
		
		[Bindable] public var continentesArraycolect:ArrayCollection;
		
		[Bindable] public var nomContinenteToListarPaises:String;
		[Bindable] public var codePaisToListarCitys:String;
		
		[Bindable] public var txtmodARP:String="";
		[Bindable] public var cbxARPselectedIndex:int=0;
		
		[Bindable] public var txtmodEPS:String="";
		[Bindable] public var cbxEPSselectedIndex:int=0;
		
		[Bindable] public var txtmodAFP:String="";
		[Bindable] public var cbxAFPselectedIndex:int=0;
		
		
		public static function getInstance():RecursoHumanoMl
		{
			if(instance == null)
			{ 
				instance = new RecursoHumanoMl();
			}
			return instance;
		}

	}
}