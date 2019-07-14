(function($){
	$.lrc = {
		handle: null, /* 定时执行句柄 */
		list: [], /* lrc歌词及时间轴数组 */
		regex: /^((?:\s*\[\d+\:\d+(?:\.\d+)?\])+)\s*([^\n]*)\s*$/, /* 提取歌词内容行 */
		regex_time: /\[(\d+)\:(\d+)(?:\.(\d+))?\]/g, /* 提取歌词时间轴 */
		regex_trim: /^\s+|\s+$/, /* 过滤两边空格 */
		callback: null, /* 定时获取歌曲执行时间回调函数 */
		interval: 0.2, /* 定时刷新时间，单位：秒 */
		format: '<li>{html}</li>', /* 模板 */
		prefixid: 'lrc', /* 容器ID */
		hoverClass: 'hover', /* 选中节点的className */
		hoverTop: 100, /* 当前歌词距离父节点的高度 */
		__duration: -1, /* 当前歌曲进度时间 */
		/* 歌词开始自动匹配 */
		start: function(txt, callback) {
			if(typeof(txt) != 'string' || txt.length < 1 || typeof(callback) != 'function') return;
			/* 停止前面执行的歌曲 */
			this.stop();
			this.callback = callback;
			var item = null, item_time = null, html = '';
			/* 分析歌词的时间轴和内容 */
			txt = txt.split("\n");
			for(var i = 0; i < txt.length; i++) {
				item = txt[i].replace(this.regex_trim, '');
				if(item.length < 1 || !(item = this.regex.exec(item))) continue;
				while(item_time = this.regex_time.exec(item[1]))
					this.list.push([parseInt(item_time[1])*60+parseInt(item_time[2])+parseFloat('0.'+item_time[3]), item[2]]);
				this.regex_time.lastIndex = 0;
			}

			/* 有效歌词 */
			if(this.list.length > 0) {
				/* 对时间轴排序 */
				this.list.sort(function(a,b){ return a[0]-b[0]; });
				for(var i = 0; i < this.list.length; i++)
					html += this.format.replace(/\{html\}/gi, this.list[i][1]);
				this.list.push([this.list[this.list.length-1][0]+1]);

				/* 赋值到指定容器 */
				$('#'+this.prefixid+'_list').html(html).animate({ marginTop: 0 }, 100).show();
				/* 隐藏没有歌词的层 */
				$('#'+this.prefixid+'_nofound').hide();
				/* 定时调用回调函数，监听歌曲进度 */
				this.handle = setInterval('$.lrc.jump($.lrc.callback());', this.interval*1000);
			}else{ /* 没有歌词 */
				$('#'+this.prefixid+'_list').hide();
				$('#'+this.prefixid+'_nofound').show();
			}
		},
		/* 跳到指定时间的歌词 */
		jump: function(duration) {
			if(typeof(this.handle) != 'number' || typeof(duration) != 'number' || !$.isArray(this.list) || this.list.length < 1) return this.stop();

			if(duration < 0) duration = 0;
			if(this.__duration == duration) return;
			this.__duration = duration;
			duration += this.interval;

			var left = 0, right = this.list.length-1, last = right
				pivot = Math.floor(right/2),
				tmpobj = null, tmp = 0, thisobj = this;

			/* 二分查找 */
			while(left <= pivot && pivot <= right) {
				if(this.list[pivot][0] <= duration && (pivot == right || duration < this.list[pivot+1][0])) {
					tmpobj = $('#'+this.prefixid+'_list').children().removeClass(this.hoverClass).eq(pivot).addClass(thisobj.hoverClass);
					tmp = tmpobj.offset().top-tmpobj.parent().offset().top - this.hoverTop;
					if(tmp > 0) tmpobj.parent().animate({ marginTop: '-'+tmp }, 100);
					if(pivot == right) this.stop();
					break;
				}else if( this.list[pivot][0] > duration ) { /* left */
					right = pivot;
				}else{ /* right */
					left = pivot;
				}
				tmp = left + Math.floor((right - left)/2);
				if(tmp == pivot) break;
				pivot = tmp;
			}
			if(this.list[this.list.length-2][0] < duration) return this.stop();
		},
		/* 停止执行歌曲 */
		stop: function() {
			if(typeof(this.handle) == 'number') clearInterval(this.handle);
			this.handle = this.callback = null;
			this.__duration = -1;
			this.regex_time.lastIndex = 0;
			this.list = [];
		}
	};
})(jQuery);