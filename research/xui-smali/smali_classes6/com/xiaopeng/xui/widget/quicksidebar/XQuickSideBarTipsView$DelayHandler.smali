.class final Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$DelayHandler;
.super Landroid/os/Handler;
.source "XQuickSideBarTipsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DelayHandler"
.end annotation


# instance fields
.field private final reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;)V
    .locals 1
    .param p1, "context"    # Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;

    .line 78
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 79
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$DelayHandler;->reference:Ljava/lang/ref/WeakReference;

    .line 80
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$DelayHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;

    .line 85
    .local v0, "model":Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;
    if-nez v0, :cond_0

    .line 86
    return-void

    .line 88
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    invoke-static {v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->access$000(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->access$100(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;Z)V

    .line 91
    invoke-static {v0}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;->access$200(Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView;)Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$DelayHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/quicksidebar/XQuickSideBarTipsView$DelayHandler;->removeMessages(I)V

    .line 92
    nop

    .line 96
    :goto_0
    return-void
.end method
