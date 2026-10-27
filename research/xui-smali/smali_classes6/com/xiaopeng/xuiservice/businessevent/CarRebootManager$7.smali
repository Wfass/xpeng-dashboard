.class Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$7;
.super Ljava/lang/Object;
.source "CarRebootManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->tryToRebootPolicyTask()V
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

    .line 186
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$7;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$7;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->access$1000(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)Z

    move-result v0

    .line 190
    .local v0, "isInCharging":Z
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$7;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->access$1100(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)Z

    move-result v1

    .line 191
    .local v1, "isCarLock":Z
    const-string v2, "CarRebootManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryToRebootPolicyTask, isInCharging: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isCarLock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 194
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$7;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->access$600(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)V

    .line 195
    const-string v2, "CarRebootManager"

    const-string v3, "schedule reboot alarm"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$7;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->access$900(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)Landroid/app/AlarmManager;

    move-result-object v3

    const/4 v4, 0x3

    .line 197
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/32 v7, 0x927c0

    add-long/2addr v5, v7

    const-string v7, "tryToRebootPolicyTask"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$7;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    .line 198
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->access$800(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)Landroid/app/AlarmManager$OnAlarmListener;

    move-result-object v8

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$7;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->access$1200(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$WorkHandler;

    move-result-object v9

    .line 196
    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 200
    :cond_0
    return-void
.end method
