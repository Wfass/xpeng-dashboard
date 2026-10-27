.class public Lcom/alipay/arome/aromecli/requst/AromeLaunchDebugAppRequest;
.super Lcom/alipay/arome/aromecli/requst/AromeRequest;
.source "AromeLaunchDebugAppRequest.java"


# instance fields
.field public appId:Ljava/lang/String;

.field public launchWidth:I

.field public themeConfig:Landroid/os/Bundle;


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

    .line 20
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-super {p0}, Lcom/alipay/arome/aromecli/requst/AromeRequest;->requestParam()Landroid/os/Bundle;

    move-result-object v1

    .line 21
    move-object v0, v1

    const-string v2, "appId"

    iget-object v3, p0, Lcom/alipay/arome/aromecli/requst/AromeLaunchDebugAppRequest;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v1, "launchWidth"

    iget v2, p0, Lcom/alipay/arome/aromecli/requst/AromeLaunchDebugAppRequest;->launchWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23
    const-string v1, "themeConfig"

    iget-object v2, p0, Lcom/alipay/arome/aromecli/requst/AromeLaunchDebugAppRequest;->themeConfig:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 24
    return-object v0
.end method

.method public requestType()I
    .locals 1

    .line 15
    const/16 v0, 0xe

    return v0
.end method
