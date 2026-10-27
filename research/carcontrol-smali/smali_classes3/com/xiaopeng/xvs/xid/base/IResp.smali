.class public interface abstract Lcom/xiaopeng/xvs/xid/base/IResp;
.super Ljava/lang/Object;
.source "IResp.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ERROR_CODE_NO_ERROR:I = 0x0

.field public static final ERROR_CODE_UNKNOWN:I = -0x1


# virtual methods
.method public abstract getCode()I
.end method

.method public abstract getData()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
