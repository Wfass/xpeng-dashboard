.class public Lcom/xiaopeng/xui/vui/VuiRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "VuiRecyclerView.java"

# interfaces
.implements Lcom/xiaopeng/vui/commons/b;
.implements Lcom/xiaopeng/xui/vui/a;


# instance fields
.field private abN:Z

.field private abO:Lcom/xiaopeng/xui/vui/listenner/a;

.field private abP:Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewScrollListener;

.field private abQ:Lcom/xiaopeng/vui/commons/c;

.field private abR:I

.field private abS:Ljava/lang/Runnable;

.field private abT:Z

.field private abU:Z

.field private abV:Z

.field private final abW:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field public abX:Z

.field public abY:Z

.field private abZ:Z

.field private aca:Z

.field private acb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mItemCount:I

.field private mSceneId:Ljava/lang/String;

.field private mStartPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abN:Z

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mHandler:Landroid/os/Handler;

    .line 41
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abR:I

    .line 115
    new-instance v0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView$1;-><init>(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abS:Ljava/lang/Runnable;

    .line 125
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abT:Z

    .line 126
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abU:Z

    .line 127
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abV:Z

    .line 156
    new-instance v0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;-><init>(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abW:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 279
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abX:Z

    .line 280
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abY:Z

    .line 301
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abZ:Z

    .line 302
    iput p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mStartPosition:I

    .line 303
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mItemCount:I

    .line 304
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->aca:Z

    .line 305
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->acb:Ljava/util/List;

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->qQ()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 49
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abN:Z

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mHandler:Landroid/os/Handler;

    .line 41
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abR:I

    .line 115
    new-instance v0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView$1;-><init>(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abS:Ljava/lang/Runnable;

    .line 125
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abT:Z

    .line 126
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abU:Z

    .line 127
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abV:Z

    .line 156
    new-instance v0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;-><init>(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abW:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 279
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abX:Z

    .line 280
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abY:Z

    .line 301
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abZ:Z

    .line 302
    iput p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mStartPosition:I

    .line 303
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mItemCount:I

    .line 304
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->aca:Z

    .line 305
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->acb:Ljava/util/List;

    .line 50
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->c(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 51
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->qQ()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abN:Z

    .line 40
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mHandler:Landroid/os/Handler;

    .line 41
    const/16 p3, 0x3e8

    iput p3, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abR:I

    .line 115
    new-instance p3, Lcom/xiaopeng/xui/vui/VuiRecyclerView$1;

    invoke-direct {p3, p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView$1;-><init>(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)V

    iput-object p3, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abS:Ljava/lang/Runnable;

    .line 125
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abT:Z

    .line 126
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abU:Z

    .line 127
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abV:Z

    .line 156
    new-instance p3, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;

    invoke-direct {p3, p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;-><init>(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)V

    iput-object p3, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abW:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 279
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abX:Z

    .line 280
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abY:Z

    .line 301
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abZ:Z

    .line 302
    iput p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mStartPosition:I

    .line 303
    const/4 p3, -0x1

    iput p3, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mItemCount:I

    .line 304
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->aca:Z

    .line 305
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->acb:Ljava/util/List;

    .line 56
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->c(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 57
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->qQ()V

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Lcom/xiaopeng/vui/commons/c;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abQ:Lcom/xiaopeng/vui/commons/c;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSceneId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abU:Z

    return p0
.end method

.method static synthetic d(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Lcom/xiaopeng/xui/vui/listenner/a;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abO:Lcom/xiaopeng/xui/vui/listenner/a;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abV:Z

    return p0
.end method

.method private qQ()V
    .locals 1

    .line 92
    new-instance v0, Lcom/xiaopeng/xui/vui/listenner/a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/vui/listenner/a;-><init>(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abO:Lcom/xiaopeng/xui/vui/listenner/a;

    .line 93
    new-instance v0, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewScrollListener;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewScrollListener;-><init>(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abP:Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewScrollListener;

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->bf(Z)V

    .line 95
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 87
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 88
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->qV()V

    .line 89
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 62
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->fn(Ljava/lang/String;)V

    .line 64
    iget-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abU:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abO:Lcom/xiaopeng/xui/vui/listenner/a;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abO:Lcom/xiaopeng/xui/vui/listenner/a;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 67
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abP:Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewScrollListener;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abP:Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewScrollListener;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 70
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 74
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetachedFromWindow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->fn(Ljava/lang/String;)V

    .line 76
    iget-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abU:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abO:Lcom/xiaopeng/xui/vui/listenner/a;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abO:Lcom/xiaopeng/xui/vui/listenner/a;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 79
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abP:Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewScrollListener;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abP:Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewScrollListener;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abS:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method public qR()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSceneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abQ:Lcom/xiaopeng/vui/commons/c;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abS:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abS:Ljava/lang/Runnable;

    iget v2, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abR:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 102
    :cond_0
    const-string v0, "updateVuiScene sceneid is empty"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->fn(Ljava/lang/String;)V

    .line 104
    :goto_0
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    .line 204
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abW:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 208
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 209
    if-eqz p1, :cond_1

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abW:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 212
    :cond_1
    iget-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abU:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abO:Lcom/xiaopeng/xui/vui/listenner/a;

    if-eqz p1, :cond_2

    .line 213
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abO:Lcom/xiaopeng/xui/vui/listenner/a;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/vui/listenner/a;->rc()V

    .line 215
    :cond_2
    return-void
.end method

.method public setCanVuiScrollDown(Z)V
    .locals 0

    .line 282
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abX:Z

    .line 283
    return-void
.end method

.method public setCanVuiScrollRight(Z)V
    .locals 0

    .line 286
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abY:Z

    .line 287
    return-void
.end method

.method public setOrderState(Z)V
    .locals 0

    .line 325
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->aca:Z

    .line 326
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 295
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 296
    iget-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abU:Z

    if-nez p1, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->qR()V

    .line 299
    :cond_0
    return-void
.end method

.method public setVuiCanControlScroll(Z)V
    .locals 0

    .line 290
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->abN:Z

    .line 291
    return-void
.end method
