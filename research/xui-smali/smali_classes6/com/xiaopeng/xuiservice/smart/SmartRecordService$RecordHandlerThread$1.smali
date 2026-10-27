.class Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread$1;
.super Landroid/os/Handler;
.source "SmartRecordService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread;

    .line 264
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread$1;->this$1:Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 267
    const-string v0, "RecordHandlerThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage  msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 276
    const-string v0, "RecordHandlerThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event type not handled?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread$1;->this$1:Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartRecordService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->access$800(Lcom/xiaopeng/xuiservice/smart/SmartRecordService;)V

    .line 271
    goto :goto_0

    .line 273
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread$1;->this$1:Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartRecordService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->access$900(Lcom/xiaopeng/xuiservice/smart/SmartRecordService;)V

    .line 274
    nop

    .line 279
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
