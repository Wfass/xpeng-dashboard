.class public Lcom/xiaopeng/xvs/xid/auth/api/OAuthException;
.super Lcom/xiaopeng/xvs/xid/base/BaseException;
.source "OAuthException.java"


# static fields
.field public static final ERROR_CODE_AUTH_DENIED:I = 0x2712

.field public static final ERROR_CODE_AUTH_REQUEST_FAIL:I = 0x2715

.field public static final ERROR_CODE_AUTH_TIMEOUT:I = 0x2714

.field public static final ERROR_CODE_CAR_NOT_STOPPED:I = 0x2716

.field public static final ERROR_CODE_USER_CANCEL:I = 0x2711

.field public static final ERROR_CODE_USER_CLOSE_QR:I = 0x2717
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ERROR_CODE_USER_LOGOUT:I = 0x2713


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
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

    .line 28
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

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xvs/xid/base/BaseException;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/auth/api/OAuthException;->getCode()I

    move-result v0

    if-eqz v0, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 60
    invoke-super {p0}, Lcom/xiaopeng/xvs/xid/base/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "\u8d26\u53f7\u670d\u52a1\u5df2\u53d6\u6d88\u7ed1\u5b9a"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "\u8d26\u53f7\u670d\u52a1\u5df2\u65ad\u5f00\u8fde\u63a5"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "\u64cd\u4f5c\u5df2\u53d6\u6d88"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "\u8f66\u8f86\u884c\u9a76\u4e2d\uff0c\u6682\u4e0d\u80fd\u8fdb\u884c\u8be5\u64cd\u4f5c"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "\u7f51\u7edc\u6388\u6743\u5931\u8d25"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "\u7528\u6237\u6388\u6743\u8d85\u65f6"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "\u7528\u6237\u672a\u767b\u5f55"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "\u7528\u6237\u62d2\u7edd\u6388\u6743"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "\u7528\u6237\u53d6\u6d88\u6388\u6743"

    return-object v0

    :cond_0
    const-string/jumbo v0, "\u8bf7\u6c42\u6210\u529f"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15f94
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
