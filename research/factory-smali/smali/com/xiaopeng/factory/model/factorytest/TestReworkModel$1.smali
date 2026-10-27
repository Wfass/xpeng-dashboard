.class Lcom/xiaopeng/factory/model/factorytest/TestReworkModel$1;
.super Ljava/lang/Object;
.source "TestReworkModel.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/factory/model/factorytest/TestReworkModel;->requestRework(Lcom/xiaopeng/lib/http/ICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/factory/model/factorytest/TestReworkModel;

.field final synthetic val$callback:Lcom/xiaopeng/lib/http/ICallback;


# direct methods
.method constructor <init>(Lcom/xiaopeng/factory/model/factorytest/TestReworkModel;Lcom/xiaopeng/lib/http/ICallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/factory/model/factorytest/TestReworkModel;

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/TestReworkModel$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/TestReworkModel;

    iput-object p2, p0, Lcom/xiaopeng/factory/model/factorytest/TestReworkModel$1;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 2
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/TestReworkModel$1;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/TestReworkModel$1;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/http/ICallback;->onError(Ljava/lang/Object;)V

    .line 56
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 3
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 40
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->code()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/TestReworkModel$1;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/TestReworkModel$1;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/http/ICallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/TestReworkModel$1;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/TestReworkModel$1;->val$callback:Lcom/xiaopeng/lib/http/ICallback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/http/ICallback;->onError(Ljava/lang/Object;)V

    .line 49
    :cond_1
    :goto_0
    return-void
.end method
