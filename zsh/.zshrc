#!/bin/zsh

### オプション
setopt  ALWAYS_TO_END # 補完したら単語の終わりに飛ぶ
setopt  AUTO_RESUME  # 1文字でジョブを手前に持って来る
setopt  BANG_HIST  # !番号 でヒストリを手繰る
setopt  COMPLETE_IN_WORD  # 単語の中間でも補完
setopt  CSH_JUNKIE_HISTORY  # 常に最後のコマンドを参照できるように
setopt  EQUALS  # =<command> とすると<command>のパスが展開
setopt  EXTENDED_GLOB  # #~^ をメタキャラクタにする
setopt  FUNCTION_ARGZERO  # $0を関数、スクリプト名にする
setopt  GLOB_DOTS  # .で始まるファイルを*で扱う
setopt  HIST_IGNORE_ALL_DUPS  # ヒストリがダブったら古いのを消す
setopt  HIST_REDUCE_BLANKS  # ヒストリはスペース詰めて記録
setopt  HIST_IGNORE_SPACE  # 最初がスペースの文字列をヒストリに入れない
setopt  IGNORE_EOF  # avoid logout due to Ctrl-D
setopt  INTERACTIVE_COMMENTS  # シェル中にコメントを許す
setopt  LIST_PACKED  # 候補を密に表示
setopt  LONG_LIST_JOBS  # 長いフォーマットでジョブをリスト
setopt  MAGIC_EQUAL_SUBST  # 引数のa=bのbの部分を展開(~等)
setopt  NO_CLOBBER  # ファイルの上書きを禁止
setopt  NO_FLOW_CONTROL  # フローコントロールしない
setopt  NO_HUP  # ログアウト時にプロセスをHUPしない
setopt  NO_LIST_BEEP  # 補完の度にピーピー言わない
setopt  NOTIFY  # バックグラウンドジョブの状態を出力
setopt  NUMERIC_GLOB_SORT # ファイル名を数値順に展開
setopt  PRINT_EIGHT_BIT # 補完候補に日本語表示
setopt  PROMPT_SUBST  # プロンプトに変数などを利用可能に
setopt  PUSHD_IGNORE_DUPS  # 同じディレクトリをpushdしない
setopt  SHARE_HISTORY  # share history among zshs
setopt  SUN_KEYBOARD_HACK  # `が偶数個で最後に`が来た場合無視する
setopt  ZLE  # zshのラインエディタを使う
unsetopt BG_NICE  # バックグラウンドジョブにniceをかけない

### 色
export WORDCHARS='*?-[]~\!#%^(){}<>|`@#%^*()+:?'

### パラメタ
cdpath=(.. ~ )  # cd時のパスはhome
HISTSIZE=10000  # history buffer
SAVEHIST=10000  # history 保存数
HISTFILE=~/.zhistory  # ヒストリファイル

