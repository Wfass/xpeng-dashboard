.class Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$1;
.super Landroid/os/Handler;
.source "EventProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 66
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->access$300(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;)V

    .line 67
    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$KeyConfigsWrapper;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->access$200(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$KeyConfigsWrapper;)V

    .line 63
    goto :goto_0

    .line 58
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/MotionEvent;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->access$100(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;Landroid/view/MotionEvent;)V

    .line 59
    goto :goto_0

    .line 54
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/KeyEvent;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;ILandroid/view/KeyEvent;)V

    .line 55
    nop

    .line 72
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
