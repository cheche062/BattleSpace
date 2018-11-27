/**Created by the LayaAirIDE,do not modify.*/
package MornUI.camp.avatar {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.camp.avatar.AvatarProItemUI;
	import MornUI.componets.SkillItemUI;

	public class HeroAvatarUpUI extends View {
		public var btnClose:Button;
		public var myIcon_0:Image;
		public var tfMyNum_0:Label;
		public var btnAdd_0:Button;
		public var basePro_0:AvatarProItemUI;
		public var basePro_1:AvatarProItemUI;
		public var pro:Sprite;
		public var cur_0:AvatarProItemUI;
		public var cur_1:AvatarProItemUI;
		public var cur_2:AvatarProItemUI;
		public var cur_3:AvatarProItemUI;
		public var curLv:Label;
		public var spNext:Sprite;
		public var next_0:AvatarProItemUI;
		public var next_1:AvatarProItemUI;
		public var next_2:AvatarProItemUI;
		public var next_3:AvatarProItemUI;
		public var nextLv:Label;
		public var skillSp:Sprite;
		public var skillItem:SkillItemUI;
		public var lbMax:Label;
		public var lvUp:Sprite;
		public var btnEnhance:Button;
		public var btnEnhance10:Button;
		public var itemIcon_0:Image;
		public var itemIcon_1:Image;
		public var tfNum_0:Label;
		public var tfNum_1:Label;
		public var breakthrough:Sprite;
		public var btnBreak:Button;
		public var breakIcon:Image;
		public var tfBreak:Label;
		public var tfRate:Label;
		public var myIcon_1:Image;
		public var tfMyNum_1:Label;
		public var btnAdd_1:Button;
		public var btnHelp:Button;
		public var spItem:Sprite;
		public var tfTip:Label;

		override protected function createChildren():void {
			View.regComponent("MornUI.camp.avatar.AvatarProItemUI",AvatarProItemUI);
			View.regComponent("MornUI.componets.SkillItemUI",SkillItemUI);
			super.createChildren();
			loadUI("camp/avatar/HeroAvatarUp");

		}

	}
}