.class public interface abstract Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection$ConnectionCallback;
.super Ljava/lang/Object;
.source "GattConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectionCallback"
.end annotation


# virtual methods
.method public abstract onConnectionStateChange(ILcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;I)V
.end method

.method public abstract onMtuChanged(ILcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;)V
.end method

.method public abstract onNotify([BLjava/util/UUID;Ljava/util/UUID;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;)V
.end method
