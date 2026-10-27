.class public Lcom/alipay/arome/aromecli/response/AromeResponse;
.super Ljava/lang/Object;
.source "AromeResponse.java"


# static fields
.field public static final LOCAL_ERROR:Lcom/alipay/arome/aromecli/response/AromeResponse;


# instance fields
.field public code:I

.field public message:Ljava/lang/String;

.field public success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Lcom/alipay/arome/aromecli/response/AromeResponse;

    invoke-direct {v0}, Lcom/alipay/arome/aromecli/response/AromeResponse;-><init>()V

    .line 12
    sput-object v0, Lcom/alipay/arome/aromecli/response/AromeResponse;->LOCAL_ERROR:Lcom/alipay/arome/aromecli/response/AromeResponse;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alipay/arome/aromecli/response/AromeResponse;->success:Z

    .line 13
    sget-object v0, Lcom/alipay/arome/aromecli/response/AromeResponse;->LOCAL_ERROR:Lcom/alipay/arome/aromecli/response/AromeResponse;

    const/4 v1, 0x2

    iput v1, v0, Lcom/alipay/arome/aromecli/response/AromeResponse;->code:I

    .line 14
    sget-object v0, Lcom/alipay/arome/aromecli/response/AromeResponse;->LOCAL_ERROR:Lcom/alipay/arome/aromecli/response/AromeResponse;

    const-string v1, "response invalid"

    iput-object v1, v0, Lcom/alipay/arome/aromecli/response/AromeResponse;->message:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "responseParams"    # Landroid/os/Bundle;

    .line 22
    const-string v0, "success"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/arome/aromecli/response/AromeResponse;->success:Z

    .line 23
    const-string v0, "code"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/arome/aromecli/response/AromeResponse;->code:I

    .line 24
    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/arome/aromecli/response/AromeResponse;->message:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AromeResponse{success="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/arome/aromecli/response/AromeResponse;->success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/arome/aromecli/response/AromeResponse;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/arome/aromecli/response/AromeResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
