package MODEL
{
	import EVENT.CajaMenorEvent;
	import EVENT.CentroCostoEvent;
	import EVENT.PersonaEvent;
	import EVENT.RolesSysEvent;
	import EVENT.UsuariosSysEvent;
	
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	import com.adobe.cairngorm.model.ModelLocator;

	public class DistribuidorEventosMl implements ModelLocator
	{
		private static var instance:DistribuidorEventosMl=null;
		
		public static function getInstance():DistribuidorEventosMl
		{
			if(instance == null)
			{ 
				instance = new DistribuidorEventosMl();
			}
			return instance;
		}
		
        public function eventos(caso:int,current:int,obj:Object):void{
        
          switch(caso){
          
            case 1:////CASO PARA DESPACHAR EVENTOS DE AGREGAR TODO
            
                if(current==1){
                
                    var event:UsuariosSysEvent = new UsuariosSysEvent(UsuariosSysEvent.ADICIONAR_US,obj);
           		    CairngormEventDispatcher.getInstance().dispatchEvent(event);
                  
                }else if(current==2){
                
                         var event:RolesSysEvent = new RolesSysEvent(RolesSysEvent.ADICIONAR_ROLES,obj);
           		         CairngormEventDispatcher.getInstance().dispatchEvent(event);
                  
                        }else if(current==3){
                
                                 var event:CajaMenorEvent = new CajaMenorEvent(CajaMenorEvent.ADICIONAR_CAJA_MENOR,obj);
                                 CairngormEventDispatcher.getInstance().dispatchEvent(event); 
                         
                                }else if(current==4){
                
                                         var event:CentroCostoEvent = new CentroCostoEvent(CentroCostoEvent.ADICIONAR_CENTRO_COSTO,obj);
                                         CairngormEventDispatcher.getInstance().dispatchEvent(event);
                         
                                        }else if(current==10){
                
                                                 var event:PersonaEvent = new PersonaEvent(PersonaEvent.ADICIONAR_PERSONA,obj);
                                                 CairngormEventDispatcher.getInstance().dispatchEvent(event);
                         
                                                }
              
            break;
            
            case 2://CASO PARA DESPACHAR EVENTOS DE MODIFICAR TODO
             
                if(current==1){
                  
                      var event:UsuariosSysEvent = new UsuariosSysEvent(UsuariosSysEvent.MODIFICAR_USUARIOS,obj);
           			  CairngormEventDispatcher.getInstance().dispatchEvent(event);
                  
                }else if(current==2){
                  
                         var event: RolesSysEvent = new RolesSysEvent(RolesSysEvent.MODIFICAR_ROLES,obj);
            	         CairngormEventDispatcher.getInstance().dispatchEvent(event);
                  
                      }else if(current==3){
                  
                         	   var event:CajaMenorEvent = new CajaMenorEvent(CajaMenorEvent.CONFIGURAR_CAJA_MENOR,obj);
                               CairngormEventDispatcher.getInstance().dispatchEvent(event);
                  
                              }else if(current==4){
                  
                         	   		   var event:CentroCostoEvent = new CentroCostoEvent(CentroCostoEvent.MODIFICAR_CENTRO_COSTO,obj);
               						   CairngormEventDispatcher.getInstance().dispatchEvent(event);
                  
                                      }else if(current==10){
                  
                         	   		   			var event:PersonaEvent = new PersonaEvent(PersonaEvent.MODIFICAR_PERSONA,obj);
               									CairngormEventDispatcher.getInstance().dispatchEvent(event);
                  
                                              }
            
            break;
            
            case 4: ///CASO PARA DESPACHAR EVENTOS DE LISTAR TODO
            
                if(current==1){
                
                   
                 
                }
            
            break;
          
          }
          
        
        }
		
	}
}














