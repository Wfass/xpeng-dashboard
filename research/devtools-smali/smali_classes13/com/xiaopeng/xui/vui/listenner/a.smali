.class public Lcom/xiaopeng/xui/vui/listenner/a;
.super Ljava/lang/Object;
.source "VuiRecyclerViewGlobalLayoutListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private acG:Ljava/util/concurrent/atomic/AtomicInteger;

.field private acH:Lcom/xiaopeng/xui/vui/VuiRecyclerView;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/listenner/a;->acG:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/listenner/a;->acH:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/listenner/a;->acH:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    .line 17
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/listenner/a;->acG:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/listenner/a;->acH:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/listenner/a;->acG:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/listenner/a;->acH:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->qR()V

    .line 25
    :cond_0
    return-void
.end method

.method public rc()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/listenner/a;->acG:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 29
    return-void
.end method
