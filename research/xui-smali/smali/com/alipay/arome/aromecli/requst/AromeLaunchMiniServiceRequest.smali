.class public Lcom/alipay/arome/aromecli/requst/AromeLaunchMiniServiceRequest;
.super Lcom/alipay/arome/aromecli/requst/LaunchAppRequestParent;
.source "AromeLaunchMiniServiceRequest.java"


# instance fields
.field public mMiniServiceCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/alipay/arome/aromecli/requst/LaunchAppRequestParent;-><init>()V

    return-void
.end method


# virtual methods
.method public requestParam()Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x0

    .line 22
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-super {p0}, Lcom/alipay/arome/aromecli/requst/LaunchAppRequestParent;->requestParam()Landroid/os/Bundle;

    move-result-object v1

    .line 23
    move-object v0, v1

    const-string v2, "miniServiceCode"

    iget-object v3, p0, Lcom/alipay/arome/aromecli/requst/AromeLaunchMiniServiceRequest;->mMiniServiceCode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-object v0
.end method

.method public requestType()I
    .locals 1

    .line 17
    const/16 v0, 0x11

    return v0
.end method
