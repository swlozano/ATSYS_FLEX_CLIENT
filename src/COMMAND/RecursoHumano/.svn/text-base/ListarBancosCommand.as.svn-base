package COMMAND.RecursoHumano
{
	import BUSINESS.RecursoHumanoDelegate;
	
	import EVENT.RecursoHumanoEvent;
	
	import MODEL.CuentasPorPagarMl;
	import MODEL.PantallasMl;
	import MODEL.RecursoHumanoMl;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class ListarBancosCommand implements ICommand, IResponder
	{
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;

		public function execute(event:CairngormEvent):void
		{
			new RecursoHumanoDelegate(this).listarbancos();
		}
		
		public function result(data:Object):void
		{
			
			RecursoHumanoMl.getInstance().listBancos = data.result;
			
			switch(PantallasMl.ESTADO_PANTALLA){
				
				case PantallasMl.getInstance().PANTALLA_AGREGAR_CUENTA_BANCARIA:
				 
				   if(RecursoHumanoMl.getInstance().listBancos!=null && RecursoHumanoMl.getInstance().listBancos.length>0){
				   	
				   	  var e:RecursoHumanoEvent = new RecursoHumanoEvent(RecursoHumanoEvent.LISTAR_TIPO_CUENTA,null,null);
				   	  CairngormEventDispatcher.getInstance().dispatchEvent(e);
				   	
				   }else{
				   	   
				   	       Alert.show("No existen Bancos Registrados..Agregue al menos uno en la BD para realizar esta operación","Mensaje de alerta",0,null,null,alerta,0);
				   	       PantallasMl.ESTADO_PANTALLA = -1;
				         }
				
				break;
				
				case PantallasMl.getInstance().PANTALLA_MODIFICAR_CUENTA_BANCARIA:
				 
				   if(RecursoHumanoMl.getInstance().listBancos!=null && RecursoHumanoMl.getInstance().listBancos.length>0){
				   	  
				   	  
				   	  if(RecursoHumanoMl.getInstance().RecursoHumanoPpl!=null){
				   	  	
				   	  	 var cuentaseleccionada:Object=RecursoHumanoMl.getInstance().RecursoHumanoPpl.dgcuentas.selectedItem;
				   	  	 
				   	  	 fijarBanco(cuentaseleccionada);
				   	  	 
				   	  	 var ev:RecursoHumanoEvent = new RecursoHumanoEvent(RecursoHumanoEvent.LISTAR_TIPO_CUENTA,null,null);
				   	     CairngormEventDispatcher.getInstance().dispatchEvent(ev);
				   	  	
				   	  }
				   	  
				   	  
				   	
				   }else{
				   	   
				   	       Alert.show("No existen Bancos Registrados..Agregue al menos uno en la BD para realizar esta operación","Mensaje de alerta",0,null,null,alerta,0);
				   	       PantallasMl.ESTADO_PANTALLA = -1;
				         }
				
				break;
				
				case PantallasMl.getInstance().PANTALLA_AGREGAR_CUENTAS_X_PAGAR:
				  
				   if(RecursoHumanoMl.getInstance().listBancos!=null){
				   	
				   	   var evx:RecursoHumanoEvent = new RecursoHumanoEvent(RecursoHumanoEvent.LISTAR_TIPO_CUENTA,null,null);
				   	   CairngormEventDispatcher.getInstance().dispatchEvent(evx);
				   	
				   }else{
				   	   
				   	       Alert.show("No existen Bancos Registrados..Agregue al menos uno en la BD para realizar esta operación","Mensaje de alerta",0,null,null,alerta,0);
				   	       PantallasMl.ESTADO_PANTALLA = -1;
				         
				         }
				
				break;
				
				case PantallasMl.getInstance().PANTALLA_MODIFICAR_CUENTAS_X_PAGAR:
				
				     if(CuentasPorPagarMl.getInstance().CuentasPorPagarPpl.dgCuentaspagar.selectedItem.idCuentaBanco==0){
				  
				        var bancoseleccionado:Object = CuentasPorPagarMl.getInstance().CuentasPorPagarPpl.dgCuentaspagar.selectedItem;
				        fijarBancoPersona(bancoseleccionado);
				        
				        
				     }else{
				     	    
				     	    CuentasPorPagarMl.getInstance().indiceBanco = 0;
				     	    
				          }
				          
				     	var evm:RecursoHumanoEvent = new RecursoHumanoEvent(RecursoHumanoEvent.LISTAR_TIPO_CUENTA,null,null);
				   	 	CairngormEventDispatcher.getInstance().dispatchEvent(evm);
				
				
				
				break;
				
			}
			
		}
		
		public function fijarBancoPersona(BancoSelect:Object):void{
		
		  var cont:int = 0;
		  var ban:Boolean=false;
		
		  for each(var x:* in RecursoHumanoMl.getInstance().listBancos){
		  
		     if(BancoSelect.idBanco!=x.id && ban==false){
		     
		       cont++;
		     
		     }else{
		     
		       ban=true;
		      
		     }
		  
		  }
		  
		  CuentasPorPagarMl.getInstance().indiceBanco=cont;
		
		}
		
		public function fijarBanco(cuenta:Object):void{
		
		  var cont:int = 0;
		  var ban:Boolean=false;
		
		  for each(var x:* in RecursoHumanoMl.getInstance().listBancos){
		  
		     if(cuenta.idBanco!=x.id && ban==false){
		     
		       cont++;
		     
		     }else{
		     
		       ban=true;
		      
		     }
		  
		  }
		  
		//  MovimientoMl.getInstance().cbxmodCentroCostoselectedIndex=cont;
		  RecursoHumanoMl.getInstance().bancoindex = cont;
		
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}












