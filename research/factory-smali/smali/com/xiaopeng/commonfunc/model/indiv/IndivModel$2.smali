.class Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$2;
.super Landroid/content/BroadcastReceiver;
.source "IndivModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$2;->this$0:Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.xiaopeng.action.SECURE_STORE_RELOAD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    const-string v1, "IndivModel"

    const-string v2, "onReceive ACTION_BROADCAST_SECURE_STORE_RELOAD"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$2;->this$0:Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;

    invoke-static {v1}, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;->access$100(Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$2;->this$0:Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;

    invoke-static {v1}, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;->access$100(Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 77
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$2;->this$0:Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;

    invoke-static {v1}, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;->access$000(Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;)Lcom/xiaopeng/commonfunc/callback/SecurityCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$2;->this$0:Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;

    invoke-static {v1}, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;->access$000(Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;)Lcom/xiaopeng/commonfunc/callback/SecurityCallback;

    move-result-object v1

    const/4 v3, 0x6

    invoke-interface {v1, v3, v2}, Lcom/xiaopeng/commonfunc/callback/SecurityCallback;->onReceiveResult(II)V

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$2;->this$0:Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;

    invoke-static {v1}, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;->access$200(Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/IndivHelper;->initMain(Landroid/content/Context;)V

    .line 84
    :cond_1
    return-void
.end method
