.class public Lcom/irdeto/securesdk/ISFException;
.super Ljava/lang/Exception;
.source "ISFException.java"


# static fields
.field private static final UNDEFINED:Ljava/lang/String; = "undefined"


# instance fields
.field private errorCode:I

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/irdeto/securesdk/ISFException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/irdeto/securesdk/ISFException;->errorCode:I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p2, "undefined"

    :cond_0
    iput-object p2, p0, Lcom/irdeto/securesdk/ISFException;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/irdeto/securesdk/O000000o;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/irdeto/securesdk/O000000o;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lcom/irdeto/securesdk/O000000o;->O000000o()I

    move-result v0

    invoke-virtual {p1}, Lcom/irdeto/securesdk/O000000o;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/irdeto/securesdk/ISFException;-><init>(ILjava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/irdeto/securesdk/ISFException;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/irdeto/securesdk/ISFException;->message:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/irdeto/securesdk/ISFException;->errorCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/irdeto/securesdk/ISFException;->message:Ljava/lang/String;

    return-object v0
.end method
