.class public final Lcom/xiaopeng/lib/framework/account/exception/OTPInfoError;
.super Ljava/lang/Object;
.source "OTPInfoError.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IError;


# instance fields
.field private mCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/xiaopeng/lib/framework/account/exception/OTPInfoError;->mCode:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/xiaopeng/lib/framework/account/exception/OTPInfoError;->mCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 20
    iget v0, p0, Lcom/xiaopeng/lib/framework/account/exception/OTPInfoError;->mCode:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "\u8d26\u53f7\u670d\u52a1\u672a\u77e5\u9519\u8bef"

    return-object v0

    :pswitch_0
    const-string v0, "\u7f51\u7edc\u8bf7\u6c42\u5931\u8d25"

    return-object v0

    :pswitch_1
    const-string v0, "\u7528\u6237\u672a\u767b\u5f55"

    return-object v0

    :pswitch_2
    const-string v0, "\u8d26\u53f7\u670d\u52a1\u5df2\u65ad\u5f00\u8fde\u63a5"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
