.class final Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$MiniProgHandler;
.super Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;
.source "MiniProgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MiniProgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$MiniProgHandler;->this$0:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    .line 274
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;-><init>()V

    .line 275
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 279
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 280
    .local v0, "code":I
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 291
    :pswitch_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$MiniProgHandler;->this$0:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->access$600(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;I)V

    .line 292
    goto :goto_0

    .line 285
    :pswitch_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$MiniProgHandler;->this$0:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->access$400(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;)V

    .line 286
    goto :goto_0

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$MiniProgHandler;->this$0:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->access$500(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;IZ)V

    .line 289
    goto :goto_0

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$MiniProgHandler;->this$0:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->access$300(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;)V

    .line 283
    nop

    .line 296
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
