.class public Lcom/xiaopeng/lib/framework/account/exception/AccountConnectionException;
.super Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/AbsException;
.source "AccountConnectionException.java"


# static fields
.field public static final ERROR_CODE_SERVER_DISCONNECTION:I = 0x1

.field private static final ERROR_CODE_SERVER_DISCONNECTION_STR:Ljava/lang/String; = "\u8d26\u53f7\u670d\u52a1\u5df2\u65ad\u5f00\u8fde\u63a5"

.field public static final ERROR_CODE_SERVER_UNBIND:I = 0x2

.field private static final ERROR_CODE_SERVER_UNBIND_STR:Ljava/lang/String; = "\u8d26\u53f7\u670d\u52a1\u5df2\u53d6\u6d88\u7ed1\u5b9a"

.field public static final ERROR_CODE_SERVER_UNKNOWN:I = 0x0

.field private static final ERROR_CODE_SERVER_UNKNOWN_STR:Ljava/lang/String; = "\u8d26\u53f7\u670d\u52a1\u672a\u77e5\u9519\u8bef"


# instance fields
.field private mCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/account/exception/AccountConnectionException;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/lib/framework/account/exception/AccountConnectionException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/AbsException;-><init>(ILjava/lang/String;)V

    .line 40
    iput p1, p0, Lcom/xiaopeng/lib/framework/account/exception/AccountConnectionException;->mCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/lib/framework/account/exception/AccountConnectionException;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/xiaopeng/lib/framework/account/exception/AccountConnectionException;->mCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .line 50
    iget v0, p0, Lcom/xiaopeng/lib/framework/account/exception/AccountConnectionException;->mCode:I

    const-string v1, "\u8d26\u53f7\u670d\u52a1\u672a\u77e5\u9519\u8bef"

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    const-string v0, "\u8d26\u53f7\u670d\u52a1\u5df2\u53d6\u6d88\u7ed1\u5b9a"

    return-object v0

    :cond_1
    const-string v0, "\u8d26\u53f7\u670d\u52a1\u5df2\u65ad\u5f00\u8fde\u63a5"

    return-object v0

    :cond_2
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountConnectionException;{ code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/account/exception/AccountConnectionException;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/account/exception/AccountConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
