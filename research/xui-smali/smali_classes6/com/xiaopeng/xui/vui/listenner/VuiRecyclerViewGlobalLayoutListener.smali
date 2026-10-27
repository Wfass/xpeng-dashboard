.class public Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;
.super Ljava/lang/Object;
.source "VuiRecyclerViewGlobalLayoutListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private mVuiRecycleViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xui/vui/VuiRecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private updateNum:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)V
    .locals 2
    .param p1, "view"    # Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;->updateNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;->mVuiRecycleViewRef:Ljava/lang/ref/WeakReference;

    .line 17
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;->mVuiRecycleViewRef:Ljava/lang/ref/WeakReference;

    .line 18
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;->updateNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;->mVuiRecycleViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;->mVuiRecycleViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;->updateNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;->mVuiRecycleViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->updateVuiScene()V

    .line 26
    :cond_0
    return-void
.end method

.method public setUpdateNum()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;->updateNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 30
    return-void
.end method
