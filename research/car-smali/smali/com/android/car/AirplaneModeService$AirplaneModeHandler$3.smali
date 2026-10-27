.class Lcom/android/car/AirplaneModeService$AirplaneModeHandler$3;
.super Landroid/content/BroadcastReceiver;
.source "AirplaneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/AirplaneModeService$AirplaneModeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/car/AirplaneModeService$AirplaneModeHandler;


# direct methods
.method constructor <init>(Lcom/android/car/AirplaneModeService$AirplaneModeHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/car/AirplaneModeService$AirplaneModeHandler;

    .line 382
    iput-object p1, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$3;->this$1:Lcom/android/car/AirplaneModeService$AirplaneModeHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 385
    const-string v0, "wifi_state"

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 388
    .local v0, "state":I
    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 389
    iget-object v2, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$3;->this$1:Lcom/android/car/AirplaneModeService$AirplaneModeHandler;

    invoke-virtual {v2, v1}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->notifyWifiStateChanged(Z)V

    goto :goto_0

    .line 390
    :cond_0
    if-ne v0, v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/android/car/AirplaneModeService$AirplaneModeHandler$3;->this$1:Lcom/android/car/AirplaneModeService$AirplaneModeHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/car/AirplaneModeService$AirplaneModeHandler;->notifyWifiStateChanged(Z)V

    .line 393
    :cond_1
    :goto_0
    return-void
.end method
