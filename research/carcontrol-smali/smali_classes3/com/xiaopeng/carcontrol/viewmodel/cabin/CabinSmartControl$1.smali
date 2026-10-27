.class Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl$1;
.super Ljava/lang/Object;
.source "CabinSmartControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->access$200(Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;->getLeftSdcSysRunningState()I

    move-result v0

    const/16 v1, 0x67

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;

    .line 159
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->access$200(Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;->getRightSdcSysRunningState()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->access$302(Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;Z)Z

    .line 166
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->cancelNotificationByID(Landroid/content/Context;I)V

    goto :goto_1

    .line 160
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->access$302(Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;Z)Z

    .line 161
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "xpCarControl_sdc_prevent_playing"

    invoke-virtual {v0, v2, v3, v1}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->showSdcPreventPlayingNotify(Landroid/content/Context;Ljava/lang/String;I)V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->access$400(Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method
