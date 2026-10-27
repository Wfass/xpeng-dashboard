.class public Lcom/xiaopeng/speech/protocol/query/music/MusicQuery_Processor;
.super Ljava/lang/Object;
.source "MusicQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;

    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 27

    const-string v0, "music.info.query"

    const-string v1, "music.info.query.title"

    const-string v2, "music.info.query.artist"

    const-string v3, "music.info.query.album"

    const-string v4, "music.playtype"

    const-string v5, "music.is.playing"

    const-string v6, "music.has.bluetooth.musiclist"

    const-string v7, "music.is.history.empty"

    const-string v8, "music.is.play.similar"

    const-string v9, "music.is.collect.empty"

    const-string v10, "music.is.can.collected"

    const-string v11, "music.is.bt.connected"

    const-string v12, "music.is.kugou.authed"

    const-string v13, "music.get.usb.state"

    const-string v14, "music.account.login"

    const-string v15, "music.quality.page.open"

    const-string/jumbo v16, "ximalaya.account.login"

    const-string v17, "music.is.play.collect"

    const-string v18, "music.is.play.history"

    const-string v19, "music.search.result"

    const-string v20, "music.is.podcast"

    const-string v21, "music.support.bt.play"

    const-string v22, "music.support.spotify.play"

    const-string v23, "music.get.speed"

    const-string v24, "music.support.speed"

    const-string v25, "music.support.radio.play"

    const-string v26, "music.support.settime"

    .line 76
    filled-new-array/range {v0 .. v26}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public querySensor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "music.has.bluetooth.musiclist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "music.is.playing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "music.quality.page.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "music.info.query.title"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "music.info.query.album"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "music.info.query.artist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "music.is.bt.connected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "music.playtype"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "music.get.speed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "music.is.play.similar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v0, "ximalaya.account.login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "music.account.login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "music.support.speed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "music.is.history.empty"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "music.support.settime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "music.is.can.collected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "music.support.radio.play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "music.get.usb.state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "music.is.play.collect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "music.is.play.history"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_0

    :cond_13
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_14
    const-string v0, "music.is.collect.empty"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_0

    :cond_14
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_15
    const-string v0, "music.search.result"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_16
    const-string v0, "music.info.query"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_0

    :cond_16
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_17
    const-string v0, "music.support.spotify.play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_0

    :cond_17
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_18
    const-string v0, "music.is.kugou.authed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_19
    const-string v0, "music.is.podcast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_0

    :cond_19
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1a
    const-string v0, "music.support.bt.play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 29
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->hasBluetoothMusicList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->isPlaying(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 47
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->isQualityPageOpend(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->getInfoTite(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->getInfoAlbum(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->getInfoArtist(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 39
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->isBtConnected(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->getPlayType(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 63
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->getPlaySpeed(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 33
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->isPlaySimilar(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 49
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->isXimalayaAccountLogin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 45
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->isMusicAccountLogin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 65
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->isSupportSpeed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->isHistoryEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 69
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->isSupportSettime(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 37
    :pswitch_f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->isCanCollected(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 67
    :pswitch_10
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->isSupportRadioPlay(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 43
    :pswitch_11
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->getUsbState(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 51
    :pswitch_12
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->isPlayCollect(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 53
    :pswitch_13
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->isPlayHistory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_14
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->isCollectListEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 55
    :pswitch_15
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->getSearchResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_16
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->getPlayInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 61
    :pswitch_17
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->isSupportSpotifyPlay(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 41
    :pswitch_18
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->isKuGouAuthed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 57
    :pswitch_19
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->isPlayPodcast(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 59
    :pswitch_1a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/music/MusicQuery;->isSupportBtPlay(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f813198 -> :sswitch_1a
        -0x7f4bd257 -> :sswitch_19
        -0x5d030dd3 -> :sswitch_18
        -0x4f6d0230 -> :sswitch_17
        -0x4e71f90f -> :sswitch_16
        -0x4c0520e6 -> :sswitch_15
        -0x2990d992 -> :sswitch_14
        -0x2760bfab -> :sswitch_13
        -0x26094315 -> :sswitch_12
        -0x21b588fa -> :sswitch_11
        -0x1e6634d1 -> :sswitch_10
        -0x1cac8a70 -> :sswitch_f
        -0x11f3beb9 -> :sswitch_e
        -0x11420da8 -> :sswitch_d
        0x598195f -> :sswitch_c
        0xbb0545f -> :sswitch_b
        0x115cac7c -> :sswitch_a
        0x1e2a31ac -> :sswitch_9
        0x33dfbb26 -> :sswitch_8
        0x40a87e17 -> :sswitch_7
        0x50d7c8e8 -> :sswitch_6
        0x521bfce4 -> :sswitch_5
        0x5537b932 -> :sswitch_4
        0x56425d1b -> :sswitch_3
        0x67499091 -> :sswitch_2
        0x7b757ad3 -> :sswitch_1
        0x7fec9ae6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
