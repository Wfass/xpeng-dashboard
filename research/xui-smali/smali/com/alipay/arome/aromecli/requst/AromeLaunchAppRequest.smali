.class public Lcom/alipay/arome/aromecli/requst/AromeLaunchAppRequest;
.super Lcom/alipay/arome/aromecli/requst/LaunchAppRequestParent;
.source "AromeLaunchAppRequest.java"


# instance fields
.field public appId:Ljava/lang/String;

.field public bundleId:Ljava/lang/String;

.field public page:Ljava/lang/String;

.field public query:Ljava/lang/String;

.field public startParams:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/alipay/arome/aromecli/requst/LaunchAppRequestParent;-><init>()V

    return-void
.end method


# virtual methods
.method public requestParam()Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x0

    .line 17
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-super {p0}, Lcom/alipay/arome/aromecli/requst/LaunchAppRequestParent;->requestParam()Landroid/os/Bundle;

    move-result-object v1

    .line 18
    move-object v0, v1

    const-string v2, "appId"

    iget-object v3, p0, Lcom/alipay/arome/aromecli/requst/AromeLaunchAppRequest;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v1, "page"

    iget-object v2, p0, Lcom/alipay/arome/aromecli/requst/AromeLaunchAppRequest;->page:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string v1, "query"

    iget-object v2, p0, Lcom/alipay/arome/aromecli/requst/AromeLaunchAppRequest;->query:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v1, "bundleId"

    iget-object v2, p0, Lcom/alipay/arome/aromecli/requst/AromeLaunchAppRequest;->bundleId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v1, "startParams"

    iget-object v2, p0, Lcom/alipay/arome/aromecli/requst/AromeLaunchAppRequest;->startParams:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 23
    return-object v0
.end method

.method public requestType()I
    .locals 1

    .line 28
    const/4 v0, 0x4

    return v0
.end method
