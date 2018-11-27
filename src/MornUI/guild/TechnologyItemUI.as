/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	

	public class TechnologyItemUI extends View {
		public var icon:Image;
		public var tName:Label;
		public var pro:ProgressBar;
		public var context:Label;
		public var btn2:Button;
		public var btn1:Button;
		public var btn3:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("guild/TechnologyItem");

		}

	}
}