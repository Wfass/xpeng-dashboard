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

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 70
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->access$000(Lcom/xiaopeng/xui/widget/media/XVideoLayout;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 74
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_titlebar_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_controller_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 76
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_titlebar_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 77
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_controller_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$1;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    iget-object p1, p1, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->controllerShowHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