### キーバインド
bindkey -e
bindkey "^[@" set-mark-command
bindkey "^[a" beginning-of-line
bindkey "^[b" backward-char
bindkey "^[c" send-break
bindkey "^[d" delete-char-or-list
bindkey "^[e" end-of-line
bindkey "^[f" forward-char
bindkey "^[g" send-break
bindkey "^[h" backward-delete-char
bindkey "^[i" expand-or-complete
bindkey "^[j" accept-line
bindkey "^[k" kill-line
bindkey "^[l" clear-screen
bindkey "^[m" accept-line
bindkey "^[n" down-line-or-history
bindkey "^[o" accept-line-and-down-history
bindkey "^[p" up-line-or-history
bindkey "^[q" push-line
bindkey "^[r" history-incremental-search-backward
bindkey "^[s" history-incremental-search-forward
bindkey "^[t" transpose-chars
bindkey "^[u" kill-whole-line
bindkey "^[v" quoted-insert
bindkey "^[w" backward-kill-word
bindkey "^[x^[b" vi-match-bracket
bindkey "^[x^[f" vi-find-next-char
bindkey "^[x^[j" vi-join
bindkey "^[x^[k" kill-buffer
bindkey "^[x^[n" infer-next-history
bindkey "^[x^[o" overwrite-mode
bindkey "^[x^[u" undo
bindkey "^[x^[v" vi-cmd-mode
bindkey "^[x^[x" exchange-point-and-mark
bindkey "^[x*" expand-word
bindkey "^[x=" what-cursor-position
bindkey "^[xg" list-expand
bindkey "^[xr" history-incremental-search-backward
bindkey "^[xs" history-incremental-search-forward
bindkey "^[xu" undo
bindkey "^[y" yank
bindkey "^[^D" list-choices
bindkey "^[^G" send-break
bindkey "^[^H" backward-kill-word
bindkey "^[^I" self-insert-unmeta
bindkey "^[^J" self-insert-unmeta
bindkey "^[^L" clear-screen
bindkey "^[^M" self-insert-unmeta
bindkey "^[^_" copy-prev-word
bindkey "^[ " expand-history
bindkey "^[!" expand-history
bindkey "^[\"" quote-region
bindkey "^[\$" spell-word
bindkey "^['" quote-line
bindkey "^[-" neg-argument
bindkey "^[." insert-last-word
bindkey "^[0" digit-argument
bindkey "^[1" digit-argument
bindkey "^[2" digit-argument
bindkey "^[3" digit-argument
bindkey "^[4" digit-argument
bindkey "^[5" digit-argument
bindkey "^[6" digit-argument
bindkey "^[7" digit-argument
bindkey "^[8" digit-argument
bindkey "^[9" digit-argument
bindkey "^[<" beginning-of-buffer-or-history
bindkey "^[>" end-of-buffer-or-history
bindkey "^[?" which-command
bindkey "^A" accept-and-hold
bindkey "^B" backward-word
bindkey "^C" capitalize-word
bindkey "^D" kill-word
bindkey "^F" forward-word
bindkey "^G" get-line
bindkey "^H" run-help
bindkey "^L" down-case-word
bindkey "^N" history-search-forward
bindkey "^OA" up-line-or-history
bindkey "^OB" down-line-or-history
bindkey "^OC" forward-char
bindkey "^OD" backward-char
bindkey "^P" history-search-backward
bindkey "^Q" push-line
bindkey "^S" spell-word
bindkey "^T" transpose-words
bindkey "^U" up-case-word
bindkey "^W" copy-region-as-kill
bindkey "^[A" up-line-or-history
bindkey "^[B" down-line-or-history
bindkey "^[C" forward-char
bindkey "^[D" backward-char
bindkey "^_" insert-last-word
bindkey "^a" beginning-of-line
bindkey "^b" backward-word
bindkey "^c" capitalize-word
bindkey "^d" kill-word
bindkey "^f" forward-word
bindkey "^g" get-line
bindkey "^h" run-help
bindkey "^l" down-case-word
bindkey "^n" history-search-forward
bindkey "^p" history-search-backward
bindkey "^q" push-line
bindkey "^s" spell-word
bindkey "^t" transpose-words
bindkey "^u" up-case-word
bindkey "^w" copy-region-as-kill
bindkey "^x" execute-named-cmd
bindkey "^y" yank-pop
bindkey "^z" execute-last-named-cmd
bindkey "^|" vi-goto-column
bindkey "^^?" backward-kill-word
bindkey "^[/" undo
bindkey " "-"~" self-insert
bindkey "^?" backward-delete-char
bindkey "\M-^@"-"\M-^?" self-insert

### プロンプト
PROMPT="%E@%m x/ _ /x < "     # ゆのっち
# 入力が異なる場合
SPROMPT='Correct > '\''%r'\'' [Yes No Abort Edit] ? '

### エイリアス
# ディレクトリリスト
alias l='ls' ls='ls -F' la='ls -AF' ll='ls -Fl'
# 上書き時はプロンプト、オートコレクトをオフ
alias rm='\rm -i' mv='nocorrect \mv -i' cp='nocorrect \cp -i'
# ジョブ操作
alias f='finger' j='jobs'
for i in 1 2 3 4 5 6 7 8 9
do
  alias   $i="fg %$i"
done
alias x='exit'  # 終了
alias p='pushd' pp='popd'  # ディレクトリ移動
alias .='source' s='source'  # ソース
alias e='emacs'  # emacs起動
alias vi='vim'  # vim起動
alias screen='screen -xR'  # screenセッションが居る場合はアタッチ
alias tmux='tmux attach || tmux'  # tmuxセッションがある場合はアタッチ
alias nave='~/.nave/nave/nave.sh'  # nave (node.js)
# OS依存エイリアス
case "${OSTYPE}" in
darwin*)
  alias o='open'  # ファイルオープン
  ;;
linux*)
  alias o='gnome-open'  # ファイルオープン
  alias ssh='ssh -X'  # sshのX11 forwardingを有効に
  # メモリキャッシュをドロップ
  alias cm='sudo sysctl -w vm.drop_caches=3'
  ;;
windows*)
  alias o='start cmd /c'  # ファイルオープン
  ;;
esac

### 環境変数
export LANG=ja_JP.UTF-8  # UTF-8
export PAGER='lv'  # pagerはlv
unset LESSCHARSET  # lessの文字化け防止
# パス
export PATH=~/bin:~/opt/sbin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:${PATH}
export GIT_SSL_NO_VERIFY=1  # gitでSSLサーバ証明書検証しない
# ライブラリパス
export LD_LIBRARY_PATH=${LD_LIBRARY_DIR}:/usr/local/lib:/opt/local/lib
# OS依存環境変数
case "${OSTYPE}" in
linux*)
  export XIM=ibus
  export GTK_IM_MODULE=ibus
  export QT_IM_MODULE=xim
  export XMODIFIERS="@im=ibus"
  export XIM_PROGRAM=ibus-daemon
  export XIM_ARGS="-r --daemonize --xim"
  ;;
esac
