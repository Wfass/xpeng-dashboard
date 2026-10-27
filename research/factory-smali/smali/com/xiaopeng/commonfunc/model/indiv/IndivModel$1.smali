.class Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$1;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$1;->this$0:Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    const-string v0, "IndivModel"

    const-string v1, "handleMessage TIME_OUT"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$1;->this$0:Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;->access$000(Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;)Lcom/xiaopeng/commonfunc/callback/SecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$1;->this$0:Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;->access$000(Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;)Lcom/xiaopeng/commonfunc/callback/SecurityCallback;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/commonfunc/callback/SecurityCallback;->onReceiveResult(II)V

    .line 66
    :cond_1
    :goto_0
    return-void
.end method
