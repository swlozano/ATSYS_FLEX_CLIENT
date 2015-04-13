package COMMAND.Factura
{
	import BUSINESS.FacturaDelegate;
	
	import EVENT.FacturaEvent;
	
	import MODEL.FacturasMl;
	import MODEL.PantallasMl;
	import MODEL.PermisosMl;
	
	import VIEW.facturas.agregarfactura;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import mx.controls.Alert;
	import mx.managers.PopUpManager;
	import mx.rpc.IResponder;

	public class ListarIvasCommand implements ICommand, IResponder
	{
		
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;

		public function execute(event:CairngormEvent):void
		{
			new FacturaDelegate(this).listarIvas();
		}
		
		public function result(data:Object):void
		{
			FacturasMl.getInstance().listIvas=data.result;
			
			switch(PantallasMl.ESTADO_PANTALLA){
				
				case PantallasMl.getInstance().PANTALLA_ADD_FACTURA:
				
				    if(FacturasMl.getInstance().listIvas!=null || FacturasMl.getInstance().listIvas.length>0){
				    	
				    	var addfactura:agregarfactura=agregarfactura(PopUpManager.createPopUp(PantallasMl.atsys,agregarfactura,false));
            	 	    PopUpManager.centerPopUp(addfactura);
            	 	    
            	 	    PermisosMl.getInstance().deshabilitarMenus();
            	 	    PantallasMl.ESTADO_PANTALLA=-1;
				    	
				    }else{
				
				           PantallasMl.ESTADO_PANTALLA= -1;
				           Alert.show("Para poder agregar una FACTURA se necesita AGREGAR una lista de Ivas a la Base de datos del SISTEMA ","Mensaje de alerta",0,null,null,alerta,0);
				         
				         }
				break;
				case PantallasMl.getInstance().PANTALLA_MODIFICAR_FACTURA:
				 
				  if(FacturasMl.getInstance().FacturasPpl!=null)
				     
				     var facturaseleccionada:Object = FacturasMl.getInstance().FacturasPpl.dgfacturas.selectedItem;
				     
				     
				   if(facturaseleccionada!=null){
				    
				    fijarIvasSeleccionados(facturaseleccionada);
				    
				    var e:FacturaEvent=new FacturaEvent(FacturaEvent.LISTAR_RETENCIONES,null);
                    CairngormEventDispatcher.getInstance().dispatchEvent(e);
				   }
				    
				break;
				
				
			}
			
		}
		
		
	
		public function fijarIvasSeleccionados(facturaSeleccionada:Object):void
		{
			
			
		      var cont:int = 0;
			  var ban:Boolean=false;
			 
			  
			  
			if(facturaSeleccionada.facturaIvaVOs.length>0){
			  
			  //FacturasMl.getInstance().ValorIvaFactura = FacturasMl.getInstance().SubTotalFactura * (facturaSeleccionada.facturaIvaVOs.iva.porcentaje/100);
			  //FacturasMl.getInstance().TotalFactura = FacturasMl.getInstance().SubTotalFactura + (FacturasMl.getInstance().SubTotalFactura * (facturaSeleccionada.facturaIvaVOs.iva.porcentaje/100));
			  
			  for each(var z:* in facturaSeleccionada.facturaIvaVOs){
			  
			     FacturasMl.getInstance().ValorIvaFactura = FacturasMl.getInstance().SubTotalFactura * (z.iva.porcentaje/100);
			     FacturasMl.getInstance().TotalFactura = FacturasMl.getInstance().SubTotalFactura + (FacturasMl.getInstance().SubTotalFactura * (z.iva.porcentaje/100));
			  
			  }
			  
			  for each(var x:* in FacturasMl.getInstance().listIvas){
			  
			        for each(var y:* in facturaSeleccionada.facturaIvaVOs){
			  
					     if(y.iva.id!=x.id && ban==false){
					     
					       cont++;
					     
					     }else{
					     
					       ban=true;
					      // FacturasMl.getInstance().idIvaFactura = y.iva.id;
					      
					     }
					     
			        }
			  }
			  
			  FacturasMl.getInstance().indiceIvaFactura=cont;
			
			}else{
				   FacturasMl.getInstance().ValorIvaFactura=0;
				   FacturasMl.getInstance().TotalFactura =0;
				   FacturasMl.getInstance().indiceIvaFactura=-1;
			     }
			
			
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}






















