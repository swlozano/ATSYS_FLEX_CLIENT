package COMMAND.personas
{
	import BUSINESS.PersonasDelegate;
	
	import MODEL.CajaMenorMl;
	import MODEL.PantallasMl;
	import MODEL.PersonaMl;
	
	import VIEW.personas.agregarPersonas;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.controls.Alert;
	import mx.events.CloseEvent;
	import mx.managers.PopUpManager;
	import mx.rpc.IResponder;
   
	public class ComprobarExistenciaPersonasCommand implements ICommand, IResponder
	{
		[Bindable]
        [Embed(source="/REC/IMAGENES/check.png")]
        public var check:Class;
		[Bindable]
        [Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Bindable]
        [Embed(source="/REC/IMAGENES/delete.png")]
        public var Non:Class;
        [Bindable]
        [Embed(source="/REC/IMAGENES/warn.png")]
        public var warn:Class;

		public function execute(event:CairngormEvent):void
		{
			new PersonasDelegate(this).comprobarExistenciaPersona();
		}
		
		public function result(data:Object):void
		{
			
			
			switch(PantallasMl.ESTADO_PANTALLA){
				
				case PantallasMl.getInstance().PANTALLA_ADD_COMPROBAR_EXISTENCIA_PERSONA:
				
				 if(data.result.idRespuesta==29)
					{
						Alert.yesLabel="SI";
			            Alert.noLabel="NO";
			            Alert.show("El Responsable no esta Asignado Como Persona....Desea Asignarlo Como una?","Mensaje de Alerta",Alert.YES|Alert.NO,null,closeHandlerPersonas,warn,0);
					    PantallasMl.ESTADO_PANTALLA=-1;
					}
				
				break;
				
				case PantallasMl.getInstance().PANTALLA_MOD_COMPROBAR_EXISTENCIA_PERSONA:
				    
				    if(data.result.idRespuesta==29)
					{
						Alert.yesLabel="SI";
			            Alert.noLabel="NO";
			            Alert.show("El Responsable no esta Asignado Como Persona....Desea Asignarlo Como una?","Mensaje de Alerta",Alert.YES|Alert.NO,null,closeHandlerModPersonas,warn,0);
					    PantallasMl.ESTADO_PANTALLA=-1;
					}
				    
				    
				break;
				
				case PantallasMl.getInstance().PANTALLA_ADDCUENTA_COMPROBAR_EXISTENCIA_PERSONA:
				    
				    if(data.result.idRespuesta==29)
					{
						Alert.yesLabel="SI";
			            Alert.noLabel="NO";
			            Alert.show("El Responsable no esta Asignado Como Persona....Desea Asignarlo Como una?","Mensaje de Alerta",Alert.YES|Alert.NO,null,closeHandlerCuentaPersonas,warn,0);
					    PantallasMl.ESTADO_PANTALLA=-1;
					}
				    
				    
				break;
				
				case PantallasMl.getInstance().PANTALLA_MODCUENTA_COMPROBAR_EXISTENCIA_PERSONA:
				    
				    if(data.result.idRespuesta==29)
					{
						Alert.yesLabel="SI";
			            Alert.noLabel="NO";
			            Alert.show("El Responsable no esta Asignado Como Persona....Desea Asignarlo Como una?","Mensaje de Alerta",Alert.YES|Alert.NO,null,closeHandlerModCuentaPersonas,warn,0);
					    PantallasMl.ESTADO_PANTALLA=-1;
					}
				    
				    
				break;
				
			}
			
			
			
		
		}
		
		private function closeHandlerPersonas(event:CloseEvent):void{
             
               switch(event.detail){
               
                 case Alert.YES:
                     
                    
                    var addpersona:agregarPersonas = agregarPersonas(PopUpManager.createPopUp(PantallasMl.atsys,agregarPersonas,true));
                    PopUpManager.centerPopUp(addpersona);   
                    
                    PersonaMl.getInstance().Clon_pantallaAgregarPersona.addNompersona.editable = false;
                    PersonaMl.getInstance().Clon_pantallaAgregarPersona.addCedpersona.editable = false;
                    PersonaMl.getInstance().Clon_pantallaAgregarPersona.formIsValid = true;
                    
                    var n:String = CajaMenorMl.getInstance().Clon_pantallaagregarCajaMenor.cbxResponsable.selectedItem.nombre +" "+ CajaMenorMl.getInstance().Clon_pantallaagregarCajaMenor.cbxResponsable.selectedItem.apellido;  
                    var c:int =  CajaMenorMl.getInstance().Clon_pantallaagregarCajaMenor.cbxResponsable.selectedItem.cedula;  
                    
                    PersonaMl.getInstance().Clon_pantallaAgregarPersona.addNompersona.text = CajaMenorMl.getInstance().Clon_pantallaagregarCajaMenor.cbxResponsable.selectedItem.nombre +" "+ CajaMenorMl.getInstance().Clon_pantallaagregarCajaMenor.cbxResponsable.selectedItem.apellido;  
                    PersonaMl.getInstance().Clon_pantallaAgregarPersona.addCedpersona.text = CajaMenorMl.getInstance().Clon_pantallaagregarCajaMenor.cbxResponsable.selectedItem.cedula;    
                    
                 break;
                 
                 case Alert.NO:
                 
                   CajaMenorMl.getInstance().Clon_pantallaagregarCajaMenor.cbxResponsable.selectedIndex=-1;
                 
                 break;
                   
               
               }
             
             }
             
             private function closeHandlerCuentaPersonas(event:CloseEvent):void{
             
               switch(event.detail){
               
                 case Alert.YES:
                     
                    
                    var addpersona:agregarPersonas = agregarPersonas(PopUpManager.createPopUp(PantallasMl.atsys,agregarPersonas,true));
                    PopUpManager.centerPopUp(addpersona);   
                    
                    PersonaMl.getInstance().Clon_pantallaAgregarPersona.addNompersona.editable = false;
                    PersonaMl.getInstance().Clon_pantallaAgregarPersona.addCedpersona.editable = false;
                    PersonaMl.getInstance().Clon_pantallaAgregarPersona.formIsValid = true;
                    PersonaMl.getInstance().Clon_pantallaAgregarPersona.addNompersona.text = CajaMenorMl.getInstance().Clon_pantallaagregarCuenta.cbxResponsable.selectedItem.nombre +" "+ CajaMenorMl.getInstance().Clon_pantallaagregarCuenta.cbxResponsable.selectedItem.apellido;  
                    PersonaMl.getInstance().Clon_pantallaAgregarPersona.addCedpersona.text = CajaMenorMl.getInstance().Clon_pantallaagregarCuenta.cbxResponsable.selectedItem.cedula;    
                        
                 break;
                 
                 case Alert.NO:
                 
                   CajaMenorMl.getInstance().Clon_pantallaagregarCuenta.cbxResponsable.selectedIndex=-1;
                 
                 break;
                   
               
               }
             
             }
             
             private function closeHandlerModCuentaPersonas(event:CloseEvent):void{
             
               switch(event.detail){
               
                 case Alert.YES:
                     
                    
                    var addpersona:agregarPersonas = agregarPersonas(PopUpManager.createPopUp(PantallasMl.atsys,agregarPersonas,true));
                    PopUpManager.centerPopUp(addpersona);   
                    
                    PersonaMl.getInstance().Clon_pantallaAgregarPersona.addNompersona.editable = false;
                    PersonaMl.getInstance().Clon_pantallaAgregarPersona.addCedpersona.editable = false;
                    PersonaMl.getInstance().Clon_pantallaAgregarPersona.formIsValid = true;
                    PersonaMl.getInstance().Clon_pantallaAgregarPersona.addNompersona.text = CajaMenorMl.getInstance().Clon_pantallamodificarCuenta.cbxModResponsable.selectedItem.nombre +" "+ CajaMenorMl.getInstance().Clon_pantallamodificarCuenta.cbxModResponsable.selectedItem.apellido;  
                    PersonaMl.getInstance().Clon_pantallaAgregarPersona.addCedpersona.text = CajaMenorMl.getInstance().Clon_pantallamodificarCuenta.cbxModResponsable.selectedItem.cedula;    
                        
                 break;
                 
                 case Alert.NO:
                 
                   CajaMenorMl.getInstance().Clon_pantallamodificarCuenta.cbxModResponsable.selectedIndex=-1;
                   CajaMenorMl.getInstance().Clon_pantallamodificarCuenta.cbxModResponsable.prompt="seleccione";
                   CajaMenorMl.getInstance().Clon_pantallamodificarCuenta.formIsValid=false;
                   
                 break;
                   
               
               }
             
             }
             
             private function closeHandlerModPersonas(event:CloseEvent):void{
             
               switch(event.detail){
               
                 case Alert.YES:
                     
                    
                    var addpersona:agregarPersonas = agregarPersonas(PopUpManager.createPopUp(PantallasMl.atsys,agregarPersonas,true));
                    PopUpManager.centerPopUp(addpersona);   
                    
                    PersonaMl.getInstance().Clon_pantallaAgregarPersona.addNompersona.editable = false;
                    PersonaMl.getInstance().Clon_pantallaAgregarPersona.addCedpersona.editable = false;
                    PersonaMl.getInstance().Clon_pantallaAgregarPersona.formIsValid = true;
                    PersonaMl.getInstance().Clon_pantallaAgregarPersona.addNompersona.text = CajaMenorMl.getInstance().Clon_pantallamodificarCajaMenor.cbxModResponsable.selectedItem.nombre +" "+ CajaMenorMl.getInstance().Clon_pantallamodificarCajaMenor.cbxModResponsable.selectedItem.apellido;  
                    PersonaMl.getInstance().Clon_pantallaAgregarPersona.addCedpersona.text = CajaMenorMl.getInstance().Clon_pantallamodificarCajaMenor.cbxModResponsable.selectedItem.cedula;    
                        
                 break;
                 
                 case Alert.NO:
                 
                   
                   CajaMenorMl.getInstance().Clon_pantallamodificarCajaMenor.cbxModResponsable.selectedIndex=-1;
                   CajaMenorMl.getInstance().Clon_pantallamodificarCajaMenor.cbxModResponsable.prompt="seleccione";
                   CajaMenorMl.getInstance().Clon_pantallamodificarCajaMenor.formIsValid=false;
                 break;
                   
               
               }
             
             }
		
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR");
		}
		
	}
}







