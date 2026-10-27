.class public interface abstract Lcom/xiaopeng/xvs/xid/base/IException;
.super Ljava/lang/Object;
.source "IException.java"


# static fields
.field public static final ERROR_CODE_NO_ERROR:I = 0x0

.field public static final ERROR_CODE_UNKNOWN:I = -0x1


# virtual methods
.method public abstract getCode()I
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public isSuccess()Z
    .locals 1

    .line 35
    invoke-interface {p0}, Lcom/xiaopeng/xvs/xid/base/IException;->getCode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method
