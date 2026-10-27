.class Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$1;
.super Landroid/os/Handler;
.source "XuiBtMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 103
    :pswitch_0
    const-string v0, "XuiBtMediaManager"

    const-string v1, "handler MSG_BT_REQ_SELECT"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->access$200(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;)V

    .line 105
    goto :goto_0

    .line 98
    :pswitch_1
    const-string v0, "XuiBtMediaManager"

    const-string v1, "handler MSG_BT_REQ_CONNECT"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;)V

    .line 100
    goto :goto_0

    .line 94
    :pswitch_2
    const-string v0, "XuiBtMediaManager"

    const-string v1, "handler MSG_BT_REQ_DISCONNECT"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;->access$000(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/XuiBtMediaManager;)V

    .line 96
    nop

    .line 110
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
