.class public interface abstract Lcom/xiaopeng/carcontrol/CapsuleMusicService$CapsuleMusicListener;
.super Ljava/lang/Object;
.source "CapsuleMusicService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/CapsuleMusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CapsuleMusicListener"
.end annotation


# virtual methods
.method public onCompletion()V
    .locals 0

    return-void
.end method

.method public onPauseMusic()V
    .locals 0

    return-void
.end method

.method public onStartMusic()V
    .locals 0

    return-void
.end method

.method public abstract pauseByLossAudioFocus()V
.end method

.method public abstract resumeByGainAudioFocus()V
.end method

.method public abstract showAlarmDialog()V
.end method
