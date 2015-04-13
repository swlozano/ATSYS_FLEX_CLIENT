package VO
{
	import com.adobe.cairngorm.vo.ValueObject;
	
	import mx.collections.ArrayCollection;
    
    [Bindable]
	public class FacturaVO implements ValueObject
	{
		public var id:int;
		public var idPersona:int;
		public var fechafactura:Date;
		public var fechapactada:Date;
		public var idIva:int;
		public var detalleFacturas:ArrayCollection;
		public var numeroFactura:String;
	//	public var estadoFactura:String;
		
		public function FacturaVO(
			
			id:int,
			idpersona:int,
			fechafactura:Date,
			fechapactada:Date,
			idIva:int,
			detalleFacturas:ArrayCollection,
			numeroFactura:String
			//estadoFactura:stri
			
			)
		{
			
			this.id=id;
			this.idPersona=idpersona;
			this.fechafactura=fechafactura;
			this.fechapactada=fechapactada;
			this.idIva=idIva;
			this.detalleFacturas=detalleFacturas;
			this.numeroFactura = numeroFactura;
			
		}

	}
}