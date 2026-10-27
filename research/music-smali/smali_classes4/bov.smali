.class public Lbov;
.super Ljava/lang/Object;
.source "DuiMusicQuery.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lboz;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbov;->a:Ljava/util/Map;

    .line 51
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryPlayingInfoCommand;

    const-string v1, "music.info.query"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 52
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryPlayingTitleCommand;

    const-string v1, "music.info.query.title"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 53
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryPlayingArtistCommand;

    const-string v1, "music.info.query.artist"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 54
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryPlayingAlbumCommand;

    const-string v1, "music.info.query.album"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 55
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryPlayingTypeCommand;

    const-string v1, "music.playtype"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 56
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryPlayingCommand;

    const-string v1, "music.is.playing"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 57
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryHasBtListCommand;

    const-string v1, "music.has.bluetooth.musiclist"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 59
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryHistoryEmptyCommand;

    const-string v1, "music.is.history.empty"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 60
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryCollectEmptyCommand;

    const-string v1, "music.is.collect.empty"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 61
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryCanCollectCommand;

    const-string v1, "music.is.can.collected"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 62
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryBtConnectCommand;

    const-string v1, "music.is.bt.connected"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 63
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryAuthCommand;

    const-string v1, "music.is.kugou.authed"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 64
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryCanRandomCommand;

    const-string v1, "music.is.can.random"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 65
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryUsbStateCommand;

    const-string v1, "music.get.usb.state"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 66
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryLoginCommand;

    const-string v1, "music.account.login"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 67
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryHasQualityCommand;

    const-string v1, "music.quality.page.open"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 68
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryXimalayaLoginCommand;

    const-string v1, "ximalaya.account.login"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 70
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryPlayModeCommand;

    const-string v1, "music.playmode.support"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 71
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QuerySupportDolbyCommand;

    const-string v1, "is.support.dolbymusic"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 72
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryNeteaseDownload;

    const-string v1, "music.is.netease.download"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 73
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryNeteaseState;

    const-string v1, "music.get.source.state"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 74
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryNeteaseLogin;

    const-string v1, "music.netease.account.login"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 75
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryQQLogin;

    const-string v1, "music.qq.account.login"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 76
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryNeteaseCockpitInstall;

    const-string v1, "music.support.cockpit"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 78
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryMusicPlayCacheCommand;

    const-string v1, "music.play.cache"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 79
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryMusicHistoryCacheCommand;

    const-string v1, "music.history.cache"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 80
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryPageSupport;

    const-string v1, "gui.page.support.musicradio"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 81
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryPageSupport;

    const-string v1, "unity.page.support.musicradio"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 83
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryMusicLogin;

    const-string v1, "music.specific.source.account.login"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 84
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryPageOpenState;

    const-string v1, "gui.page.open.state.musicradio"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 85
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/OpenPageCommand;

    const-string v1, "gui.page.open.musicradio"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 86
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/ClosePageCommand;

    const-string v1, "gui.page.close.musicradio"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 88
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryCurrentSource;

    const-string v1, "music.get.source.name"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 89
    const-class v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryCurrentPlayingSource;

    const-string v1, "music.get.playing.source.name"

    invoke-virtual {p0, v1, v0}, Lbov;->a(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lboz;",
            ">;)V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lbov;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 98
    iget-object v0, p0, Lbov;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lbov;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const/4 v1, 0x3

    .line 101
    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    aput-object p3, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lboz;

    .line 102
    invoke-virtual {p1}, Lboz;->onEvent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "DuiMusicQuery"

    const-string p3, "onEvent: "

    .line 104
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
