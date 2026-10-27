.class public interface abstract Lcom/xiaopeng/lib/http/logging/LogCacher$IHandler;
.super Ljava/lang/Object;
.source "LogCacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/http/logging/LogCacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IHandler"
.end annotation


# virtual methods
.method public abstract handle(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation
.end method
