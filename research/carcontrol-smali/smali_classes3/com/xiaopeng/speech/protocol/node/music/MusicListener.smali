.class public interface abstract Lcom/xiaopeng/speech/protocol/node/music/MusicListener;
.super Ljava/lang/Object;
.source "MusicListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/INodeListener;


# virtual methods
.method public abstract onAudioBookPlay(Ljava/lang/String;)V
.end method

.method public abstract onAudioBookSubscribe()V
.end method

.method public abstract onCancelPlaySimilar()V
.end method

.method public abstract onControlCollect()V
.end method

.method public abstract onDelCollect()V
.end method

.method public abstract onExit()V
.end method

.method public abstract onMusicBackward(I)V
.end method

.method public abstract onMusicDailyrecPlay()V
.end method

.method public abstract onMusicForward(I)V
.end method

.method public abstract onMusicListPlay(Ljava/lang/String;)V
.end method

.method public abstract onMusicNewsPlay()V
.end method

.method public abstract onMusicSettime(I)V
.end method

.method public abstract onMusicSpeedDown()V
.end method

.method public abstract onMusicSpeedSet(F)V
.end method

.method public abstract onMusicSpeedUp()V
.end method

.method public abstract onNext()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onPlay()V
.end method

.method public abstract onPlayBluetooth()V
.end method

.method public abstract onPlayCollect()V
.end method

.method public abstract onPlayCollect(Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;)V
.end method

.method public abstract onPlayHistoryList(Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;)V
.end method

.method public onPlayLoopClose()V
    .locals 0

    return-void
.end method

.method public abstract onPlayMode(Ljava/lang/String;)V
.end method

.method public onPlayRandomClose()V
    .locals 0

    return-void
.end method

.method public abstract onPlaySimilar()V
.end method

.method public onPlaySpotify()V
    .locals 0

    return-void
.end method

.method public abstract onPlayUsb()V
.end method

.method public abstract onPrev()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onSearch(Ljava/lang/String;Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;)V
.end method

.method public abstract onSoundEffectLive()V
.end method

.method public abstract onSoundEffectStereo()V
.end method

.method public abstract onSoundEffectSuperbass()V
.end method

.method public abstract onSoundEffectVocal()V
.end method

.method public abstract onStop()V
.end method

.method public abstract onSupportPlayModeChange(Ljava/lang/String;)V
.end method

.method public abstract onTwelveNovelPlay(Ljava/lang/String;)V
.end method
