.class Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$1;
.super Ljava/lang/Object;
.source "MiniProgManager.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    .line 86
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 5
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 105
    const-string v0, "MiniProgManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register mini prog device failure!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->getException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    const/4 v1, 0x6

    const v2, 0xc350

    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->access$000(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;IIJ)V

    .line 108
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 9
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 89
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "body":Ljava/lang/String;
    const-string v1, "MiniProgManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register mini prog device success..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-wide/16 v1, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    .local v3, "bodyJSONObject":Lorg/json/JSONObject;
    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 94
    .local v4, "dataJSONObject":Lorg/json/JSONObject;
    const-string v5, "sign"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "signature":Ljava/lang/String;
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    const-string v7, "MiniProgSignature"

    invoke-virtual {v6, v7, v5}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->putStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v6, v7, v8, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->access$000(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;IIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v3    # "bodyJSONObject":Lorg/json/JSONObject;
    .end local v4    # "dataJSONObject":Lorg/json/JSONObject;
    .end local v5    # "signature":Ljava/lang/String;
    goto :goto_0

    .line 97
    :catch_0
    move-exception v3

    .line 98
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "MiniProgManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "json error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    const/4 v5, 0x6

    const v6, 0xc350

    invoke-static {v4, v5, v6, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->access$000(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;IIJ)V

    .line 101
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
