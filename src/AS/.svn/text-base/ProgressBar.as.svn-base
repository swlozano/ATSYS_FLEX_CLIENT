package AS
{
	import mx.containers.Canvas;    
    import mx.controls.Label;
    import flash.display.Loader;
    import mx.events.FlexEvent;
    import flash.events.Event;
    import flash.display.Bitmap;
    import flash.utils.ByteArray;
    import flash.display.BitmapData;
    import flash.display.MovieClip;
    import mx.utils.GraphicsUtil;
    import mx.graphics.codec.PNGEncoder;
    import flash.display.Sprite;
    import flash.display.Graphics;
    import mx.utils.ColorUtil;
    
    public class ProgressBar extends Loader
    {
        // Logo picture
        [Embed(source="/REC/IMAGENES/ATSYS.png")]
        [Bindable]
        private var logoClass: Class;        
        private var Logo: Bitmap;
        
        private var m_Ready: Boolean;
        private var m_Progress: Number;
        private var m_BitmapData: BitmapData;

        // Constant to change to fit your own layout
        private static var ProgressWidth: int = 200; // Progress bar width
        private static var PictureWidth: int = 188;  // Logo picture width
        private static var LeftMargin: int = 1;      // Left Margin
        private static var RightMargin: int = 1;     // Right Margin
        private static var Spacing: int = 10;        // Spacing between logo and progress bar
        private static var TopMargin: int = 1;       // Top Margin
        private static var BottomMargin: int = 1;    // Bottom Margin
        private static var PictureHeight: int = 48; // Logo picture height
        private static var ProgressHeight: int = 10; // Progress bar height
        
        
       /* private static var ProgressWidth: int = 150; // Progress bar width
        private static var PictureWidth: int = 188;  // Logo picture width
        private static var LeftMargin: int = 1;      // Left Margin
        private static var RightMargin: int = 2;     // Right Margin
        private static var Spacing: int = 10;        // Spacing between logo and progress bar
        private static var TopMargin: int = 1;       // Top Margin
        private static var BottomMargin: int = 1;    // Bottom Margin
        private static var PictureHeight: int = 48; // Logo picture height
        private static var ProgressHeight: int = 10; // Progress bar height*/
        
        private static var ProgressBarBackground: uint = 0xFFFFFF;
        private static var progressBarOuterBorder: uint = 0x000000;
        private static var ProgressBarColor: uint = 0xc3d1d9;
        private static var ProgressBarInnerColor: uint = 0xFFFFFF;
        
        public function ProgressBar(): void{
            super();
            m_Progress = 0;
            Logo = new logoClass as Bitmap;
            this.addEventListener(Event.RENDER, renderEventHandler);
        }
        private function renderEventHandler(event: Event): void{
            
        }
        public function refreshProgressBar(): void{            
            m_BitmapData = drawProgress(); // Create the bitmapdata object
            var encoder: PNGEncoder = new PNGEncoder();
            var byteArray: ByteArray = encoder.encode(m_BitmapData); // Encode the bitmapdata to a bytearray
            this.loadBytes(byteArray); // Draw the bitmap on the loader object
        }        
        public function getWidth(): Number{
            return LeftMargin + PictureWidth + Spacing + ProgressWidth + RightMargin;
        }
        public function getHeight(): Number{
            return TopMargin + PictureHeight + BottomMargin;
        }
        private function drawProgress(): BitmapData{
            // Create the bitmap class object
            var bitmapData: BitmapData = new BitmapData(getWidth(), getHeight(), true, 0);
            
            // Draw the Progress Bar
            var sprite: Sprite = new Sprite();
            var graph: Graphics = sprite.graphics;
            
            // Draw the progress bar background
            graph.beginFill(ProgressBarBackground);
            graph.lineStyle(1, progressBarOuterBorder, 1, true);
            var containerWidth: Number = ProgressWidth;
            var px: int = getWidth() - RightMargin - ProgressWidth;
            var py: int = (getHeight() - ProgressHeight) / 2;
            graph.drawRoundRect(px, py, containerWidth, ProgressHeight, 6);
            containerWidth -= 4;
            var progressWidth: Number = containerWidth * m_Progress / 100;
            graph.beginFill(ProgressBarColor);
            graph.lineStyle(1, ProgressBarInnerColor, 1, true);
            graph.drawRoundRect(px + 2, py + 2, progressWidth, ProgressHeight - 4, 6);
                        
            bitmapData.draw(sprite);
            
           // Draw the Logo
            bitmapData.draw(Logo.bitmapData, null, null, null, null, true);
            return bitmapData;                  
        }        
        public function set ready(value: Boolean): void{
            m_Ready = value;            
            this.visible = !value;            
        }
        public function get ready(): Boolean{
            return m_Ready;            
        }
        public function set progress(value: Number): void{
            m_Progress = value;            
        }
        public function get progress(): Number{
            return m_Progress;
        }        
    }
}