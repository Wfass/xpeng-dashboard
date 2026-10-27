.class Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$1;
.super Ljava/lang/Object;
.source "CarRebootManager.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$1;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$1;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->access$100(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)Z

    move-result v0

    .line 69
    .local v0, "isRebootPolicyMeet":Z
    const-string v1, "CarRebootManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAlarm, isRebootPolicyMeet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 72
    .local v1, "pManager":Landroid/os/PowerManager;
    const-string v2, "CarRebootPolicy"

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 73
    .end local v1    # "pManager":Landroid/os/PowerManager;
    goto :goto_0

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$1;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->access$200(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)V

    .line 76
    :goto_0
    return-void
.end method
