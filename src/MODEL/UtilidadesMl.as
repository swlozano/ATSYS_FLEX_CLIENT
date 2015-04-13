package MODEL
{
	import VO.CoincidenciaVO;
	
	import com.adobe.cairngorm.model.ModelLocator;
	
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import mx.collections.ArrayCollection;
	import mx.formatters.CurrencyFormatter;
	import mx.formatters.DateFormatter;

	
	public class UtilidadesMl implements ModelLocator
	{
		[Bindable] public var Clon_MenuAbajo:Object;
		
		private static var instance:UtilidadesMl = null;
		public static var USUARIO_TIPO:int = 1;
		[Bindable]
		public static var BREAK:String="<i>";
		[Bindable]
		public static var FIN_BREAK:String="</i>";
		
		public static var USUARIOS_ETIQUETA_HTML:Array = new Array("<i>Nombre:</i> ","<i>Cédula</i> ","<i>Login:</i> ","<i>Email:</i> ");
		public static var USUARIOS_ETIQUETA:Array = new Array("Nombre: ","Cédula ","Login: ","Email: ");
		[Bindable] public var verticalScrollPosition:int;
		[Bindable] public var dgSelectedIndex:int;
				
		[Bindable] public var valorItem:int;
        [Bindable] public var tituloPantalla:String;		
		[Bindable] public var backEnable:Boolean;
		[Bindable] public var nextEnable:Boolean;
		[Bindable] public var current:int;
		
		/*****************************************************/
		[Bindable] public var arrayDias:Array = new Array("Dom","Lun","Mar","Mie","Jue","Vie","Sáb");
		[Bindable] public var arrayMeses:Array = new Array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");
		
		
		/******************************************************/
	    
	    public var arrayTitulosAgregarCMenor:Array = new Array("AÑADIR CAJA MENOR","AÑADIR CAJA MENOR > CORREOS");
	    public var arrayTitulosagregarCentroCosto:Array = new Array("AÑADIR CENTRO DE COSTO","AÑADIR CENTRO DE COSTO");
	    public var arrayTitulosmodificarCentroCosto:Array = new Array("MODIFICAR CENTRO DE COSTO","MODIFICAR CENTRO DE COSTO");
	    public var arrayTitulosConfCMenor:Array = new Array("CONFIGURAR CAJA MENOR","CONFIGURAR CAJA MENOR > CORREOS");
	    public var arrayTitulosagregarCuentab:Array = new Array("AÑADIR CUENTA DE BANCO","AÑADIR CUENTA DE BANCO");
	    public var arrayTitulosmodificarCuentab:Array = new Array("MODIFICAR CUENTA DE BANCO","MODIFICAR CUENTA DE BANCO");
	    public var arrayTitulosAgregarRecHumano:Array = new Array("AÑADIR RECURSO HUMANO > INFORMACIÓN","AÑADIR RECURSO HUMANO > AFILIACIONES Y DOCUMENTACIÓN");
		public var arrayTitulosmodificarRecHumano:Array = new Array("MODIFICAR RECURSO HUMANO > INFORMACIÓN","MODIFICAR RECURSO HUMANO > AFILIACIONES Y DOCUMENTACIÓN");      
		public var arrayTitulosAgregarAbonoFac:Array = new Array("ABONOS FACTURA","ABONOS FACTURA");
		/******************************************************************************************/0
	 	public var arrayTitulosAgregarUsers:Array = new Array("AÑADIR USUARIO","AÑADIR USUARIO > SELECCIONAR ROLES");
	    public var arrayTitulosModificarUsers:Array = new Array("MODIFICAR USUARIO","MODIFICAR USUARIO > SELECCIONAR ROLES");
	    public var arrayTitulosAgregarRoles:Array = new Array("AÑADIR ROL","");
	    public var arrayTitulosModificarRoles:Array = new Array("MODIFICAR ROL","");
	    public var arrayTitulosAgregarMovimientos:Array = new Array("AÑADIR MOVIMIENTO","");
		public var arrayTitulosModificarMovimientos:Array = new Array("MODIFICAR MOVIMIENTO","");
		public var arrayTitulosAgregarOficio:Array = new Array("AÑADIR OFICIO");
		public var arrayTitulosModificarOficio:Array = new Array("MODIFICAR OFICIO");
		public var arrayTitulosAgregarPersonas:Array = new Array("AÑADIR PERSONA","");
		public var arrayTitulosModificarPersonas:Array = new Array("MODIFICAR PERSONA","");
		public var arrayTitulosAgregarItem:Array = new Array("AÑADIR ITEM","");
		public var arrayTitulosAgregarFactura:Array = new Array("AÑADIR FACTURA","AÑADIR FACTURA","AÑADIR FACTURA");
		public var arrayTitulosModificarFactura:Array = new Array("MODIFICAR FACTURA","MODIFICAR FACTURA","MODIFICAR FACTURA");
		public var arrayTitulosAgregarAbono:Array = new Array("AÑADIR ABONO","AÑADIR ABONO");
		public var arrayTitulosModificarAbono:Array = new Array("MODIFICAR ABONO","MODIFICAR ABONO");
		
		public var arrayTitulosagregarContrato:Array = new Array("AÑADIR CONTRATO","AÑADIR CONTRATO");
		public var arrayTitulosagregarVfpago:Array = new Array("AÑADIR VALOR FORMA PAGO","AÑADIR VALOR FORMA PAGO","AÑADIR VALOR FORMA PAGO");
		
		/******************************************************************************************/0
		public static var VALOR_COL:int = 1;
		public static var MONTO_MIN_NOTI_COL:int = 2;
		
		private var selectedIndex:int;
		public var cont:int;
		private var timer:Timer;
		
		    [Bindable]
            [Embed(source="REC/IMAGENES/check_ok_enable.png")]
            public var rutaCheck2:Class;
                    
            [Bindable]
            [Embed(source="REC/IMAGENES/check_ok.png")]
            public var rutaCheck:Class;
		
            [Bindable]
            [Embed(source="REC/IMAGENES/back2_enable.png")]
            public var rutaback2:Class;
                    
            [Bindable]
            [Embed(source="REC/IMAGENES/back2.png")]
            public var rutaback:Class;		
		    
            [Bindable]
            [Embed(source="REC/IMAGENES/next_enable.png")]
            public var next2:Class;
                    
            [Bindable]
            [Embed(source="REC/IMAGENES/next.png")]
            public var next:Class;		    
		    
		[Bindable] public static var  coincidencias:ArrayCollection;
		
	
		
		public function UtilidadesMl()
		{
			
		}
				
		public static function getInstance():UtilidadesMl
		{
			if(instance == null)
			{ 
				instance = new UtilidadesMl();
			}
			return instance;
		}
		
        public function validarNavtilewindow(arrayPantallas:Array,numPantallas:int,valorCurrent:int,ban:Boolean):void{
        	
        	
        	
        	if(ban && valorCurrent <= numPantallas)
        	{
        		   valorCurrent = valorCurrent + 1;
        		   
        	 }
        	 else{
				 if(valorCurrent!=0){
				 	valorCurrent = valorCurrent - 1;
					
				   }
				 
		  	}
        	
        	if(valorCurrent>=0 && valorCurrent<=numPantallas)
        	{
        		current=valorCurrent;
	        	if(valorCurrent==0){
	        		  		
	        		
	        		backEnable = false;
	        		if(numPantallas>0)
	        		nextEnable = true;
	        		  else
	        		    nextEnable = false;
	        		
	        	}
	        	else
	        	{
	        		
			           backEnable = true;        		
					   if(valorCurrent==numPantallas)
					   {
					      nextEnable = false;
					   		//backEnable = true;
					   	
					     }
					     else
					     {
					           nextEnable = true;        		     	  
					     }
	        		   
	    	     }
	    	     tituloPantalla = arrayPantallas[valorCurrent];
        	}
        	
        }		
		
		public function getTipoBusquedaDato(tipoBusqueda:int,dato:Object):Array
		{
			var arrDatos:Array = new Array();
			switch(tipoBusqueda)
			{
				case UtilidadesMl.USUARIO_TIPO:
					arrDatos = UtilidadesMl.getDatosUsuario(dato);
				break;
			}
			
			
			return arrDatos;
		}
		
		
		public static function buscarConcidencias(obj:Object,cadBusqueda:String,tipoBusqueda:int):void
		{
			var b:Boolean = true;
			var provedoreDatos:ArrayCollection = new ArrayCollection();
			provedoreDatos = obj as ArrayCollection;
			UtilidadesMl.coincidencias = new ArrayCollection();
			var parametroAsignado:String = "";
			var index:int = -1;
			var cad1:String = "";
			var cad2:String ="";
			var cad3:String="";
			var cont:int = 0;
			var arrDatos:Array;
			var arregloToRetornar:ArrayCollection = new ArrayCollection();
			
			if(cadBusqueda!="")
			{
				UsuariosSysMl.getInstance().usuariosPpl.cbxCoincidencia.open();
				UtilidadesMl.coincidencias = new ArrayCollection();
				for each(var dato:* in provedoreDatos)
				{
					cad1 = "";
					cad2 = "";
					cad3 = "";
					index = -1;
					
					arrDatos = new Array();
					arrDatos = UtilidadesMl.getInstance().getTipoBusquedaDato(tipoBusqueda,dato);
					var arcConcidenciaTemp:ArrayCollection = new ArrayCollection();
					
					for(var i:int = 0 ; i < arrDatos.length;i++)
					{
						//1busqueda	nombres
						//2 		apellido
						//3 		cedula
						//4			login	
						//5			correoElectronico
						
						parametroAsignado = arrDatos[i];
						parametroAsignado =  parametroAsignado.toLowerCase();
						cadBusqueda = cadBusqueda.toLocaleLowerCase();
						index = parametroAsignado.indexOf(cadBusqueda);
						var textoCoincidenciaHtml:String = "";
						var textoCoincidencia:String = "";
						var arregloCoincideciaTemp:Array;
						if(index!=-1)
						{
							cad1= parametroAsignado.substring(0,index );
							cad2 = parametroAsignado.substring(index , index + cadBusqueda.length);	
							cad3 = parametroAsignado.substring(index + cadBusqueda.length ,parametroAsignado.length);
							//var arConcidenciaTemp:Array = new Array(cad1  + cad2 +  cad3,cad1 + "<b>" + cad2  + "</b>" +  cad3);
							textoCoincidenciaHtml = cad1 + "<b>" + cad2  + "</b>" +  cad3;
							textoCoincidencia = cad1 +  cad2  +  cad3;
							arregloCoincideciaTemp = new Array(textoCoincidenciaHtml,textoCoincidencia);
							
						}
						else
							arregloCoincideciaTemp = new Array("","");
							
						arcConcidenciaTemp.addItem(arregloCoincideciaTemp);
						
					}
					if(arcConcidenciaTemp.length != 0)
					{
						var coincidenciaVO:CoincidenciaVO;
						coincidenciaVO = UtilidadesMl.getInstance().crearObjToRetornar(arcConcidenciaTemp,tipoBusqueda,cont);
						if(coincidenciaVO.coincidenciaHtml!= "")
							arregloToRetornar.addItem(coincidenciaVO);
						
					}
					cont++;		
				}
			}
			else
			{
				UtilidadesMl.coincidencias = null;
			}
			
			UtilidadesMl.coincidencias = arregloToRetornar;
			
			 if(UtilidadesMl.coincidencias.length == 1)
                       {
                               UtilidadesMl.getInstance().buscarIndexSelect( UsuariosSysMl.getInstance().usuariosPpl.cbxCoincidencia.selectedItem.index, UsuariosSysMl.getInstance().usuariosPpl.dgUsuarios.rowCount);
                               UsuariosSysMl.getInstance().usuariosPpl.cbxCoincidencia.close();
                       }
			
			
		}
		
		private static function getDatosUsuario(dato:Object):Array
		{
			var arrDatos:Array = new Array((dato.nombre as String) + " " + (dato.apellido as String),dato.cedula ,dato.login as String,dato.correoElectronico as String);	
			return arrDatos;
		}
		
		private   function crearObjToRetornar(arcConcidenciaTemp:ArrayCollection,tipoBusqueda:int,index:int/*,dato:Object*/):CoincidenciaVO
		{
			//var coincidenciaVO:CoincidenciaVO = new CoincidenciaVO(		
			var cadHtml:String = "";
			var cadLabel:String =  "";
			
			//var i:int = 0;
			var arEtiquetasHtml:Array = new Array();
			var arEtiquetas:Array = new Array();
			
			switch(tipoBusqueda)
			{
				case UtilidadesMl.USUARIO_TIPO:
					arEtiquetasHtml = UtilidadesMl.USUARIOS_ETIQUETA_HTML;
					arEtiquetas = UtilidadesMl.USUARIOS_ETIQUETA;
				break;
			}
			
			for(var j:int = 0; j<arcConcidenciaTemp.length;j++)
			{
				var str:String = arcConcidenciaTemp.getItemAt(j)[0];
				if(arcConcidenciaTemp.getItemAt(j)[0] != "")
				{
					cadHtml = cadHtml + " " + arEtiquetasHtml[j] + arcConcidenciaTemp.getItemAt(j)[0];
					cadLabel = cadLabel + " " + arEtiquetas[j] + arcConcidenciaTemp.getItemAt(j)[1];
				}
			}
			return new CoincidenciaVO(cadHtml,1,index,cadLabel);
			
		}
		
		public  function buscarIndexSelect(index:int,rowCount:int):void
		{
		 
		 	timer =  new Timer(100);
		 	timer.addEventListener(TimerEvent.TIMER,UtilidadesMl.getInstance().onTimer);
		 	
		 	UtilidadesMl.getInstance().verticalScrollPosition = new int();
		 	UtilidadesMl.getInstance().dgSelectedIndex = new int();
			
			UtilidadesMl.getInstance().verticalScrollPosition = 0;
			UtilidadesMl.getInstance().dgSelectedIndex = 0;
			
			UtilidadesMl.getInstance().selectedIndex = index;
			cont = rowCount;
			timer.start();
		}
		 private function onTimer(evt:TimerEvent):void 
		 {
     	     if(cont <= UtilidadesMl.getInstance().selectedIndex + 1)
     	     {
     	     	UtilidadesMl.getInstance().dgSelectedIndex = cont;
     	     	UtilidadesMl.getInstance().verticalScrollPosition = UtilidadesMl.getInstance().verticalScrollPosition + 1;
     	     }
     	     else
     	     {
     	     	timer.stop();
     	     	UtilidadesMl.getInstance().dgSelectedIndex  = UtilidadesMl.getInstance().selectedIndex;
     	     }
     	     cont++;
         }
         
        public function combertirDecimalToEntero(str:String):String
		{
			var newStr:String = "";
			if(str.length >= 4)
			{
				for(var x:int = 0; x <= str.length ; x++)
				{
					if(str.charAt(x) != ",")
					{
						newStr = newStr + str.charAt(x);
					}
				}
			}
			else
			{
				newStr = str;
			}
			return newStr;
		}
		
		private var formatoModenaCf:CurrencyFormatter = new CurrencyFormatter();
		
		public function formaterMoneda(valorAFormatear:Object):String
		{
			formatoModenaCf.currencySymbol = "";
			//var str:String =  formatoModenaCf.format(valorAFormatear) +  " ";
			return  formatoModenaCf.format(valorAFormatear);
		}
		
		private var formatoFechas:DateFormatter = new DateFormatter();
		public function formaterFechas(item:Date):String
		{
			formatoFechas.formatString = getMes(item.getMonth()) +  ". DD, YYYY";
			
			var str:String = item.toLocaleDateString();
			return  formatoFechas.format(item);
			 
		}
		
		public function formatearACampoFecha(item:Date):String{
		
		   formatoFechas.formatString = "MM/DD/YYYY";
		   var str:String = item.toLocaleDateString();
		   return formatoFechas.format(item);
		
		}
		
		private function getMes(mes:Number):String
		{
			switch(mes)
			{
				case 0:
					return "enero";
				break;
				case 1:
					return "feb";
				break;
				case 2:
					return "mar";
				break;
				case 3:
					return "abril";
				break;
				case 4:
					return "may";
				break;
				case 5:
					return "jun";
				break;
				case 6:
					return "jul";
				break;
				case 7:
					return "agost";
				break;
				case 8:
					return "sep";
				break;
				case 9:
					return "oct";
				break;
				case 10:
					return "nov";
				break;
				case 11:
					return "dic";
				break;
				
				default:
					return "";
				break;
			}
		}
		
		
	}
}