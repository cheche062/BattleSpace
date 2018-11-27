/**Created by the LayaAirIDE,do not modify.*/
package MornUI.camp.avatar {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class SkinItemUI extends View {
		public var bg:Image;
		public var HeroImage:Image;
		public var NameText:Text;
		public var LevelText:Text;
		public var qPic:Image;
		public var spState:Sprite;
		public var stateTF:Text;
		public var FightingBgImage:Image;
		public var FightingImage:Image;
		public var FightingText:Label;
		public var btnInfo:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("camp/avatar/SkinItem");

		}

	}
}