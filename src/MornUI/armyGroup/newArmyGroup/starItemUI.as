/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup.newArmyGroup {
	import laya.ui.*;
	import laya.display.*; 
	

	public class starItemUI extends View {
		public var dom_protect:Image;
		public var dom_star_bg:Image;
		public var dom_title_bg:Image;
		public var dom_title:Label;
		public var dom_time:Label;
		public var dom_guide_name:Label;
		public var dom_atk_guild_icon:Image;
		public var dom_info_box:Box;
		public var dom_star_name:Label;
		public var dom_guild_icon:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("armyGroup/newArmyGroup/starItem");

		}

	}
}