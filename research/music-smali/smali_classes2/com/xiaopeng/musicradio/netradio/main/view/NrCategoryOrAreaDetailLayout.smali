.class public Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;
.source "NrCategoryOrAreaDetailLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lbxt;
.implements Lcom/xiaopeng/musicradio/netradio/main/view/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout<",
        "Lcom/xiaopeng/musicradio/netradio/main/view/b;",
        "Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lbxt;",
        "Lcom/xiaopeng/musicradio/netradio/main/view/b;"
    }
.end annotation


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

.field private e:Lbkd;

.field private f:Landroidx/recyclerview/widget/GridLayoutManager;

.field private g:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field private i:Lapr;

.field private j:Z

.field private k:Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout$a;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 88
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->j:Z

    const-string v0, "1"

    .line 83
    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->l:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->c:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->j:Z

    const-string v0, "1"

    .line 83
    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->l:Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->c:Landroid/content/Context;

    .line 95
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->i:Lapr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 79
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->j:Z

    const-string p3, "1"

    .line 83
    iput-object p3, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->l:Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->c:Landroid/content/Context;

    .line 101
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->i:Lapr;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;)Lbkd;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->e:Lbkd;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->l:Ljava/lang/String;

    return-object p0
.end method

.method private m()V
    .locals 4

    .line 310
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout$3;-><init>(Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->e:Lbkd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbkd;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->e:Lbkd;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lbkd;->getItemCount()I

    move-result v2

    const-string v3, "payload"

    invoke-virtual {v0, v1, v2, v3}, Lbkd;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->g()Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->g:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->g:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    goto :goto_1

    .line 284
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->g:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 180
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->l:Ljava/lang/String;

    .line 181
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v1, "2"

    .line 182
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x32

    .line 185
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 187
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    if-eqz v1, :cond_2

    .line 188
    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->a(Ljava/lang/String;)V

    .line 190
    sget p1, Lbuc$g;->netradio_allradio_title:I

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 191
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->e:Lbkd;

    iget p2, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->h:I

    invoke-static {p2}, Lcom/xiaopeng/musicradio/vui/c;->ah(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lbkd;->a(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->h:I

    invoke-static {p1}, Lcom/xiaopeng/musicradio/vui/c;->ah(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    .line 193
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    sget p2, Lbuc$g;->vui_right:I

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiLabel(Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    sget-object p2, Lbyb;->LEVEL2:Lbyb;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiPriority(Lbyb;)V

    goto :goto_1

    .line 196
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->e:Lbkd;

    iget p2, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->h:I

    invoke-static {p2}, Lcom/xiaopeng/musicradio/vui/c;->ai(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lbkd;->a(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->h:I

    invoke-static {p1}, Lcom/xiaopeng/musicradio/vui/c;->ai(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lbyb;)V
    .locals 6

    .line 403
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    .line 404
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiLabel(Ljava/lang/String;)V

    .line 405
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiPriority(Lbyb;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 212
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->a(I)V

    .line 213
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 214
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->e:Lbkd;

    invoke-virtual {v1}, Lbkd;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 215
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->e:Lbkd;

    invoke-virtual {v0, p1, v3}, Lbkd;->a(Ljava/util/List;Z)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->e:Lbkd;

    invoke-virtual {v1, p1, v0}, Lbkd;->a(Ljava/util/List;Z)V

    .line 219
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->e:Lbkd;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lbkd;->notifyItemRangeChanged(II)V

    .line 221
    :goto_0
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->j:Z

    .line 222
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->k:Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout$a;

    if-eqz p1, :cond_1

    .line 223
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout$a;->a()V

    .line 225
    :cond_1
    invoke-static {}, Lbjw;->a()Lbjw;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Lbjw;->b(I)I

    move-result p1

    if-lez p1, :cond_2

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->d(I)V

    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_3

    .line 253
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->e:Lbkd;

    invoke-virtual {p1}, Lbkd;->g()I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->e:Lbkd;

    invoke-virtual {v0, p1}, Lbkd;->notifyItemChanged(I)V

    :cond_0
    const/4 p1, 0x0

    .line 259
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object v0

    invoke-virtual {v0}, Lbcz;->m()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object p1

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->e:Lbkd;

    invoke-virtual {v0}, Lbkd;->j()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 264
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    if-eqz p1, :cond_2

    .line 266
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 267
    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->e:Lbkd;

    invoke-virtual {v2, v1}, Lbkd;->notifyItemChanged(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->e:Lbkd;

    invoke-virtual {p1}, Lbkd;->g()I

    move-result p1

    if-eq p1, v0, :cond_4

    .line 275
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->e:Lbkd;

    invoke-virtual {v1, p1}, Lbkd;->notifyItemChanged(I)V

    .line 276
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->e:Lbkd;

    invoke-virtual {p1, v0}, Lbkd;->b(I)V

    :cond_4
    return-void
.end method

.method protected b()V
    .locals 2

    .line 112
    sget v0, Lbuc$d;->allradio_loading:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->g:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->g:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setAutoClickLoadingEnable(Z)V

    .line 114
    sget v0, Lbuc$d;->allradio_rv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 389
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->removeVuiSceneListener(Ljava/lang/String;Lbxv;Z)V

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 7

    .line 119
    new-instance v6, Lbkd;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lbuc$f;->netradio_item_radio_list:I

    new-instance v4, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout$1;

    invoke-direct {v4, p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout$1;-><init>(Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;)V

    iget-object v5, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lbkd;-><init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    iput-object v6, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->e:Lbkd;

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 128
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v1, v2}, Lapf;->a(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;-><init>(IIZ)V

    .line 129
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->a(I)V

    const/16 v1, 0x64

    .line 130
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->c(I)V

    .line 131
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->b(I)V

    .line 132
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 133
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->c:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->f:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setHasFixedSize(Z)V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->f:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->e:Lbkd;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVerticalFadingEdgeEnabled(Z)V

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->g:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    sget v1, Lbuc$g;->no_netradio:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setNoResultText(I)V

    return-void
.end method

.method protected d()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->e:Lbkd;

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout$2;-><init>(Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;)V

    invoke-virtual {v0, v1}, Lbkd;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->g:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()V
    .locals 0

    .line 301
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->m()V

    return-void
.end method

.method protected g()Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;
    .locals 1

    .line 107
    new-instance v0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;-><init>()V

    return-object v0
.end method

.method public getContentViewId()I
    .locals 1

    .line 166
    sget v0, Lbuc$f;->netradio_layout_area_or_category:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getSubSceneList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 385
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->h:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->h:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->ak(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->h:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->ah(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->c()V

    return-void
.end method

.method public i()V
    .locals 2

    .line 359
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laqy;->a(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->enterScene(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 2

    .line 366
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laqy;->b(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->exitScene(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 4

    .line 373
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lbxv;Z)V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 3

    .line 421
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;->l()V

    .line 423
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->f:Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->e:Lbkd;

    invoke-virtual {v0}, Lbkd;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->f:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 426
    :goto_0
    invoke-static {}, Lbjw;->a()Lbjw;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v2, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->f()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lbjw;->a(II)V

    .line 427
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->e:Lbkd;

    invoke-virtual {v0}, Lbkd;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->e:Lbkd;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lbkd;->a(Ljava/util/List;)V

    .line 429
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->e:Lbkd;

    invoke-virtual {v0}, Lbkd;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 336
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;->onAttachedToWindow()V

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->i:Lapr;

    invoke-virtual {v0, p0}, Lapr;->a(Landroid/view/View;)V

    return-void
.end method

.method public onBuildScene()V
    .locals 5

    .line 379
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->getSubSceneList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->e()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lbxr;)Lbye;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 293
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 294
    sget v0, Lbuc$d;->allradio_loading:I

    if-ne p1, v0, :cond_0

    .line 295
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->c()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 328
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->i:Lapr;

    invoke-virtual {v0, p0, p1}, Lapr;->a(Landroid/view/View;Landroid/content/res/Configuration;)V

    .line 330
    invoke-static {p1}, Lapo;->b(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 331
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->e:Lbkd;

    invoke-virtual {p1}, Lbkd;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 341
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;->onDetachedFromWindow()V

    .line 342
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->i:Lapr;

    invoke-virtual {v0, p0}, Lapr;->b(Landroid/view/View;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 306
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lbyf;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setDataLoadSuccessListener(Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout$a;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->k:Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout$a;

    return-void
.end method

.method public setPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    return-void
.end method

.method public setRecyclerState(Lbya;)V
    .locals 1

    .line 346
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->setVuiMode(Lbya;)V

    .line 347
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiMode(Lbya;)V

    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->m:Ljava/lang/String;

    return-void
.end method

.method public setVuiElementId(I)V
    .locals 4

    .line 410
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiPosition(I)V

    .line 411
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiElementId(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setmId(I)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrCategoryOrAreaDetailPresenter;->a(I)V

    return-void
.end method

.method public showErrorView(Ljava/lang/String;)V
    .locals 1

    .line 240
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 p1, 0x2

    .line 241
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->a(I)V

    return-void
.end method

.method public showLoadingView()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 235
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->a(I)V

    return-void
.end method

.method public showNoDataView(Ljava/lang/String;)V
    .locals 1

    .line 246
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 p1, 0x3

    .line 247
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->a(I)V

    return-void
.end method
