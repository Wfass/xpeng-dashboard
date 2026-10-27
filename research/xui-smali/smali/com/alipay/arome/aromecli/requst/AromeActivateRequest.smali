.class public Lcom/alipay/arome/aromecli/requst/AromeActivateRequest;
.super Lcom/alipay/arome/aromecli/requst/AromeRequest;
.source "AromeActivateRequest.java"


# instance fields
.field public deviceId:Ljava/lang/String;

.field public invalidCache:Z

.field public isFinishActivityOnBackground:Z

.field public productId:J

.field public signature:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/alipay/arome/aromecli/requst/AromeRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public requestParam()Landroid/os/Bundle;
    .locals 5

    const/4 v0, 0x0

    .line 22
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-super {p0}, Lcom/alipay/arome/aromecli/requst/AromeRequest;->requestParam()Landroid/os/Bundle;

    move-result-object v1

    .line 23
    move-object v0, v1

    const-string v2, "productId"

    iget-wide v3, p0, Lcom/alipay/arome/aromecli/requst/AromeActivateRequest;->productId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 24
    const-string v1, "deviceId"

    iget-object v2, p0, Lcom/alipay/arome/aromecli/requst/AromeActivateRequest;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v1, "signature"

    iget-object v2, p0, Lcom/alipay/arome/aromecli/requst/AromeActivateRequest;->signature:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-boolean v1, p0, Lcom/alipay/arome/aromecli/requst/AromeActivateRequest;->invalidCache:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 27
    const-string v1, "ignoreTokenCache"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    :cond_0
    iget-boolean v1, p0, Lcom/alipay/arome/aromecli/requst/AromeActivateRequest;->isFinishActivityOnBackground:Z

    if-eqz v1, :cond_1

    .line 30
    const-string v1, "finishActivityOnBackground"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 32
    :cond_1
    return-object v0
.end method

.method public requestType()I
    .locals 1

    .line 17
    const/4 v0, 0x1

    return v0
.end method
