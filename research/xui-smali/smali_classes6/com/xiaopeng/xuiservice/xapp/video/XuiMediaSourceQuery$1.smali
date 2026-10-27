.class Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery$1;
.super Ljava/lang/Object;
.source "XuiMediaSourceQuery.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;->queryMediaSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/QueryCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;

.field final synthetic val$callback:Lcom/xiaopeng/xuiservice/xapp/video/QueryCallback;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;Lcom/xiaopeng/xuiservice/xapp/video/QueryCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery$1;->val$callback:Lcom/xiaopeng/xuiservice/xapp/video/QueryCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 3
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 71
    const-string v0, "XuiMediaSourceQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryMediaSource failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->getException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 4
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 61
    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "body":Ljava/lang/String;
    :goto_0
    const-string v1, "XuiMediaSourceQuery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryMediaSource onSuccess body: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-class v1, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult;

    .line 64
    .local v1, "result":Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery$1;->val$callback:Lcom/xiaopeng/xuiservice/xapp/video/QueryCallback;

    if-eqz v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery$1;->val$callback:Lcom/xiaopeng/xuiservice/xapp/video/QueryCallback;

    invoke-interface {v2, v1}, Lcom/xiaopeng/xuiservice/xapp/video/QueryCallback;->onQuerySuccess(Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryResult;)V

    .line 67
    :cond_1
    return-void
.end method
