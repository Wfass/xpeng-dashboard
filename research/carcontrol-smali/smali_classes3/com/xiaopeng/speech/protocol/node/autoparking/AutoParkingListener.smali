.class public interface abstract Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingListener;
.super Ljava/lang/Object;
.source "AutoParkingListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/INodeListener;


# virtual methods
.method public abstract onActivate()V
.end method

.method public abstract onExit()V
.end method

.method public onMemoryParkingStart()V
    .locals 0

    return-void
.end method

.method public abstract onParkCarportCount(Lcom/xiaopeng/speech/protocol/node/autoparking/bean/ParkingPositionBean;)V
.end method

.method public abstract onParkStart()V
.end method

.method public onParkStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUnmannedParkingStart()V
    .locals 0

    return-void
.end method
