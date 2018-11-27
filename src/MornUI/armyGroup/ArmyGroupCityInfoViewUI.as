/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ArmyGroupCityInfoViewUI extends View {
		public var bbgg:Image;
		public var StarImage:Image;
		public var CloseBtn:Button;
		public var InfoBtn:Button;
		public var CityName:Text;
		public var dom_belong_sprite:Sprite;
		public var dom_guildLogo:Image;
		public var guideName:Text;
		public var bossBRTxt:Text;
		public var dom_progress:ProgressBar;
		public var dom_remain:Text;
		public var rewardTime_1:Text;
		public var rewardTime_2:Text;
		public var rewardTime_3:Text;
		public var rewardTime_4:Text;
		public var dom_rewardsBox:HBox;
		public var boxReward:Box;
		public var DefindInfoBtn:Button;
		public var dom_viewstack:ViewStack;
		public var declarGNameTxt:Text;
		public var dom_guild_icon:Image;
		public var dom_guild_name:Text;
		public var dom_protect_time:Text;
		public var dom_bottom_box:Box;
		public var btn_declare:Button;
		public var ItemImage:Image;
		public var declarPriceTxt:Label;
		public var btn_zhaoji:Button;
		public var dom_zj_icon:Image;
		public var dom_zj_num:Label;
		public var btn_protect:Button;
		public var dom_protect_icon:Image;
		public var dom_protect_num:Label;
		public var btn_enter:Button;
		public var btn_giveup:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("armyGroup/ArmyGroupCityInfoView");

		}

	}
}