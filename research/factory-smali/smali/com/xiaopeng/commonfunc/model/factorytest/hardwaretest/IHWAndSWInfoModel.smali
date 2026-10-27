.class public interface abstract Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/IHWAndSWInfoModel;
.super Ljava/lang/Object;
.source "IHWAndSWInfoModel.java"


# virtual methods
.method public abstract generateCarCodeBitmap(I)V
.end method

.method public abstract generateCodeBitmap(I)V
.end method

.method public abstract generateNumBitmap(I)V
.end method

.method public abstract getDeviceCode()Ljava/lang/String;
.end method

.method public abstract getHWInfo()Ljava/lang/String;
.end method

.method public abstract getPsuVersion()V
.end method

.method public abstract getSWInfo()Ljava/lang/String;
.end method

.method public abstract getVehicleId()Ljava/lang/String;
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract requestCarCode(Lcom/xiaopeng/lib/http/ICallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/lib/http/ICallback<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
