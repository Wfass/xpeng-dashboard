.class public Lcom/lzy/okgo/exception/HttpException;
.super Ljava/lang/RuntimeException;
.source "HttpException.java"


# static fields
.field private static final serialVersionUID:J = 0x79c2914329144639L


# instance fields
.field private code:I

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static aH(Ljava/lang/String;)Lcom/lzy/okgo/exception/HttpException;
    .locals 1

    .line 70
    new-instance v0, Lcom/lzy/okgo/exception/HttpException;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/exception/HttpException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static cY()Lcom/lzy/okgo/exception/HttpException;
    .locals 2

    .line 66
    new-instance v0, Lcom/lzy/okgo/exception/HttpException;

    const-string v1, "network error! http response code is 404 or 5xx!"

    invoke-direct {v0, v1}, Lcom/lzy/okgo/exception/HttpException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
