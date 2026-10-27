.class public Lcom/xiaopeng/xvs/xid/account/api/LoginException;
.super Lcom/xiaopeng/xvs/xid/base/BaseException;
.source "LoginException.java"


# static fields
.field public static final ERROR_CODE_LOGIN_ACCOUNT_NOT_FOUNDED:I = 0x7534

.field public static final ERROR_CODE_LOGIN_FAILED:I = 0x7538

.field public static final ERROR_CODE_LOGIN_FATAL_ERROR:I = 0x7539

.field public static final ERROR_CODE_LOGIN_INVALID_TOKEN:I = 0x7536

.field public static final ERROR_CODE_LOGIN_INVALID_UID:I = 0x7535

.field public static final ERROR_CODE_LOGIN_NOT_ALLOW:I = 0x7532

.field public static final ERROR_CODE_LOGIN_REFRESH_TOKEN_FAIL:I = 0x753b

.field public static final ERROR_CODE_LOGIN_REFRESH_TOKEN_FREQUENTLY:I = 0x753a

.field public static final ERROR_CODE_LOGIN_SAME_UID:I = 0x7531

.field public static final ERROR_CODE_LOGIN_TOKEN_SAVE_FAIL:I = 0x7533

.field public static final ERROR_CODE_LOGIN_TYPE_INVALID:I = 0x7537


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/xvs/xid/base/BaseException;-><init>()V

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

    .line 27
    invoke-direct {p0, p1}, Lcom/xiaopeng/xvs/xid/base/BaseException;-><init>(I)V

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

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xvs/xid/base/BaseException;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/account/api/LoginException;->mMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/account/api/LoginException;->mMsg:Ljava/lang/String;

    return-object v0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/account/api/LoginException;->getCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 62
    invoke-super {p0}, Lcom/xiaopeng/xvs/xid/base/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "refresh token is too frequently"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "\u8d26\u53f7\u767b\u5f55\u51fa\u73b0\u5f02\u5e38"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "\u8d26\u53f7\u767b\u5f55\u5931\u8d25"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "\u767b\u5f55\u65b9\u5f0f\u65e0\u6548"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "\u8d26\u53f7TOKEN\u65e0\u6548"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "\u8d26\u53f7UID\u65e0\u6548"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "\u8d26\u53f7\u4e0d\u5b58\u5728"

    return-object v0

    :pswitch_7
    const-string v0, "Token\u5b58\u50a8\u5931\u8d25"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "\u8bf7\u5728P\u6863\u8fdb\u884c\u64cd\u4f5c"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "\u60a8\u5df2\u767b\u5f55\u8be5\u8d26\u53f7\uff0c\u4e0d\u9700\u8981\u91cd\u590d\u767b\u5f55"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x7531
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
