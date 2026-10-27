.class public Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRequestBody;
.super Ljava/lang/Object;
.source "TokenRequestBody.java"


# instance fields
.field private appId:Ljava/lang/String;

.field private policyType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRequestBody;->appId:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setPolicyType(Ljava/lang/String;)V
    .locals 0
    .param p1, "policyType"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRequestBody;->policyType:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"appId\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRequestBody;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"policyType\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRequestBody;->policyType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRequestBody;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
