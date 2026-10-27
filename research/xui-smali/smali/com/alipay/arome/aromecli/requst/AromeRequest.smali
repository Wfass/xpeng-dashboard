.class public abstract Lcom/alipay/arome/aromecli/requst/AromeRequest;
.super Ljava/lang/Object;
.source "AromeRequest.java"


# instance fields
.field public extraTimestamp:Landroid/os/Bundle;

.field public hostAppId:Ljava/lang/String;

.field public invokeToken:Ljava/lang/String;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public requestParam()Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x0

    .line 17
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 18
    move-object v0, v1

    const-string v2, "hostAppId"

    iget-object v3, p0, Lcom/alipay/arome/aromecli/requst/AromeRequest;->hostAppId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v1, "packageName"

    iget-object v2, p0, Lcom/alipay/arome/aromecli/requst/AromeRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string v1, "invokeToken"

    iget-object v2, p0, Lcom/alipay/arome/aromecli/requst/AromeRequest;->invokeToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v1, "extraTimestamp"

    iget-object v2, p0, Lcom/alipay/arome/aromecli/requst/AromeRequest;->extraTimestamp:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 22
    return-object v0
.end method

.method public abstract requestType()I
.end method
