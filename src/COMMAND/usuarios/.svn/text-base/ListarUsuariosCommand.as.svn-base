package COMMAND.usuarios
{
	import BUSINESS.UsuarioSysDelegate;
	
	import MODEL.CajaMenorMl;
	import MODEL.PantallasMl;
	import MODEL.PermisosMl;
	import MODEL.UsuariosSysMl;
	
	import VIEW.cajaMenor.agregarCajaMenor;
	import VIEW.cajaMenor.agregarCuentasBanco;
	import VIEW.cajaMenor.configurarCajaMenor;
	import VIEW.cajaMenor.modificarCuentasBanco;
	
	import VO.UsuariosSysVO;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.managers.PopUpManager;
	import mx.rpc.IResponder;

	public class ListarUsuariosCommand implements ICommand, IResponder
	{
	    
        [Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
	    [Bindable]
		[Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;
	    [Embed(source="/REC/IMAGENES/alertopt.png")]
		public var alertidea:Class;
	   
		public function execute(event:CairngormEvent):void
		{
			new UsuarioSysDelegate(this).listarrUsuarios();
		}
		
		public function result(data:Object):void
		{
			UsuariosSysMl.getInstance().listUs = data.result;
			UsuariosSysMl.getInstance().listUsClonado =  UsuariosSysMl.getInstance().listUs;
			UsuariosSysMl.getInstance().listUsCbx = data.result;
			
            switch(PantallasMl.ESTADO_PANTALLA)
            {
            	case PantallasMl.getInstance().PANTALLA_MODIFICAR_CAJA_MENOR:
            			
                     PantallasMl.ESTADO_PANTALLA = -1;
            		if(CajaMenorMl.getInstance().cajaMenorPpl!=null){            	
                     var cajamenorseleccionado:Object = CajaMenorMl.getInstance().cajaMenorPpl.dgCajaMenor.selectedItem;
	                 }  
            		if(cajamenorseleccionado!=null)
	            	{
	            	   fijarUsAsignado(cajamenorseleccionado);
	            	   
	            	   var confcajamenor:configurarCajaMenor=configurarCajaMenor(PopUpManager.createPopUp(PantallasMl.atsys,configurarCajaMenor,false)); 
            	 	   PopUpManager.centerPopUp(confcajamenor);
            	 	   CajaMenorMl.getInstance().selectableCmenor=false;
            	 	   PermisosMl.getInstance().deshabilitarMenus();
	            	
	            	 }
	            	
	            	
            	break;
            	
                case PantallasMl.getInstance().PANTALLA_MODIFICAR_CUENTA_BANCO:
                
                   PantallasMl.ESTADO_PANTALLA = -1;
                   
                  if( CajaMenorMl.getInstance().cuentasBancoPpl!=null){ 
                   var cbancoseleccionado:Object = CajaMenorMl.getInstance().cuentasBancoPpl.dgCuentasBanco.selectedItem;
                  }
                   if(cbancoseleccionado!=null)
	            	{
	            	   fijarUsAsignado(cbancoseleccionado);
	            	   
	            	   var modcbanco:modificarCuentasBanco=modificarCuentasBanco(PopUpManager.createPopUp(PantallasMl.atsys,modificarCuentasBanco,false)); 
            	 	   PopUpManager.centerPopUp(modcbanco);
            	 	   CajaMenorMl.getInstance().selectableCBanco=false;
            	 	   PermisosMl.getInstance().deshabilitarMenus();
	            	
	            	 }
                   
                
                break;
            	
            	
            	case PantallasMl.getInstance().PANTALLA_ADD_CAJA_MENOR:
            		
            		
            		var addcajaMenor:agregarCajaMenor=agregarCajaMenor(PopUpManager.createPopUp(PantallasMl.atsys,agregarCajaMenor,false));
            	 	PopUpManager.centerPopUp(addcajaMenor);
            	 	PermisosMl.getInstance().deshabilitarMenus();
            	 	PantallasMl.ESTADO_PANTALLA=-1;
            	    
            		
            	break;
            	
            	case PantallasMl.getInstance().PANTALLA_ADD_CUENTA_BANCO:
            	  
            	     var addCbanco:agregarCuentasBanco=agregarCuentasBanco(PopUpManager.createPopUp(PantallasMl.atsys,agregarCuentasBanco,false));
            	 	 PopUpManager.centerPopUp(addCbanco);
            	 	 PermisosMl.getInstance().deshabilitarMenus();
            	 	 PantallasMl.ESTADO_PANTALLA=-1;
            	
            	break;
            }
            
        }
          
        public function fijarUsAsignado(usuarioSeleccionado:Object):void
		{
			var ar:ArrayCollection = new ArrayCollection();
			var usu:UsuariosSysVO;
			var ban:Boolean ;
			var cont:int = 0;
			var cont2:int = 0;
			var ban2:Boolean = true;
			var nombreResponsable:String="";
			var bandera:Boolean = false;
			for each(var x:* in UsuariosSysMl.getInstance().listUs)
			{
				//
				if(UsuariosSysMl.getInstance().idUsuarioSelecEnCajaMenor != x.id && bandera == false)
				{	
					cont++;
				}
				else
				{
					bandera = true;
				}
				ban = false;
				
				
				for each(var z:* in usuarioSeleccionado.notificacionCajaMenors)
				{
					if(x.id == z.usuarioSys.id)
					{
						usu = new UsuariosSysVO(x.id,x.nombre,x.apellido,x.cedula,"","","",null,true);
						ar.addItem(usu);
						ban = true;
						if(z.esResponsable == 1 && ban2)
						{
							nombreResponsable = z.usuarioSys.nombre + " " + z.usuarioSys.apellido;
							ban2 = false;
							cont2 = cont;
							
						}
					}
					if(ban)
						break;
				}
				
				if(!ban)
				{
					usu = new UsuariosSysVO(x.id,x.nombre,x.apellido,x.cedula,"","","",null,false);
					ar.addItem(usu);
				}
				
			}
			
			UsuariosSysMl.getInstance().listUs = ar;
			cont2--;
			CajaMenorMl.getInstance().cbxModResponsableSeletectIndex = cont;
			
				
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}












