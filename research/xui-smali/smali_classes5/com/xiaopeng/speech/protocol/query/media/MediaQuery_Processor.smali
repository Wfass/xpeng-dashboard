.class public Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;
.super Ljava/lang/Object;
.source "MediaQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;)V
    .locals 0
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    .line 12
    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 34

    .line 90
    const-string v0, "media.info.query"

    const-string v1, "media.control.play"

    const-string v2, "media.control.pause"

    const-string v3, "media.control.resume"

    const-string v4, "media.control.stop"

    const-string v5, "media.control.close"

    const-string v6, "media.control.prev"

    const-string v7, "media.control.next"

    const-string v8, "media.control.mode"

    const-string v9, "media.control.collect"

    const-string v10, "media.control.collect.cancel"

    const-string v11, "media.forward"

    const-string v12, "media.backward"

    const-string v13, "media.settime"

    const-string v14, "media.speed.up"

    const-string v15, "media.speed.down"

    const-string v16, "media.speed.set"

    const-string v17, "media.music.list.play"

    const-string v18, "media.audiobook.list.play"

    const-string v19, "media.music.control.play"

    const-string v20, "media.xmly.control.play"

    const-string v21, "media.fm.local.on"

    const-string v22, "media.music.news.play"

    const-string v23, "media.music.dailyrec.play"

    const-string v24, "media.fm.play.personality"

    const-string v25, "media.music.control.bluetooth.play.random"

    const-string v26, "media.music.control.play.usb"

    const-string v27, "media.music.control.collect.play"

    const-string v28, "media.music.control.playlist.history.play"

    const-string v29, "media.control.mode.close"

    const-string v30, "media.music.playtype"

    const-string v31, "media.music.is.playing"

    const-string v32, "media.music.is.installed"

    const-string v33, "media.music.play.specific.source"

    filled-new-array/range {v0 .. v33}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public querySensor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "media.speed.down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "media.music.control.play.usb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "media.music.play.specific.source"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "media.fm.local.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "media.settime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "media.music.news.play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "media.control.collect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "media.audiobook.list.play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "media.speed.up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "media.backward"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "media.control.resume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "media.music.is.installed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "media.music.dailyrec.play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "media.xmly.control.play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "media.music.control.collect.play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "media.info.query"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "media.music.list.play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "media.control.pause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "media.control.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "media.control.collect.cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "media.control.mode.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "media.forward"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "media.speed.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "media.music.control.bluetooth.play.random"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "media.fm.play.personality"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto :goto_1

    :sswitch_19
    const-string v0, "media.music.control.play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_1

    :sswitch_1a
    const-string v0, "media.music.is.playing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto :goto_1

    :sswitch_1b
    const-string v0, "media.control.stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1c
    const-string v0, "media.control.prev"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_1d
    const-string v0, "media.control.play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1e
    const-string v0, "media.control.next"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_1f
    const-string v0, "media.control.mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_20
    const-string v0, "media.music.control.playlist.history.play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto :goto_1

    :sswitch_21
    const-string v0, "media.music.playtype"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 83
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mediaSpecificSourcePlay(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 81
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mediaMusicIsInstalled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 79
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mediaMusicIsPlaying(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 77
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mediaMusicPlayType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 75
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->playModeClose(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 73
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mediaHistoryListPlay(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 71
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mediaCollectPlay(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 69
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mediaUsbPlay(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 67
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mediaBluetoothPlay(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 65
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mediaMusicPersonalityPlay(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 63
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mediaMusicDailyrecPlay(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 61
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mediaMusicNewsPlay(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 59
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mediaFmLocalOn(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 57
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mediaAudioBookPlay(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 55
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mediaMusicPlay(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 53
    :pswitch_f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mediaAudioBookListPlay(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 51
    :pswitch_10
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->mediaListPlay(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 49
    :pswitch_11
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->speedSet(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 47
    :pswitch_12
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->speedDown(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 45
    :pswitch_13
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->speedUp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 43
    :pswitch_14
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->setTime(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 41
    :pswitch_15
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->backward(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 39
    :pswitch_16
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->forward(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 37
    :pswitch_17
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->cancelCollect(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 35
    :pswitch_18
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->collect(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 33
    :pswitch_19
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->playMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 31
    :pswitch_1a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->next(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 29
    :pswitch_1b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->prev(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 27
    :pswitch_1c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->close(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 25
    :pswitch_1d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->stop(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 23
    :pswitch_1e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->resume(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 21
    :pswitch_1f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->pause(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 19
    :pswitch_20
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->play(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 17
    :pswitch_21
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;->getMediaInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7edc1e9f -> :sswitch_21
        -0x7a1935fa -> :sswitch_20
        -0x75c272a2 -> :sswitch_1f
        -0x75c22152 -> :sswitch_1e
        -0x75c12111 -> :sswitch_1d
        -0x75c10a12 -> :sswitch_1c
        -0x75bfa443 -> :sswitch_1b
        -0x755acc63 -> :sswitch_1a
        -0x6db6ff68 -> :sswitch_19
        -0x6908e80f -> :sswitch_18
        -0x6625df67 -> :sswitch_17
        -0x60259f4f -> :sswitch_16
        -0x5da31145 -> :sswitch_15
        -0x4831a698 -> :sswitch_14
        -0x451f2a47 -> :sswitch_13
        -0x4319fe63 -> :sswitch_12
        -0x4267b665 -> :sswitch_11
        -0x39939c0f -> :sswitch_10
        -0x378ab82e -> :sswitch_f
        -0x322fa124 -> :sswitch_e
        -0x2bfd9b39 -> :sswitch_d
        -0x27184628 -> :sswitch_c
        -0x18bf84d7 -> :sswitch_b
        -0x6ede6d8 -> :sswitch_a
        0xaeceead -> :sswitch_9
        0xd6a246c -> :sswitch_8
        0x10dace0b -> :sswitch_7
        0x205d2f8f -> :sswitch_6
        0x2154a2dc -> :sswitch_5
        0x41186a25 -> :sswitch_4
        0x4219e57f -> :sswitch_3
        0x4cd0f610 -> :sswitch_2
        0x4e3da32e -> :sswitch_1
        0x5b6b0a33 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
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
