.class public interface abstract Lcom/xiaopeng/speech/protocol/node/media/MediaListener;
.super Ljava/lang/Object;
.source "MediaListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/INodeListener;


# virtual methods
.method public onBackward(I)V
    .locals 0
    .param p1, "second"    # I

    .line 93
    return-void
.end method

.method public onCancelCollect()V
    .locals 0

    .line 77
    return-void
.end method

.method public onCollect()V
    .locals 0

    .line 70
    return-void
.end method

.method public onForward(I)V
    .locals 0
    .param p1, "second"    # I

    .line 86
    return-void
.end method

.method public onNext()V
    .locals 0

    .line 53
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 25
    return-void
.end method

.method public onPlay(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .line 18
    return-void
.end method

.method public onPlayMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    .line 62
    return-void
.end method

.method public onPrev()V
    .locals 0

    .line 46
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 32
    return-void
.end method

.method public onSetTime(I)V
    .locals 0
    .param p1, "second"    # I

    .line 101
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 39
    return-void
.end method
