.class public Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;
.source "GuessLikeLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout<",
        "Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;",
        "Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;"
    }
.end annotation


# instance fields
.field private c:Lcom/xiaopeng/xui/widget/XImageButton;

.field private d:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;

.field private g:Lcom/xiaopeng/xui/widget/XTextView;

.field private i:Lcom/xiaopeng/xui/widget/XImageView;

.field private j:Lcom/xiaopeng/xui/widget/XTextView;

.field private final k:I

.field private final l:I

.field private m:Lcom/xiaopeng/musicradio/widget/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 76
    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->k:I

    const/4 p1, 0x2

    .line 77
    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->l:I

    .line 79
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->m:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 76
    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->k:I

    const/4 p1, 0x2

    .line 77
    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->l:I

    .line 79
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->m:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 76
    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->k:I

    const/4 p1, 0x2

    .line 77
    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->l:I

    .line 79
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->m:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;)Ljava/util/List;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->k()V

    return-void
.end method

.method static synthetic e(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method private j()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->g:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance v1, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$4;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->i:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v1, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$5;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private k()V
    .locals 1

    .line 188
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->guess_title:I

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecuteLong(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbmz;->a(Landroid/content/Context;)V

    .line 190
    invoke-static {}, Lbmx;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->f()Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;

    move-result-object v0

    return-object v0
.end method

.method public a(JI)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->f:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;->a(JI)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            ">;)V"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipsState(I)V

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->f:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;->notifyDataSetChanged()V

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->c:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-lez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->g:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    const-string p1, "GuessLikeLayout"

    const-string v0, "updateData: =========== "

    .line 224
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(ZZ)V
    .locals 4

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showLoadingView: ========== showLoading: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GuessLikeLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->getLoadingTipsView()Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v2, :cond_0

    .line 245
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :cond_0
    const/16 v3, 0xa

    .line 247
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 248
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x4

    if-eqz p1, :cond_1

    .line 250
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipsState(I)V

    .line 251
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->c:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 252
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->g:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    if-nez p2, :cond_4

    .line 254
    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object p2

    invoke-virtual {p2}, Lbmm;->g()I

    move-result p2

    const-string v2, "getGuessLikePage response ==> state: result == false "

    .line 255
    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->f:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;->getItemCount()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    const-string p2, "getGuessLikePage response ==> enter state no result "

    .line 258
    invoke-static {v1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {p2, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipsState(I)V

    .line 260
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipViewClickable(Z)V

    goto :goto_0

    :cond_2
    const-string p1, "getGuessLikePage response ==> enter state error "

    .line 262
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipsState(I)V

    .line 265
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->c:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 266
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->g:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_1

    .line 268
    :cond_3
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipsState(I)V

    .line 269
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->c:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 270
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->g:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_1

    .line 273
    :cond_4
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipsState(I)V

    .line 274
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->c:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    .line 275
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->g:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method protected b()V
    .locals 1

    .line 101
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->feel_lucky:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->c:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 102
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->guess_list:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    .line 103
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->guess_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->g:Lcom/xiaopeng/xui/widget/XTextView;

    .line 104
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->small_back:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->i:Lcom/xiaopeng/xui/widget/XImageView;

    .line 105
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->copy_right:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->j:Lcom/xiaopeng/xui/widget/XTextView;

    return-void
.end method

.method protected c()V
    .locals 5

    const-string v0, "GuessLikeLayout"

    const-string v1, "setView: ======="

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->j:Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->e:Ljava/util/List;

    .line 113
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 114
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 115
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v1, v3}, Lapf;->a(Landroid/content/Context;F)I

    move-result v1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;-><init>(IIZ)V

    .line 116
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->a(I)V

    .line 117
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v3, v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setHasFixedSize(Z)V

    .line 120
    new-instance v0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/xiaopeng/musicradio/program/b$f;->item_guess_like:I

    invoke-direct {v0, p0, v2, v4}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->f:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->f:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    new-instance v2, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$1;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setOnTipsViewClick(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->d:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    iget v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->h:I

    invoke-static {v2}, Lcom/xiaopeng/musicradio/vui/c;->ap(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v3, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->initVuiAttr(Ljava/lang/String;Lbxu;ZZ)V

    .line 131
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->g:Lcom/xiaopeng/xui/widget/XTextView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiLabelUnSupportText([Landroid/view/View;)V

    .line 132
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->guess_like_root:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/vui/VuiView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->g:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XTextView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/vui/c;->a(Lcom/xiaopeng/xui/vui/VuiView;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->g:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->a(Lcom/xiaopeng/xui/vui/VuiView;)V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->c:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->a(Lcom/xiaopeng/xui/vui/VuiView;)V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->m:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 136
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->i()V

    return-void
.end method

.method protected d()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->c:Lcom/xiaopeng/xui/widget/XImageButton;

    new-instance v1, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$2;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->j()V

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->f:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;

    new-instance v1, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$3;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V

    return-void
.end method

.method protected f()Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;
    .locals 1

    .line 96
    new-instance v0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;-><init>()V

    return-object v0
.end method

.method public g()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->f:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;->notifyDataSetChanged()V

    const-string v0, "GuessLikeLayout"

    const-string v1, "refreshPlayState: ========= "

    .line 236
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 213
    sget v0, Lcom/xiaopeng/musicradio/program/b$f;->layout_guess_like:I

    return v0
.end method

.method public h()Z
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->e:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public i()V
    .locals 2

    .line 419
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->j()V

    .line 420
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->i:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 203
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 204
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->f:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;->notifyDataSetChanged()V

    .line 205
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->m:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->m:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 207
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->i()V

    :cond_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 196
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;->onResume(Landroidx/lifecycle/n;)V

    .line 197
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->m:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 198
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->i()V

    return-void
.end method
