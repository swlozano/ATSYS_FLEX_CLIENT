package VO
{
	import com.adobe.cairngorm.vo.IValueObject;
	
	import mx.collections.ArrayCollection;

	//[Bindable]
	[RemoteClass(alias="Entidades.Tributaria")]
	public class Tributaria implements IValueObject
	{
		
		public var id:int;
     	public var ano:int;
     	public var fechaResolucion:Date;
     	public var smlv:Number;
     	public var auxilioTrasporte:Number;
     	public var causacionNominas:ArrayCollection;
		
		public function Tributaria()
		{
			
		}	
		
		public function Constructor(
		id:int,
     	ano:int,
     	fechaResolucion:Date,
     	smlv:Number,
     	auxilioTrasporte:Number,
     	causacionNominas:ArrayCollection):Tributaria
		{
			this.id = id;
			this.ano = ano;
			this.fechaResolucion = fechaResolucion;
			this.smlv = smlv;
			this.auxilioTrasporte = auxilioTrasporte;
			this.causacionNominas = causacionNominas;	
			return this;
		}
		
		
	}
}