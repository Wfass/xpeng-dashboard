.class public interface abstract Lcom/xiaopeng/xuiservice/smart/SmartHalService$SmartHalListener;
.super Ljava/lang/Object;
.source "SmartHalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartHalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SmartHalListener"
.end annotation


# virtual methods
.method public abstract onError(II)V
.end method

.method public abstract onLightEffectFinishEvent(II)V
.end method

.method public abstract onLightEffectShowError(Ljava/lang/String;I)V
.end method

.method public abstract onLightEffectShowFinishEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onLightEffectShowStartEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onLightEffectShowStopEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method
