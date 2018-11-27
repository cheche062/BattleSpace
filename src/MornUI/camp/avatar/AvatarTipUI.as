/**Created by the LayaAirIDE,do not modify.*/
package MornUI.camp.avatar {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.componets.SkillItemUI;
	import MornUI.camp.avatar.AvatarProItemUI;

	public class AvatarTipUI extends View {
		public var bg:Image;
		public var btnClose:Button;
		public var skillItem:SkillItemUI;
		public var skillLb:Label;
		public var base_0:AvatarProItemUI;
		public var base_1:AvatarProItemUI;
		public var ex_0:AvatarProItemUI;
		public var ex_1:AvatarProItemUI;
		public var ex_2:AvatarProItemUI;
		public var ex_3:AvatarProItemUI;
		public var lbB:Label;
		public var lbE:Label;
		public var tfBaseBr:Label;
		public var tfExBr:Label;
		public var tfName:Label;
		public var spBtn:Sprite;
		public var btnGet:Button;

		override protected function createChildren():void {
			View.regComponent("MornUI.componets.SkillItemUI",SkillItemUI);
			View.regComponent("MornUI.camp.avatar.AvatarProItemUI",AvatarProItemUI);
			super.createChildren();
			loadUI("camp/avatar/AvatarTip");

		}

	}
}