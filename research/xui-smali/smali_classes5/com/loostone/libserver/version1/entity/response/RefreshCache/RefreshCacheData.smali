.class public Lcom/loostone/libserver/version1/entity/response/RefreshCache/RefreshCacheData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private refresh:I

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRefresh()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libserver/version1/entity/response/RefreshCache/RefreshCacheData;->refresh:I

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/response/RefreshCache/RefreshCacheData;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setRefresh(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libserver/version1/entity/response/RefreshCache/RefreshCacheData;->refresh:I

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/response/RefreshCache/RefreshCacheData;->uuid:Ljava/lang/String;

    return-void
.end method
