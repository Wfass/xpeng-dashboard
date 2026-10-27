.class public interface abstract Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$GattOtaCallback;
.super Ljava/lang/Object;
.source "OtaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GattOtaCallback"
.end annotation


# virtual methods
.method public abstract onOtaProgressUpdate(ILcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)V
.end method

.method public abstract onOtaStatusChanged(ILjava/lang/String;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)V
.end method
