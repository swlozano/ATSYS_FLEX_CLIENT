package COMMAND.personas
{
	import BUSINESS.PersonasDelegate;
	
	import EVENT.CajaMenorEvent;
	import EVENT.CuentasPorPagarEvent;
	import EVENT.FacturaEvent;
	import EVENT.RecursoHumanoEvent;
	import EVENT.UsuariosSysEvent;
	
	import MODEL.CajaMenorMl;
	import MODEL.CuentasPorPagarMl;
	import MODEL.FacturasMl;
	import MODEL.MovimientoMl;
	import MODEL.PantallasMl;
	import MODEL.PermisosMl;
	import MODEL.PersonaMl;
	import MODEL.RecursoHumanoMl;
	
	import VIEW.cajaMenor.agregarMovimiento;
	import VIEW.cajaMenor.modificarMovimiento;
	
	import VO.CajaMenorVO;
	import VO.FacturaVO;
	import VO.PersonaVO;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.collections.Sort;
	import mx.collections.SortField;
	import mx.controls.Alert;
	import mx.core.Application;
	import mx.managers.PopUpManager;
	import mx.rpc.IResponder;

	public class ListarPersonasCommand implements ICommand, IResponder
	{
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;
        
		public function execute(event:CairngormEvent):void
		{
			new PersonasDelegate(this).listarPersonas();
		}
		
		public function result(data:Object):void
		{
			PersonaMl.getInstance().listPersonas = data.result;
			
			
			if(Application.application.currentView==11){
				
				PersonaMl.getInstance().listPersonasToReportesFacturas=data.result;
				
				
				PersonaMl.getInstance().listPersonsToFiltrar = new ArrayCollection(); 
			    PersonaMl.getInstance().listPersonsToFiltrar = data.result;
				
				var pers:PersonaVO = new PersonaVO(-1,0,0,"","TODOS",false);
				
				/*for each(var x:* in PersonaMl.getInstance().listPersonsToFiltrar){
					
					
					
				}*/
				PersonaMl.getInstance().listPersonsToFiltrar.addItem(pers);
				
				var srt:Sort = new Sort();
				var srtfld:SortField = new SortField("id");
				srt.fields = new Array(srtfld);
				PersonaMl.getInstance().listPersonsToFiltrar.sort = srt;
				PersonaMl.getInstance().listPersonsToFiltrar.refresh();
				
			}  
			  
			
			switch(PantallasMl.ESTADO_PANTALLA)
			{
				case PantallasMl.getInstance().PANTALLA_ADD_CAJA_MENOR:
					if(PersonaMl.getInstance().listPersonas!=null)
					{
						var evento1:UsuariosSysEvent = new UsuariosSysEvent(UsuariosSysEvent.LISTAR_US,null);
		 	   			CairngormEventDispatcher.getInstance().dispatchEvent(evento1);
					}
					else
					{
						PantallasMl.ESTADO_PANTALLA = -1;
						
            	 	     Alert.show("Para poder agregar una CAJA MENOR necesitas CREAR Personas","Mensaje de alerta",0,null,null,alerta,0);
						
					}
				break;
				  
				case PantallasMl.getInstance().PANTALLA_ADD_CUENTA_BANCO:
				
				    if(PersonaMl.getInstance().listPersonas!=null)
					{
						var evento2:UsuariosSysEvent = new UsuariosSysEvent(UsuariosSysEvent.LISTAR_US,null);
		 	   			CairngormEventDispatcher.getInstance().dispatchEvent(evento2);
					}
					else
					{
						PantallasMl.ESTADO_PANTALLA = -1;
						
            	 	     Alert.show("Para poder agregar una CUENTA DE BANCO necesitas CREAR Personas","Mensaje de alerta",0,null,null,alerta,0);
						
					}
				
				break;
				
				case PantallasMl.getInstance().PANTALLA_ADD_MOVIMIENTO:
				
				 if(CajaMenorMl.getInstance().listCajasUsuarioEspecifico.length>0){
				    if(PersonaMl.getInstance().listPersonas!=null)
					{
					  
					  if(MovimientoMl.getInstance().MovimientoPpl!=null){	
						
							for each(var x:* in MovimientoMl.getInstance().MovimientoPpl.cbxCajasmenores.selectedItem.notificacionCajaMenors){
								
								if(x.esResponsable==1){
									
									MovimientoMl.getInstance().NombreResponsablePersona = x.usuarioSys.nombre +" "+x.usuarioSys.apellido;
									break;
								}
								
							}
					  
					  }
						
		 	   			var addmovimento:agregarMovimiento=agregarMovimiento(PopUpManager.createPopUp(PantallasMl.atsys,agregarMovimiento,false));
            	   		PopUpManager.centerPopUp(addmovimento);
            	   		PermisosMl.getInstance().deshabilitarMenus();
				   		PantallasMl.ESTADO_PANTALLA=-1;
					}
					else
					{
						PantallasMl.ESTADO_PANTALLA = -1;
						Alert.show("Para poder agregar un MOVIMIENTO necesitas CREAR Personas","Mensaje de alerta",0,null,null,alerta,0);
						
					}
				 }else{
				        PantallasMl.ESTADO_PANTALLA = -1;
						Alert.show("Para poder agregar un MOVIMIENTO necesitas CREAR CAJAS MENORES O CUENTAS DE BANCO","Mensaje de alerta",0,null,null,alerta,0);
				      }
				    				
				break;
				
				case PantallasMl.getInstance().PANTALLA_MODIFICAR_FACTURA:
				
				     if(FacturasMl.getInstance().FacturasPpl!=null){
				     	
				     	var facturaSeleccionada:Object=FacturasMl.getInstance().FacturasPpl.dgfacturas.selectedItem;
				        if(facturaSeleccionada!=null) { 
				         
				        FacturasMl.getInstance().txtmodPersonaFactura = facturaSeleccionada.persona.nombreRs;
				        fijarPersonafac(facturaSeleccionada);
				        
				        var eventmodfac:FacturaEvent=new FacturaEvent(FacturaEvent.LISTAR_IVAS,null);
				     	CairngormEventDispatcher.getInstance().dispatchEvent(eventmodfac);
				     	
				       }
				     }
				
				break; 
				 
				case PantallasMl.getInstance().PANTALLA_MODIFICAR_MOVIMIENTO:
				
				   PantallasMl.ESTADO_PANTALLA = -1;
				    if(MovimientoMl.getInstance().MovimientoPpl!=null){
				    	
				    	var movimentoseleccionado:Object=MovimientoMl.getInstance().MovimientoPpl.dgMovimientos.selectedItem;
				    	if(movimentoseleccionado!=null){
				    		
				    		MovimientoMl.getInstance().txtmodPersonaMovimento = movimentoseleccionado.persona;
				    		MovimientoMl.getInstance().txtmodCajaMenorMovimento = movimentoseleccionado.cajaMenorVO.nombre;
				    		
				    		fijarPersona(movimentoseleccionado);
				    		fijarCaja(movimentoseleccionado);
				    		
				    		MovimientoMl.getInstance().selectableMovimento=false;
				    		
				    		/////////////////////
				    		
				    		  if(MovimientoMl.getInstance().MovimientoPpl!=null){	
						
							     for each(var y:* in MovimientoMl.getInstance().MovimientoPpl.cbxCajasmenores.selectedItem.notificacionCajaMenors){
								
									if(y.esResponsable==1){
										
										MovimientoMl.getInstance().NombreResponsablePersona = y.usuarioSys.nombre +" "+y.usuarioSys.apellido;
										break;
									}
								
							      }
					  
					           }
				    		
				    		////////////////////
				    		
				    		var modmovimento:modificarMovimiento=modificarMovimiento(PopUpManager.createPopUp(PantallasMl.atsys,modificarMovimiento,false));
            	 	        PopUpManager.centerPopUp(modmovimento);
            	 	        PermisosMl.getInstance().deshabilitarMenus();
            	 	        PantallasMl.ESTADO_PANTALLA=-1;
				    		
				    	 }
				    }
				
				break;
				
				case PantallasMl.getInstance().PANTALLA_BUSCAR_MOVIMIENTOS:
				
				   
            	    var cjmenor:CajaMenorVO;
	                 cjmenor = new CajaMenorVO(0,0,"",0,0,0,null,0,0,1,false);
	                 var event:CajaMenorEvent = new CajaMenorEvent(CajaMenorEvent.LISTAR_TODA_CAJA,cjmenor);
	                 CairngormEventDispatcher.getInstance().dispatchEvent(event);
	                 PantallasMl.ESTADO_PANTALLA=PantallasMl.getInstance().PANTALLA_BUSCAR_MOVIMIENTOS_2;	
				
				break;
				
				case PantallasMl.getInstance().PANTALLA_LISTAR_FACTURAS:
				
	                 /*var event:CajaMenorEvent = new CajaMenorEvent(CajaMenorEvent.LISTAR_TODA_CAJA,cjmenor);
	                 CairngormEventDispatcher.getInstance().dispatchEvent(event);
	                 PantallasMl.ESTADO_PANTALLA=PantallasMl.getInstance().PANTALLA_BUSCAR_MOVIMIENTOS_2;	
				*/
		      		 var factura:FacturaVO;
				     var evento11:FacturaEvent = new FacturaEvent(FacturaEvent.LISTAR_FACTURA,factura);
                     CairngormEventDispatcher.getInstance().dispatchEvent(evento11);
                     PantallasMl.ESTADO_PANTALLA=-1;
				     
				break;
				
				case PantallasMl.getInstance().PANTALLA_ADD_FACTURA:
				
				     if(PersonaMl.getInstance().listPersonas!=null || PersonaMl.getInstance().listPersonas.length > 0){
				     	
				     	var eventfac:FacturaEvent=new FacturaEvent(FacturaEvent.LISTAR_IVAS,null);
				     	CairngormEventDispatcher.getInstance().dispatchEvent(eventfac);
				     	
				     }else{
				     	
				     	PantallasMl.ESTADO_PANTALLA = -1;
						Alert.show("Para poder agregar una FACTURA necesitas CREAR Personas","Mensaje de alerta",0,null,null,alerta,0);
				     	
				     }
				 
				break;
				
				case PantallasMl.getInstance().PANTALLA_AGREGAR_CUENTAS_X_PAGAR:
			       
			       var evx:RecursoHumanoEvent;
			       var band:Boolean;  
			         
				   ///if(PersonaMl.getInstance().listPersonas!=null){
				   
				   if(RecursoHumanoMl.getInstance().listRecursoHumano!=null && PersonaMl.getInstance().listPersonas!=null){
				   	  	
				   	  	if(RecursoHumanoMl.getInstance().listRecursoHumano.length>0 || PersonaMl.getInstance().listPersonas.length>0)
				   	  	  {
				   	  	  	 band = true;
				   	  	  	
				   	  	  	 if(RecursoHumanoMl.getInstance().listRecursoHumano.length>0 && PersonaMl.getInstance().listPersonas.length==0){
				   	  	  	 	 
				   	  	  	 	    CuentasPorPagarMl.getInstance().banderaRecHumano = true;
				   	  	  	 	    CuentasPorPagarMl.getInstance().banderaPersona = false;
				   	  	  	 	    CuentasPorPagarMl.getInstance().bandera = true;
				   	  	  	 	    band = true;
				   	  	  	 	
				   	  	  	    }else if(RecursoHumanoMl.getInstance().listRecursoHumano.length==0 && PersonaMl.getInstance().listPersonas.length>0){
				   	  	  	    	      
						   	  	  	         CuentasPorPagarMl.getInstance().banderaRecHumano = false;
				   	  	  	 	             CuentasPorPagarMl.getInstance().banderaPersona = true;          	
						   	  	  	    	 CuentasPorPagarMl.getInstance().bandera = false;
				   	  	  	    	         band = true;
				   	  	  	    	      
				   	  	  	            }else if(RecursoHumanoMl.getInstance().listRecursoHumano.length>0 && PersonaMl.getInstance().listPersonas.length>0){
				   	  	  	            	
				   	  	  	            	     
				   	  	  	            	      band = true;      
				   	  	  	            	
				   	  	  	            	
				   	  	  	                    }else if(RecursoHumanoMl.getInstance().listRecursoHumano.length==0 && PersonaMl.getInstance().listPersonas.length==0){
				   	  	  	            	      
						   	  	  	            	      band = false;  
						   	  	  	                      PantallasMl.ESTADO_PANTALLA = -1;
												          Alert.show("Para poder agregar una Cuenta Por Pagar necesitas CREAR Recursos Humanos o personas","Mensaje de alerta",0,null,null,alerta,0);
						   	  	  	                    
						   	  	  	                    }
				   	  	  	            
				   	  	  	
				   	  	  	
				   	  	    if(band){	
					   	  	    evx = new RecursoHumanoEvent(RecursoHumanoEvent.LISTAR_BANCOS,null,null);
					   	        CairngormEventDispatcher.getInstance().dispatchEvent(evx);
				   	  	      }
				   	  	  
				   	  	  }
				   
				   }else if(RecursoHumanoMl.getInstance().listRecursoHumano!=null && PersonaMl.getInstance().listPersonas==null){
				   	  	
				   	  	    if(RecursoHumanoMl.getInstance().listRecursoHumano.length>0){
				   	  	            
				   	  	            CuentasPorPagarMl.getInstance().banderaRecHumano = true;
				   	  	            CuentasPorPagarMl.getInstance().banderaPersona = false;
				   	  	            CuentasPorPagarMl.getInstance().bandera = true;
				   	  	  	        evx = new RecursoHumanoEvent(RecursoHumanoEvent.LISTAR_BANCOS,null,null);
					   	            CairngormEventDispatcher.getInstance().dispatchEvent(evx);
				   	  	     	
				   	  	      }else if(RecursoHumanoMl.getInstance().listRecursoHumano.length==0){
				   	  	      	        
				   	  	      	           PantallasMl.ESTADO_PANTALLA = -1;
										   Alert.show("Para poder agregar una Cuenta Por Pagar necesitas CREAR Recursos Humanos o personas","Mensaje de alerta",0,null,null,alerta,0);
				   	  	      	        
				   	  	               }
				   	  		   	
				          }else if(RecursoHumanoMl.getInstance().listRecursoHumano==null && PersonaMl.getInstance().listPersonas!=null){
				   	
				   	                if(PersonaMl.getInstance().listPersonas.length>0) {
				   	                	
				   	                	CuentasPorPagarMl.getInstance().banderaRecHumano = false;
				   	  	  	 	        CuentasPorPagarMl.getInstance().banderaPersona = true;          	
						   	  	  	    CuentasPorPagarMl.getInstance().bandera = false;
				   	                	evx = new RecursoHumanoEvent(RecursoHumanoEvent.LISTAR_BANCOS,null,null);
				   	                    CairngormEventDispatcher.getInstance().dispatchEvent(evx);	
				   	                	
				   	                  }else if(PersonaMl.getInstance().listPersonas.length==0){
				   	                  	
				   	                  	         PantallasMl.ESTADO_PANTALLA = -1;
										         Alert.show("Para poder agregar una Cuenta Por Pagar necesitas CREAR Recursos Humanos o personas","Mensaje de alerta",0,null,null,alerta,0);
				   	                  	
				   	                          }
				   	
				                }else if(RecursoHumanoMl.getInstance().listRecursoHumano==null && PersonaMl.getInstance().listPersonas==null){
				   	
								   	         PantallasMl.ESTADO_PANTALLA = -1;
										     Alert.show("Para poder agregar una Cuenta Por Pagar necesitas CREAR Recursos Humanos o personas","Mensaje de alerta",0,null,null,alerta,0);
				   	
				                        }				   	  
				
				 
				break;
				
				case PantallasMl.getInstance().PANTALLA_CUENTAS_POR_PAGAR_PPL:
				
				 //   if(PersonaMl.getInstance().listPersonas!=null){
				    	
				    	 var evc:CuentasPorPagarEvent = new CuentasPorPagarEvent(CuentasPorPagarEvent.LISTAR_GENERADOR_CUENTA_X_PAGAR,null);
				    	 CairngormEventDispatcher.getInstance().dispatchEvent(evc);
				    	
				 //   }
				
				break;
				
				case PantallasMl.getInstance().PANTALLA_MODIFICAR_CUENTAS_X_PAGAR:
				
				     if(CuentasPorPagarMl.getInstance().CuentasPorPagarPpl.dgCuentaspagar.selectedItem.idCuentaBanco==0){
				        
				        var personaseleccionada:Object =  CuentasPorPagarMl.getInstance().CuentasPorPagarPpl.dgCuentaspagar.selectedItem;
				     	
				     	fijarPersonaCuentaXPagar(personaseleccionada);
					    
					 }
					 
					 if(CuentasPorPagarMl.getInstance().CuentasPorPagarPpl.dgCuentaspagar.selectedItem.idCuentaBanco==0){
					 	
					 	CuentasPorPagarMl.getInstance().banderaModPersona = false;
					 	
					 	if(RecursoHumanoMl.getInstance().listRecursoHumano!=null){
					 		
					 	    if(RecursoHumanoMl.getInstance().listRecursoHumano.length>0){
					 		    
					 		    CuentasPorPagarMl.getInstance().banderaModRecHumano = false;
					 		
					 	    }else{
					 	    	
					 	            CuentasPorPagarMl.getInstance().banderaModRecHumano = true;
					 		    
					 	         }	
					 		
					 	}else{
					 		
					 		   CuentasPorPagarMl.getInstance().banderaModRecHumano = true;
					 		
					 	     }
					 	
					 }else{
					 	
					 	    CuentasPorPagarMl.getInstance().banderaModRecHumano=false;
					 	
					        if(PersonaMl.getInstance().listPersonas!=null){
					        	
					        	if(PersonaMl.getInstance().listPersonas.length>0){
					        		
					                CuentasPorPagarMl.getInstance().banderaModPersona=false;		
					        		
					        	}else{
					        		
					        		   CuentasPorPagarMl.getInstance().banderaModPersona=true;   
					        		
					        	     }
					        	
					        }else{
					        	
					        	   CuentasPorPagarMl.getInstance().banderaModPersona=true;
					        	
					             }
					      
					      }
					 
					 evx = new RecursoHumanoEvent(RecursoHumanoEvent.LISTAR_BANCOS,null,null);
					 CairngormEventDispatcher.getInstance().dispatchEvent(evx);
				
				break;
				
			}
		}
		
		public function fijarPersonaCuentaXPagar(PersonaSelect:Object):void{
		
		  var cont:int = 0;
		  var ban:Boolean=false;
		
		  for each(var x:* in PersonaMl.getInstance().listPersonas){
		  
		     if(PersonaSelect.idRhPersona!=x.id && ban==false){
		     
		       cont++;
		     
		     }else{
		     
		       ban=true;
		      
		     }
		  
		  }
		  
		  CuentasPorPagarMl.getInstance().indicePersona=cont;
		
		}
		
		public function fijarPersonafac(personaselect:Object):void{
		
		  var cont:int = 0;
		  var ban:Boolean=false;
		
		  for each(var x:* in PersonaMl.getInstance().listPersonas){
		  
		     if(personaselect.persona.id!=x.id && ban==false){
		     
		       cont++;
		     
		     }else{
		     
		       ban=true;
		      
		     }
		  
		  }
		  
		  FacturasMl.getInstance().cbxmodPersonaselectedIndex=cont;
		
		}
		
		public function fijarPersona(personaselect:Object):void{
		
		  var cont:int = 0;
		  var ban:Boolean=false;
		
		  for each(var x:* in PersonaMl.getInstance().listPersonas){
		  
		     if(personaselect.idPersona!=x.id && ban==false){
		     
		       cont++;
		     
		     }else{
		     
		       ban=true;
		      
		     }
		  
		  }
		  
		  MovimientoMl.getInstance().cbxmodPersonaselectedIndex=cont;
		
		}
		
		public function fijarCaja(cajaselect:Object):void{
		
		  var cont:int = 0;
		  var ban:Boolean=false;
		
		  for each(var x:* in CajaMenorMl.getInstance().listCajasUsuarioEspecifico){
		  
		     if(cajaselect.cajaMenorVO.id!=x.id && ban==false){
		     
		       cont++;
		     
		     }else{
		     
		       ban=true;
		      
		     }
		  
		  }
		  
		  MovimientoMl.getInstance().cbxmodCajaMenorselectedIndex=cont;
		
		}
		
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}














