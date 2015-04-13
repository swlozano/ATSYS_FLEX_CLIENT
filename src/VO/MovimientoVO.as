package VO
{
	import com.adobe.cairngorm.vo.ValueObject;

    [Bindable]
	public class MovimientoVO implements ValueObject
	{
	    public var id:int;
	    public var idTipoMovimiento:int;
	    public var idPersona:int;
	    public var idCajaMenor:int;
	    public var idCentroCosto:int;
	    public var valor:Number;
	    public var fechaMovimiento:Date;
	    public var concepto:String;
	    
		
		
		public function MovimientoVO(
			
			id:int,
	    	idTipoMovimiento:int,
	    	idPersona:int,
	    	idCajaMenor:int,
	    	idCentroCosto:int,
	    	valor:Number,
	    	fechaMovimiento:Date,
	    	concepto:String
		
		)
		
		{
			this.id=id;
			this.idTipoMovimiento= idTipoMovimiento;
			this.idPersona=idPersona;
			this.idCajaMenor=idCajaMenor;
			this.idCentroCosto=idCentroCosto;
			this.valor=valor;
			this.fechaMovimiento=fechaMovimiento;
			this.concepto= concepto;
		}

	}
}