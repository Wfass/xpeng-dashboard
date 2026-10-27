.class public Lcom/xiaopeng/lib/framework/netchannelmodule/http/HttpImpl;
.super Ljava/lang/Object;
.source "HttpImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;
    .locals 1

    .line 85
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/XmartBizHelper;-><init>()V

    return-object v0
.end method

.method public cancelTag(Ljava/lang/Object;)V
    .locals 1

    .line 28
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    return-void
.end method

.method public config()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;
    .locals 1

    .line 76
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;-><init>()V

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 38
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/GetRequestAdapter;

    invoke-direct {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/GetRequestAdapter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public head(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 48
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/HeadRequestAdapter;

    invoke-direct {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/HeadRequestAdapter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public post(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 59
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/PostRequestAdapter;

    invoke-direct {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/PostRequestAdapter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public requestXmartBiz(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 67
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerRequest;

    invoke-direct {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
