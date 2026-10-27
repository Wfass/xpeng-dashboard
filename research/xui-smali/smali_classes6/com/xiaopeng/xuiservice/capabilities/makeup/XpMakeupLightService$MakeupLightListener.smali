.class public interface abstract Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$MakeupLightListener;
.super Ljava/lang/Object;
.source "XpMakeupLightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MakeupLightListener"
.end annotation


# virtual methods
.method public abstract onAvailable(Z)V
.end method

.method public abstract onColorTemperature(Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;)V
.end method

.method public abstract onEffect(Ljava/lang/String;I)V
.end method

.method public abstract onLuminance(I)V
.end method
