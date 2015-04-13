package CSS.SKIN
{
	/* -----------------------------------------------------------------------------
	IMPORT CLASSES
	----------------------------------------------------------------------------- */
	import flash.display.GradientType;
	import flash.display.Graphics;
	
	import mx.skins.ProgrammaticSkin;

	/* -----------------------------------------------------------------------------
	CREATE CLASS
	----------------------------------------------------------------------------- */
	public class BoxSkinMedio extends ProgrammaticSkin
	{		
		// PanelSkin constructor
		public function BoxSkinMedio() {
			super();
 		}

		/* -----------------------------------------------------------------------------
		Override the updateDisplayList() method to size and position the children in this component
		----------------------------------------------------------------------------- */
		override protected function updateDisplayList(unscaledWidth:Number,unscaledHeight:Number):void {
			 
			var g:Graphics = graphics; 
			
			g.clear();
			
			g.beginFill(0x006699);	
			
			//g.beginGradientFill(GradientType.LINEAR,new Array(0x006699,0x00AA99),null,null);
			//g.beginGradientFill(GradientType.LINEAR,new Array(0xcccccc,0x006699),null,null);
			//g.beginGradientFill(GradientType.LINEAR,new Array(0xcccccc,0x006699),new Array(1, 0.42),null);
			// draw the rectangle
			g.drawRoundRectComplex(5,4,unscaledWidth - 10,unscaledHeight,10,0,0,10);			
			
			g.endFill();
		}
	}
}
