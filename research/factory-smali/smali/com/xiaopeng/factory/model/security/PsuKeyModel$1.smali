.class Lcom/xiaopeng/factory/model/security/PsuKeyModel$1;
.super Ljava/lang/Object;
.source "PsuKeyModel.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/factory/model/security/PsuKeyModel;->reqPsuKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/factory/model/security/PsuKeyModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/factory/model/security/PsuKeyModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/factory/model/security/PsuKeyModel;

    .line 195
    iput-object p1, p0, Lcom/xiaopeng/factory/model/security/PsuKeyModel$1;->this$0:Lcom/xiaopeng/factory/model/security/PsuKeyModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onSuccess$0(Lcom/xiaopeng/factory/model/security/PsuKeyModel$1;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 2
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/PsuKeyModel$1;->this$0:Lcom/xiaopeng/factory/model/security/PsuKeyModel;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->access$100(Lcom/xiaopeng/factory/model/security/PsuKeyModel;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 3
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/PsuKeyModel$1;->this$0:Lcom/xiaopeng/factory/model/security/PsuKeyModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->access$002(Lcom/xiaopeng/factory/model/security/PsuKeyModel;Z)Z

    .line 204
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/factory/bean/event/SSLKeyEvent;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/xiaopeng/factory/bean/event/SSLKeyEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 205
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 1
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 198
    new-instance v0, Lcom/xiaopeng/factory/model/security/-$$Lambda$PsuKeyModel$1$BKZjacQqtwAOwirVCKqFZQF48aM;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/factory/model/security/-$$Lambda$PsuKeyModel$1$BKZjacQqtwAOwirVCKqFZQF48aM;-><init>(Lcom/xiaopeng/factory/model/security/PsuKeyModel$1;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 199
    return-void
.end method
