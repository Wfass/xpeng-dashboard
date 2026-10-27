.class public final Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;
.super Ljava/lang/Object;
.source "XmartBizHelper.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;


# instance fields
.field private mBizRequestBuilder:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;->mBizRequestBuilder:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;

    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic appId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 14
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;->appId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;

    move-result-object p1

    return-object p1
.end method

.method public appId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;->mBizRequestBuilder:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->appId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;

    .line 90
    return-object p0
.end method

.method public build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;->mBizRequestBuilder:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->build(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildWithSecretKey(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1
    .param p1, "secretKey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;->mBizRequestBuilder:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->build(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic customTokensForAuth([Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;
    .locals 0
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 14
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;->customTokensForAuth([Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;

    move-result-object p1

    return-object p1
.end method

.method public customTokensForAuth([Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;
    .locals 1
    .param p1, "tokens"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;->mBizRequestBuilder:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->customTokensForAuth([Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;

    .line 111
    return-object p0
.end method

.method public bridge synthetic enableIrdetoEncoding()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;->enableIrdetoEncoding()Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;

    move-result-object v0

    return-object v0
.end method

.method public enableIrdetoEncoding()Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;->mBizRequestBuilder:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->enableIrdetoEncoding()Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;

    .line 62
    return-object p0
.end method

.method public enableSecurityEncoding()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;->mBizRequestBuilder:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->enableSecurityEncoding()Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;

    .line 69
    return-object p0
.end method

.method public bridge synthetic extendBizHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;->extendBizHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;

    move-result-object p1

    return-object p1
.end method

.method public extendBizHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;->mBizRequestBuilder:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->setExtHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;

    .line 104
    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 14
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;->get(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 29
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/GetRequestAdapter;

    invoke-direct {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/GetRequestAdapter;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, "request":Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/GetRequestAdapter;
    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;

    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;->GET:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;

    invoke-direct {v1, v0, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;-><init>(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;)V

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;->mBizRequestBuilder:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;

    .line 31
    return-object p0
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;"
        }
    .end annotation

    .line 36
    .local p2, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/GetRequestAdapter;

    invoke-direct {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/GetRequestAdapter;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, "request":Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/GetRequestAdapter;
    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;

    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;->GET:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;

    invoke-direct {v1, v0, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;-><init>(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;)V

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;->mBizRequestBuilder:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;

    .line 38
    const/4 v1, 0x1

    new-array v2, v1, [Z

    const/4 v3, 0x0

    aput-boolean v1, v2, v3

    invoke-virtual {v0, p2, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/GetRequestAdapter;->params(Ljava/util/Map;[Z)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    .line 39
    return-object p0
.end method

.method public bridge synthetic needAuthorizationInfo()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;->needAuthorizationInfo()Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic needAuthorizationInfo(Ljava/util/Map;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 14
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;->needAuthorizationInfo(Ljava/util/Map;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;

    move-result-object p1

    return-object p1
.end method

.method public needAuthorizationInfo()Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;->mBizRequestBuilder:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->needAuthorizationInfo(Ljava/util/Map;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;

    .line 76
    return-object p0
.end method

.method public needAuthorizationInfo(Ljava/util/Map;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;"
        }
    .end annotation

    .line 82
    .local p1, "extParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;->mBizRequestBuilder:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->needAuthorizationInfo(Ljava/util/Map;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;

    .line 83
    return-object p0
.end method

.method public bridge synthetic post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "jsonBody"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 52
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/PostRequestAdapter;

    invoke-direct {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/PostRequestAdapter;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "request":Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/PostRequestAdapter;
    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;

    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;->POST:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;

    invoke-direct {v1, v0, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;-><init>(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;)V

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;->mBizRequestBuilder:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;

    .line 54
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;->mBizRequestBuilder:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;

    invoke-virtual {v1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->body(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;

    .line 55
    return-object p0
.end method

.method public bridge synthetic uid(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 14
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;->uid(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;

    move-result-object p1

    return-object p1
.end method

.method public uid(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;->mBizRequestBuilder:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->uid(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;

    .line 97
    return-object p0
.end method
