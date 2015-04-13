package MODEL
{
	import com.adobe.cairngorm.model.ModelLocator;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.controls.DateField;

	public class SolicitudesServiciosMl implements ModelLocator
	{
		private static var instance:SolicitudesServiciosMl = null;
		
		[Bindable] public var listFichaPermiso:Object = null;
		[Bindable] public var listFichaIncapacidad:Object = null;
		[Bindable] public var listFichaPrestamo:Object = null;
		[Bindable] public var listObservacionesMemos:Object = null;
		
		[Bindable] public var SolicitudIndice:int;
		
		[Bindable] public var SolicitudesServiciosPpl:Object;
		[Bindable] public var idFichaPermisoToEliminar:int;
		//[Bindable] public var idContratoSelectedItem:int = ContratoMl.getInstance().ContratoPpl.dgcontratos.selectedItem.id;
		
		
		[Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;
		
		
		public static function getInstance():SolicitudesServiciosMl
		{
			if(instance == null)
			{ 
				instance = new SolicitudesServiciosMl
			}
			return instance;
		}
		
		public function validarEntradaFechas(fechain:Date,fechafin:Date,fechaintxt:String,fechafintxt:String,campo:DateField):Boolean{
		   
		    var retorno:Boolean;
		
		     if(fechafintxt!="" && fechaintxt!=""){	
            	
            	if(fechafin < fechain){
            		
            		retorno =false;
            		campo.text="";
            		
            		Alert.show("La fecha Fin  NO puede ser menor que la fecha de Inicio" ,"Mensaje de alerta",0,null,null,alerta,0);
            		
            	}
              }
              
              return retorno;
		
		}

	}
}