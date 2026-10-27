.class Lcom/android/car/xpeng/imm/CarImmService$BootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CarImmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/xpeng/imm/CarImmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BootCompleteReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/xpeng/imm/CarImmService;


# direct methods
.method private constructor <init>(Lcom/android/car/xpeng/imm/CarImmService;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/android/car/xpeng/imm/CarImmService$BootCompleteReceiver;->this$0:Lcom/android/car/xpeng/imm/CarImmService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/xpeng/imm/CarImmService;Lcom/android/car/xpeng/imm/CarImmService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/xpeng/imm/CarImmService;
    .param p2, "x1"    # Lcom/android/car/xpeng/imm/CarImmService$1;

    .line 276
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/imm/CarImmService$BootCompleteReceiver;-><init>(Lcom/android/car/xpeng/imm/CarImmService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 279
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    const-string v1, "CarImmService"

    const-string v2, "Received BOOT_COMPLETED action"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService$BootCompleteReceiver;->this$0:Lcom/android/car/xpeng/imm/CarImmService;

    invoke-static {v1}, Lcom/android/car/xpeng/imm/CarImmService;->access$700(Lcom/android/car/xpeng/imm/CarImmService;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    const-string v1, "CarImmService"

    const-string v2, "Screen is on"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService$BootCompleteReceiver;->this$0:Lcom/android/car/xpeng/imm/CarImmService;

    const/16 v2, 0x1d

    invoke-static {v1, v2}, Lcom/android/car/xpeng/imm/CarImmService;->access$800(Lcom/android/car/xpeng/imm/CarImmService;I)V

    .line 287
    iget-object v1, p0, Lcom/android/car/xpeng/imm/CarImmService$BootCompleteReceiver;->this$0:Lcom/android/car/xpeng/imm/CarImmService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/car/xpeng/imm/CarImmService;->access$900(Lcom/android/car/xpeng/imm/CarImmService;I)I

    goto :goto_0

    .line 289
    :cond_0
    const-string v1, "CarImmService"

    const-string v2, "Screen is off, can not calibrate"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_1
    :goto_0
    return-void
.end method
