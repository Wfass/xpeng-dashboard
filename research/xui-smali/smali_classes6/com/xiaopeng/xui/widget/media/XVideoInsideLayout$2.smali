.class Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$2;
.super Landroid/os/Handler;
.source "XVideoInsideLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 85
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 88
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_titlebar_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_controller_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 98
    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_titlebar_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_controller_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$2;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->controllerShowHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 94
    nop

    .line 103
    :goto_0
    return-void
.end method
