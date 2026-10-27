.class Lcom/android/car/CarPowerManagementService$1;
.super Landroid/content/BroadcastReceiver;
.source "CarPowerManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarPowerManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/CarPowerManagementService;


# direct methods
.method constructor <init>(Lcom/android/car/CarPowerManagementService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/CarPowerManagementService;

    .line 264
    iput-object p1, p0, Lcom/android/car/CarPowerManagementService$1;->this$0:Lcom/android/car/CarPowerManagementService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 267
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService$1;->this$0:Lcom/android/car/CarPowerManagementService;

    invoke-static {v1}, Lcom/android/car/CarPowerManagementService;->access$400(Lcom/android/car/CarPowerManagementService;)Lcom/android/car/CarPowerManagementService$PowerHandler;

    move-result-object v1

    invoke-static {v1}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$300(Lcom/android/car/CarPowerManagementService$PowerHandler;)V

    .line 270
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService$1;->this$0:Lcom/android/car/CarPowerManagementService;

    invoke-static {v1}, Lcom/android/car/CarPowerManagementService;->access$400(Lcom/android/car/CarPowerManagementService;)Lcom/android/car/CarPowerManagementService$PowerHandler;

    move-result-object v1

    invoke-static {v1}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$500(Lcom/android/car/CarPowerManagementService$PowerHandler;)V

    .line 271
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService$1;->this$0:Lcom/android/car/CarPowerManagementService;

    invoke-static {v1}, Lcom/android/car/CarPowerManagementService;->access$400(Lcom/android/car/CarPowerManagementService;)Lcom/android/car/CarPowerManagementService$PowerHandler;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$600(Lcom/android/car/CarPowerManagementService$PowerHandler;J)V

    .line 273
    :cond_0
    return-void
.end method
