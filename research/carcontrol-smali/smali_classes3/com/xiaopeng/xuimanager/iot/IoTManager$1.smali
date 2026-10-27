.class Lcom/xiaopeng/xuimanager/iot/IoTManager$1;
.super Landroid/os/Handler;
.source "IoTManager.java"


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
.method constructor <init>(Lcom/xiaopeng/xuimanager/iot/IoTManager;Landroid/os/Looper;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager$1;->this$0:Lcom/xiaopeng/xuimanager/iot/IoTManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 68
    invoke-static {}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    iget p1, p1, Landroid/os/Message;->what:I

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager$1;->this$0:Lcom/xiaopeng/xuimanager/iot/IoTManager;

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->access$100(Lcom/xiaopeng/xuimanager/iot/IoTManager;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    .line 72
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager$1;->this$0:Lcom/xiaopeng/xuimanager/iot/IoTManager;

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->access$200(Lcom/xiaopeng/xuimanager/iot/IoTManager;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    move-result-object p1

    if-nez p1, :cond_1

    .line 73
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager$1;->this$0:Lcom/xiaopeng/xuimanager/iot/IoTManager;

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->access$300(Lcom/xiaopeng/xuimanager/iot/IoTManager;)I

    move-result p1

    const/16 v0, 0x96

    if-ge p1, v0, :cond_2

    .line 74
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager$1;->this$0:Lcom/xiaopeng/xuimanager/iot/IoTManager;

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->access$308(Lcom/xiaopeng/xuimanager/iot/IoTManager;)I

    .line 75
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager$1;->this$0:Lcom/xiaopeng/xuimanager/iot/IoTManager;

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->access$400(Lcom/xiaopeng/xuimanager/iot/IoTManager;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager$1;->this$0:Lcom/xiaopeng/xuimanager/iot/IoTManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->access$302(Lcom/xiaopeng/xuimanager/iot/IoTManager;I)I

    .line 79
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/iot/IoTManager$1;->this$0:Lcom/xiaopeng/xuimanager/iot/IoTManager;

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->access$500(Lcom/xiaopeng/xuimanager/iot/IoTManager;)V

    :cond_2
    :goto_0
    return-void
.end method
