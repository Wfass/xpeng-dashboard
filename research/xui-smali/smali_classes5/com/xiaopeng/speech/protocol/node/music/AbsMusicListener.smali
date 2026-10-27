.class public abstract Lcom/xiaopeng/speech/protocol/node/music/AbsMusicListener;
.super Ljava/lang/Object;
.source "AbsMusicListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/music/MusicListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioBookPlay(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 105
    return-void
.end method

.method public onAudioBookSubscribe()V
    .locals 0

    .line 120
    return-void
.end method

.method public onCancelPlaySimilar()V
    .locals 0

    .line 165
    return-void
.end method

.method public onControlCollect()V
    .locals 0

    .line 55
    return-void
.end method

.method public onDelCollect()V
    .locals 0

    .line 145
    return-void
.end method

.method public onExit()V
    .locals 0

    .line 50
    return-void
.end method

.method public onMusicBackward(I)V
    .locals 0
    .param p1, "second"    # I

    .line 65
    return-void
.end method

.method public onMusicDailyrecPlay()V
    .locals 0

    .line 180
    return-void
.end method

.method public onMusicForward(I)V
    .locals 0
    .param p1, "second"    # I

    .line 60
    return-void
.end method

.method public onMusicListPlay(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 110
    return-void
.end method

.method public onMusicNewsPlay()V
    .locals 0

    .line 175
    return-void
.end method

.method public onMusicSettime(I)V
    .locals 0
    .param p1, "second"    # I

    .line 70
    return-void
.end method

.method public onMusicSpeedDown()V
    .locals 0

    .line 80
    return-void
.end method

.method public onMusicSpeedSet(F)V
    .locals 0
    .param p1, "speed"    # F

    .line 85
    return-void
.end method

.method public onMusicSpeedUp()V
    .locals 0

    .line 75
    return-void
.end method

.method public onNext()V
    .locals 0

    .line 40
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 25
    return-void
.end method

.method public onPlay()V
    .locals 0

    .line 15
    return-void
.end method

.method public onPlayBluetooth()V
    .locals 0

    .line 95
    return-void
.end method

.method public onPlayCollect()V
    .locals 0

    .line 150
    return-void
.end method

.method public onPlayCollect(Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;)V
    .locals 0
    .param p1, "collectHistoryMusic"    # Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;

    .line 155
    return-void
.end method

.method public onPlayHistoryList(Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;)V
    .locals 0
    .param p1, "collectHistoryMusic"    # Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;

    .line 170
    return-void
.end method

.method public onPlayMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    .line 90
    return-void
.end method

.method public onPlaySimilar()V
    .locals 0

    .line 160
    return-void
.end method

.method public onPlayUsb()V
    .locals 0

    .line 185
    return-void
.end method

.method public onPrev()V
    .locals 0

    .line 35
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 30
    return-void
.end method

.method public onSearch(Ljava/lang/String;Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "searchKeys"    # Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;

    .line 20
    return-void
.end method

.method public onSoundEffectLive()V
    .locals 0

    .line 130
    return-void
.end method

.method public onSoundEffectStereo()V
    .locals 0

    .line 125
    return-void
.end method

.method public onSoundEffectSuperbass()V
    .locals 0

    .line 140
    return-void
.end method

.method public onSoundEffectVocal()V
    .locals 0

    .line 135
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 45
    return-void
.end method

.method public onSupportPlayModeChange(Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;

    .line 100
    return-void
.end method

.method public onTwelveNovelPlay(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 115
    return-void
.end method
