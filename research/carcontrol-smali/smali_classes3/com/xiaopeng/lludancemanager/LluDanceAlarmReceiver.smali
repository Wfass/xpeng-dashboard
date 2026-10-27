.class public Lcom/xiaopeng/lludancemanager/LluDanceAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LluDanceAlarmReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LluDanceAlarmReceiver"


# instance fields
.field private mIsSuperPanel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/xiaopeng/lludancemanager/LluDanceAlarmReceiver;->mIsSuperPanel:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
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

    .line 21
    sget-object v0, Lcom/xiaopeng/lludancemanager/LluDanceAlarmReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "llu dance alarm receiver, action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    receiver instance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    is super panel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/lludancemanager/LluDanceAlarmReceiver;->mIsSuperPanel:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.xiaopeng.llu.dance.ALARM_TIME_OUT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 23
    invoke-static {p1}, Lcom/xiaopeng/lludancemanager/helper/LluDanceAlarmHelper;->cancelAlarmForDance(Landroid/content/Context;)V

    .line 24
    iget-boolean v1, p0, Lcom/xiaopeng/lludancemanager/LluDanceAlarmReceiver;->mIsSuperPanel:Z

    if-nez v1, :cond_1

    .line 25
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILluViewModel;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    .line 26
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->isLLuSwEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-static {}, Lcom/xiaopeng/lludancemanager/LluDanceHelper;->checkLightDanceAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 28
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v1

    sget v2, Lcom/xiaopeng/lludancemanager/R$string;->llu_dance_fragment_order_time_out_toast:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "order_play_dance_item_res_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v3, "order_play_dance_item_res_effect_name"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Karl log open time optimize llu dance alarm receiver, orderedItemId = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "llu_dance_order_play_action"

    .line 33
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 34
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 35
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/lludancemanager/R$string;->llu_effect_sw_disable:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    :cond_1
    const-string p1, "llu dance alarm order play time out, but in super panel model ignore event"

    .line 46
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/lludancemanager/R$string;->llu_dance_fragment_order_time_out_not_suit:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.xiaopeng.intent.action.ACTIVITY_CHANGED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "android.intent.extra.WINDOW_LEVEL"

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lcom/xiaopeng/lludancemanager/LluDanceAlarmReceiver;->mIsSuperPanel:Z

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "activity changed , is super panel = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/xiaopeng/lludancemanager/LluDanceAlarmReceiver;->mIsSuperPanel:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
