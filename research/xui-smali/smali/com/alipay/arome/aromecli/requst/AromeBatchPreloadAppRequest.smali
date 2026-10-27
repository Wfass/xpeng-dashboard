.class public Lcom/alipay/arome/aromecli/requst/AromeBatchPreloadAppRequest;
.super Lcom/alipay/arome/aromecli/requst/AromeRequest;
.source "AromeBatchPreloadAppRequest.java"


# instance fields
.field public appIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public bundleId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/alipay/arome/aromecli/requst/AromeRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/alipay/arome/aromecli/requst/AromeBatchPreloadAppRequest;->appIds:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/arome/aromecli/requst/AromeBatchPreloadAppRequest;->appIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/arome/aromecli/requst/AromeBatchPreloadAppRequest;->appIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public requestParam()Landroid/os/Bundle;
    .locals 4

    .line 20
    invoke-super {p0}, Lcom/alipay/arome/aromecli/requst/AromeRequest;->requestParam()Landroid/os/Bundle;

    move-result-object v0

    .line 21
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alipay/arome/aromecli/requst/AromeBatchPreloadAppRequest;->appIds:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    .local v1, "appIdArray":Ljava/util/ArrayList;
    const-string v2, "appIds"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 23
    const-string v2, "bundleId"

    iget-object v3, p0, Lcom/alipay/arome/aromecli/requst/AromeBatchPreloadAppRequest;->bundleId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-object v0
.end method

.method public requestType()I
    .locals 1

    .line 29
    const/16 v0, 0xb

    return v0
.end method
