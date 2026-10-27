.class public interface abstract Lcom/xiaopeng/xuiservice/smart/SmartLluService$SmartLluServiceListener;
.super Ljava/lang/Object;
.source "SmartLluService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartLluService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SmartLluServiceListener"
.end annotation


# virtual methods
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
