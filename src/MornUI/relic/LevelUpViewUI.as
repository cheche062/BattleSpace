/**Created by the LayaAirIDE,do not modify.*/
package MornUI.relic {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class LevelUpViewUI extends View {
		public var CloseBtn:Button;
		public var HeroBtn:Button;
		public var HeroText:Text;
		public var AllBtn:Button;
		public var AllText:Text;
		public var HarmorBtn:Button;
		public var HarmorText:Text;
		public var MediumArmorBtn:Button;
		public var MediumArmorText:Text;
		public var LarmorBtn:Button;
		public var LarmorText:Text;
		public var MorionBtn:Button;
		public var MorionText:Text;
		public var HeroList:List;
		public var ItemList:List;
		public var UpgradeBtn:Button;
		public var AtuoUpgradeBtn:Button;
		public var AddExpBar:Image;
		public var NowExpBar:Image;
		public var ExpText:Text;
		public var AddExpText:Text;
		public var TitleText:Text;
		public var MaxExpText:Text;
		public var NowLevelText:Text;
		public var BattleBtn:Button;
		public var GoToGetBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("relic/LevelUpView");

		}

	}
}