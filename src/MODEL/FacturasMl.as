package MODEL
{
	import VO.RetencionesVO;
	
	import com.adobe.cairngorm.model.ModelLocator;
	
	import mx.collections.ArrayCollection;

	public class FacturasMl implements ModelLocator
	{
		private static var instance:FacturasMl = null;
		
		[Bindable] public var listfacturas:Object = null;
		[Bindable] public var listabonofacturas:Object = null;
		[Bindable] public var banderaPantallaabonosPpl:Boolean = true;
		[Bindable] public var banderaFormIsvalidGestionarItems:Boolean;
		
		[Bindable] public var clonAgregarFacturas:Object = null;
		
		///////REPORTES////////////////////////////////
		
		
		[Bindable] public var reporteFacturas:Object = null;
		
		[Bindable] public var VerreporteFacturas:Object = null;
		
		[Bindable] public var tipoPeriodoR:int;
		[Bindable] public var fechaInicioR:Date;
		[Bindable] public var fechaFinR:Date;
		[Bindable] public var tipoFechaR:int;
		[Bindable] public var tipoEstadoR:int;
		[Bindable] public var arrClientesR:Array;
		
		
		//////////////////////////////////////////////
		
		[Bindable] public var listIvas:Object = null;
		[Bindable] public var listRetenciones:Object = null;
		
		[Bindable] public var FacturasPpl:Object;
		[Bindable] public var abonoFacturasPpl:Object;
		
		[Bindable] public var tipoFecha:int;
		[Bindable] public var tipoEstado:int;
		[Bindable] public var Filtrarpersona:int;
		
		[Bindable] public var indiceGrilla:int;
		
		[Bindable] public var indiceEstadoFactura:int;
		
		[Bindable] public var fechaInicio:Date;
		[Bindable] public var fechaFin:Date;
		
		[Bindable] public var indiceIvaFactura:int;
		[Bindable] public var idIvaFactura:int;
		
		[Bindable] public var idFacturaToEliminar:int;
		[Bindable] public var idAbonoFacturaToEliminar:int;
		
		[Bindable] public var cbxmodPersonaselectedIndex:int=0;
		[Bindable] public var txtmodPersonaFactura:String="";
		
		[Bindable] public var estadoFactura:String;
		
		[Bindable] public var SubTotalFactura:Number=0;
		[Bindable] public var TotalFactura:Number=0;
		[Bindable] public var ValorIvaFactura:Number=0;
		
		[Bindable] public var selectableFactura:Boolean = true;
		[Bindable] public var ItemsFacturaArray:Array=null;
		[Bindable] public var DetalleFacturaArraycollection:ArrayCollection=new ArrayCollection();
      	[Bindable] public var detallesFacturasFx:ArrayCollection=new ArrayCollection(); 
		public var agregarItemClone:Object;	  
		[Bindable] public var valorIdsRetenciones:Array = new Array;    
      
      public static function getInstance():FacturasMl
		{
			if(instance == null)
			{ 
				instance = new FacturasMl();
			}
			return instance;
		}
		
		public function totalIva():void{
            
            if(clonAgregarFacturas.dgIvas!=null){	
              if(clonAgregarFacturas.dgIvas.selectedItem!=null){ 	
            	FacturasMl.getInstance().ValorIvaFactura =  FacturasMl.getInstance().SubTotalFactura * (clonAgregarFacturas.dgIvas.selectedItem.porcentaje /100);
            	FacturasMl.getInstance().TotalFactura = FacturasMl.getInstance().SubTotalFactura + (FacturasMl.getInstance().SubTotalFactura * (clonAgregarFacturas.dgIvas.selectedItem.porcentaje /100));
              }
            }
        }
		
		public  function checarallCheckboxivas():void
		{
			var ar:ArrayCollection = new ArrayCollection();
			var reten:RetencionesVO;
			for each(var x:* in FacturasMl.getInstance().listIvas)
			{
			   reten = new RetencionesVO(x.id,x.nombre,x.porcentaje,false);
			   ar.addItem(reten);
			}
			
			FacturasMl.getInstance().listIvas = ar;
				
		}
		
		public  function checarallCheckbox():void
		{
			var ar:ArrayCollection = new ArrayCollection();
			var reten:RetencionesVO;
			for each(var x:* in FacturasMl.getInstance().listRetenciones)
			{
			   reten = new RetencionesVO(x.id,x.nombre,x.porcentaje,false);
			   ar.addItem(reten);
			}
			
			FacturasMl.getInstance().listRetenciones = ar;
				
		}
		[Bindable] public var descripcionServicioAddItem:String ="";
		[Bindable] public var cantidadAddItem:String ="";
		[Bindable] public var precioAddItem:String ="";
		[Bindable] public var seletecIndexInAddItems:int =-1;
		
		//ESTA VARIABLE TOMA EL ESTADO DE 1 SI SE VA A AGRGAR UNA FACTURA Y TOMA EL ESTADO 
		//DE DOS SI SE VA A MODIFCAR UNA FACTURA
		[Bindable] public var CURRENT_AGREGAR_MODIFICAR :int = 0;

	}
}