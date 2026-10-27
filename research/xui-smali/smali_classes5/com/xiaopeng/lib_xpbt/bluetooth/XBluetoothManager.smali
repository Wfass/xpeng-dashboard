.class public interface abstract Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManager;
.super Ljava/lang/Object;
.source "XBluetoothManager.java"


# virtual methods
.method public abstract connect(Ljava/lang/String;)Z
.end method

.method public abstract disconnect(Ljava/lang/String;)Z
.end method

.method public abstract getBondState(Ljava/lang/String;)I
.end method

.method public abstract getBtLocalName()Ljava/lang/String;
.end method

.method public abstract getConnectedAddress()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConnectionState(Ljava/lang/String;)I
.end method

.method public abstract getPairedDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib_xpbt/XpBtDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isBtDiscoverable()Z
.end method

.method public abstract isDiscovering()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract reqBtPair(Ljava/lang/String;)Z
.end method

.method public abstract reqUnpair(Ljava/lang/String;)Z
.end method

.method public abstract setBtDiscoverable(Z)Z
.end method

.method public abstract setBtLocalName(Ljava/lang/String;)Z
.end method

.method public abstract setEnable(Z)Z
.end method

.method public abstract startDiscovery()Z
.end method

.method public abstract stopDiscovery()Z
.end method
