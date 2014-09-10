" 高亮显示当前行
"set cursorline

" GUI中不显示滚动条
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
set guioptions-=b

" Gui 不显示菜单
set guioptions-=m

" Gui不显示工具栏
set guioptions-=T

" 启用鼠标
set mouse=a

" 设置颜色
colorscheme Tomorrow-Night-Eighties
"autocmd! BufEnter,BufNewFile *.go colo last-night-bright "yesterday在这里是一个可备选的主题
"autocmd! BufLeave *.go colo Tomorrow-Night-Bright

" Gui字体
if has("mac")
	set guifont=Monaco:h14
	"set guifont=Menlo:h14
	"set guifont=Source\ Code\ Pro:h14
	"set guifont=Inconsolata-g:h14
	"set guifont=Inconsolata:h16
	"set guifont=PT\ Mono:h16
else
	set guifont=Monospace\ 10
endif
