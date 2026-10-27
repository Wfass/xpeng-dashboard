.class Lcom/xiaopeng/carcontrol/helper/NotificationHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->registerBroadcastIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/helper/NotificationHelper;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/helper/NotificationHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 506
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper$1;->this$0:Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    const-string p1, "cardId"

    const/4 v0, -0x1

    .line 509
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 511
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper$1;->this$0:Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->access$200(Lcom/xiaopeng/carcontrol/helper/NotificationHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 512
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper$1;->this$0:Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->access$300(Lcom/xiaopeng/carcontrol/helper/NotificationHelper;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/helper/NotificationHelper$OnNotificationListener;

    .line 513
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 516
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.xiaopeng.carcontrol.intent.action.ACTION_POSITIVE"

    .line 517
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper$OnNotificationListener;->onConfirm()V

    goto :goto_0

    :cond_0
    const-string v0, "com.xiaopeng.carcontrol.intent.action.ACTION_NEGATIVE"

    .line 519
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper$OnNotificationListener;->onCancel()V

    goto :goto_0

    :cond_1
    const-string v0, "NotificationHelper"

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnHandled action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/helper/NotificationHelper$1;->this$0:Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->access$400(Lcom/xiaopeng/carcontrol/helper/NotificationHelper;I)V

    return-void

    :catchall_0
    move-exception p1

    .line 513
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
