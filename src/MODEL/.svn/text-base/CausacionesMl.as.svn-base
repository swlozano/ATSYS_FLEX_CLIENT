package MODEL
{
	
	
	import EVENT.CausacionEvent;
	
	import VO.CausacionNomina;
	import VO.CausacionNominaVO;
	import VO.CausacionPs;
	import VO.CausacionPsVO;
	import VO.FechasCorteCausacionesVO;
	import VO.ValorIdVO;
	
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	import com.adobe.cairngorm.model.ModelLocator;
	
	import mx.collections.ArrayCollection;

	public class CausacionesMl implements ModelLocator
	{
		private static var instance:CausacionesMl = null;
		
		
		[Bindable] public var mesCausacion:int;
		[Bindable] public var yearCausacion:int;
		[Bindable] public var tipoContrato:int;
		
		[Bindable] public var idsFechasCorte:Array;
		
		[Bindable] public var listaBonificaciones:Object;
		[Bindable] public var listaDeducciones:Object;
        [Bindable] public var listaProvisiones:ArrayCollection;
        [Bindable] public var currentTipoCausacion:int = 2;//1 PARA PS Y 2 PARA NOMINA
        [Bindable] public var causacionPsVOs:ArrayCollection;
        [Bindable] public var listaOtrosMas:ArrayCollection;
        
        [Bindable] public var tipoCausacion:int;
        [Bindable] public var listfechasCorteCausacion:Object;
     
     	
               
        public static function getInstance():CausacionesMl
		{
			if(instance == null)
			{ 
				instance = new CausacionesMl();
			}
			return instance;
		}
	
			[Bindable]
            public var menubarXMLProvisionPS:XMLList =
                <>
			    <menuitem label="Causaciones" >
			        <menuitem label="Generar causación" data="4" enabled="true" />
			        <menuitem label="Calcular causación" data="5" enabled="true"/>
			        <menuitem label="Guardar causación" data="6" enabled="true"/>
			        <menuitem label="Ver causaciones" data="7" enabled="true">
			            <menuitem label="Prestación Servicios" data="8" enabled="true"/>
			            <menuitem label="Nomina" data="9" enabled="true"/>
			        </menuitem>
			    </menuitem>                	
			    <menuitem label="Agregar" >
			        <menuitem label="Provisiones"  enabled="true">
			        	<menuitem label="Ver" data="2" enabled="true"/>
						<menuitem label="Agregar" data="16" enabled="true"/>
			            <menuitem label="Modificar" data="17" enabled="true"/>
			            <menuitem label="Eliminar" data="18" enabled="true"/>
			        </menuitem>
			        <menuitem label="Deducciones" data="3" enabled="true"/>
			        <menuitem label="Otros Más"   >
			        	<menuitem label="Ver" data="15" enabled="true"/>
						<menuitem label="Agregar" data="10" enabled="false"/>
			            <menuitem label="Modificar" data="11" enabled="false"/>
			            <menuitem label="Eliminar" data="12" enabled="false"/>
			        </menuitem>
			    </menuitem>
			    <menuitem label="Modificar" >
			        <menuitem label="Días trabajados" data="13" enabled="true"/>
			        <menuitem label="IBC" data="14" enabled="true"/>
			    </menuitem>
			    </>;
		
		public function causacionNominaAsArray(listCausacionNomina:Object):Array{
			
			var causacionesNomina:Array = new Array();
			
			for each (var causacion:* in listCausacionNomina)
			{
				var cn:CausacionNomina = new CausacionNomina();
				cn = (causacion  as CausacionNomina);
				causacionesNomina.push(cn);	
			}
			return causacionesNomina;
		}
		
		public function causacionPsAsArray(listCausacionPs:Object):Array{
			
			var causacionesPs:Array = new Array();
			
			for each (var causacion:* in listCausacionPs)
			{
				var cn:CausacionPs = new CausacionPs();
				cn = (causacion  as CausacionPs);
				causacionesPs.push(cn);	
			}
			return causacionesPs;
		}
		
		//////////////////////aj////////////////
		
		public function checkarAllPermisos():void
		{
			var ar:ArrayCollection = new ArrayCollection();
			var fechas:FechasCorteCausacionesVO;
			
			for each(var x:* in CausacionesMl.getInstance().listfechasCorteCausacion)
			{
	
				fechas = new FechasCorteCausacionesVO(x.id,x.fechaCorte,x.yearCausado,x.mesCausado,x.tipoCausacion,false);
				ar.addItem(fechas);
	
			}
			
			CausacionesMl.getInstance().listfechasCorteCausacion = ar;
				
		}
		
		/////////////////////////////////////////
		
		
			public static function listarBonificaciones():void{
				
				var evento:CausacionEvent= new CausacionEvent(CausacionEvent.LISTAR_BONIFICACIONES);
			 	CairngormEventDispatcher.getInstance().dispatchEvent(evento);	
			}
				
			public static function listarDeducciones():void{
				
				var evento:CausacionEvent= new CausacionEvent(CausacionEvent.LISTAR_DEDUCCIONES);
			 	CairngormEventDispatcher.getInstance().dispatchEvent(evento);	
			}	
			
			public static function listarProvisiones():void{
				
				var evento:CausacionEvent= new CausacionEvent(CausacionEvent.LISTAR_PROVISIONES);
			 	CairngormEventDispatcher.getInstance().dispatchEvent(evento);	
			}	
			
			public static function crearCausacion():void{
				var evento:CausacionEvent= new CausacionEvent(CausacionEvent.CREAR_CAUSACIONES);
			 	CairngormEventDispatcher.getInstance().dispatchEvent(evento);	
			}
			public static function calcularCausacionNominaCommand():void{
				var evento:CausacionEvent= new CausacionEvent(CausacionEvent.CALCULAR_CAUSACION_NOMINA);
			 	CairngormEventDispatcher.getInstance().dispatchEvent(evento);	
			}	
			[Bindable] public var arrayCuentasNominaVO:ArrayCollection = new ArrayCollection();
			public function listaToCausacionesNominaVO(listCausNomina:Object):void{
				
				arrayCuentasNominaVO = new ArrayCollection();
				
				for each(var x:* in (listCausNomina as ArrayCollection)){
						
						var id:int = -1;
						var idTtibutaria:int = x.causacionNomina.tributaria.id;
						var idFechasCorteCausacion:int = -1;
						var idFechasPago:int = x.causacionNomina.fechasPago.id;
						var subtotal:Number = x.causacionNomina.subtotal;
						var diasTrabajados:int = x.causacionNomina.diasTrabajados;
						var totalAPagar:Number = x.causacionNomina.totalAPagar;
						var ibc:Number = x.causacionNomina.ibc;
						var nombreEmpleado:String = x.causacionNomina.nombreEmpleado;
						var tiempo:Number= x.causacionNomina.tiempo;
						var vacaciones:Number= x.causacionNomina.vacaciones;
						var cedula:int= x.causacionNomina.cedula;
						var totalCausEmpresa:Number= x.causacionNomina.totalCausEmpresa;
						var idsBonificaciones:Array= new Array();
						
						var borra:Object = x.causacionNomina.idsBonificaciones as Array;
						
						for (var i:int = 0; i< (x.causacionNomina.idsBonificaciones as Array).length;i++){
							idsBonificaciones.push((x.causacionNomina.idsBonificaciones as Array)[i]);					
						}
						
						var deducciones:Array= new Array();
						
						for each(var k:* in (x.causacionNomina.valIdVoDeducciones as Array)){
								deducciones.push(k);					
						}
						
						var provisiones:Array= new Array();
						
						for each(var l:* in (x.causacionNomina.validVoProvisiones as Array)){
								provisiones.push(l);					
						}
						
						var arrayCausacionEmpresa:Array = new Array();
						
						for each(var j:* in (x.causacionNomina.causacionEmpresas as ArrayCollection))  
						{
							var id2:int = j.valoresAsocaja.id;
							var valor:Number = j.valor;
							var valorIdVO:ValorIdVO = new ValorIdVO().ValorIdVOConstructor(id2,valor);
							arrayCausacionEmpresa.push(valorIdVO);
						}
						
						var causacionNominaVO:CausacionNominaVO = new CausacionNominaVO().CausNominaVOConstructor(id,idTtibutaria,
						idFechasCorteCausacion,idFechasPago,subtotal,diasTrabajados,totalAPagar,ibc,nombreEmpleado,tiempo,vacaciones,cedula,
						totalCausEmpresa,idsBonificaciones,deducciones,provisiones,arrayCausacionEmpresa);
						arrayCuentasNominaVO.addItem(causacionNominaVO);
						trace();
				}
			}
			
			///////P SERVICIOS////////
		/*	
			[Bindable] public var arrayCuentasPsVO:ArrayCollection = new ArrayCollection();
			public function listaToCausacionesPs(listCausPs:Object):void{
				
				arrayCuentasPsVO = new ArrayCollection();
				
				for each(var x:* in (listCausPs as ArrayCollection)){
						
						var id:int = -1;
						var idTtibutaria:int = x.causacionNomina.tributaria.id;
						var idFechasCorteCausacion:int = -1;
						var idFechasPago:int = x.causacionNomina.fechasPago.id;
						var subtotal:Number = x.causacionNomina.subtotal;
						var diasTrabajados:int = x.causacionNomina.diasTrabajados;
						var totalAPagar:Number = x.causacionNomina.totalAPagar;
						var ibc:Number = x.causacionNomina.ibc;
						var nombreEmpleado:String = x.causacionNomina.nombreEmpleado;
						var tiempo:Number= x.causacionNomina.tiempo;
						var vacaciones:Number= x.causacionNomina.vacaciones;
						var cedula:int= x.causacionNomina.cedula;
						var totalCausEmpresa:Number= x.causacionNomina.totalCausEmpresa;
						var idsBonificaciones:Array= new Array();
						
						var borra:Object = x.causacionNomina.idsBonificaciones as Array;
						
						for (var i:int = 0; i< (x.causacionNomina.idsBonificaciones as Array).length;i++){
									idsBonificaciones.push((x.causacionNomina.idsBonificaciones as Array)[i]);					
						}
						
						var deducciones:Array= new Array();
						
						for each(var k:* in (x.causacionNomina.valIdVoDeducciones as Array)){
								deducciones.push(k);					
						}
						
						var provisiones:Array= new Array();
						
						for each(var l:* in (x.causacionNomina.validVoProvisiones as Array)){
								provisiones.push(l);					
						}
						
						var arrayCausacionEmpresa:Array = new Array();
						
						for each(var j:* in (x.causacionNomina.causacionEmpresas as ArrayCollection))  
						{
							var id2:int = j.valoresAsocaja.id;
							var valor:Number = j.valor;
							var valorIdVO:ValorIdVO = new ValorIdVO().ValorIdVOConstructor(id2,valor);
							arrayCausacionEmpresa.push(valorIdVO);
						}
						
						var causacionNominaVO:CausacionNominaVO = new CausacionNominaVO().CausNominaVOConstructor(id,idTtibutaria,
						idFechasCorteCausacion,idFechasPago,subtotal,diasTrabajados,totalAPagar,ibc,nombreEmpleado,tiempo,vacaciones,cedula,
						totalCausEmpresa,idsBonificaciones,deducciones,provisiones,arrayCausacionEmpresa);
						arrayCuentasNominaVO.addItem(causacionNominaVO);
						trace();
				}
			}
			
			////////////////////////
			*/
			private function resetListaBonificaciones():void{
				for(var x:int = 0; x < (CausacionesMl.getInstance().listaBonificaciones as ArrayCollection).length;x++){
					
					var obj:Object = (CausacionesMl.getInstance().listaBonificaciones as ArrayCollection).getItemAt(x);
					obj.seleccionado = false;
					(CausacionesMl.getInstance().listaBonificaciones as ArrayCollection).setItemAt(obj,x);
				}
			}
			
			public function getBonificacionsSeleccionadas(indexSeleccionado:int,mantenerDatos:Boolean):void{
				if(!mantenerDatos)
				{
					resetListaBonificaciones();
					var objetoSeleccionado:Object = (ContratoMl.getInstance().listCausacionNomina  as ArrayCollection).getItemAt(indexSeleccionado);
					var idsSeleccionado:Array = new Array();
					idsSeleccionado = objetoSeleccionado.causacionNomina.idsBonificaciones;
					var cont:int = 0;
					for each(var x:* in CausacionesMl.getInstance().listaBonificaciones){
						
						for each(var y:* in idsSeleccionado)
						{
							if(x.id==y)
							{
								var obj:Object = (CausacionesMl.getInstance().listaBonificaciones as ArrayCollection).getItemAt(cont);
								obj.seleccionado = true;
								(CausacionesMl.getInstance().listaBonificaciones as ArrayCollection).setItemAt(obj,cont);
							}
						}
						cont++;
					}
				}
			}
			
			public function getDeduccionesSelecciondas(indexSeleccionado:int):void{
				
					if(CausacionesMl.getInstance().listaDeducciones!=null)
					{
						resetDeducciones();
					}
					var objetoSeleccionado:Object = (ContratoMl.getInstance().listCausacionNomina  as ArrayCollection).getItemAt(indexSeleccionado);
					var idsSeleccionado:Array = new Array();
					idsSeleccionado = objetoSeleccionado.idsDeducciones;
					var cont:int = 0;
					if(idsSeleccionado!=null)
					{
						for each(var x:* in CausacionesMl.getInstance().listaDeducciones){
							
							for each(var y:* in idsSeleccionado)
							{
								if(x.id==y)
								{
									var obj:Object = (CausacionesMl.getInstance().listaDeducciones as ArrayCollection).getItemAt(cont);
									obj.seleccionado = true;
									(CausacionesMl.getInstance().listaDeducciones as ArrayCollection).setItemAt(obj,cont);
								}
							}
							cont++;
						}
					}
								
			}
			private function resetDeducciones():void
			{
				for(var x:int = 0; x < (CausacionesMl.getInstance().listaDeducciones as ArrayCollection).length;x++){
					
						var obj:Object = (CausacionesMl.getInstance().listaDeducciones as ArrayCollection).getItemAt(x);
						obj.seleccionado = false;
						(CausacionesMl.getInstance().listaDeducciones as ArrayCollection).setItemAt(obj,x);
					}
			}
			
			public function getProvisionesSelecciondas(indexSeleccionado:int):void{
					if(CausacionesMl.getInstance().listaProvisiones!=null)
					{
						resetProvisiones();
					}
					var objetoSeleccionado:Object = (ContratoMl.getInstance().listCausacionNomina  as ArrayCollection).getItemAt(indexSeleccionado);
					var idsSeleccionado:Array = new Array();
					idsSeleccionado = objetoSeleccionado.provisiones;
					var cont:int = 0;
					if(idsSeleccionado!=null)
					{
						for each(var x:* in CausacionesMl.getInstance().listaProvisiones){
							
							for each(var y:* in idsSeleccionado)
							{
								if(x.id==y.id)
								{
									var obj:Object = (CausacionesMl.getInstance().listaProvisiones as ArrayCollection).getItemAt(cont);
									obj.seleccionado = true;
									obj.valor = y.valor;
									(CausacionesMl.getInstance().listaProvisiones as ArrayCollection).setItemAt(obj,cont);
								}
							}
							cont++;
						}
					}
			
			}
			
			private function resetProvisiones():void
			{
				for(var x:int = 0; x < (CausacionesMl.getInstance().listaProvisiones as ArrayCollection).length;x++){
					
						var obj:Object = (CausacionesMl.getInstance().listaProvisiones as ArrayCollection).getItemAt(x);
						obj.seleccionado = false;
						obj.valor = 0;
						(CausacionesMl.getInstance().listaProvisiones as ArrayCollection).setItemAt(obj,x);
					}
			}
			
			public function getBonificacionsSeleccionadasPs(indexSeleccionado:int):void{
				
					resetListaBonificaciones();
					var objetoSeleccionado:Object = (ContratoMl.getInstance().listCausacionps  as ArrayCollection).getItemAt(indexSeleccionado);
					var idsSeleccionado:Array = new Array();
					idsSeleccionado = objetoSeleccionado.causacionPs.idsBonificaciones;
					var cont:int = 0;
					for each(var x:* in CausacionesMl.getInstance().listaBonificaciones){
						
						for each(var y:* in idsSeleccionado)
						{
							if(x.id==y)
							{
								var obj:Object = (CausacionesMl.getInstance().listaBonificaciones as ArrayCollection).getItemAt(cont);
								obj.seleccionado = true;
								(CausacionesMl.getInstance().listaBonificaciones as ArrayCollection).setItemAt(obj,cont);
							}
						}
						cont++;
					}
				
			}
			
			/*public function getProvisionesSelecciondasPs(indexSeleccionado:int):void{
				
					resetProvisiones();
					var objetoSeleccionado:Object = (ContratoMl.getInstance().listCausacionps  as ArrayCollection).getItemAt(indexSeleccionado);
					var provisionPs:Array = new Array();
					provisionPs = objetoSeleccionado.provisionPses;
					var cont:int = 0;
					for each(var x:* in CausacionesMl.getInstance().listaProvisiones){
						
						for each(var y:* in provisionPs)
						{
							if(x.id==y.id)
							{
								var obj:Object = (CausacionesMl.getInstance().listaProvisiones as ArrayCollection).getItemAt(cont);
								obj.seleccionado = true;
								obj.valor = y.valor;
								(CausacionesMl.getInstance().listaProvisiones as ArrayCollection).setItemAt(obj,cont);
							}
						}
						cont++;
					}
								
			}*/
			
			public function getDeduccionesSelecciondasPs(indexSeleccionado:int):void{
				
					resetDeducciones()	
					var objetoSeleccionado:Object = (ContratoMl.getInstance().listCausacionps  as ArrayCollection).getItemAt(indexSeleccionado);
					var idsSeleccionado:Array = new Array();
					idsSeleccionado = objetoSeleccionado.idsDeducciones;
					var cont:int = 0;
					for each(var x:* in CausacionesMl.getInstance().listaDeducciones){
						
						for each(var y:* in idsSeleccionado)
						{
							if(x.id==y)
							{
								var obj:Object = (CausacionesMl.getInstance().listaDeducciones as ArrayCollection).getItemAt(cont);
								obj.seleccionado = true;
								(CausacionesMl.getInstance().listaDeducciones as ArrayCollection).setItemAt(obj,cont);
							}
						}
						cont++;
					}
										
			}
			
			public function crearCausacionPsVO():void
			{
				causacionPsVOs = new ArrayCollection();
				for each( var causacionPs:* in ContratoMl.getInstance().listCausacionps){
					
					var validVoBonificaciones:Array = new Array();
					
					for each(var idBonificacion:* in causacionPs.causacionPs.idsBonificaciones)
					{
						var valorIdVO:ValorIdVO = new ValorIdVO().ValorIdVOConstructor(idBonificacion,0);
						validVoBonificaciones.push(valorIdVO);
					}
					
					var causacionPsVO:CausacionPsVO = new CausacionPsVO().CausPsVOConstructor(causacionPs.causacionPs.id,
					causacionPs.causacionPs.idFechasPago,causacionPs.causacionPs.rut,causacionPs.causacionPs.contratista,causacionPs.causacionPs.basico,
					causacionPs.causacionPs.diasTrabajados,causacionPs.causacionPs.devengados,causacionPs.causacionPs.totalBonificaciones,
					causacionPs.causacionPs.totalAPagar,null,validVoBonificaciones,
					causacionPs.causacionPs.validVoProvisiones,causacionPs.causacionPs.valIdVoDeducciones);
					causacionPsVOs.addItem(causacionPsVO);
				}
				trace();
			}
			
   	}
}