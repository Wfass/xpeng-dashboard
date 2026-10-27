.class public Lcom/alipay/arome/aromecli/requst/AromeSendEventRequest;
.super Lcom/alipay/arome/aromecli/requst/AromeRequest;
.source "AromeSendEventRequest.java"


# instance fields
.field public eventData:Ljava/lang/String;

.field public eventName:Ljava/lang/String;


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

    .line 14
    .local v0, "requestParam":Landroid/os/Bundle;
    invoke-super {p0}, Lcom/alipay/arome/aromecli/requst/AromeRequest;->requestParam()Landroid/os/Bundle;

    move-result-object v1

    .line 15
    move-object v0, v1

    const-string v2, "eventName"

    iget-object v3, p0, Lcom/alipay/arome/aromecli/requst/AromeSendEventRequest;->eventName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string v1, "eventData"

    iget-object v2, p0, Lcom/alipay/arome/aromecli/requst/AromeSendEventRequest;->eventData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-object v0
.end method

.method public requestType()I
    .locals 1

    .line 22
    const/16 v0, 0xd

    return v0
.end method
