package COMMAND.usuarios
{
	import BUSINESS.UsuarioSysDelegate;
	
	import EVENT.UsuariosSysEvent;
	
	import MODEL.UsuariosSysMl;
	
	import VO.UsuariosSysVO;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.core.Application;
	import mx.rpc.IResponder;

	public class ValidarUsuariosSysCommand implements IResponder, ICommand
	{
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class; 
		[Embed(source="/REC/IMAGENES/warn2.png")]
        public var warn:Class;
		
		public var us:UsuariosSysVO;

		
		public function execute(event:CairngormEvent):void
		{
			new UsuarioSysDelegate(this).validarUsuario((event as UsuariosSysEvent).usuariosSysVo);
		}
		
		public function result(data:Object):void
		{
			UsuariosSysMl.getInstance().validarUs = data.result;
			if(UsuariosSysMl.getInstance().validarUs==null){
				Alert.show("!!LOGIN O CONTRASEÑA INCORRECTOS¡¡...Intente de nuevo por favor","INGRESO INCORRECTO",0,null,null,warn,0);
			 	UsuariosSysMl.getInstance().mostrarMenu = false;
			    UsuariosSysMl.getInstance().enableButtonLogIn = true;
			}
			else
			{
				Application.application.currentView = 0;
				UsuariosSysMl.getInstance().mostrarMenu = true;
				UsuariosSysMl.getInstance().usuarioIngresado = data.result;

                var n:String;
                var a:String;
                var r:String;
               
                var u:UsuariosSysVO;
                UsuariosSysMl.getInstance().nomUsu = new ArrayCollection();
                
                UsuariosSysMl.getInstance().nomUsu.addItem(UsuariosSysMl.getInstance().usuarioIngresado);
                
                
                u=new UsuariosSysVO(0,UsuariosSysMl.getInstance().nomUsu.getItemAt(0).nombre,UsuariosSysMl.getInstance().nomUsu.getItemAt(0).apellido,0,"","","",null,false);
                
                UsuariosSysMl.getInstance().nomape = u.nombre +" "+ u.apellido;
               
              
                
			}
			
		}
		
		public function fault(info:Object):void
		{
		Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
		
		
	}
}








