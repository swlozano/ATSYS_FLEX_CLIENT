package VO
{
	import com.adobe.cairngorm.vo.ValueObject;
    
    [RemoteClass(alias="VO.CausacionPs")]
	public class ValorFijoPsVO implements ValueObject
	{
		
		public var  concepto:String;
    	public var  valor:Number;
    	public var  retencion:Number;
    	public var  valorRetencion:Number;
		
		public function ValorFijoPsVO()
		{
		
		}
		
		public function constructor(
		concepto:String,
    	valor:Number,
    	retencion:Number,
    	valorRetencion:Number):ValorFijoPsVO
		{
			this.concepto = concepto;
			this.valor = valor;
			this.retencion = retencion;
			this.valorRetencion =valorRetencion;
		    return this;
		}
		
	}
}