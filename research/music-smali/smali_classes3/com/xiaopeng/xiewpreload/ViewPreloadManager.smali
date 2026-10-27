.class public Lcom/xiaopeng/xiewpreload/ViewPreloadManager;
.super Ljava/lang/Object;
.source "ViewPreloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xiewpreload/ViewPreloadManager$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewPreloadManager"

.field public static final VIEW_TAG_ATTACHED:Ljava/lang/String; = "view_tag_attached"

.field public static final VIEW_TAG_DETACHED:Ljava/lang/String; = "view_tag_detached"

.field public static final VIEW_TAG_KEY:I

.field public static final VIEW_TAG_NONE:Ljava/lang/String;


# instance fields
.field private iViewPreload:Lcom/xiaopeng/xiewpreload/IViewPreload;

.field private volatile mIsInit:Z

.field private mWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->view_preload_tag:I

    sput v0, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->VIEW_TAG_KEY:I

    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->VIEW_TAG_NONE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->mIsInit:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xiewpreload/ViewPreloadManager$1;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xiewpreload/ViewPreloadManager;
    .locals 1

    .line 50
    invoke-static {}, Lcom/xiaopeng/xiewpreload/ViewPreloadManager$Holder;->access$000()Lcom/xiaopeng/xiewpreload/ViewPreloadManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addPreLoadXml(II)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->iViewPreload:Lcom/xiaopeng/xiewpreload/IViewPreload;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xiewpreload/IViewPreload;->addPreLoadXml(II)V

    :cond_0
    return-void
.end method

.method public cacheBinding(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lip;",
            ">;)V"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->iViewPreload:Lcom/xiaopeng/xiewpreload/IViewPreload;

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xiewpreload/IViewPreload;->cachePreLoadBinding(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public clearPool()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->iViewPreload:Lcom/xiaopeng/xiewpreload/IViewPreload;

    invoke-interface {v0}, Lcom/xiaopeng/xiewpreload/IViewPreload;->clearPool()V

    return-void
.end method

.method public getBindingFromPool(I)Lip;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->iViewPreload:Lcom/xiaopeng/xiewpreload/IViewPreload;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/xiaopeng/xiewpreload/IViewPreload;->getBindingFromPool(I)Lip;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->iViewPreload:Lcom/xiaopeng/xiewpreload/IViewPreload;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 99
    :cond_0
    invoke-interface {v0}, Lcom/xiaopeng/xiewpreload/IViewPreload;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getViewFromPool(I)Landroid/view/View;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->iViewPreload:Lcom/xiaopeng/xiewpreload/IViewPreload;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/xiaopeng/xiewpreload/IViewPreload;->getViewFromPool(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getViewFromPool(IZ)Landroid/view/View;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->iViewPreload:Lcom/xiaopeng/xiewpreload/IViewPreload;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xiewpreload/IViewPreload;->getViewFromPool(IZ)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 38
    iget-boolean v0, p0, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->mIsInit:Z

    const-string v1, "ViewPreloadManager"

    if-eqz v0, :cond_0

    const-string p1, "mIsInit true"

    .line 39
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->mIsInit:Z

    const-string v0, "init"

    .line 43
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->mWeakContext:Ljava/lang/ref/WeakReference;

    .line 45
    new-instance p1, Lcom/xiaopeng/xiewpreload/ViewCatchPool;

    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Lcom/xiaopeng/xiewpreload/ViewCatchPool;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->iViewPreload:Lcom/xiaopeng/xiewpreload/IViewPreload;

    return-void
.end method

.method public isInPreloadPool(ILandroid/view/View;)Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->iViewPreload:Lcom/xiaopeng/xiewpreload/IViewPreload;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xiewpreload/IViewPreload;->isInPreloadPool(ILandroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public reloadByLanguageChange()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->iViewPreload:Lcom/xiaopeng/xiewpreload/IViewPreload;

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0}, Lcom/xiaopeng/xiewpreload/IViewPreload;->reloadByLanguageChange()V

    :cond_0
    return-void
.end method

.method public resetViewTagForBinding(I)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->iViewPreload:Lcom/xiaopeng/xiewpreload/IViewPreload;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0, p1}, Lcom/xiaopeng/xiewpreload/IViewPreload;->resetViewTagForBinding(I)V

    :cond_0
    return-void
.end method

.method public startPreLoad()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->iViewPreload:Lcom/xiaopeng/xiewpreload/IViewPreload;

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0}, Lcom/xiaopeng/xiewpreload/IViewPreload;->startPreLoad()V

    :cond_0
    return-void
.end method
