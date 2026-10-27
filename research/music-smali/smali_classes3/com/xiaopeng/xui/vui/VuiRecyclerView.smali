.class public Lcom/xiaopeng/xui/vui/VuiRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "VuiRecyclerView.java"

# interfaces
.implements Lbxt;
.implements Lcom/xiaopeng/xui/vui/VuiView;


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

.field private mVuiEngine:Lbxu;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 46
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsVuiCanControlScroll:Z

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3e8

    .line 43
    iput v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->UPDATE_DELAY_TIME:I

    .line 124
    new-instance v0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView$1;-><init>(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mRun:Ljava/lang/Runnable;

    .line 134
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsNeedScroll:Z

    .line 135
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsNeedLayout:Z

    const/4 p1, 0x0

    .line 136
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsItemChanged:Z

    .line 165
    new-instance v0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;-><init>(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 288
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->isVuiCanScrollDown:Z

    .line 289
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->isVuiCanScrollRight:Z

    .line 310
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsEnableInvisible:Z

    .line 311
    iput p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mStartPosition:I

    const/4 v0, -0x1

    .line 312
    iput v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mItemCount:I

    .line 313
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsReverse:Z

    const/4 p1, 0x0

    .line 314
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSupportVuiLabels:Ljava/util/List;

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->initListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 51
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsVuiCanControlScroll:Z

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3e8

    .line 43
    iput v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->UPDATE_DELAY_TIME:I

    .line 124
    new-instance v0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView$1;-><init>(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mRun:Ljava/lang/Runnable;

    .line 134
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsNeedScroll:Z

    .line 135
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsNeedLayout:Z

    const/4 p1, 0x0

    .line 136
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsItemChanged:Z

    .line 165
    new-instance v0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;-><init>(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 288
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->isVuiCanScrollDown:Z

    .line 289
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->isVuiCanScrollRight:Z

    .line 310
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsEnableInvisible:Z

    .line 311
    iput p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mStartPosition:I

    const/4 v0, -0x1

    .line 312
    iput v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mItemCount:I

    .line 313
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsReverse:Z

    const/4 p1, 0x0

    .line 314
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSupportVuiLabels:Ljava/util/List;

    .line 52
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 53
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->initListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsVuiCanControlScroll:Z

    .line 42
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mHandler:Landroid/os/Handler;

    const/16 p3, 0x3e8

    .line 43
    iput p3, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->UPDATE_DELAY_TIME:I

    .line 124
    new-instance p3, Lcom/xiaopeng/xui/vui/VuiRecyclerView$1;

    invoke-direct {p3, p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView$1;-><init>(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)V

    iput-object p3, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mRun:Ljava/lang/Runnable;

    .line 134
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsNeedScroll:Z

    .line 135
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsNeedLayout:Z

    const/4 p1, 0x0

    .line 136
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsItemChanged:Z

    .line 165
    new-instance p3, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;

    invoke-direct {p3, p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;-><init>(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)V

    iput-object p3, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 288
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->isVuiCanScrollDown:Z

    .line 289
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->isVuiCanScrollRight:Z

    .line 310
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsEnableInvisible:Z

    .line 311
    iput p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mStartPosition:I

    const/4 p3, -0x1

    .line 312
    iput p3, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mItemCount:I

    .line 313
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsReverse:Z

    const/4 p1, 0x0

    .line 314
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSupportVuiLabels:Ljava/util/List;

    .line 58
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->initListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Lbxu;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mVuiEngine:Lbxu;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSceneId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsNeedLayout:Z

    return p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mGlobalLayoutListener:Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsItemChanged:Z

    return p0
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

    const/4 v0, 0x1

    .line 103
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->setVuiLayoutLoadable(Z)V

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

    :cond_0
    return-void
.end method


# virtual methods
.method public enableVuiInvisibleFeature(I)V
    .locals 2

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableVuiInvisibleFeature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->logI(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 317
    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsEnableInvisible:Z

    .line 318
    iput p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mStartPosition:I

    return-void
.end method

.method public enableVuiInvisibleFeature(II)V
    .locals 2

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableVuiInvisibleFeature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->logD(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 328
    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsEnableInvisible:Z

    .line 329
    iput p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mStartPosition:I

    .line 330
    iput p2, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mItemCount:I

    return-void
.end method

.method public enableVuiInvisibleFeature(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 321
    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsEnableInvisible:Z

    .line 322
    iput p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mStartPosition:I

    .line 323
    iput-object p2, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSupportVuiLabels:Ljava/util/List;

    return-void
.end method

.method protected finalize()V
    .locals 0

    .line 89
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 90
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->releaseVui()V

    .line 91
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->removeGlobalLayoutListener()V

    return-void
.end method

.method public initVuiAttr(Ljava/lang/String;Lbxu;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSceneId:Ljava/lang/String;

    .line 140
    iput-object p2, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mVuiEngine:Lbxu;

    return-void
.end method

.method public initVuiAttr(Ljava/lang/String;Lbxu;Z)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSceneId:Ljava/lang/String;

    .line 145
    iput-object p2, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mVuiEngine:Lbxu;

    .line 146
    iput-boolean p3, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsItemChanged:Z

    return-void
.end method

.method public initVuiAttr(Ljava/lang/String;Lbxu;ZZ)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSceneId:Ljava/lang/String;

    .line 151
    iput-boolean p3, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsNeedScroll:Z

    .line 152
    iput-boolean p4, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsNeedLayout:Z

    .line 153
    iput-object p2, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mVuiEngine:Lbxu;

    return-void
.end method

.method public initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSceneId:Ljava/lang/String;

    .line 158
    iput-boolean p3, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsNeedScroll:Z

    .line 159
    iput-boolean p4, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsNeedLayout:Z

    .line 160
    iput-object p2, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mVuiEngine:Lbxu;

    .line 161
    iput-boolean p5, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsItemChanged:Z

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
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->vuiViewAttachedToWindow()V

    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lbxr;)Lbye;
    .locals 10

    .line 227
    iget-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsVuiCanControlScroll:Z

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const/4 p1, -0x1

    .line 228
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->canScrollVertically(I)Z

    move-result v0

    const/4 v1, 0x1

    .line 229
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->canScrollVertically(I)Z

    move-result v2

    .line 230
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->canScrollHorizontally(I)Z

    move-result v3

    .line 231
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->canScrollHorizontally(I)Z

    move-result v4

    if-nez v0, :cond_3

    if-nez v2, :cond_3

    .line 232
    iget-boolean v5, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->isVuiCanScrollDown:Z

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    if-nez v4, :cond_2

    .line 236
    iget-boolean v5, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->isVuiCanScrollRight:Z

    if-eqz v5, :cond_4

    .line 237
    :cond_2
    sget-object v5, Lbxx;->SCROLLBYX:Lbxx;

    invoke-virtual {v5}, Lbxx;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->setVuiAction(Ljava/lang/String;)V

    goto :goto_1

    .line 233
    :cond_3
    :goto_0
    sget-object v5, Lbxx;->SCROLLBYY:Lbxx;

    invoke-virtual {v5}, Lbxx;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->setVuiAction(Ljava/lang/String;)V

    .line 241
    :cond_4
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_5

    .line 243
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 245
    :cond_5
    iget-boolean v6, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsEnableInvisible:Z

    if-eqz v6, :cond_a

    .line 246
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 247
    instance-of v7, v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v7, :cond_a

    .line 248
    move-object v7, v6

    check-cast v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    const-string v8, "minValue"

    .line 249
    iget v9, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mStartPosition:I

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 250
    iget v8, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mItemCount:I

    if-eq v8, p1, :cond_6

    iget p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mStartPosition:I

    iget v6, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mItemCount:I

    :goto_2
    add-int/2addr p1, v6

    goto :goto_3

    :cond_6
    iget p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mStartPosition:I

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v6

    goto :goto_2

    :goto_3
    const-string v6, "maxValue"

    .line 251
    invoke-virtual {v5, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "displayStart"

    .line 252
    iget-boolean v8, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsReverse:Z

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v8

    sub-int v8, p1, v8

    goto :goto_4

    :cond_7
    iget v8, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mStartPosition:I

    .line 253
    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v9

    add-int/2addr v8, v9

    .line 252
    :goto_4
    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "displayEnd"

    .line 254
    iget-boolean v8, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsReverse:Z

    if-eqz v8, :cond_8

    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v7

    sub-int/2addr p1, v7

    goto :goto_5

    :cond_8
    iget p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mStartPosition:I

    .line 255
    invoke-virtual {v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v7

    add-int/2addr p1, v7

    .line 254
    :goto_5
    invoke-virtual {v5, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 256
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSupportVuiLabels:Ljava/util/List;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSupportVuiLabels:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9

    const-string p1, "supportVuiLabels"

    .line 257
    iget-object v6, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSupportVuiLabels:Ljava/util/List;

    invoke-virtual {v5, p1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    const-string p1, "isReverse"

    .line 259
    iget-boolean v6, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsReverse:Z

    invoke-virtual {v5, p1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 262
    :cond_a
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->getVuiAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    return-object p2

    .line 266
    :cond_b
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->getVuiAction()Ljava/lang/String;

    move-result-object p1

    sget-object v6, Lbxx;->SCROLLBYY:Lbxx;

    invoke-virtual {v6}, Lbxx;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v6, 0x0

    if-eqz p1, :cond_e

    const-string p1, "canScrollUp"

    .line 267
    invoke-virtual {v5, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "canScrollDown"

    if-nez v2, :cond_d

    .line 268
    iget-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->isVuiCanScrollDown:Z

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    move v1, v6

    :cond_d
    :goto_6
    invoke-virtual {v5, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_8

    :cond_e
    const-string p1, "canScrollLeft"

    .line 270
    invoke-virtual {v5, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "canScrollRight"

    if-nez v4, :cond_10

    .line 271
    iget-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->isVuiCanScrollRight:Z

    if-eqz v0, :cond_f

    goto :goto_7

    :cond_f
    move v1, v6

    :cond_10
    :goto_7
    invoke-virtual {v5, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 273
    :goto_8
    invoke-virtual {p0, v5}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p2
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
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->vuiViewDetachedFromWindow()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 339
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 340
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->onVuiVisibilityChanged(I)V

    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lbyf;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    .line 213
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 217
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-eqz p1, :cond_1

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 221
    :cond_1
    iget-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsNeedLayout:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mGlobalLayoutListener:Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;

    if-eqz p1, :cond_2

    .line 222
    invoke-virtual {p1}, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;->setUpdateNum()V

    :cond_2
    return-void
.end method

.method public setCanVuiScrollDown(Z)V
    .locals 0

    .line 291
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->isVuiCanScrollDown:Z

    return-void
.end method

.method public setCanVuiScrollRight(Z)V
    .locals 0

    .line 295
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->isVuiCanScrollRight:Z

    return-void
.end method

.method public setOrderState(Z)V
    .locals 0

    .line 334
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsReverse:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 304
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 305
    iget-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsNeedLayout:Z

    if-nez p1, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->updateVuiScene()V

    :cond_0
    return-void
.end method

.method public setVuiCanControlScroll(Z)V
    .locals 0

    .line 299
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mIsVuiCanControlScroll:Z

    return-void
.end method

.method public updateVuiScene()V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSceneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mVuiEngine:Lbxu;

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

    :cond_0
    const-string v0, "updateVuiScene sceneid is empty"

    .line 111
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->logD(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateVuiScene(I)V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mSceneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->mVuiEngine:Lbxu;

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

    :cond_0
    const-string p1, "updateVuiScene sceneid is empty"

    .line 120
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->logD(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
