.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/demoservice/ICallback;
.super Ljava/lang/Object;
.source "ICallback.java"


# virtual methods
.method public abstract onFail(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation
.end method

.method public abstract onSucc(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation
.end method
