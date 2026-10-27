.class public Lcom/irdeto/securesdk/CryptoException;
.super Ljava/lang/Exception;
.source "CryptoException.java"


# instance fields
.field private errorCode:I

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/irdeto/securesdk/CryptoException;->errorCode:I

    iput-object p2, p0, Lcom/irdeto/securesdk/CryptoException;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/irdeto/securesdk/CryptoException;->errorCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/irdeto/securesdk/CryptoException;->message:Ljava/lang/String;

    return-object v0
.end method
