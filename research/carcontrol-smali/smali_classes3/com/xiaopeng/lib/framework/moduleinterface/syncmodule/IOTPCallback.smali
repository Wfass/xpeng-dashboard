.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/syncmodule/IOTPCallback;
.super Ljava/lang/Object;
.source "IOTPCallback.java"


# virtual methods
.method public abstract onError(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "seq",
            "code",
            "errMsg"
        }
    .end annotation
.end method

.method public abstract onGetOTP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "seq",
            "deviceID",
            "otp",
            "uid"
        }
    .end annotation
.end method
