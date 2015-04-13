package MODEL
{
	import VO.PermisosVO;
	
	import com.adobe.cairngorm.model.ModelLocator;
	
	import mx.collections.ArrayCollection;

	public class PermisosMl implements ModelLocator
	{
		private static var instance:PermisosMl = null;
		//public static  var RO_USUARIOS:String = "gestionUsuarios";

        [Bindable] public var listPermisos:Object = null;
        [Bindable] public var rolesPpl:Object;
        [Bindable] public var idPermisosSelect:Array;
		[Bindable] public var bandera:Boolean=false;
		[Bindable] public var CloseMainMenu:Object;
		
		/*********LISTA DE PERMISOS************************/
		
		
		/*********PERMISOS PARA GESTION USUARIOS***********/
		public static  var AGREGAR_USUARIOS:int = 1;
		public static  var ELIMINAR_USUARIOS:int = 2;
		public static  var MODIFICAR_USUARIOS:int = 3;
		/**************************************************/
		
		/*********PERMISOS PARA GESTION ROLES***********/
		public static var AGREGAR_ROLES:int = 4;
		public static var ELIMINAR_ROLES:int = 5;
		public static var MODIFICAR_ROLES:int = 6;
		/**************************************************/
		
		/*********PERMISOS PARA GESTION CAJA MENOR***********/
		public static var AGREGAR_CAJA_MENOR:int = 7;
		public static var ELIMINAR_CAJA_MENOR:int = 8;
		public static var CONFIGURAR_CAJA_MENOR:int = 9;
		/**************************************************/
		
		/*********PERMISOS PARA GESTION CENTRO DE COSTO***********/
		public static var AGREGAR_CENTRO_DE_COSTO:int = 10;
		public static var ELIMINAR_CENTRO_DE_COSTO:int = 11;
		public static var MODIFICAR_CENTRO_DE_COSTO:int = 12;
		/**************************************************/
		
		/*********PERMISOS PARA GESTION MOVIMIENTOS***********/
		public static var AGREGAR_MOVIMIENTOS:int = 13;
		public static var BUSCAR_MOVIMIENTOS:int = 29;
		/**************************************************/
		
		/*********PERMISOS PARA GESTION CUENTAS DE BANCO***********/
		public static var AGREGAR_CUENTAS_BANCO:int = 14;
		public static var ELIMINAR_CUENTAS_BANCO:int = 15;
		public static var MODIFICAR_CUENTAS_BANCO:int = 16;
		/**************************************************/
		
		/*********PERMISOS PARA GESTION PERSONAS***********/
		public static var AGREGAR_PERSONAS:int = 17;
		public static var ELIMINAR_PERSONAS:int = 18;
		public static var MODIFICAR_PERSONAS:int = 19;
		/**************************************************/
		
		/*********PERMISOS PARA GESTION FACTURAS***********/
		public static var AGREGAR_FACTURAS:int = 20;
		public static var ELIMINAR_FACTURAS:int = 21;
		public static var MODIFICAR_FACTURAS:int = 22;
		public static var GESTION_DE_ABONO_FACTURAS:int = 23;
		/**************************************************/
		
		/*********PERMISOS PARA GESTION RECURSO HUMANO***********/
		public static var AGREGAR_RECURSO_HUMANO:int = 24;
		public static var MODIFICAR_RECURSO_HUMANO:int = 25;
		/**************************************************/
		
		/*********PERMISOS PARA GESTION OFICIOS***********/
		public static var AGREGAR_OFICIO:int = 26;
		public static var MODIFICAR_OFICIO:int = 27;
		/**************************************************/
		
		/*********PERMISOS PARA GESTION CONTRATO***********/
		public static var AGREGAR_CONTRATO:int = 28;
		/**************************************************/
		
		/*********PERMISOS PARA GESTION DE FICHAS DE CONTRATO***********/
		public static var AGREGAR_FICHA_PERMISO:int = 30;
		public static var ELIMINAR_FICHA_PERMISO:int = 31;
		public static var MODIFICAR_FICHA_PERMISO:int = 32;
		
		public static var AGREGAR_FICHA_INCAPACIDAD:int = 33;
		public static var ELIMINAR_FICHA_INCAPACIDAD:int = 34;
		public static var MODIFICAR_FICHA_INCAPACIDAD:int = 35;
		
		public static var AGREGAR_FICHA_PRESTAMO:int = 36;
		public static var ELIMINAR_FICHA_PRESTAMO:int = 37;
		public static var MODIFICAR_FICHA_PRESTAMO:int = 38;
		
		public static var AGREGAR_MEMORANDOS:int = 39;
		public static var ELIMINAR_MEMORANDOS:int = 40;
		public static var MODIFICAR_MEMORANDOS:int = 41;
		/*****************************************************/
		
		/*******************TERMINAR CONTRATO*****************/
		public static var TERMINAR_CONTRATO:int = 42;
		/*****************************************************/
		
		/*******************ADMINISTRAR CUENTAS DE COBRO******/
		public static var CUENTAS_DE_COBRO:int = 43;
		/*****************************************************/
		
		/*******************ADMINISTRAR LIQUIDACION******/
		public static var LIQUIDAR_CONTRATO:int = 44;
		/*****************************************************/
		
		/*******************ADENDOS******/
		public static var ADENDAR_CONTRATO:int = 45;
		/*****************************************************/
		
		/*******************CAUSACIONES******/
		public static var CAUSACIONES:int = 46;
		/*****************************************************/
		  
		/*******************ADMINISTRAR CUENTAS POR PAGAR******/
		public static var AGREGAR_CUENTAS_POR_PAGAR:int = 47;
		public static var ELIMINAR_CUENTAS_POR_PAGAR:int = 48;
		public static var MODIFICAR_CUENTAS_POR_PAGAR:int = 49;
		public static var MODIFICAR_ESTADO_CUENTAS_POR_PAGAR:int = 50;
		/*****************************************************/
		
		/*******************REPORTES DE FACTURAS******/
		public static var REPORTES_DE_FACTURAS:int = 51;
		/*****************************************************/
		
		public static var ELIMINAR_OFICIO:int = 52;
		
		/*********MENSAJES DE ALERTA***********/
		public static var MSG_ALERTA_MODIFICAR_MOVIMENTO:String ="Sólo el Usuario ADMINISTRADOR puede modificar los Movimientos. Contactese con él para que realize este procedimiento";
	    public static var MSG_ALERTA_BUSQUEDA_MOVIMENTO:String ="No tiene permiso para la Búsqueda de los Movimientos";
	    public static var MSG_ALERTA_ELIMINAR_MOVIMENTO:String ="Sólo el Usuario ADMINISTRADOR puede eliminar los Movimientos. Contactese con él para que realize este procedimiento";
		public static var MSG_ALERTA_PERMISO:String ="Comuniquese con un USUARIO ADMINISTRADOR para que le otorgue permisos suficientes para a esta opción";
		public static var MSG_PERMISO:String = "No tiene permiso para acceder a este módulo";
		public static var MSG_PERMISO_AGREGAR_USUARIOS:String ="No tiene permiso para AGREGAR USUARIOS";
		public static var MSG_PERMISO_ELIMINAR_USUARIOS:String ="No tiene permiso para ELIMINAR USUARIOS";
		public static var MSG_PERMISO_MODIFICAR_USUARIOS:String ="No tiene permiso para MODIFICAR USUARIOS";
		public static var MSG_PERMISO_AGREGAR_ROLES:String ="No tiene permiso para AGREGAR ROLES";
		public static var MSG_PERMISO_ELIMINAR_ROLES:String ="No tiene permiso para ELIMINAR ROLES";
		public static var MSG_PERMISO_MODIFICAR_ROLES:String ="No tiene permiso para MODIFICAR ROLES";
		public static var MSG_PERMISO_AGREGAR_CAJA_MENOR:String ="No tiene permiso para AGREGAR CAJA MENOR";
		public static var MSG_PERMISO_ELIMINAR_CAJA_MENOR:String ="No tiene permiso para ELIMINAR CAJA MENOR";
		public static var MSG_PERMISO_CONFIGURAR_CAJA_MENOR:String ="No tiene permiso para CONFIGURAR CAJA MENOR";
		public static var MSG_PERMISO_AGREGAR_CENTRO_DE_COSTO:String ="No tiene permiso para AGREGAR CENTROS DE COSTO";
		public static var MSG_PERMISO_ELIMINAR_CENTRO_DE_COSTO:String ="No tiene permiso para ELIMINAR CENTROS DE COSTO";
		public static var MSG_PERMISO_MODIFICAR_CENTRO_DE_COSTO:String ="No tiene permiso para MODIFICAR CENTROS DE COSTO";
		public static var MSG_PERMISO_AGREGAR_MOVIMIENTOS:String ="No tiene permiso para AGREGAR MOVIMIENTOS";
		public static var MSG_PERMISO_AGREGAR_CUENTA_BANCO:String ="No tiene permiso para AGREGAR CUENTAS DE BANCO";
		public static var MSG_PERMISO_ELIMINAR_CUENTA_BANCO:String ="No tiene permiso para ELIMINAR CUENTAS DE BANCO";
		public static var MSG_PERMISO_MODIFICAR_CUENTA_BANCO:String ="No tiene permiso para MODIFICAR CUENTAS DE BANCO";
		public static var MSG_PERMISO_AGREGAR_PERSONAS:String ="No tiene permiso para AGREGAR PERSONAS";
		public static var MSG_PERMISO_ELIMINAR_PERSONAS:String ="No tiene permiso para ELIMINAR PERSONAS";
		public static var MSG_PERMISO_MODIFICAR_PERSONAS:String ="No tiene permiso para MODIFICAR PERSONAS";
		public static var MSG_PERMISO_AGREGAR_FACTURAS:String ="No tiene permiso para AGREGAR FACTURAS";
		public static var MSG_PERMISO_ELIMINAR_FACTURAS:String ="No tiene permiso para ELIMINAR FACTURAS";
		public static var MSG_PERMISO_MODIFICAR_FACTURAS:String ="No tiene permiso para MODIFICAR FACTURAS";
		public static var MSG_PERMISO_GESTION_ABONO_FACTURAS:String ="No tiene permiso para GESTIONAR LOS ABONOS DE LAS FACTURAS";
		public static var MSG_PERMISO_AGREGAR_RECURSO_HUMANO:String ="No tiene permiso para AGREGAR RECURSO HUMANO";
		public static var MSG_PERMISO_MODIFICAR_RECURSO_HUMANO:String ="No tiene permiso para MODIFICAR RECURSO HUMANO";
		public static var MSG_PERMISO_AGREGAR_OFICIO:String ="No tiene permiso para AGREGAR OFICIOS A DESEMPEÑAR";
		public static var MSG_PERMISO_MODIFICAR_OFICIO:String ="No tiene permiso para MODIFICAR OFICIO";
		public static var MSG_PERMISO_AGREGAR_CONTRATO:String ="No tiene permiso para AGREGAR CONTRATOS";
		
		public static var MSG_PERMISO_AGREGAR_FICHA_PERMISO:String ="No tiene permiso para AGREGAR FICHAS DE PERMISOS";
		public static var MSG_PERMISO_ELIMINAR_FICHA_PERMISO:String ="No tiene permiso para ELIMINAR FICHAS DE PERMISOS";
		public static var MSG_PERMISO_MODIFICAR_FICHA_PERMISO:String ="No tiene permiso para MODIFICAR FICHAS DE PERMISOS";
		
		public static var MSG_PERMISO_AGREGAR_FICHA_INCAPACIDAD:String ="No tiene permiso para AGREGAR FICHAS DE INCAPACIDAD";
		public static var MSG_PERMISO_ELIMINAR_FICHA_INCAPACIDAD:String ="No tiene permiso para ELIMINAR FICHAS DE INCAPACIDAD";
		public static var MSG_PERMISO_MODIFICAR_FICHA_INCAPACIDAD:String ="No tiene permiso para MODIFICAR FICHAS DE INCAPACIDAD";
		
		public static var MSG_PERMISO_AGREGAR_FICHA_PRESTAMO:String ="No tiene permiso para AGREGAR FICHAS DE PRÉSTAMO";
		public static var MSG_PERMISO_ELIMINAR_FICHA_PRESTAMO:String ="No tiene permiso para ELIMINAR FICHAS DE PRÉSTAMO";
		public static var MSG_PERMISO_MODIFICAR_FICHA_PRESTAMO:String ="No tiene permiso para MODIFICAR FICHAS DE PRÉSTAMO";
		
		public static var MSG_PERMISO_AGREGAR_FICHA_MEMORANDO:String ="No tiene permiso para AGREGAR OBSERVACIONES MEMORANDOS";
		public static var MSG_PERMISO_ELIMINAR_FICHA_MEMORANDO:String ="No tiene permiso para ELIMINAR OBSERVACIONES MEMORANDOS";
		public static var MSG_PERMISO_MODIFICAR_FICHA_MEMORANDO:String ="No tiene permiso para MODIFICAR OBSERVACIONES MEMORANDOS";
		
	    public static var MSG_PERMISO_TERMINAR_CONTRATO:String ="No tiene permiso para TERMINAR CONTRATOS";
		
		public static var MSG_PERMISO_LIQUIDAR_CONTRATO:String ="No tiene permiso para LIQUIDAR CONTRATOS";
		
		public static var MSG_PERMISO_ADENDAR_CONTRATO:String ="No tiene permiso para ADENDAR CONTRATOS";
		
		public static var MSG_PERMISO_CAUSACIONES:String ="No tiene permiso para CAUSACIONES";
		
		public static var MSG_PERMISO_AGREGAR_CUENTAS_POR_PAGAR:String ="No tiene permiso para AGREGAR CUENTAS POR PAGAR";
		public static var MSG_PERMISO_ELIMINAR_CUENTAS_POR_PAGAR:String ="No tiene permiso para ELIMINAR CUENTAS POR PAGAR";
		public static var MSG_PERMISO_MODIFICAR_CUENTAS_POR_PAGAR:String ="No tiene permiso para MODIFICAR CUENTAS POR PAGAR";
		public static var MSG_PERMISO_MODIFICAR_ESTADO_CUENTAS_POR_PAGAR:String ="No tiene permiso para MODIFICAR EL ESTADO DE LAS CUENTAS POR PAGAR";
		
		public static var MSG_PERMISO_REPORTES_DE_FACTURAS:String ="No tiene permiso para REALIZAR LOS REPORTES DE FACTURAS";
		
		public static var MSG_PERMISO_ELIMINAR_OFICIO:String ="No tiene permiso para ELIMINAR OFICIOS A DESEMPEÑAR";
		
		/****************************************************************************************************/
		
		
		public static function getInstance():PermisosMl
		{
			if(instance == null)
			{ 
				instance = new PermisosMl;
			}
			return instance;
		}
		
		
		public function permitirPantalla(tipopantalla:int):Boolean{
		
		 var ar:ArrayCollection = new ArrayCollection();
         ar.addItem(tipopantalla);
		 
		 if(this.validarPermisos(UsuariosSysMl.getInstance().usuarioIngresado.usuarioSistemaRols,ar)) {
		 
		    return true;
		 
		 }else
		 
		   return false;
         
		}
		
		public function validarPermisos(roles:ArrayCollection,idPermisos:ArrayCollection):Boolean
		{
			for each(var rol:* in roles)
			{
				for each(var permiso:* in rol.rol.rolPermisoses)
				{
					for each(var idPermiso:int in idPermisos)
					{
						if(permiso.permisos.id == idPermiso)
							return true;
					}
				}
			}
			
			return false;
		}
		
		
		public function checkarAllPermisos():void
		{
			var ar:ArrayCollection = new ArrayCollection();
			var permiso:PermisosVO;
			
			for each(var x:* in PermisosMl.getInstance().listPermisos)
			{
	
						permiso = new PermisosVO(x.id,x.nombre,false);
						ar.addItem(permiso);
	
			}
			
			PermisosMl.getInstance().listPermisos = ar;
				
		}
		
		public function deshabilitarMenus():void{
		
		  PermisosMl.getInstance().CloseMainMenu.enabled=false;
		  UsuariosSysMl.getInstance().mostrarSubMenu=false;
		
		}
		public function habilitarMenus():void{
		
		  PermisosMl.getInstance().CloseMainMenu.enabled=true;
		  UsuariosSysMl.getInstance().mostrarSubMenu=true;
		
		}
		
		
		
		
		
		
		
		
		
		
		
		

	}
}