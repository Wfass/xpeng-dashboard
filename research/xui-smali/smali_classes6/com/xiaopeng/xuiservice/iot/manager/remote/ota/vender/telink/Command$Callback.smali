.class public interface abstract Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;
.super Ljava/lang/Object;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract error(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;Ljava/lang/String;)V
.end method

.method public abstract success(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;Ljava/lang/Object;)V
.end method

.method public abstract timeout(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;)Z
.end method
