.class public Lcom/xiaopeng/musicradio/mine/widget/a;
.super Ljava/lang/Object;
.source "CategoryViewHolder.java"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroid/view/ViewGroup;

.field public final c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/widget/ImageView;

.field public final f:Landroid/view/View;

.field public final g:Lcom/xiaopeng/xui/widget/XImageButton;

.field public h:Landroid/widget/RelativeLayout;

.field private i:I

.field private j:I

.field private k:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/a;->a:Landroid/view/View;

    .line 51
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->rv_category_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    .line 52
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->rl_category_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/a;->h:Landroid/widget/RelativeLayout;

    .line 53
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->tv_category_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/a;->d:Landroid/widget/TextView;

    .line 54
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->iv_category_title_arrow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/a;->e:Landroid/widget/ImageView;

    .line 55
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->ll_category_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/a;->f:Landroid/view/View;

    .line 56
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->tv_category_title_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/a;->g:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 57
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->category_content_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/a;->b:Landroid/view/ViewGroup;

    .line 58
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->loading_tips_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/a;->k:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/a;->b:Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/xiaopeng/musicradio/mine/widget/CategoryContentView;

    if-eqz v1, :cond_0

    .line 60
    check-cast v0, Lcom/xiaopeng/musicradio/mine/widget/CategoryContentView;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/mine/widget/CategoryContentView;->setCategoryViewHolder(Lcom/xiaopeng/musicradio/mine/widget/a;)V

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    sget v1, Lcom/xiaopeng/musicradio/mine/a$a;->category_content_view_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/widget/a$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/mine/widget/a$1;-><init>(Lcom/xiaopeng/musicradio/mine/widget/a;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/widget/a;->j:I

    return v0
.end method

.method public a(II)V
    .locals 1

    .line 123
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/widget/a;->j:I

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/a;->g:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiLabel(Ljava/lang/String;)V

    .line 126
    iput p2, p0, Lcom/xiaopeng/musicradio/mine/widget/a;->i:I

    .line 130
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/a;->g:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageButton;->setImageResource(I)V

    return-void
.end method

.method public a(III)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/xiaopeng/musicradio/mine/widget/a;->a(IIII)V

    return-void
.end method

.method public a(IIII)V
    .locals 2

    .line 85
    iput p2, p0, Lcom/xiaopeng/musicradio/mine/widget/a;->j:I

    .line 86
    iput p3, p0, Lcom/xiaopeng/musicradio/mine/widget/a;->i:I

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    if-le p4, v1, :cond_0

    .line 89
    new-instance v1, Lcom/xiaopeng/musicradio/mine/widget/a$2;

    invoke-direct {v1, p0, v0, p4}, Lcom/xiaopeng/musicradio/mine/widget/a$2;-><init>(Lcom/xiaopeng/musicradio/mine/widget/a;Landroid/content/Context;I)V

    .line 100
    iget-object p4, p0, Lcom/xiaopeng/musicradio/mine/widget/a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {p4, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 102
    :cond_0
    iget-object p4, p0, Lcom/xiaopeng/musicradio/mine/widget/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/a;->e:Landroid/widget/ImageView;

    sget p4, Lcom/xiaopeng/musicradio/mine/a$b;->x_ic_small_back:I

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/a;->g:Lcom/xiaopeng/xui/widget/XImageButton;

    if-eqz p1, :cond_3

    if-lez p2, :cond_2

    .line 107
    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiLabel(Ljava/lang/String;)V

    if-lez p3, :cond_1

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/a;->g:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/xui/widget/XImageButton;->setImageResource(I)V

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/a;->g:Lcom/xiaopeng/xui/widget/XImageButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    .line 116
    iget-object p2, p0, Lcom/xiaopeng/musicradio/mine/widget/a;->g:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/a;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 142
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/widget/a;->i:I

    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/widget/a;->g:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XImageButton;->setImageResource(I)V

    :cond_0
    return-void
.end method
