.class Lcom/xiaopeng/xui/widget/media/XVideoLayout$1;
.super Landroid/os/Handler;
.source "XVideoLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/media/XVideoLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/media/XVideoLayout;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/media/XVideoLayout;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 70
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->access$000(Lcom/xiaopeng/xui/widget/media/XVideoLayout;)I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    return-void

    .line 74
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_titlebar_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_controller_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 83
    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_titlebar_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_controller_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->controllerShowHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 79
    nop

    .line 88
    :goto_0
    return-void
.end method
