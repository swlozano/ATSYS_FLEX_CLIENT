package COMMAND.Factura
{
	import BUSINESS.FacturaDelegate;
	
	import MODEL.FacturasMl;
	import MODEL.PantallasMl;
	import MODEL.PermisosMl;
	import MODEL.UtilidadesMl;
	
	import VIEW.facturas.agregarItem;
	import VIEW.facturas.modificarfactura;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.managers.PopUpManager;
	import mx.rpc.IResponder;

	public class ListarRetencionesCommand implements ICommand, IResponder
	{
		
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;
		
		public function execute(event:CairngormEvent):void
		{
			new FacturaDelegate(this).listarRetenciones();
		}
		
		public function result(data:Object):void
		{
			FacturasMl.getInstance().listRetenciones = data.result;
			
			if(FacturasMl.getInstance().agregarItemClone!=null)
          	{
              	FacturasMl.getInstance().valorIdsRetenciones = new Array((FacturasMl.getInstance().listRetenciones as ArrayCollection).length);
               
          
              }
			
			switch(PantallasMl.ESTADO_PANTALLA){
				
				case PantallasMl.getInstance().PANTALLA_ADD_ITEM_FACTURA:
				
				
				   if(FacturasMl.getInstance().listRetenciones!=null || FacturasMl.getInstance().listRetenciones.length>0){
				   var addItem:agregarItem=agregarItem(PopUpManager.createPopUp(PantallasMl.atsys,agregarItem,true));
                   PopUpManager.centerPopUp(addItem);
                   PantallasMl.ESTADO_PANTALLA=-1;
                   }else{
                   	    PantallasMl.ESTADO_PANTALLA=-1;
                     	Alert.show("Para poder agregar un ITEM a la FACTURA se necesitan insertar RETENCIONES el la Base de Datos","Mensaje de alerta",0,null,null,alerta,0);
                        }
				
				break;
				
				case PantallasMl.getInstance().PANTALLA_MODIFICAR_FACTURA:
				
				     
				    var modfactura:modificarfactura=modificarfactura(PopUpManager.createPopUp(PantallasMl.atsys,modificarfactura,false));
				    PopUpManager.centerPopUp(modfactura);
				    
				    //if(FacturasMl.getInstance().clonAgregarFacturas)
				    
				    if(FacturasMl.getInstance().FacturasPpl.dgfacturas.selectedItem.estadoFactura=="Anulada"){
				    	
				    	FacturasMl.getInstance().clonAgregarFacturas.cbxestadoFactura.selectedIndex=1;
				    	
				    	//UtilidadesMl.getInstance().nextEnable=false;
				    	
				    }else if(FacturasMl.getInstance().FacturasPpl.dgfacturas.selectedItem.estadoFactura=="Anulada para la DIAN"){
				    	
				    	      FacturasMl.getInstance().clonAgregarFacturas.cbxestadoFactura.selectedIndex=2;
				    	
				    	      //UtilidadesMl.getInstance().nextEnable=false;
				    	
				            }
				    
				    FacturasMl.getInstance().selectableFactura=false;
				    PermisosMl.getInstance().deshabilitarMenus();
				    
				    PantallasMl.ESTADO_PANTALLA=-1;
				    
				
				break;
				
				
				
				
			}
			
			
			
		}
		
		
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}