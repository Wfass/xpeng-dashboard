.class public interface abstract Lcom/xiaopeng/xvs/xid/base/IEvent;
.super Ljava/lang/Object;
.source "IEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getData()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getType()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation
.end method

.method public abstract setData(Ljava/lang/Object;)Lcom/xiaopeng/xvs/xid/base/IEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/xiaopeng/xvs/xid/base/IEvent;"
        }
    .end annotation
.end method

.method public abstract setType(Ljava/lang/Object;)Lcom/xiaopeng/xvs/xid/base/IEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/xiaopeng/xvs/xid/base/IEvent;"
        }
    .end annotation
.end method
