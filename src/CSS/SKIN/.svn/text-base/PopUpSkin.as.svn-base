package CSS.SKIN
{
	/* -----------------------------------------------------------------------------
	IMPORT CLASSES
	----------------------------------------------------------------------------- */
	import mx.skins.ProgrammaticSkin;
	import flash.display.Graphics;

	/* -----------------------------------------------------------------------------
	CREATE CLASS
	----------------------------------------------------------------------------- */
	public class PopUpSkin extends ProgrammaticSkin
	{		
		// PanelSkin constructor
		public function PopUpSkin() {
			super();
 		}

		/* -----------------------------------------------------------------------------
		Override the updateDisplayList() method to size and position the children in this component
		----------------------------------------------------------------------------- */
		override protected function updateDisplayList(unscaledWidth:Number,unscaledHeight:Number):void {
			 
			var g:Graphics = graphics; 
			
			g.clear();
			
			g.beginFill(0xffffff);	
			
			g.drawRoundRectComplex(0,0,unscaledWidth,unscaledHeight,0,10,10,0);
			
			g.endFill(); 
			 
		}
	}
}
