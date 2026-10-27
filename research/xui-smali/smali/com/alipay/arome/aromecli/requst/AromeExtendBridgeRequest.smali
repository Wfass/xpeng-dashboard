.class public Lcom/alipay/arome/aromecli/requst/AromeExtendBridgeRequest;
.super Lcom/alipay/arome/aromecli/requst/AromeRequest;
.source "AromeExtendBridgeRequest.java"


# instance fields
.field public mExtensionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
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

    const-string v2, "extensionList"

    iget-object v3, p0, Lcom/alipay/arome/aromecli/requst/AromeExtendBridgeRequest;->mExtensionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 17
    return-object v0
.end method

.method public requestType()I
    .locals 1

    .line 22
    const/16 v0, 0xc

    return v0
.end method
