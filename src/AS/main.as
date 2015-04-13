// ActionScript file adrian
//aj
//Modificado

import MODEL.RecursoHumanoMl;

import VIEW.usuarios.*;

[Bindable]
[Embed(source="/REC/IMAGENES/closeNav2.png")]
public var closeNav:Class;

[Bindable]public static var cierre:String	="CERRAR MENÚ";
[Bindable]public static var abra:String		=" ABRIR MENÚ";

[Bindable]public  var n:String;

[Bindable]
[Embed(source="/REC/IMAGENES/openNav2.png")]
public var openNav:Class;

[Bindable]
[Embed(source="/REC/IMAGENES/icoCajaMenor.png")]
public var icoCajaMenor:Class;

[Bindable]
[Embed(source="/REC/IMAGENES/Cbanco.png")]
public var icoCbanco:Class;

[Bindable]
[Embed(source="/REC/IMAGENES/welcome.png")]
public var welcome:Class;

[Bindable]
[Embed(source="/REC/IMAGENES/users.png")]
public var usuarios:Class;

[Bindable]
[Embed(source="/REC/IMAGENES/rol22.png")]
public var rolr:Class;

[Bindable]
[Embed(source="REC/IMAGENES/ccosto.png")]
public var centcost:Class;

[Bindable]
[Embed(source="REC/IMAGENES/movment.png")]
public var Mov:Class;

[Bindable]
[Embed(source="REC/IMAGENES/recursohumano.png")]
public var rechuman:Class;

[Bindable]
[Embed(source="REC/IMAGENES/valorfpago.png")]
public var valorfpago:Class;

[Bindable]
[Embed(source="REC/IMAGENES/oficio.png")]
public var oficio:Class;

[Bindable]
[Embed(source="REC/IMAGENES/contrato.png")]
public var contrato:Class;

[Bindable]
[Embed(source="REC/IMAGENES/personas.png")]
public var personas:Class;

[Bindable]
[Embed(source="REC/IMAGENES/factura.png")]
public var factura:Class;

[Bindable]
[Embed(source="REC/IMAGENES/cuentacobro.png")]
public var ccobro:Class;

[Bindable]
[Embed(source="REC/IMAGENES/cuentaspagar.png")]
public var cpagar:Class;


[Bindable]
[Embed(source="REC/IMAGENES/personas.png")]
public var log:Class;

//@Embed(source='REC/IMAGENES/personas.png')

[Bindable]
public var isClosed:Boolean = false;

[Bindable]
public var Mod:String="Modifica ";

[Bindable]
public var Conf:String="Configura ";

[Bindable]
public var On:String="Abrir Submenu";

[Bindable]
public var Off:String="Cerrar Submenu";

[Bindable]public var Hbox1:int;

[Bindable]
public var currentView:Number = 15;

[Bindable]
public var arrImagenes:Array = new Array(welcome,usuarios,rolr,icoCajaMenor,centcost,Mov,rechuman,valorfpago,oficio,contrato,personas,factura,ccobro,cpagar,icoCbanco,log,valorfpago);

[Bindable]
public var arrNomModulos:Array = new Array ("BIENVENIDO ","Gestión de Usuarios > ","Gestión de Usuarios > ","Centro de Cuentas > ","Centro de Cuentas > ","Centro de Cuentas > ","Gestión de Contratación > ","Gestión de Contratación > ","Gestión de Contratación > ","Gestión de Contratación > ","Gestión de Personas > ","Gestión de Facturas > ","Cuentas de Cobro > ","Cuentas por Pagar > ","Centro de Cuentas > ","","Gestión de Contratación > ");

[Bindable]
public var arrNomSubModulos:Array = new Array("","Usuario","Rol","Caja Menor","Centro de Costo","Movimiento","Recurso Humano","Valor/Forma de Pago","Oficio","Contrato","Persona","Factura","Cuenta de Cobro","Cuenta por Pagar","Cuentas de Banco","Inicio de Sesión","Causación");

[Bindable]
public var anchoPantNull:int;

[Bindable]
public var anchoMenuAbajo:int;

[Bindable]
public var menuAbajo:Object;




public function discloseNav():void 
{
	if (isClosed == false) {
		
		anchoMenuAbajo = anchoPantNull + 153 ;
		if(menuAbajo != null)
		{
			menuAbajo.isClosed = false;
			menuAbajo.discloseNav();
		}
		box1.horizontalScrollPolicy="off";
		box1.verticalScrollPolicy="off"; 
		navStack.visible = false;
		
		shrink.end();
		shrink.play();
		isClosed = true;
	} else {
	
		anchoMenuAbajo = anchoPantNull;
		if(menuAbajo != null)
		{
			menuAbajo.isClosed = true;
			menuAbajo.discloseNav();
		}
		box1.horizontalScrollPolicy="off";
		box1.verticalScrollPolicy="off"; 
		navStack.visible = true;
		grow.end();
		grow.play();
		isClosed = false;
		
	}
}
public function creationCompleteIndex():void
{
	Hbox1 = box1.height;
}