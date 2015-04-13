package MODEL
{
	import VO.PersonaVO;
	
	import com.adobe.cairngorm.model.ModelLocator;
	
	import mx.collections.ArrayCollection;

	public class PersonaMl implements ModelLocator
	{
		private static var instance:PersonaMl = null;
		//public static  var RO_USUARIOS:String = "gestionUsuarios";
		
		[Bindable] public var listPersonas:Object = null;
		
		[Bindable] public var listPersonsToFiltrar:ArrayCollection = null;
		
		[Bindable] public var listPersonasToReportesFacturas:Object = null;
		
		[Bindable] public var personasPpl:Object;
		[Bindable] public var idPersonaToEliminar:int;
		[Bindable] public var Clon_pantallaAgregarPersona:Object;
		
		[Bindable] public var BanderaIsPersona:int;
		
		[Bindable] public var cedulaToComprobar:int;
		
		[Bindable] public var numCual:String="";
		[Bindable] public var cual:String="";
		
		[Bindable] public var idsPersonasSeleccionadas:Array;
		
		[Bindable] public var selectablePersona:Boolean = true;
		
		public static function getInstance():PersonaMl
		{
			if(instance == null)
			{ 
				instance = new PersonaMl();
			}
			return instance;
		}
		
		public  function checarallCheckboxPersonaFac():void
		{
			var ar:ArrayCollection = new ArrayCollection();
			var persona:PersonaVO;
			for each(var x:* in PersonaMl.getInstance().listPersonasToReportesFacturas)
			{
			     		persona = new PersonaVO(x.id,x.nit,x.cedula,x.telefono,x.nombreRs,false);
						ar.addItem(persona);
					
			}
			
			PersonaMl.getInstance().listPersonasToReportesFacturas = ar;
				
		}
		
		public  function checarallCheckboxpersona():void
		{
			var ar:ArrayCollection = new ArrayCollection();
			var persona:PersonaVO;
			for each(var x:* in BusquedaMovtsMl.getInstance().OBJETOLISTAR)
			{
			     		persona = new PersonaVO(x.id,x.nit,x.cedula,x.telefono,x.nombreRs,false);
						ar.addItem(persona);
					
			}
			
			BusquedaMovtsMl.getInstance().OBJETOLISTAR = ar;
				
		}

		
	}
}