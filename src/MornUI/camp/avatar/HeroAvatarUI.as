/**Created by the LayaAirIDE,do not modify.*/
package MornUI.camp.avatar {
	import laya.ui.*;
	import laya.display.*; 
	

	public class HeroAvatarUI extends View {
		public var list:List;
		public var btnEquip:Button;
		public var tfName:Label;
		public var btnEnchance:Button;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("camp/avatar/HeroAvatar");

		}

	}
}