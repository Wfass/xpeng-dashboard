.class Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel$1;
.super Lcom/xiaopeng/lib/http/server/ServerCallback;
.source "FactoryTestModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;->requestMcuCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;

    .line 61
    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;

    invoke-direct {p0}, Lcom/xiaopeng/lib/http/server/ServerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/lzy/okgo/model/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "Lcom/xiaopeng/lib/http/server/ServerBean;",
            ">;)V"
        }
    .end annotation

    .line 90
    .local p1, "response":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<Lcom/xiaopeng/lib/http/server/ServerBean;>;"
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;->access$000(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;)Lcom/xiaopeng/factory/atcommand/ResponseWriter;

    move-result-object v0

    const-string v1, "MCUTEST"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/AtUtil;->responseNG(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/atcommand/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 91
    return-void
.end method

.method public onSuccess(Lcom/lzy/okgo/model/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "Lcom/xiaopeng/lib/http/server/ServerBean;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p1, "response":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<Lcom/xiaopeng/lib/http/server/ServerBean;>;"
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/http/server/ServerBean;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/http/server/ServerBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 65
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/http/server/ServerBean;

    invoke-static {v0}, Lcom/xiaopeng/lib/http/HttpsUtils;->decodeBody(Lcom/xiaopeng/lib/http/server/ServerBean;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "content":Ljava/lang/String;
    const-string v1, "FactoryTestModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;

    invoke-static {v1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;->access$000(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;)Lcom/xiaopeng/factory/atcommand/ResponseWriter;

    move-result-object v1

    const-string v2, "MCUTEST"

    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/xiaopeng/factory/utils/AtUtil;->responseNG(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/factory/atcommand/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 69
    return-void

    .line 73
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "result":Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    iget-object v3, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;

    invoke-static {v3}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;->access$000(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;)Lcom/xiaopeng/factory/atcommand/ResponseWriter;

    move-result-object v3

    const-string v4, "MCUTEST"

    const-string v5, "0"

    invoke-static {v4, v5}, Lcom/xiaopeng/factory/utils/AtUtil;->responseOK(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/factory/atcommand/ResponseWriter;->write(Ljava/lang/String;)Z

    goto :goto_0

    .line 78
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;

    invoke-static {v3}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;->access$000(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;)Lcom/xiaopeng/factory/atcommand/ResponseWriter;

    move-result-object v3

    const-string v4, "MCUTEST"

    const-string v5, "0"

    invoke-static {v4, v5}, Lcom/xiaopeng/factory/utils/AtUtil;->responseNG(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/factory/atcommand/ResponseWriter;->write(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "result":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_2

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;->access$000(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;)Lcom/xiaopeng/factory/atcommand/ResponseWriter;

    move-result-object v0

    const-string v1, "MCUTEST"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/AtUtil;->responseNG(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/atcommand/ResponseWriter;->write(Ljava/lang/String;)Z

    .line 86
    :goto_2
    return-void
.end method
