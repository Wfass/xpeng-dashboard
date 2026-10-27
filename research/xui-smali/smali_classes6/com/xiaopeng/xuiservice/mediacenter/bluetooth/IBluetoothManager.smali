.class public interface abstract Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;
.super Ljava/lang/Object;
.source "IBluetoothManager.java"


# virtual methods
.method public abstract getA2dpConnectState(Ljava/lang/String;)I
.end method

.method public abstract getA2dpConnectedAddress()Ljava/lang/String;
.end method

.method public abstract getHfpConnectState(Ljava/lang/String;)I
.end method

.method public abstract getHfpConnectedAddress()Ljava/lang/String;
.end method

.method public abstract getMeteData()Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;
.end method

.method public abstract getPlayState()I
.end method

.method public abstract getPosition()[J
.end method

.method public abstract isA2dpConnected(Ljava/lang/String;)Z
.end method

.method public abstract isHfpConnected(Ljava/lang/String;)Z
.end method

.method public abstract next()V
.end method

.method public abstract pause()V
.end method

.method public abstract pauseRender()Z
.end method

.method public abstract play()V
.end method

.method public abstract previous()V
.end method

.method public abstract registerCallback(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;)V
.end method

.method public abstract requestA2dpConnect(Ljava/lang/String;)V
.end method

.method public abstract requestA2dpDisconnect(Ljava/lang/String;)V
.end method

.method public abstract setLocalVolume(F)V
.end method

.method public abstract startRender()Z
.end method

.method public abstract unregisterCallback(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;)V
.end method
