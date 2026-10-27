.class Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$1;
.super Landroid/content/BroadcastReceiver;
.source "IndivPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$1;->this$0:Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.xiaopeng.action.SECURE_STORE_RELOAD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    const-string v1, "IndivPresenter"

    const-string v2, "onReceive ACTION_BROADCAST_SECURE_STORE_RELOAD"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/factory/utils/IndivHelper;->initMain(Landroid/content/Context;)V

    .line 61
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$1;->this$0:Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;

    invoke-static {v1}, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;->access$000(Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;)Lcom/xiaopeng/factory/view/indiv/IIndivView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$1;->this$0:Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;

    invoke-static {v1}, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;->access$000(Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;)Lcom/xiaopeng/factory/view/indiv/IIndivView;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaopeng/factory/view/indiv/IIndivView;->updateIndivButtonView()V

    .line 63
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$1;->this$0:Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;->checkIndiv()V

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$1;->this$0:Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;

    invoke-static {v1}, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;->access$100(Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;)Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 67
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$1;->this$0:Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;

    invoke-static {v1}, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;->access$100(Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;)Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$1;->this$0:Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;

    invoke-virtual {v2}, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;->isTeeInitSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil$IndivTest;->CMD_NAME:[B

    sget-object v3, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_00_00:[B

    invoke-static {v2, v3}, Lcom/xiaopeng/factory/utils/DmUtil;->responseOK([B[B)[B

    move-result-object v2

    goto :goto_0

    .line 69
    :cond_1
    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil$IndivTest;->CMD_NAME:[B

    sget-object v3, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_00_00:[B

    invoke-static {v2, v3}, Lcom/xiaopeng/factory/utils/DmUtil;->responseNG([B[B)[B

    move-result-object v2

    .line 67
    :goto_0
    invoke-virtual {v1, v2}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    .line 72
    :cond_2
    return-void
.end method
