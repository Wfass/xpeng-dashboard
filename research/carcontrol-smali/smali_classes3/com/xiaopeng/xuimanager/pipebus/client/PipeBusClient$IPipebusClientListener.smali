.class public interface abstract Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;
.super Ljava/lang/Object;
.source "PipeBusClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPipebusClientListener"
.end annotation


# virtual methods
.method public onBusStatusChanged(I)V
    .locals 0

    return-void
.end method

.method public abstract onPipeBusEvent(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract onPipeBusParcelEvent(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)V
.end method
