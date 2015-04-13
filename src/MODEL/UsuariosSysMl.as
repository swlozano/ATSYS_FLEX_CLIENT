package MODEL
{
	import VO.UsuarioAlternoVO;
	import VO.UsuariosSysVO;
	
	import com.adobe.cairngorm.model.ModelLocator;
	
	import mx.collections.ArrayCollection;

	public class UsuariosSysMl implements ModelLocator
	{
		private static var instance:UsuariosSysMl = null;
		
		[Bindable] public var listUs:Object = null;
		[Bindable] public var listUsClonado:Object = null;
		
		[Bindable] public var listUsCbx:Object = null;
		
		[Bindable] public var validarUs:Object;
		[Bindable] public var mostrarMenu:Boolean=false;
		[Bindable] public var mostrarSubMenu:Boolean=true;
		[Bindable] public var idUsuarioSelecEnCajaMenor:int;
		[Bindable] public var ClonPantallaInicio:Object;
		[Bindable] public var usuariosPpl:Object;
		[Bindable] public var idUsuarioToEliminar:int;
		//123456
		[Bindable] public var opcSubMenuUsuario:int = -1;
		[Bindable] public var selectableUs:Boolean = true;
		[Bindable] public var enableButtonLogIn:Boolean=true;
		
		[Bindable] public var arrUsalterno:ArrayCollection;
		
		[Bindable] public var nomape:String="";
		
		[Bindable] public var idUsuNotificacion:Array;
		
		[Bindable] public  var nomUsu:ArrayCollection;
		
		[Bindable] public var usuarioIngresado:Object = null;
		
		[Bindable] public var usuariol:Object = null;
		
		[Bindable] public var cbxCoincidenciaVisible:Boolean = false;
		//-----------------------------------------

        public var i:int;
        public var s:String;
        
        public var usu:UsuariosSysVO;
   
		public static function getInstance():UsuariosSysMl
		{
			if(instance == null)
			{ 
				instance = new UsuariosSysMl();
			}
			return instance;
		}
		
		 public function concatenarNomUsuarios():ArrayCollection{
            
              var us:UsuarioAlternoVO;
              arrUsalterno= new ArrayCollection();
              
              for each(var x:* in listUs){
                
                i = x.id;
                s = x.nombre +" " +x.apellido; 
                
                us=new UsuarioAlternoVO(i,s);
                
                arrUsalterno.addItem(us);  
            
               }
               
               return arrUsalterno;
            
         }
         
         public  function checarallCheckbox():void
		{
			var ar:ArrayCollection = new ArrayCollection();
			var usu:UsuariosSysVO;
			for each(var x:* in UsuariosSysMl.getInstance().listUs)
			{
					
						usu = new UsuariosSysVO(x.id,x.nombre,x.apellido,0,"","","",null,false);
						ar.addItem(usu);
					
			}
			
			UsuariosSysMl.getInstance().listUs = ar;
				
		}
        
		
	}
}







