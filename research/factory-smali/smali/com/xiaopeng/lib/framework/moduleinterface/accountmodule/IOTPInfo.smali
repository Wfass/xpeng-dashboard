.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IOTPInfo;
.super Ljava/lang/Object;
.source "IOTPInfo.java"


# virtual methods
.method public abstract getOTP()Ljava/lang/String;
.end method

.method public abstract getUid()J
.end method

.method public abstract setOTP(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otp"
        }
    .end annotation
.end method

.method public abstract setUid(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method
