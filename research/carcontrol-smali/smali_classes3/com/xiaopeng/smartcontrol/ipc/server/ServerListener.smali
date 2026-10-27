.class public interface abstract Lcom/xiaopeng/smartcontrol/ipc/server/ServerListener;
.super Ljava/lang/Object;
.source "ServerListener.java"


# virtual methods
.method public abstract onCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "module",
            "method",
            "param"
        }
    .end annotation
.end method
