.class Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel$1;
.super Ljava/lang/Object;
.source "WifiKeyModel.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;->reqWifiKey(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;

.field final synthetic val$sign:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;

    .line 138
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel$1;->this$0:Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;

    iput-object p2, p0, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel$1;->val$sign:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onSuccess$0(Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel$1;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;Ljava/lang/String;)V
    .locals 2
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    .param p2, "sign"    # Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel$1;->this$0:Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;->access$100(Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 3
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel$1;->this$0:Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;->access$002(Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;Z)Z

    .line 147
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/commonfunc/bean/event/SSLKeyEvent;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/xiaopeng/commonfunc/bean/event/SSLKeyEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 2
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel$1;->val$sign:Ljava/lang/String;

    new-instance v1, Lcom/xiaopeng/commonfunc/model/security/-$$Lambda$WifiKeyModel$1$DZpO8FjkbBphtZPMVwgn48zssNY;

    invoke-direct {v1, p0, p1, v0}, Lcom/xiaopeng/commonfunc/model/security/-$$Lambda$WifiKeyModel$1$DZpO8FjkbBphtZPMVwgn48zssNY;-><init>(Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel$1;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 142
    return-void
.end method
