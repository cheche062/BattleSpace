package game.module.pvp.views.ui
{
	import MornUI.pvpFight.pvpRankCellUI;
	
	import game.global.GlobalRoleDataManger;
	import game.global.StringUtil;
	import game.global.vo.PvpLevelVo;
	import game.module.pvp.views.PvpManager;
	import game.module.pvp.model.PvpProxy;
	
	import laya.ui.Box;
	
	import mvc.Facade;
	
	public class PvpRankCell extends pvpRankCellUI
	{
		protected var _data:Object;
		private var _model:PvpProxy;
		
		public function PvpRankCell()
		{
			super();
		}
		
		public override function set dataSource(value:*):void{
			super.dataSource = _data = value;
			var ct:Number = cellType;
			this.rankLbl.color = this.scoreLbl.color = this.roleNameT.color = ct == 1 ? "#add3ff":"#adffad";
			this.bgImg.skin = ct == 1 ? "pvpRank/bg16.png" : "pvpRank/bg16_1.png";
			var jg:Number;
			var pBox:Box;
			
			_model = Facade.getInstance().retrieveProxy("PvpProxy") as PvpProxy;
			var obj:Object;
			var arr:Array;
			if(_data)
			{
				obj = _model.getRankRewardData(_data.rank);
				
				if( obj )
				{
					if( obj.reward.indexOf("|") != -1 )
					{
						arr = obj.reward.split("|");
					}
					else
					{
						arr = [];
						arr.push(obj.reward);
					}
					this.rewardList.array = arr;
				}
				else
				{
					this.rewardList.array = [null];
				}
				
				this.rankLbl.text = StringUtil.substitute("{0}",_data.rank);
				this.roleNameT.text = _data.name;
				this.levelLbl.text = _data.level;
				var vo:PvpLevelVo = PvpManager.intance.getPvpLevelByIntegral(
					Number(_data.integral)
				);
				this.scoreLbl.text = _data.integral;
//				this.currentLbl.text = _data.integral;
				this.levelBg.visible = true;
//				this.roleNameT.x = this.levelBg.x  + this.levelBg.width + jg;
				
				jg = 5;
				pBox = this.levelBg.parent as Box;
			}else
			{
				this.rankLbl.text = "--";
				this.roleNameT.text = "--";
				this.scoreLbl.text = "--";
//				this.currentLbl.text = "--";
				this.levelBg.visible = false;
				this.rewardList.array = [null];
				jg = 5;
				pBox = this.levelBg.parent as Box;
//				this.nameLbl.x = (pBox.width -  this.nameLbl.textField.textWidth) / 2;
			}
			
//			pBox = this.currentLbl.parent as Box;
//			this.currentLbl.x = (pBox.width -  this.currentLbl.textField.textWidth) / 2;
		}
		
		protected function get cellType():Number{
			if(!_data)return 1;
			return String(_data.uid) == String(GlobalRoleDataManger.instance.userid) ? 2:1;
		}
		
		public override function destroy(destroyChild:Boolean=true):void{
			trace(1,"destroy PvpRankCell");
			
			_data = null;
			_model = null;
			
			super.destroy(destroyChild);
		}
	}
}