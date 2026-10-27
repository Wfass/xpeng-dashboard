.class public Lcom/xiaopeng/musicradio/widget/AccountImageLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "AccountImageLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountImageLayout"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLeftTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeAdapter:Lcom/xiaopeng/musicradio/widget/b;

.field private mTypeLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;->mLeftTabs:Ljava/util/ArrayList;

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;->mLeftTabs:Ljava/util/ArrayList;

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;->mLeftTabs:Ljava/util/ArrayList;

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;->mContext:Landroid/content/Context;

    return-void
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
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->select_rv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 61
    sget v0, Lcom/xiaopeng/musicradio/common/k$f;->layout_account_image:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 95
    invoke-static {p1}, Lapo;->b(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;->mTypeAdapter:Lcom/xiaopeng/musicradio/widget/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/b;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;->mLeftTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;->mLeftTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 88
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;->mTypeAdapter:Lcom/xiaopeng/musicradio/widget/b;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;->mLeftTabs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/b;->a(Ljava/util/List;)V

    .line 89
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;->mTypeAdapter:Lcom/xiaopeng/musicradio/widget/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/b;->notifyDataSetChanged()V

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected setView()V
    .locals 2

    .line 72
    new-instance v0, Lcom/xiaopeng/musicradio/widget/b;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/widget/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;->mTypeAdapter:Lcom/xiaopeng/musicradio/widget/b;

    .line 73
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;->mTypeLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;->mTypeLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;->mTypeLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;->mTypeAdapter:Lcom/xiaopeng/musicradio/widget/b;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;->mTypeAdapter:Lcom/xiaopeng/musicradio/widget/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/b;->notifyDataSetChanged()V

    return-void
.end method
