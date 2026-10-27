.class Lcom/android/car/xpeng/guard/CarGuardModeScene$3;
.super Ljava/lang/Object;
.source "CarGuardModeScene.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/car/xpeng/guard/CarGuardModeScene;->linkAndSubToAfterSales()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/xpeng/guard/CarGuardModeScene;


# direct methods
.method constructor <init>(Lcom/android/car/xpeng/guard/CarGuardModeScene;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/xpeng/guard/CarGuardModeScene;

    .line 1315
    iput-object p1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene$3;->this$0:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 1318
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 1319
    .local v0, "nameStr":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "null"

    .line 1320
    .local v1, "serviceStr":Ljava/lang/String;
    :goto_1
    const-string v2, "CarGuardModeScene"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAfterSalesConnected name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", service = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene$3;->this$0:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    invoke-static {v2}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->access$900(Lcom/android/car/xpeng/guard/CarGuardModeScene;)Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene$3;->this$0:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    invoke-static {v3}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->access$800(Lcom/android/car/xpeng/guard/CarGuardModeScene;)Lcom/xiaopeng/aftersales/manager/RepairModeListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/aftersales/manager/AfterSalesManager;->registerRepairModeListener(Lcom/xiaopeng/aftersales/manager/RepairModeListener;)V

    .line 1322
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1326
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 1327
    .local v0, "nameStr":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene$3;->this$0:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    invoke-static {v1}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->access$900(Lcom/android/car/xpeng/guard/CarGuardModeScene;)Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1328
    const-string v1, "CarGuardModeScene"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAfterSalesDisconnected name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene$3;->this$0:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    invoke-static {v1}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->access$900(Lcom/android/car/xpeng/guard/CarGuardModeScene;)Lcom/xiaopeng/aftersales/manager/AfterSalesManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene$3;->this$0:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    invoke-static {v2}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->access$800(Lcom/android/car/xpeng/guard/CarGuardModeScene;)Lcom/xiaopeng/aftersales/manager/RepairModeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/aftersales/manager/AfterSalesManager;->unregisterRepairModeListener(Lcom/xiaopeng/aftersales/manager/RepairModeListener;)V

    .line 1331
    :cond_1
    return-void
.end method
