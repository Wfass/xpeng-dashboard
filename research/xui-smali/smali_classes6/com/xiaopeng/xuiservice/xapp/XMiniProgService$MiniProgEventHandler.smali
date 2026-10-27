.class final Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$MiniProgEventHandler;
.super Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;
.source "XMiniProgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MiniProgEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V
    .locals 0

    .line 1016
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$MiniProgEventHandler;->this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    .line 1017
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;-><init>()V

    .line 1018
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1022
    const-string v0, "XMiniProgService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1024
    .local v0, "event":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1025
    .local v1, "data":Ljava/lang/Object;
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 1026
    .local v2, "code":I
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1031
    :pswitch_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$MiniProgEventHandler;->this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->access$1400(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V

    .line 1032
    goto :goto_0

    .line 1028
    :pswitch_1
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$MiniProgEventHandler;->this$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-static {v3, v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->access$1300(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;ILjava/lang/Object;I)V

    .line 1029
    nop

    .line 1036
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
