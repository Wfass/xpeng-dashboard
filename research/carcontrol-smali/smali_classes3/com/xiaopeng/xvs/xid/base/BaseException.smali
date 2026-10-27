.class public Lcom/xiaopeng/xvs/xid/base/BaseException;
.super Lcom/xiaopeng/xvs/xid/base/AbsException;
.source "BaseException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/xiaopeng/xvs/xid/base/AbsException;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1}, Lcom/xiaopeng/xvs/xid/base/AbsException;-><init>(I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "msg"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xvs/xid/base/AbsException;-><init>(ILjava/lang/String;)V

    return-void
.end method
