.class public Lcom/alipay/arome/aromecli/response/AromeLaunchDebugAppResponse;
.super Lcom/alipay/arome/aromecli/response/AromeResponse;
.source "AromeLaunchDebugAppResponse.java"


# instance fields
.field public deployVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/alipay/arome/aromecli/response/AromeResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "responseParams"    # Landroid/os/Bundle;

    .line 10
    invoke-super {p0, p1}, Lcom/alipay/arome/aromecli/response/AromeResponse;->parse(Landroid/os/Bundle;)V

    .line 11
    const-string v0, "deployVersion"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/arome/aromecli/response/AromeLaunchDebugAppResponse;->deployVersion:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AromeLaunchDebugAppResponse{deployVersion=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/arome/aromecli/response/AromeLaunchDebugAppResponse;->deployVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", success="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alipay/arome/aromecli/response/AromeLaunchDebugAppResponse;->success:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", code="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/arome/aromecli/response/AromeLaunchDebugAppResponse;->code:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", message=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/arome/aromecli/response/AromeLaunchDebugAppResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
