package VO
{
	import com.adobe.cairngorm.vo.ValueObject;

	[Bindable]
	public class UsuariosSysVO implements ValueObject
	{
		public var id:int;
		public var nombre:String;
		public var apellido:String; 
		public var cedula:int;
		public var	login:String;
		public var contrasena:String;
		public var correoElectronico:String;
		public var idRolesSelect:Array;
		public var asignado:Boolean;
		
		public function UsuariosSysVO(
			id:int,
			nombre:String,
			apellido:String,
			cedula:int,
			login:String,
			contrasena:String,
			correoElectronico:String,
			idRolesSelect:Array,
			asignado:Boolean)
		{
			this.id = id;
			this.apellido = apellido;
			this.cedula = cedula;
			this.contrasena = contrasena;
			this.correoElectronico = correoElectronico;
			this.login = login;
			this.nombre = nombre;
			this.idRolesSelect = idRolesSelect;
			this.asignado=asignado;
		}

	}
}