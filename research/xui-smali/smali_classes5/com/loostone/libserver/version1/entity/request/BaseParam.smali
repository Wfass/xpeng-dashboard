.class public Lcom/loostone/libserver/version1/entity/request/BaseParam;
.super Lcom/loostone/libserver/version1/entity/request/BaseRequest;
.source "SourceFile"


# instance fields
.field private _time:Ljava/lang/String;

.field private offset:Ljava/lang/Integer;

.field private pageSize:Ljava/lang/Integer;

.field private sign:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private tokenId:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/loostone/libserver/version1/entity/request/BaseRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getOffset()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/request/BaseParam;->offset:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPageSize()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/request/BaseParam;->pageSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/request/BaseParam;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/request/BaseParam;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/request/BaseParam;->tokenId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/request/BaseParam;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public get_time()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "_time"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/request/BaseParam;->_time:Ljava/lang/String;

    return-object v0
.end method

.method public setOffset(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/request/BaseParam;->offset:Ljava/lang/Integer;

    return-void
.end method

.method public setPageSize(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/request/BaseParam;->pageSize:Ljava/lang/Integer;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/request/BaseParam;->sign:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/request/BaseParam;->token:Ljava/lang/String;

    return-void
.end method

.method public setTokenId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/request/BaseParam;->tokenId:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/request/BaseParam;->userId:Ljava/lang/String;

    return-void
.end method

.method public set_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/request/BaseParam;->_time:Ljava/lang/String;

    return-void
.end method
