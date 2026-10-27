.class public Lcom/xiaopeng/xui/vui/VuiRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "VuiRecyclerView.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;
.implements Lcom/xiaopeng/vui/commons/IVuiElementListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VuiRecyclerView"


# instance fields
.field private UPDATE_DELAY_TIME:I

.field public isVuiCanScrollDown:Z

.field public isVuiCanScrollRight:Z

.field private final mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private mGlobalLayoutListener:Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsEnableInvisible:Z

.field private mIsItemChanged:Z

.field private mIsNeedLayout:Z

.field private mIsNeedScroll:Z

.field private mIsReverse:Z

.field private mIsVuiCanControlScroll:Z

.field private mItemCount:I

.field private mRun:Ljava/lang/Runnable;

.field private mSceneId:Ljava/lang/String;

.field private mScrollListener:Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewScrollListener;

.field private mStartPosition:I

.field private mSupportVuiLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsVuiCanControlScroll:Z

    .line 42
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mHandler:Landroid/os/Handler;

    .line 43
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->UPDATE_DELAY_TIME:I

    .line 124
    new-instance v1, Lcom/xiaopeng/xui/vui/VuiRecyclerView$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView$1;-><init>(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)V

    iput-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mRun:Ljava/lang/Runnable;

    .line 134
    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsNeedScroll:Z

    .line 135
    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsNeedLayout:Z

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsItemChanged:Z

    .line 165
    new-instance v1, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;-><init>(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)V

    iput-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 288
    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->isVuiCanScrollDown:Z

    .line 289
    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->isVuiCanScrollRight:Z

    .line 310
    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsEnableInvisible:Z

    .line 311
    iput v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mStartPosition:I

    .line 312
    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mItemCount:I

    .line 313
    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsReverse:Z

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSupportVuiLabels:Ljava/util/List;

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->initListener()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 51
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsVuiCanControlScroll:Z

    .line 42
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mHandler:Landroid/os/Handler;

    .line 43
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->UPDATE_DELAY_TIME:I

    .line 124
    new-instance v1, Lcom/xiaopeng/xui/vui/VuiRecyclerView$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView$1;-><init>(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)V

    iput-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mRun:Ljava/lang/Runnable;

    .line 134
    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsNeedScroll:Z

    .line 135
    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsNeedLayout:Z

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsItemChanged:Z

    .line 165
    new-instance v1, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;-><init>(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)V

    iput-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 288
    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->isVuiCanScrollDown:Z

    .line 289
    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->isVuiCanScrollRight:Z

    .line 310
    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsEnableInvisible:Z

    .line 311
    iput v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mStartPosition:I

    .line 312
    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mItemCount:I

    .line 313
    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsReverse:Z

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSupportVuiLabels:Ljava/util/List;

    .line 52
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 53
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->initListener()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsVuiCanControlScroll:Z

    .line 42
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mHandler:Landroid/os/Handler;

    .line 43
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->UPDATE_DELAY_TIME:I

    .line 124
    new-instance v1, Lcom/xiaopeng/xui/vui/VuiRecyclerView$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView$1;-><init>(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)V

    iput-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mRun:Ljava/lang/Runnable;

    .line 134
    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsNeedScroll:Z

    .line 135
    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsNeedLayout:Z

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsItemChanged:Z

    .line 165
    new-instance v1, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;-><init>(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)V

    iput-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 288
    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->isVuiCanScrollDown:Z

    .line 289
    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->isVuiCanScrollRight:Z

    .line 310
    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsEnableInvisible:Z

    .line 311
    iput v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mStartPosition:I

    .line 312
    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mItemCount:I

    .line 313
    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsReverse:Z

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSupportVuiLabels:Ljava/util/List;

    .line 58
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->initListener()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Lcom/xiaopeng/vui/commons/IVuiEngine;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSceneId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    .line 32
    iget-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsNeedLayout:Z

    return v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mGlobalLayoutListener:Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    .line 32
    iget-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsItemChanged:Z

    return v0
.end method

