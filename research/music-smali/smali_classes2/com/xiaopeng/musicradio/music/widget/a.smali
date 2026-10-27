.class public Lcom/xiaopeng/musicradio/music/widget/a;
.super Lcom/xiaopeng/musicradio/widget/d;
.source "AuthSelectAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/d;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/widget/a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/widget/a;->a:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/music/widget/a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/widget/a;->a:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    return-object p0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 25
    check-cast p1, Lcom/xiaopeng/musicradio/widget/d$a;

    .line 26
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/music/widget/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    if-eqz v0, :cond_2

    .line 28
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v1

    const v2, 0x3ecccccd    # 0.4f

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v1, :cond_1

    .line 29
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->f:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 30
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v1, v4}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 31
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->g:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setAlpha(F)V

    .line 32
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->g:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p1, Lcom/xiaopeng/musicradio/widget/d$a;->f:Lcom/xiaopeng/xui/widget/XLinearLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/widget/a$1;

    invoke-direct {v1, p0, p2}, Lcom/xiaopeng/musicradio/music/widget/a$1;-><init>(Lcom/xiaopeng/musicradio/music/widget/a;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/widget/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p2, v0, :cond_0

    .line 41
    iget-object p1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->e:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/view/XView;->setVisibility(I)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->e:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {p1, v4}, Lcom/xiaopeng/xui/view/XView;->setVisibility(I)V

    goto :goto_0

    .line 46
    :cond_1
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->f:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v1, v4}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 47
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 48
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->b:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setAlpha(F)V

    .line 49
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setAlpha(F)V

    .line 50
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->b:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->getRes()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 51
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object p1, p1, Lcom/xiaopeng/musicradio/widget/d$a;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v0, Lcom/xiaopeng/musicradio/music/widget/a$2;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/musicradio/music/widget/a$2;-><init>(Lcom/xiaopeng/musicradio/music/widget/a;I)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method
