.class Lcom/xiaopeng/xuimanager/iot/IoTManager$2;
.super Ljava/lang/Object;
.source "IoTManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuimanager/iot/IoTManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuimanager/iot/IoTManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/iot/IoTManager;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager$2;->this$0:Lcom/xiaopeng/xuimanager/iot/IoTManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 90
    invoke-static {}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "IoTManager Service died"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager$2;->this$0:Lcom/xiaopeng/xuimanager/iot/IoTManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->access$202(Lcom/xiaopeng/xuimanager/iot/IoTManager;Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager$2;->this$0:Lcom/xiaopeng/xuimanager/iot/IoTManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->access$302(Lcom/xiaopeng/xuimanager/iot/IoTManager;I)I

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager$2;->this$0:Lcom/xiaopeng/xuimanager/iot/IoTManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->access$400(Lcom/xiaopeng/xuimanager/iot/IoTManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
