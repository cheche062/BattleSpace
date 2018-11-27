/**Created by the LayaAirIDE,do not modify.*/
package MornUI.camp.avatar {
	import laya.ui.*;
	import laya.display.*; 
	

	public class AvatarProItemUI extends View {
		public var proIcon:Image;
		public var tfPro:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("camp/avatar/AvatarProItem");

		}

	}
}