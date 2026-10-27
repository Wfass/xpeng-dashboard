.class public interface abstract Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;
.super Ljava/lang/Object;
.source "LogCacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/http/logging/LogCacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ILog"
.end annotation


# virtual methods
.method public abstract code(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation
.end method

.method public abstract end()V
.end method

.method public abstract log(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation
.end method
