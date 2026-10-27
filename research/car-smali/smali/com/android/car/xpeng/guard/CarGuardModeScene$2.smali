.class Lcom/android/car/xpeng/guard/CarGuardModeScene$2;
.super Ljava/lang/Object;
.source "CarGuardModeScene.java"

# interfaces
.implements Lcom/xiaopeng/aftersales/manager/RepairModeListener;


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

    .line 1300
    iput-object p1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene$2;->this$0:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepairModeChanged(ZI)V
    .locals 3
    .param p1, "onoff"    # Z
    .param p2, "switchResult"    # I

    .line 1303
    const-string v0, "CarGuardModeScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRepairModeChanged: onoff:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 1306
    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene$2;->this$0:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    invoke-static {v2, v1}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->access$602(Lcom/android/car/xpeng/guard/CarGuardModeScene;Z)Z

    .line 1307
    iget-object v1, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene$2;->this$0:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    sget-object v2, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->REPAIR_MODE:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    invoke-static {v1, v2, v0}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->access$700(Lcom/android/car/xpeng/guard/CarGuardModeScene;Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;Z)V

    goto :goto_0

    .line 1310
    :cond_0
    iget-object v2, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene$2;->this$0:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    invoke-static {v2, v0}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->access$602(Lcom/android/car/xpeng/guard/CarGuardModeScene;Z)Z

    .line 1311
    iget-object v0, p0, Lcom/android/car/xpeng/guard/CarGuardModeScene$2;->this$0:Lcom/android/car/xpeng/guard/CarGuardModeScene;

    sget-object v2, Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;->REPAIR_MODE:Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;

    invoke-static {v0, v2, v1}, Lcom/android/car/xpeng/guard/CarGuardModeScene;->access$700(Lcom/android/car/xpeng/guard/CarGuardModeScene;Lcom/android/car/xpeng/guard/CarGuardModeScene$ActiveType;Z)V

    .line 1313
    :goto_0
    return-void
.end method
