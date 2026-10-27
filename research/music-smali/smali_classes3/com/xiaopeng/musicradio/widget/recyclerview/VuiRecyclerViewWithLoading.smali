.class public Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;
.super Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;
.source "VuiRecyclerViewWithLoading.java"


# instance fields
.field private a:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->b:Z

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->b:Z

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->b:Z

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 47
    new-instance v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->a:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setVerticalFadingEdgeEnabled(Z)V

    const/4 v0, 0x2

    .line 49
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setOverScrollMode(I)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 5

    .line 130
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    return-void

    .line 138
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 139
    instance-of v2, v1, Landroid/widget/RelativeLayout;

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    .line 140
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    .line 141
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 142
    invoke-virtual {v1, p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 143
    :cond_2
    instance-of v2, v1, Landroid/widget/LinearLayout;

    const/16 v4, 0x11

    if-eqz v2, :cond_3

    .line 144
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 145
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 146
    invoke-virtual {v1, p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 147
    :cond_3
    instance-of v2, v1, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_4

    .line 148
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 149
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 150
    invoke-virtual {v1, p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 151
    :cond_4
    instance-of v2, v1, Lcom/xiaopeng/xui/widget/XConstraintLayout;

    if-eqz v2, :cond_5

    .line 152
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-direct {v2, v3, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(II)V

    const/4 v3, 0x0

    .line 153
    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->i:I

    .line 154
    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l:I

    .line 155
    invoke-virtual {v1, p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 157
    :cond_5
    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 159
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 160
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getLoadingTipsView()Lcom/xiaopeng/musicradio/widget/LoadingTipsView;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->a:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    return-object v0
.end method

.method public getTipsState()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->a:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 98
    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 113
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_3

    .line 114
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->onAttachedToWindow()V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->a:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->a:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->a(Landroid/view/View;)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->a:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setAutoClickLoadingEnable(Z)V

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 120
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->b:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 121
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipsState(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 123
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipsState(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setNoRecordTipText(I)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->a:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setNoResultText(I)V

    return-void
.end method

.method public setNoResultText(Ljava/lang/String;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->a:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setNoResultText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnTipsViewClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->a:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setTipViewClickable(Z)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->a:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public setTipsState(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    .line 54
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->b:Z

    goto :goto_0

    .line 56
    :cond_0
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->b:Z

    .line 58
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->a:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    if-eqz v1, :cond_2

    .line 59
    invoke-virtual {v1, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    .line 62
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
.end method
