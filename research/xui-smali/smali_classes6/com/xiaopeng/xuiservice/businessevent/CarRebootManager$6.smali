.class Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$6;
.super Ljava/lang/Object;
.source "CarRebootManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->cancelRebootPolicyTask()V
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

    .line 175
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$6;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 179
    const-string v0, "CarRebootManager"

    const-string v1, "cancelRebootPolicyTask"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$6;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->access$900(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$6;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->access$800(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)Landroid/app/AlarmManager$OnAlarmListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 181
    return-void
.end method
