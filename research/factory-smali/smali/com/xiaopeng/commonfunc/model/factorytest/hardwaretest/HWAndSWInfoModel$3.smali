.class Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$3;
.super Ljava/lang/Object;
.source "HWAndSWInfoModel.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;->requestCarCode(Lcom/xiaopeng/lib/http/ICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;

.field final synthetic val$callback:Lcom/xiaopeng/lib/http/ICallback;


# direct methods
.method constructor <init>(Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;Lcom/xiaopeng/lib/http/ICallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;

    .line 180
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$3;->this$0:Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;

    iput-object p2, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$3;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 2
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$3;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$3;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/http/ICallback;->onError(Ljava/lang/Object;)V

    .line 213
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 6
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 183
    invoke-static {p1}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->getServerBean(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/http/server/ServerBean;

    move-result-object v0

    .line 184
    .local v0, "bean":Lcom/xiaopeng/lib/http/server/ServerBean;
    invoke-virtual {v0}, Lcom/xiaopeng/lib/http/server/ServerBean;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    .line 185
    invoke-virtual {v0}, Lcom/xiaopeng/lib/http/server/ServerBean;->getData()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "content":Ljava/lang/String;
    const-string v2, "HWAndSWInfoModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 188
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$3;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    if-eqz v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$3;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/http/ICallback;->onError(Ljava/lang/Object;)V

    .line 191
    :cond_0
    return-void

    .line 195
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 196
    .local v2, "jsonObject":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$3;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    if-eqz v4, :cond_2

    .line 197
    iget-object v4, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$3;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    const-string v5, "qrCode"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/xiaopeng/lib/http/ICallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    goto :goto_0

    .line 199
    :catch_0
    move-exception v2

    .line 200
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    iget-object v4, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$3;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    if-eqz v4, :cond_3

    .line 202
    iget-object v4, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$3;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    invoke-interface {v4, v3}, Lcom/xiaopeng/lib/http/ICallback;->onError(Ljava/lang/Object;)V

    .line 206
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_0
    return-void
.end method