.method private initListener()V
    .locals 1

    .line 101
    new-instance v0, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;-><init>(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mGlobalLayoutListener:Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;

    .line 102
    new-instance v0, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewScrollListener;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewScrollListener;-><init>(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mScrollListener:Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewScrollListener;

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->setVuiLayoutLoadable(Z)V

    .line 104
    return-void
.end method

.method private removeGlobalLayoutListener()V
    .locals 2

    .line 95
    iget-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsNeedLayout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mGlobalLayoutListener:Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mGlobalLayoutListener:Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 98
    :cond_0
    return-void
.end method


# virtual methods
.method public enableVuiInvisibleFeature(I)V
    .locals 2
    .param p1, "startPosition"    # I

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableVuiInvisibleFeature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->logI(Ljava/lang/String;)V

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsEnableInvisible:Z

    .line 318
    iput p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mStartPosition:I

    .line 319
    return-void
.end method

.method public enableVuiInvisibleFeature(II)V
    .locals 2
    .param p1, "startPosition"    # I
    .param p2, "itemCount"    # I

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableVuiInvisibleFeature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->logD(Ljava/lang/String;)V

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsEnableInvisible:Z

    .line 329
    iput p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mStartPosition:I

    .line 330
    iput p2, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mItemCount:I

    .line 331
    return-void
.end method

.method public enableVuiInvisibleFeature(ILjava/util/List;)V
    .locals 1
    .param p1, "startPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 321
    .local p2, "supportVuiLabels":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsEnableInvisible:Z

    .line 322
    iput p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mStartPosition:I

    .line 323
    iput-object p2, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSupportVuiLabels:Ljava/util/List;

    .line 324
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 89
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 90
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->releaseVui()V

    .line 91
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->removeGlobalLayoutListener()V

    .line 92
    return-void
.end method

.method public initVuiAttr(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;)V
    .locals 0
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "vuiEngine"    # Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 139
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSceneId:Ljava/lang/String;

    .line 140
    iput-object p2, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 141
    return-void
.end method

.method public initVuiAttr(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;Z)V
    .locals 0
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "vuiEngine"    # Lcom/xiaopeng/vui/commons/IVuiEngine;
    .param p3, "isItemChanged"    # Z

    .line 144
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSceneId:Ljava/lang/String;

    .line 145
    iput-object p2, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 146
    iput-boolean p3, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsItemChanged:Z

    .line 147
    return-void
.end method

.method public initVuiAttr(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;ZZ)V
    .locals 0
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "vuiEngine"    # Lcom/xiaopeng/vui/commons/IVuiEngine;
    .param p3, "isNeedScroll"    # Z
    .param p4, "isNeedLayout"    # Z

    .line 150
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSceneId:Ljava/lang/String;

    .line 151
    iput-boolean p3, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsNeedScroll:Z

    .line 152
    iput-boolean p4, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsNeedLayout:Z

    .line 153
    iput-object p2, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 154
    return-void
.end method

.method public initVuiAttr(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;ZZZ)V
    .locals 0
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "vuiEngine"    # Lcom/xiaopeng/vui/commons/IVuiEngine;
    .param p3, "isNeedScroll"    # Z
    .param p4, "isNeedLayout"    # Z
    .param p5, "isItemChanged"    # Z

    .line 157
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSceneId:Ljava/lang/String;

    .line 158
    iput-boolean p3, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsNeedScroll:Z

    .line 159
    iput-boolean p4, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsNeedLayout:Z

    .line 160
    iput-object p2, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 161
    iput-boolean p5, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsItemChanged:Z

    .line 162
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 64
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->logD(Ljava/lang/String;)V

    .line 66
    iget-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsNeedLayout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mGlobalLayoutListener:Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mGlobalLayoutListener:Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 69
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsNeedScroll:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mScrollListener:Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewScrollListener;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mScrollListener:Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewScrollListener;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->vuiViewAttachedToWindow()V

    .line 73
    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 13
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "builder"    # Lcom/xiaopeng/vui/commons/IVuiElementBuilder;

    .line 227
    iget-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsVuiCanControlScroll:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 228
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->canScrollVertically(I)Z

    move-result v2

    .line 229
    .local v2, "canScrollUp":Z
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->canScrollVertically(I)Z

    move-result v4

    .line 230
    .local v4, "canScrollDown":Z
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->canScrollHorizontally(I)Z

    move-result v5

    .line 231
    .local v5, "canScrollLeft":Z
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->canScrollHorizontally(I)Z

    move-result v6

    .line 232
    .local v6, "canScrollRight":Z
    if-nez v2, :cond_3

    if-nez v4, :cond_3

    iget-boolean v7, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->isVuiCanScrollDown:Z

    if-eqz v7, :cond_1

    goto :goto_0

    .line 236
    :cond_1
    if-nez v5, :cond_2

    if-nez v6, :cond_2

    iget-boolean v7, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->isVuiCanScrollRight:Z

    if-eqz v7, :cond_4

    .line 237
    :cond_2
    sget-object v7, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYX:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v7}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->setVuiAction(Ljava/lang/String;)V

    goto :goto_1

    .line 233
    :cond_3
    :goto_0
    sget-object v7, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYY:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v7}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->setVuiAction(Ljava/lang/String;)V

    .line 241
    :cond_4
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v7

    .line 242
    .local v7, "jsonObject":Lorg/json/JSONObject;
    if-nez v7, :cond_5

    .line 243
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    move-object v7, v8

    .line 245
    :cond_5
    iget-boolean v8, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsEnableInvisible:Z

    if-eqz v8, :cond_a

    .line 246
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v8

    .line 247
    .local v8, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    if-eqz v8, :cond_a

    instance-of v9, v8, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v9, :cond_a

    .line 248
    move-object v9, v8

    check-cast v9, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 249
    .local v9, "linearLayoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    const-string v10, "minValue"

    iget v11, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mStartPosition:I

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 250
    iget v10, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mItemCount:I

    if-eq v10, v0, :cond_6

    iget v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mStartPosition:I

    iget v10, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mItemCount:I

    :goto_2
    add-int/2addr v0, v10

    goto :goto_3

    :cond_6
    iget v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mStartPosition:I

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v10

    goto :goto_2

    .line 251
    .local v0, "maxValue":I
    :goto_3
    const-string v10, "maxValue"

    invoke-virtual {v7, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 252
    const-string v10, "displayStart"

    iget-boolean v11, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsReverse:Z

    if-eqz v11, :cond_7

    invoke-virtual {v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v11

    sub-int v11, v0, v11

    goto :goto_4

    .line 253
    :cond_7
    iget v11, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mStartPosition:I

    invoke-virtual {v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v12

    add-int/2addr v11, v12

    .line 252
    :goto_4
    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 254
    const-string v10, "displayEnd"

    iget-boolean v11, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsReverse:Z

    if-eqz v11, :cond_8

    invoke-virtual {v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v11

    sub-int v11, v0, v11

    goto :goto_5

    .line 255
    :cond_8
    iget v11, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mStartPosition:I

    invoke-virtual {v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v12

    add-int/2addr v11, v12

    .line 254
    :goto_5
    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 256
    iget-object v10, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSupportVuiLabels:Ljava/util/List;

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSupportVuiLabels:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_9

    .line 257
    const-string v10, "supportVuiLabels"

    iget-object v11, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSupportVuiLabels:Ljava/util/List;

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    :cond_9
    const-string v10, "isReverse"

    iget-boolean v11, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsReverse:Z

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 262
    .end local v0    # "maxValue":I
    .end local v8    # "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .end local v9    # "linearLayoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_a
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->getVuiAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 263
    return-object v1

    .line 266
    :cond_b
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->getVuiAction()Ljava/lang/String;

    move-result-object v0

    sget-object v8, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYY:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v8}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_e

    .line 267
    const-string v0, "canScrollUp"

    invoke-virtual {v7, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 268
    const-string v0, "canScrollDown"

    if-nez v4, :cond_d

    iget-boolean v9, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->isVuiCanScrollDown:Z

    if-eqz v9, :cond_c

    goto :goto_6

    :cond_c
    move v3, v8

    nop

    :cond_d
    :goto_6
    invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_8

    .line 270
    :cond_e
    const-string v0, "canScrollLeft"

    invoke-virtual {v7, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 271
    const-string v0, "canScrollRight"

    if-nez v6, :cond_10

    iget-boolean v9, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->isVuiCanScrollRight:Z

    if-eqz v9, :cond_f

    goto :goto_7

    :cond_f
    move v3, v8

    nop

    :cond_10
    :goto_7
    invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 273
    :goto_8
    invoke-virtual {p0, v7}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    return-object v1

    .line 277
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 279
    return-object v1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 77
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetachedFromWindow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->logD(Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->removeGlobalLayoutListener()V

    .line 80
    iget-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsNeedScroll:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mScrollListener:Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewScrollListener;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mScrollListener:Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewScrollListener;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->vuiViewDetachedFromWindow()V

    .line 85
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visibility"    # I

    .line 339
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 340
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->onVuiVisibilityChanged(I)V

    .line 341
    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "vuiEvent"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 213
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 214
    .local v0, "oldAdapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    if-eqz v0, :cond_0

    .line 215
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 217
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 218
    if-eqz p1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 221
    :cond_1
    iget-boolean v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsNeedLayout:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mGlobalLayoutListener:Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;

    if-eqz v1, :cond_2

    .line 222
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mGlobalLayoutListener:Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;->setUpdateNum()V

    .line 224
    :cond_2
    return-void
.end method

.method public setCanVuiScrollDown(Z)V
    .locals 0
    .param p1, "canScrollDown"    # Z

    .line 291
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->isVuiCanScrollDown:Z

    .line 292
    return-void
.end method

.method public setCanVuiScrollRight(Z)V
    .locals 0
    .param p1, "canScrollRight"    # Z

    .line 295
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->isVuiCanScrollRight:Z

    .line 296
    return-void
.end method

.method public setOrderState(Z)V
    .locals 0
    .param p1, "isReverse"    # Z

    .line 334
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsReverse:Z

    .line 335
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 304
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 305
    iget-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsNeedLayout:Z

    if-nez v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->updateVuiScene()V

    .line 308
    :cond_0
    return-void
.end method

.method public setVuiCanControlScroll(Z)V
    .locals 0
    .param p1, "vuiCanControlScroll"    # Z

    .line 299
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsVuiCanControlScroll:Z

    .line 300
    return-void
.end method

.method public updateVuiScene()V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSceneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mRun:Ljava/lang/Runnable;

    iget v2, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->UPDATE_DELAY_TIME:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 111
    :cond_0
    const-string v0, "updateVuiScene sceneid is empty"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->logD(Ljava/lang/String;)V

    .line 113
    :goto_0
    return-void
.end method

.method public updateVuiScene(I)V
    .locals 4
    .param p1, "time"    # I

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSceneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mRun:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 120
    :cond_0
    const-string v0, "updateVuiScene sceneid is empty"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->logD(Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void
.end method
