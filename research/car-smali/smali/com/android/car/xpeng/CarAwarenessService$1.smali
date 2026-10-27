.class Lcom/android/car/xpeng/CarAwarenessService$1;
.super Landroid/content/BroadcastReceiver;
.source "CarAwarenessService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/car/xpeng/CarAwarenessService;-><init>(Landroid/content/Context;Lcom/android/car/CarPropertyService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/xpeng/CarAwarenessService;


# direct methods
.method constructor <init>(Lcom/android/car/xpeng/CarAwarenessService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/xpeng/CarAwarenessService;

    .line 86
    iput-object p1, p0, Lcom/android/car/xpeng/CarAwarenessService$1;->this$0:Lcom/android/car/xpeng/CarAwarenessService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 89
    const-string v0, "prevState"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 90
    .local v0, "prevState":I
    const-string v2, "state"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 91
    .local v1, "state":I
    const-class v2, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-static {v2}, Lcom/android/car/CarLocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 92
    const-class v2, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-static {v2}, Lcom/android/car/CarLocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-virtual {v2, v0, v1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleOTAStateChanged(II)V

    .line 94
    :cond_0
    const-class v2, Lcom/android/car/xpeng/guard/CarGuardModeService;

    invoke-static {v2}, Lcom/android/car/CarLocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 95
    const-class v2, Lcom/android/car/xpeng/guard/CarGuardModeService;

    invoke-static {v2}, Lcom/android/car/CarLocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/xpeng/guard/CarGuardModeService;

    invoke-virtual {v2, v0, v1}, Lcom/android/car/xpeng/guard/CarGuardModeService;->handleOTAStateChanged(II)V

    .line 97
    :cond_1
    return-void
.end method
