.class Lcom/xiaopeng/factory/model/security/CduKeyModel$1;
.super Ljava/lang/Object;
.source "CduKeyModel.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/factory/model/security/CduKeyModel;->reqCduKey(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/factory/model/security/CduKeyModel;

.field final synthetic val$sign:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/factory/model/security/CduKeyModel;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/factory/model/security/CduKeyModel;

    .line 189
    iput-object p1, p0, Lcom/xiaopeng/factory/model/security/CduKeyModel$1;->this$0:Lcom/xiaopeng/factory/model/security/CduKeyModel;

    iput-object p2, p0, Lcom/xiaopeng/factory/model/security/CduKeyModel$1;->val$sign:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onSuccess$0(Lcom/xiaopeng/factory/model/security/CduKeyModel$1;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;Ljava/lang/String;)V
    .locals 2
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    .param p2, "sign"    # Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/CduKeyModel$1;->this$0:Lcom/xiaopeng/factory/model/security/CduKeyModel;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/xiaopeng/factory/model/security/CduKeyModel;->access$100(Lcom/xiaopeng/factory/model/security/CduKeyModel;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 3
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/CduKeyModel$1;->this$0:Lcom/xiaopeng/factory/model/security/CduKeyModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/model/security/CduKeyModel;->access$002(Lcom/xiaopeng/factory/model/security/CduKeyModel;Z)Z

    .line 198
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/factory/bean/event/SSLKeyEvent;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/xiaopeng/factory/bean/event/SSLKeyEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 2
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/CduKeyModel$1;->val$sign:Ljava/lang/String;

    new-instance v1, Lcom/xiaopeng/factory/model/security/-$$Lambda$CduKeyModel$1$VyZi47NyG3V5uBOTzFh7y-DkaGU;

    invoke-direct {v1, p0, p1, v0}, Lcom/xiaopeng/factory/model/security/-$$Lambda$CduKeyModel$1$VyZi47NyG3V5uBOTzFh7y-DkaGU;-><init>(Lcom/xiaopeng/factory/model/security/CduKeyModel$1;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 193
    return-void
.end method
