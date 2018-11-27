/**Created by the LayaAirIDE,do not modify.*/
package MornUI.equip {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;
	import MornUI.equip.EquipPlayerInfoUI;
	import MornUI.equip.ResolveInfoViewUI;
	import MornUI.equip.ResolveBagViewUI;
	import MornUI.equip.WashBagViewUI;
	import MornUI.equip.EquipStrongViewUI;
	import MornUI.equip.EquipSelectQualityViewUI;
	import MornUI.equip.ResolveRewardViewUI;

	public class EquipMainViewUI extends View {
		public var BgImage:Image;
		public var EquipMentFBBtn:Button;
		public var TitleText:Text;
		public var EquipBox:Box;
		public var HeroList:List;
		public var ItemList:List;
		public var PlayerInfoBox:EquipPlayerInfoUI;
		public var ResolveInfo:ResolveInfoViewUI;
		public var ResolveBag:ResolveBagViewUI;
		public var WashEquipBox:WashBagViewUI;
		public var WashBox:EquipStrongViewUI;
		public var CloseBtn:Button;
		public var BattleBtn:Button;
		public var ReturnImage:Image;
		public var BtnBox:Box;
		public var StrengBtn:Button;
		public var WashBtn:Button;
		public var RefreshBtn:Button;
		public var EquipSelectQuality:EquipSelectQualityViewUI;
		public var ResolveReward:ResolveRewardViewUI;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			View.regComponent("MornUI.equip.EquipPlayerInfoUI",EquipPlayerInfoUI);
			View.regComponent("MornUI.equip.ResolveInfoViewUI",ResolveInfoViewUI);
			View.regComponent("MornUI.equip.ResolveBagViewUI",ResolveBagViewUI);
			View.regComponent("MornUI.equip.WashBagViewUI",WashBagViewUI);
			View.regComponent("MornUI.equip.EquipStrongViewUI",EquipStrongViewUI);
			View.regComponent("MornUI.equip.EquipSelectQualityViewUI",EquipSelectQualityViewUI);
			View.regComponent("MornUI.equip.ResolveRewardViewUI",ResolveRewardViewUI);
			super.createChildren();
			loadUI("equip/EquipMainView");

		}

	}
}