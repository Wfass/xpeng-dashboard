.class public Lcom/xiaopeng/lib/framework/account/exception/AuthInfoError;
.super Ljava/lang/Object;
.source "AuthInfoError.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IError;


# static fields
.field public static final ERROR_CODE_AUTH_DENIED:I = 0x2712

.field private static final ERROR_CODE_AUTH_DENIED_DES:Ljava/lang/String; = "\u7528\u6237\u62d2\u7edd\u6388\u6743"

.field public static final ERROR_CODE_AUTH_REQUEST_FAIL:I = 0x2715

.field private static final ERROR_CODE_AUTH_REQUEST_FAIL_DES:Ljava/lang/String; = "\u7f51\u7edc\u8bf7\u6c42\u5931\u8d25"

.field public static final ERROR_CODE_AUTH_TIMEOUT:I = 0x2714

.field private static final ERROR_CODE_AUTH_TIMEOUT_DES:Ljava/lang/String; = "\u7528\u6237\u6388\u6743\u8d85\u65f6"

.field public static final ERROR_CODE_CAR_NOT_STOPPED:I = 0x4e21

.field private static final ERROR_CODE_CAR_NOT_STOPPED_DES:Ljava/lang/String; = "\u8f66\u8f86\u884c\u9a76\u4e2d\uff0c\u6682\u4e0d\u80fd\u8fdb\u884c\u8be5\u64cd\u4f5c"

.field public static final ERROR_CODE_REDUNDANT_AUTH_REQUEST:I = 0x3

.field private static final ERROR_CODE_REDUNDANT_AUTH_REQUEST_STR:Ljava/lang/String; = "\u6388\u6743\u8bf7\u6c42\u4e2d\uff0c\u8bf7\u7a0d\u5019"

.field public static final ERROR_CODE_SERVER_DISCONNECTION:I = 0x1

.field private static final ERROR_CODE_SERVER_DISCONNECTION_STR:Ljava/lang/String; = "\u8d26\u53f7\u670d\u52a1\u5df2\u65ad\u5f00\u8fde\u63a5"

.field public static final ERROR_CODE_SERVER_UNBIND:I = 0x2

.field private static final ERROR_CODE_SERVER_UNBIND_STR:Ljava/lang/String; = "\u8d26\u53f7\u670d\u52a1\u5df2\u53d6\u6d88\u7ed1\u5b9a"

.field public static final ERROR_CODE_SERVER_UNKNOWN:I = 0x0

.field private static final ERROR_CODE_SERVER_UNKNOWN_STR:Ljava/lang/String; = "\u8d26\u53f7\u670d\u52a1\u672a\u77e5\u9519\u8bef"

.field public static final ERROR_CODE_USER_CANCEL:I = 0x2711

.field private static final ERROR_CODE_USER_CANCEL_DES:Ljava/lang/String; = "\u7528\u6237\u53d6\u6d88\u6388\u6743"

.field public static final ERROR_CODE_USER_CLOSE_QRCODE:I = 0x4e22

.field private static final ERROR_CODE_USER_CLOSE_QRCODE_DES:Ljava/lang/String; = "\u64cd\u4f5c\u5df2\u53d6\u6d88"

.field public static final ERROR_CODE_USER_LOGOUT:I = 0x2713

.field private static final ERROR_CODE_USER_LOGOUT_DES:Ljava/lang/String; = "\u7528\u6237\u672a\u767b\u5f55"


# instance fields
.field private mCode:I

.field private mErr:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lcom/xiaopeng/lib/framework/account/exception/AuthInfoError;->mCode:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/xiaopeng/lib/framework/account/exception/AuthInfoError;->mCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .line 82
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/account/exception/AuthInfoError;->getCode()I

    move-result v0

    const-string v1, "\u8d26\u53f7\u670d\u52a1\u672a\u77e5\u9519\u8bef"

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/16 v2, 0x4e21

    if-eq v0, v2, :cond_1

    const/16 v2, 0x4e22

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    return-object v1

    :pswitch_0
    const-string v0, "\u7f51\u7edc\u8bf7\u6c42\u5931\u8d25"

    return-object v0

    :pswitch_1
    const-string v0, "\u7528\u6237\u6388\u6743\u8d85\u65f6"

    return-object v0

    :pswitch_2
    const-string v0, "\u7528\u6237\u672a\u767b\u5f55"

    return-object v0

    :pswitch_3
    const-string v0, "\u7528\u6237\u62d2\u7edd\u6388\u6743"

    return-object v0

    :pswitch_4
    const-string v0, "\u7528\u6237\u53d6\u6d88\u6388\u6743"

    return-object v0

    :cond_0
    const-string v0, "\u64cd\u4f5c\u5df2\u53d6\u6d88"

    return-object v0

    :cond_1
    const-string v0, "\u8f66\u8f86\u884c\u9a76\u4e2d\uff0c\u6682\u4e0d\u80fd\u8fdb\u884c\u8be5\u64cd\u4f5c"

    return-object v0

    :cond_2
    const-string v0, "\u6388\u6743\u8bf7\u6c42\u4e2d\uff0c\u8bf7\u7a0d\u5019"

    return-object v0

    :cond_3
    const-string v0, "\u8d26\u53f7\u670d\u52a1\u5df2\u53d6\u6d88\u7ed1\u5b9a"

    return-object v0

    :cond_4
    const-string v0, "\u8d26\u53f7\u670d\u52a1\u5df2\u65ad\u5f00\u8fde\u63a5"

    return-object v0

    :cond_5
    return-object v1

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setErr(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/exception/AuthInfoError;->mErr:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthInfoError;{ code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/account/exception/AuthInfoError;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/account/exception/AuthInfoError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/exception/AuthInfoError;->mErr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
