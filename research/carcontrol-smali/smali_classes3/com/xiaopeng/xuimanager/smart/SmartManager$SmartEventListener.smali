.class public interface abstract Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartEventListener;
.super Ljava/lang/Object;
.source "SmartManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/smart/SmartManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SmartEventListener"
.end annotation


# virtual methods
.method public abstract onErrorEvent(II)V
.end method

.method public abstract onLightEffectFinishEvent(II)V
.end method

.method public onLightEffectShowError(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onLightEffectShowFinishEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLightEffectShowStartEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLightEffectShowStopEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
