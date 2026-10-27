.class public Lcom/xiaopeng/lludancemanager/adapter/LluDanceFragmentPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "LluDanceFragmentPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lludancemanager/adapter/LluDanceFragmentPagerAdapter$FragmentFactory;
    }
.end annotation


# static fields
.field public static final FRAGMENT_LLU_DANCE_TITLE:Ljava/lang/String; = "llu_fragment"

.field private static final TAG:Ljava/lang/String; = "LluDanceFragmentPagerAdapter"


# instance fields
.field private mAdapterDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/lludancemanager/data/DanceFragmentPageAdapterData;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragmentCache:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Lcom/xiaopeng/lludancemanager/data/DanceFragmentPageAdapterData;",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fm"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 22
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceFragmentPagerAdapter;->mFragmentCache:Landroidx/collection/ArrayMap;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fm",
            "adapterDataSparseArray"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/lludancemanager/data/DanceFragmentPageAdapterData;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 22
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceFragmentPagerAdapter;->mFragmentCache:Landroidx/collection/ArrayMap;

    .line 31
    iput-object p2, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceFragmentPagerAdapter;->mAdapterDataList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public feedInTabData(Lcom/xiaopeng/xui/widget/XTabsBar;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tabsBar"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceFragmentPagerAdapter;->mAdapterDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lludancemanager/data/DanceFragmentPageAdapterData;

    .line 60
    invoke-static {v1, p1}, Lcom/xiaopeng/lludancemanager/adapter/LluDanceFragmentPagerAdapter$FragmentFactory;->feedFragmentTitleByData(Lcom/xiaopeng/lludancemanager/data/DanceFragmentPageAdapterData;Lcom/xiaopeng/xui/widget/XTabsBar;)V

    goto :goto_0

    .line 63
    :cond_0
    sget-object p1, Lcom/xiaopeng/lludancemanager/adapter/LluDanceFragmentPagerAdapter;->TAG:Ljava/lang/String;

    const-string v0, "feed in tab data , but adapter list is null"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceFragmentPagerAdapter;->mAdapterDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceFragmentPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "karl log about get item position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceFragmentPagerAdapter;->mAdapterDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/lludancemanager/data/DanceFragmentPageAdapterData;

    .line 43
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceFragmentPagerAdapter;->mFragmentCache:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFragmentCache = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceFragmentPagerAdapter;->mFragmentCache:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_0

    .line 46
    invoke-static {p1}, Lcom/xiaopeng/lludancemanager/adapter/LluDanceFragmentPagerAdapter$FragmentFactory;->createFragmentByData(Lcom/xiaopeng/lludancemanager/data/DanceFragmentPageAdapterData;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceFragmentPagerAdapter;->mFragmentCache:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public setAdapterDataList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapterDataList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/lludancemanager/data/DanceFragmentPageAdapterData;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceFragmentPagerAdapter;->mAdapterDataList:Ljava/util/ArrayList;

    return-void
.end method
