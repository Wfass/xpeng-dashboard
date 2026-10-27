.class public Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerListItemLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "MsSingerListItemLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout<",
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/musicradio/music/singer/main/presenter/MsSingerListItemPresenter;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MsSingerListItemLayout"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFifthtemLayout:Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;

.field private mFirstItemLayout:Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;

.field private mForthItemLayout:Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;

.field private mSecondItemLayout:Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;

.field private mSingerItemLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mThirdItemLayout:Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerListItemLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerListItemLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerListItemLayout;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerListItemLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/singer/main/presenter/MsSingerListItemPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/singer/main/presenter/MsSingerListItemPresenter;
    .locals 1

    .line 49
    new-instance v0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/MsSingerListItemPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/MsSingerListItemPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 60
    sget v0, Lbez$d;->first_item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerListItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerListItemLayout;->mFirstItemLayout:Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;

    .line 61
    sget v0, Lbez$d;->second_item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerListItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerListItemLayout;->mSecondItemLayout:Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;

    .line 62
    sget v0, Lbez$d;->third_item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerListItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerListItemLayout;->mThirdItemLayout:Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;

    .line 63
    sget v0, Lbez$d;->forth_item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerListItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerListItemLayout;->mForthItemLayout:Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;

    .line 64
    sget v0, Lbez$d;->fifth_item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerListItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerListItemLayout;->mFifthtemLayout:Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 54
    sget v0, Lbez$f;->music_layout_singer_list_item:I

    return v0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;",
            ">;)V"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerListItemLayout;->mSingerItemLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;

    const/16 v2, 0x8

    .line 85
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->setVisibility(I)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    .line 89
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerListItemLayout;->mSingerItemLayouts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;

    .line 90
    invoke-virtual {v3, v1}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->setVisibility(I)V

    .line 91
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;->setData(Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected setView()V
    .locals 2

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerListItemLayout;->mSingerItemLayouts:Ljava/util/ArrayList;

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerListItemLayout;->mSingerItemLayouts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerListItemLayout;->mFirstItemLayout:Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerListItemLayout;->mSingerItemLayouts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerListItemLayout;->mSecondItemLayout:Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerListItemLayout;->mSingerItemLayouts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerListItemLayout;->mThirdItemLayout:Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerListItemLayout;->mSingerItemLayouts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerListItemLayout;->mForthItemLayout:Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerListItemLayout;->mSingerItemLayouts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerListItemLayout;->mFifthtemLayout:Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerItemLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lbxy;->UNKNOWN:Lbxy;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/MsSingerListItemLayout;->setVuiElementType(Lbxy;)V

    return-void
.end method
