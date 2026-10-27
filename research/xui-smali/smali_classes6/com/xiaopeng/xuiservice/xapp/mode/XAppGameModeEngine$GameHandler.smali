.class Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine$GameHandler;
.super Landroid/os/Handler;
.source "XAppGameModeEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameHandler"
.end annotation


# static fields
.field static final MSG_EPS_EVENT:I = 0x2

.field static final MSG_INIT:I = 0x0

.field static final MSG_KEY_EVENT:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine$GameHandler;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;

    .line 48
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 49
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 62
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine$GameHandler;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/car/hardware/CarPropertyValue;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->access$100(Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;Landroid/car/hardware/CarPropertyValue;)V

    .line 63
    goto :goto_0

    .line 58
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine$GameHandler;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/XAppGameModeEngine;Landroid/view/KeyEvent;)V

    .line 59
    goto :goto_0

    .line 55
    :pswitch_2
    nop

    .line 68
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
