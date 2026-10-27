.class public Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "LeftSelectLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/widget/LeftSelectLayout$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LeftSelectLayout"


# instance fields
.field private mAutoEnableAdapter:Z

.field private mAutoWidthEnable:Z

.field protected mClickChange:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout$a;

.field protected mContext:Landroid/content/Context;

.field protected mLeftTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/common/LeftSelect;",
            ">;"
        }
    .end annotation
.end field

.field private mLinearItemDecoration:Lcom/xiaopeng/musicradio/widget/recyclerview/j;

.field private mLinearItemDecoration1P3:Lcom/xiaopeng/musicradio/widget/recyclerview/j;

.field private mResumeFromPause:Z

.field private mScreenState:Lcom/xiaopeng/musicradio/widget/k;

.field protected mTypeAdapter:Lcom/xiaopeng/musicradio/widget/d;

.field protected mTypeLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field protected mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 57
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mLeftTabs:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mAutoEnableAdapter:Z

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mAutoWidthEnable:Z

    .line 52
    new-instance v1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 54
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mResumeFromPause:Z

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mLeftTabs:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mAutoEnableAdapter:Z

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mAutoWidthEnable:Z

    .line 52
    new-instance v1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 54
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mResumeFromPause:Z

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mContext:Landroid/content/Context;

    .line 65
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mLeftTabs:Ljava/util/ArrayList;

    const/4 p3, 0x1

    .line 49
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mAutoEnableAdapter:Z

    const/4 p3, 0x0

    .line 50
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mAutoWidthEnable:Z

    .line 52
    new-instance v0, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 54
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mResumeFromPause:Z

    .line 70
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mContext:Landroid/content/Context;

    .line 71
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/common/k$i;->LeftSelectLayout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 77
    sget v0, Lcom/xiaopeng/musicradio/common/k$i;->LeftSelectLayout_lsl_auto_enable_adapter:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mAutoEnableAdapter:Z

    .line 78
    sget v0, Lcom/xiaopeng/musicradio/common/k$i;->LeftSelectLayout_lsl_auto_width_enable:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mAutoWidthEnable:Z

    .line 79
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private resetViewWidth()V
    .locals 3

    .line 197
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mAutoWidthEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 202
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    .line 203
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/common/k$c;->music_top_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 207
    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private reviewOnScreenChange()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mLinearItemDecoration:Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mLinearItemDecoration1P3:Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mTypeLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mLinearItemDecoration1P3:Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mTypeLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mLinearItemDecoration:Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 192
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->resetViewWidth()V

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mTypeAdapter:Lcom/xiaopeng/musicradio/widget/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/d;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public createAdapter(Landroid/content/Context;)V
    .locals 1

    .line 119
    new-instance v0, Lcom/xiaopeng/musicradio/widget/d;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/widget/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mTypeAdapter:Lcom/xiaopeng/musicradio/widget/d;

    return-void
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public enableAdapter()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mTypeAdapter:Lcom/xiaopeng/musicradio/widget/d;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableAdapter mLeftTabs.size(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mLeftTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LeftSelectLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mTypeAdapter:Lcom/xiaopeng/musicradio/widget/d;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mTypeAdapter:Lcom/xiaopeng/musicradio/widget/d;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/d;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected findView()V
    .locals 2

    .line 103
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->left_select_rv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 91
    sget v0, Lcom/xiaopeng/musicradio/common/k$f;->layout_left_select:I

    return v0
.end method

.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/common/LeftSelect;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mLeftTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTypeRecyclerView()Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-object v0
.end method

.method protected handleInflate(Landroid/view/LayoutInflater;)V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->createAdapter(Landroid/content/Context;)V

    .line 97
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->handleInflate(Landroid/view/LayoutInflater;)V

    return-void
.end method

.method public hasSetAdapter()Z
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initVuiAttr(Ljava/lang/String;)V
    .locals 6

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    .line 179
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    sget-object v0, Lbyb;->LEVEL4:Lbyb;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiPriority(Lbyb;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 213
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 214
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 215
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 216
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->reviewOnScreenChange()V

    :cond_0
    return-void
.end method

.method public onPause(Landroidx/lifecycle/n;)V
    .locals 0

    .line 138
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onPause(Landroidx/lifecycle/n;)V

    const/4 p1, 0x1

    .line 139
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mResumeFromPause:Z

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 1

    .line 144
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    .line 145
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mResumeFromPause:Z

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mTypeAdapter:Lcom/xiaopeng/musicradio/widget/d;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x0

    .line 148
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mResumeFromPause:Z

    :cond_0
    return-void
.end method

.method public setClickChange(Lcom/xiaopeng/musicradio/widget/LeftSelectLayout$a;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mClickChange:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout$a;

    return-void
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/common/LeftSelect;",
            ">;)V"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mLeftTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mLeftTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 168
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mTypeAdapter:Lcom/xiaopeng/musicradio/widget/d;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mLeftTabs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/widget/d;->a(Ljava/util/List;Z)V

    .line 169
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 170
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->reviewOnScreenChange()V

    return-void
.end method

.method public setIndex(I)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mTypeAdapter:Lcom/xiaopeng/musicradio/widget/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/d;->b(I)V

    return-void
.end method

.method public setLeftVisible(IZ)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mLeftTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mLeftTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->setShow(Z)V

    .line 223
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mTypeAdapter:Lcom/xiaopeng/musicradio/widget/d;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/widget/d;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mTypeAdapter:Lcom/xiaopeng/musicradio/widget/d;

    new-instance v1, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout$1;-><init>(Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/d;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V

    return-void
.end method

.method protected setView()V
    .locals 3

    .line 109
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mTypeLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mTypeLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 111
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/common/k$c;->left_select_item_spacing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/j;-><init>(III)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mLinearItemDecoration:Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    .line 112
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    invoke-direct {v0, v2, v2, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/j;-><init>(III)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mLinearItemDecoration1P3:Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    .line 113
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mAutoEnableAdapter:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->mTypeAdapter:Lcom/xiaopeng/musicradio/widget/d;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method
