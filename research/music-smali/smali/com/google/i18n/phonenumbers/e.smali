.class public Lcom/google/i18n/phonenumbers/e;
.super Ljava/lang/Exception;
.source "NumberParseException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/i18n/phonenumbers/e$a;
    }
.end annotation


# instance fields
.field private errorType:Lcom/google/i18n/phonenumbers/e$a;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/i18n/phonenumbers/e$a;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 61
    iput-object p2, p0, Lcom/google/i18n/phonenumbers/e;->message:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/e;->errorType:Lcom/google/i18n/phonenumbers/e$a;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/i18n/phonenumbers/e$a;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/e;->errorType:Lcom/google/i18n/phonenumbers/e$a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/e;->errorType:Lcom/google/i18n/phonenumbers/e$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/e;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
