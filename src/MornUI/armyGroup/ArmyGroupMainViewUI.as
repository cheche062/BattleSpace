/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.html.dom.HTMLDivElement;
	import laya.display.Text;

	public class ArmyGroupMainViewUI extends View {
		public var CloseBtn:Button;
		public var chatBtn:Button;
		public var topCenterArea:Box;
		public var ChargeBtn:Button;
		public var goldText:Label;
		public var armyFood:Label;
		public var WaterText:Label;
		public var GuidMoneyText:Label;
		public var GoodImage:Image;
		public var ArmyGroupFood:Image;
		public var WaterImage:Image;
		public var GuildImage:Image;
		public var seasonTimeTxt:HTMLDivElement;
		public var getRewardArea:Box;
		public var getReBtn:Button;
		public var timeDetailBtn:Button;
		public var timeArea:Box;
		public var ftTxt:HTMLDivElement;
		public var jsTxt:HTMLDivElement;
		public var ljTxt:HTMLDivElement;
		public var lbTimeStr:Label;
		public var lbTimeNum:Label;
		public var helpBtn:Button;
		public var timeBox:Box;
		public var lastTimeTxt:Text;
		public var dom_btns_box:Box;
		public var fightLogbtn:Button;
		public var btn_boss:Button;
		public var lb_boss_time:Label;
		public var btn_war:Button;
		public var btn_focus:Button;
		public var bottomRightArea:Box;
		public var btn_shop:Button;
		public var CityBtn:Button;
		public var MissionBtn:Button;
		public var MilitaryRankBtn:Button;
		public var RankBtn:Button;
		public var npcInfoBtn:Button;
		public var im:Image;
		public var ir:Image;
		public var iRe:Image;
		public var ic:Image;
		public var rt0:Image;
		public var rt1:Image;
		public var rt2:Image;
		public var rt3:Image;
		public var rt4:Image;

		override protected function createChildren():void {
			View.regComponent("HTMLDivElement",HTMLDivElement);
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("armyGroup/ArmyGroupMainView");

		}

	}
}