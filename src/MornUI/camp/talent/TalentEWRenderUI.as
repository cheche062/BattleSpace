/**Created by the LayaAirIDE,do not modify.*/
package MornUI.camp.talent {
	import laya.ui.*;
	import laya.display.*; 
	

	public class TalentEWRenderUI extends View {
		public var img:Image;
		public var lvTxt:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("camp/talent/TalentEWRender");

		}

	}
}