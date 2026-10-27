.class public abstract Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;
.super Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic;
.source "BaseHttpLogic.java"


# instance fields
.field private mNetRequester:Lcom/xiaopeng/aicabin/logic/net/http/HttpRequester;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaopeng/aicabin/logic/BaseLogic;->mResult:Lcom/xiaopeng/aicabin/DataResp;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaopeng/aicabin/logic/BaseLogic;->mResult:Lcom/xiaopeng/aicabin/DataResp;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaopeng/aicabin/logic/BaseLogic;->mResult:Lcom/xiaopeng/aicabin/DataResp;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaopeng/aicabin/logic/BaseLogic;->mResult:Lcom/xiaopeng/aicabin/DataResp;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;)Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic;->mLogicCallback:Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaopeng/aicabin/logic/BaseLogic;->mResult:Lcom/xiaopeng/aicabin/DataResp;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaopeng/aicabin/logic/BaseLogic;->mResult:Lcom/xiaopeng/aicabin/DataResp;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;)Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic;->mLogicCallback:Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;

    return-object p0
.end method


# virtual methods
.method public afterHandle()V
    .locals 0

    return-void
.end method

.method public cancelAsync()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;->mNetRequester:Lcom/xiaopeng/aicabin/logic/net/http/HttpRequester;

    invoke-virtual {v0}, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequester;->cancelAsync()V

    .line 3
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic;->mLogicCallback:Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;

    iget-object v1, p0, Lcom/xiaopeng/aicabin/logic/BaseLogic;->mResult:Lcom/xiaopeng/aicabin/DataResp;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/aicabin/DataResp;->setSuccess(Z)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/xiaopeng/aicabin/DataResp;->setCode(I)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v1

    const-string v2, "cancel"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/aicabin/DataResp;->setMessage(Ljava/lang/String;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;->onResult(Lcom/xiaopeng/aicabin/DataResp;)V

    return-void
.end method

.method public abstract getRequestInfo()Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;
.end method

.method public final handle()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;->getRequestInfo()Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequester;

    iget-object v2, p0, Lcom/xiaopeng/aicabin/logic/BaseLogic;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    invoke-direct {v1, v2, v0}, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequester;-><init>(Landroid/app/Application;Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;)V

    iput-object v1, p0, Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;->mNetRequester:Lcom/xiaopeng/aicabin/logic/net/http/HttpRequester;

    .line 11
    new-instance v2, Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic$a;

    invoke-direct {v2, p0}, Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic$a;-><init>(Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;)V

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/aicabin/logic/net/http/HttpRequester;->request(Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;Lcom/xiaopeng/aicabin/logic/net/http/HttpCallback;)V

    return-void

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/BaseLogic;->mResult:Lcom/xiaopeng/aicabin/DataResp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/DataResp;->setSuccess(Z)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/DataResp;->setCode(I)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    const-string v1, "http request info or url is null"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/DataResp;->setMessage(Ljava/lang/String;)Lcom/xiaopeng/aicabin/DataResp;

    .line 13
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic;->mLogicCallback:Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;

    iget-object v1, p0, Lcom/xiaopeng/aicabin/logic/BaseLogic;->mResult:Lcom/xiaopeng/aicabin/DataResp;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;->onResult(Lcom/xiaopeng/aicabin/DataResp;)V

    return-void
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/xiaopeng/aicabin/logic/BaseLogic;->onCreate(Landroid/app/Application;)V

    return-void
.end method
