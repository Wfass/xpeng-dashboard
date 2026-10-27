.class public Lcom/irdeto/securesdk/Feedback;
.super Ljava/lang/Object;
.source "Feedback.java"


# instance fields
.field public errorCode:I

.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/irdeto/securesdk/Feedback;->message:Ljava/lang/String;

    return-void
.end method
