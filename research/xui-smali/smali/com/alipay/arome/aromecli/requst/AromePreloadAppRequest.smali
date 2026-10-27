.class public Lcom/alipay/arome/aromecli/requst/AromePreloadAppRequest;
.super Lcom/alipay/arome/aromecli/requst/AromeRequest;
.source "AromePreloadAppRequest.java"


# instance fields
.field public appId:Ljava/lang/String;

.field public bundleId:Ljava/lang/String;

.field public loadToMemory:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/alipay/arome/aromecli/requst/AromeRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public requestParam()Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x0

    .line 15
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-super {p0}, Lcom/alipay/arome/aromecli/requst/AromeRequest;->requestParam()Landroid/os/Bundle;

    move-result-object v1

    .line 16
    move-object v0, v1

    const-string v2, "appId"

    iget-object v3, p0, Lcom/alipay/arome/aromecli/requst/AromePreloadAppRequest;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v1, "loadToMemory"

    iget-boolean v2, p0, Lcom/alipay/arome/aromecli/requst/AromePreloadAppRequest;->loadToMemory:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18
    const-string v1, "bundleId"

    iget-object v2, p0, Lcom/alipay/arome/aromecli/requst/AromePreloadAppRequest;->bundleId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-object v0
.end method

.method public requestType()I
    .locals 1

    .line 24
    const/4 v0, 0x6

    return v0
.end method
