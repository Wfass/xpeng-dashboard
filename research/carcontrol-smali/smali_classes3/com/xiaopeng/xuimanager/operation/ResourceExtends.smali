.class public abstract Lcom/xiaopeng/xuimanager/operation/ResourceExtends;
.super Ljava/lang/Object;
.source "ResourceExtends.java"


# instance fields
.field private resource:Lcom/xiaopeng/xuimanager/operation/OperationResource;

.field private resourceJson:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ensureResourceObj()V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/ResourceExtends;->resource:Lcom/xiaopeng/xuimanager/operation/OperationResource;

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/ResourceExtends;->resourceJson:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/operation/ResourceExtends;->resource:Lcom/xiaopeng/xuimanager/operation/OperationResource;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCreateTime()J
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/operation/ResourceExtends;->ensureResourceObj()V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/ResourceExtends;->resource:Lcom/xiaopeng/xuimanager/operation/OperationResource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getCreateTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/operation/ResourceExtends;->ensureResourceObj()V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/ResourceExtends;->resource:Lcom/xiaopeng/xuimanager/operation/OperationResource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getEffectTime()J
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/operation/ResourceExtends;->ensureResourceObj()V

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/ResourceExtends;->resource:Lcom/xiaopeng/xuimanager/operation/OperationResource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getEffectTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getExpireTime()J
    .locals 2

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/operation/ResourceExtends;->ensureResourceObj()V

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/ResourceExtends;->resource:Lcom/xiaopeng/xuimanager/operation/OperationResource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getExpireTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getExtraData()Ljava/lang/String;
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/operation/ResourceExtends;->ensureResourceObj()V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/ResourceExtends;->resource:Lcom/xiaopeng/xuimanager/operation/OperationResource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getExtraData()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/operation/ResourceExtends;->ensureResourceObj()V

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/ResourceExtends;->resource:Lcom/xiaopeng/xuimanager/operation/OperationResource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/operation/ResourceExtends;->ensureResourceObj()V

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/ResourceExtends;->resource:Lcom/xiaopeng/xuimanager/operation/OperationResource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getTargetPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/operation/ResourceExtends;->ensureResourceObj()V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/ResourceExtends;->resource:Lcom/xiaopeng/xuimanager/operation/OperationResource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getPrice()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getResourceIcon()Ljava/lang/String;
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/operation/ResourceExtends;->ensureResourceObj()V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/ResourceExtends;->resource:Lcom/xiaopeng/xuimanager/operation/OperationResource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceIcon()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getResourceJson()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/ResourceExtends;->resourceJson:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 61
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/operation/ResourceExtends;->ensureResourceObj()V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/ResourceExtends;->resource:Lcom/xiaopeng/xuimanager/operation/OperationResource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getUpdateTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getVersion()I
    .locals 3

    .line 81
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/operation/ResourceExtends;->ensureResourceObj()V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/ResourceExtends;->resource:Lcom/xiaopeng/xuimanager/operation/OperationResource;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 86
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/operation/ResourceExtends;->resource:Lcom/xiaopeng/xuimanager/operation/OperationResource;

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getExtraData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "resource_version"

    .line 87
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method public setResourceJson(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/operation/ResourceExtends;->resourceJson:Ljava/lang/String;

    return-void
.end method
