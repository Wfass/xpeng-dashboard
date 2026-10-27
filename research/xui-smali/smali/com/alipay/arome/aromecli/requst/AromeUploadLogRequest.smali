.class public Lcom/alipay/arome/aromecli/requst/AromeUploadLogRequest;
.super Lcom/alipay/arome/aromecli/requst/AromeRequest;
.source "AromeUploadLogRequest.java"


# instance fields
.field public mEndDate:Ljava/lang/String;

.field public mStartDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/alipay/arome/aromecli/requst/AromeRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public requestParam()Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x0

    .line 18
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-super {p0}, Lcom/alipay/arome/aromecli/requst/AromeRequest;->requestParam()Landroid/os/Bundle;

    move-result-object v1

    .line 19
    move-object v0, v1

    const-string v2, "startDate"

    iget-object v3, p0, Lcom/alipay/arome/aromecli/requst/AromeUploadLogRequest;->mStartDate:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string v1, "endDate"

    iget-object v2, p0, Lcom/alipay/arome/aromecli/requst/AromeUploadLogRequest;->mEndDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-object v0
.end method

.method public requestType()I
    .locals 1

    .line 26
    const/16 v0, 0x9

    return v0
.end method
