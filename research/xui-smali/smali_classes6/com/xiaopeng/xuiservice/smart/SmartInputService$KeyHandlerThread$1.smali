.class Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread$1;
.super Landroid/os/Handler;
.source "SmartInputService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;

    .line 279
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread$1;->this$1:Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 282
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 289
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread$1;->this$1:Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartInputService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartInputService;II)V

    .line 290
    goto :goto_0

    .line 285
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread$1;->this$1:Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartInputService$KeyHandlerThread;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartInputService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartInputService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartInputService;II)V

    .line 286
    nop

    .line 294
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
