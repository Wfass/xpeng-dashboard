.class public abstract Lcom/xiaopeng/xvs/xid/base/AbsResp;
.super Ljava/lang/Object;
.source "AbsResp.java"

# interfaces
.implements Lcom/xiaopeng/xvs/xid/base/IResp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/xvs/xid/base/IResp;"
    }
.end annotation


# static fields
.field public static final ERROR_CODE_PARAM_ERROR:I = 0x2714

.field public static final ERROR_CODE_PARSE_FAIL:I = 0x2710

.field public static final ERROR_CODE_USER_LOGOUT:I = 0x2713


# instance fields
.field protected mCode:I

.field protected mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/xiaopeng/xvs/xid/base/AbsResp;->mCode:I

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

    .line 33
    invoke-direct {p0, p1}, Lcom/xiaopeng/xvs/xid/base/AbsResp;-><init>(I)V

    .line 34
    iput-object p2, p0, Lcom/xiaopeng/xvs/xid/base/AbsResp;->mMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "msg",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xvs/xid/base/AbsResp;-><init>(ILjava/lang/String;)V

    .line 39
    iput-object p3, p0, Lcom/xiaopeng/xvs/xid/base/AbsResp;->mData:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/xiaopeng/xvs/xid/base/AbsResp;->mCode:I

    return v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/base/AbsResp;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/base/AbsResp;->mMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/base/AbsResp;->mMsg:Ljava/lang/String;

    return-object v0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/base/AbsResp;->getCode()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x2710

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2713

    if-eq v0, v1, :cond_1

    const-string/jumbo v0, "\u7f51\u7edc\u6b63\u5728\u5f00\u5c0f\u5dee\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    return-object v0

    :cond_1
    const-string/jumbo v0, "\u7528\u6237\u672a\u767b\u5f55"

    return-object v0

    :cond_2
    const-string/jumbo v0, "\u6570\u636e\u89e3\u6790\u9519\u8bef"

    return-object v0

    :cond_3
    const-string/jumbo v0, "\u8bf7\u6c42\u6210\u529f"

    return-object v0
.end method
