.class public Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "MainSelectLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/main/view/MainSelectLayout$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MainSelectLayout"


# instance fields
.field private mClickChange:Lcom/xiaopeng/musicradio/main/view/MainSelectLayout$a;

.field private mContext:Landroid/content/Context;

.field private mMainTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lasr;",
            ">;"
        }
    .end annotation
.end field

.field private mMusicItem:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field private mMusicText:Lcom/xiaopeng/xui/widget/XTextView;

.field private mTypeAdapter:Lcom/xiaopeng/musicradio/main/view/b;

.field private mTypeLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mMainTabs:Ljava/util/ArrayList;

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mMainTabs:Ljava/util/ArrayList;

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mMainTabs:Ljava/util/ArrayList;

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;)Lcom/xiaopeng/xui/widget/XTextView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mMusicText:Lcom/xiaopeng/xui/widget/XTextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;)Lcom/xiaopeng/musicradio/main/view/MainSelectLayout$a;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mClickChange:Lcom/xiaopeng/musicradio/main/view/MainSelectLayout$a;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;)Lcom/xiaopeng/xui/widget/XLinearLayout;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mMusicItem:Lcom/xiaopeng/xui/widget/XLinearLayout;

    return-object p0
.end method


# virtual methods
.method protected createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 67
    sget v0, Lcom/xiaopeng/musicradio/main/a$d;->main_select_rv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 68
    sget v0, Lcom/xiaopeng/musicradio/main/a$d;->music_item:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mMusicItem:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 69
    sget v0, Lcom/xiaopeng/musicradio/main/a$d;->type_txt1:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mMusicText:Lcom/xiaopeng/xui/widget/XTextView;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 61
    sget v0, Lcom/xiaopeng/musicradio/main/a$e;->layout_main_select:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setClickChange(Lcom/xiaopeng/musicradio/main/view/MainSelectLayout$a;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mClickChange:Lcom/xiaopeng/musicradio/main/view/MainSelectLayout$a;

    return-void
.end method

.method public setIndex(I)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mMusicItem:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setSelected(Z)V

    .line 120
    iget-object p1, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mTypeAdapter:Lcom/xiaopeng/musicradio/main/view/b;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/main/view/b;->b(I)V

    .line 121
    iget-object p1, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mMusicText:Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mMusicItem:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setSelected(Z)V

    .line 124
    iget-object v1, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mTypeAdapter:Lcom/xiaopeng/musicradio/main/view/b;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/musicradio/main/view/b;->b(I)V

    .line 125
    iget-object p1, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mMusicText:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mTypeAdapter:Lcom/xiaopeng/musicradio/main/view/b;

    new-instance v1, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout$1;-><init>(Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/main/view/b;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mMusicItem:Lcom/xiaopeng/xui/widget/XLinearLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout$2;-><init>(Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 4

    .line 74
    new-instance v0, Lcom/xiaopeng/musicradio/main/view/b;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/main/view/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mTypeAdapter:Lcom/xiaopeng/musicradio/main/view/b;

    .line 75
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mTypeLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mTypeLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mTypeAdapter:Lcom/xiaopeng/musicradio/main/view/b;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mMainTabs:Ljava/util/ArrayList;

    new-instance v1, Lasr;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/main/a$f;->main_tab_program:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lasr;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mMainTabs:Ljava/util/ArrayList;

    new-instance v1, Lasr;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/main/a$f;->main_tab_netradio:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lasr;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mMainTabs:Ljava/util/ArrayList;

    new-instance v1, Lasr;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/main/a$f;->main_tab_mine:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lasr;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mTypeAdapter:Lcom/xiaopeng/musicradio/main/view/b;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mMainTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/main/view/b;->a(Ljava/util/List;)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/musicradio/main/view/MainSelectLayout;->mTypeAdapter:Lcom/xiaopeng/musicradio/main/view/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/main/view/b;->notifyDataSetChanged()V

    return-void
.end method
