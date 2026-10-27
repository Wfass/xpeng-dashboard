.class Lcom/xiaopeng/commonfunc/model/security/TboxKeyModel$1;
.super Ljava/lang/Object;
.source "TboxKeyModel.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/commonfunc/model/security/TboxKeyModel;->reqTboxKey(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/commonfunc/model/security/TboxKeyModel;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$sign:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/commonfunc/model/security/TboxKeyModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/commonfunc/model/security/TboxKeyModel;

    .line 121
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/security/TboxKeyModel$1;->this$0:Lcom/xiaopeng/commonfunc/model/security/TboxKeyModel;

    iput-object p2, p0, Lcom/xiaopeng/commonfunc/model/security/TboxKeyModel$1;->val$sign:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/commonfunc/model/security/TboxKeyModel$1;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onSuccess$0(Lcom/xiaopeng/commonfunc/model/security/TboxKeyModel$1;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    .param p2, "sign"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/TboxKeyModel$1;->this$0:Lcom/xiaopeng/commonfunc/model/security/TboxKeyModel;

    invoke-static {v0, p1, p2, p3}, Lcom/xiaopeng/commonfunc/model/security/TboxKeyModel;->access$000(Lcom/xiaopeng/commonfunc/model/security/TboxKeyModel;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 3
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 129
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/commonfunc/bean/event/SSLKeyEvent;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/xiaopeng/commonfunc/bean/event/SSLKeyEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 3
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/TboxKeyModel$1;->val$sign:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/security/TboxKeyModel$1;->val$action:Ljava/lang/String;

    new-instance v2, Lcom/xiaopeng/commonfunc/model/security/-$$Lambda$TboxKeyModel$1$WErTzaayowE5Y5JDmIrWEkmZv70;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/xiaopeng/commonfunc/model/security/-$$Lambda$TboxKeyModel$1$WErTzaayowE5Y5JDmIrWEkmZv70;-><init>(Lcom/xiaopeng/commonfunc/model/security/TboxKeyModel$1;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method
