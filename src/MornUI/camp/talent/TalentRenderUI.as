/**Created by the LayaAirIDE,do not modify.*/
package MornUI.camp.talent {
	import laya.ui.*;
	import laya.display.*; 
	

	public class TalentRenderUI extends View {
		public var bg:Image;
		public var talentIcon:Image;
		public var btnTip:Button;
		public var addBtn:Button;
		public var tfLvTxt:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("camp/talent/TalentRender");

		}

	}
}