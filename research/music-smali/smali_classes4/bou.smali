.class public Lbou;
.super Lbos;
.source "DuiMusicNode.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lbos;-><init>()V

    .line 50
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/PlayCommand;

    const-string v1, "command://music.control.play"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 51
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/SingleLoopCommand;

    const-string v1, "command://music.control.loop.single"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 52
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/ListLoopCommand;

    const-string v1, "command://music.control.loop.all"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 53
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/RandomLoopCommand;

    const-string v1, "command://music.control.random"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 54
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/SearchMusicCommand;

    const-string v1, "native://music.search"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 55
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/PauseCommand;

    const-string v1, "command://music.control.pause"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 56
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/ResumeCommand;

    const-string v1, "command://music.control.resume"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 57
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/PrevCommand;

    const-string v1, "command://music.control.prev"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 58
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/NextCommand;

    const-string v1, "command://music.control.next"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 59
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/StopCommand;

    const-string v1, "command://music.control.stop"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 60
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/PlayBtCommand;

    const-string v1, "command://music.control.bluetooth.play.random"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 61
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/CanChangePlayModeCommand;

    const-string v1, "native://music.playmode.support"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 62
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/PlayProgramCommand;

    const-string v1, "command://music.audiobook.play"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 63
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/MusicListPlayCommand;

    const-string v1, "command://music.list.play"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 64
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/CollectCommand;

    const-string v1, "command://music.control.collect"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 65
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/CollectCommand;

    const-string v1, "command://music.audiobook.subscribe"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 66
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/CancelCollectCommand;

    const-string v1, "command://music.control.collect.cancel"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 68
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/PlayCollectCommand;

    const-string v1, "command://music.control.collect.play"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 69
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/PlayHistroyCommand;

    const-string v1, "command://music.control.playlist.history.play"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 70
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/ForwardCommand;

    const-string v1, "command://music.forward"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 71
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/BackwardCommand;

    const-string v1, "command://music.backward"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 72
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/SetTimeCommand;

    const-string v1, "command://music.settime"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 73
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/SpeedUpCommand;

    const-string v1, "command://music.speed.up"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 74
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/SpeedDownCommand;

    const-string v1, "command://music.speed.down"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 75
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/SpeedSetCommand;

    const-string v1, "command://music.speed.set"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 76
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/PlayProgramNewsCommand;

    const-string v1, "command://music.news.play"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 77
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/PlayMusicDailyCommand;

    const-string v1, "command://music.dailyrec.play"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 78
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/PlayPersonalCommand;

    const-string v1, "command://fm.play.personality"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 79
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/PlayUsbCommand;

    const-string v1, "command://music.control.play.usb"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 80
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/PlayXmlyCommand;

    const-string v1, "command://xmly.control.play"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 81
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/PlayMusicHistoryCommand;

    const-string v1, "command://music.play.history"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 83
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/QQRankListCommand;

    const-string v1, "command://music.qq.ranklist.play"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 84
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/NeteaseRankListCommand;

    const-string v1, "command://music.netease.ranklist.play"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 86
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/PlayHistroyMusicCommand;

    const-string v1, "command://music.control.playlist.recent.play"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 87
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/PlayCollectMusicCommand;

    const-string v1, "command://music.control.playlist.collect.play"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 89
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/SwitchQQCommand;

    const-string v1, "command://music.switch.qq"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 90
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/SwitchNeteasecloudCommand;

    const-string v1, "command://music.switch.neteasecloud"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 91
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/SwitchKugouCommand;

    const-string v1, "command://music.switch.kugou"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 92
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/PlayMusicCommand;

    const-string v1, "command://music.play.specific.source"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 95
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/PlayListSelfCreate;

    const-string v1, "command://music.control.playlist.self.play"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 96
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/PlayQQGuessLike;

    const-string v1, "command://music.control.play.qq.guesslike"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 97
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/PlayNeteasePrivate;

    const-string v1, "command://music.control.play.netease.private"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 98
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/PlayDailyRec;

    const-string v1, "command://music.control.playlist.dailyrec.play"

    invoke-virtual {p0, v1, v0}, Lbou;->a(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method
