.class public Lblx;
.super Lcom/xiaopeng/musicradio/commonui/adapter/h;
.source "ProgramCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lblx$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/adapter/h<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    sget v0, Lcom/xiaopeng/musicradio/program/b$f;->item_program_category:I

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lblx$a;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lblx;->c()Landroid/view/View;

    move-result-object p1

    .line 47
    new-instance p2, Lblx$a;

    invoke-direct {p2, p0, p1}, Lblx$a;-><init>(Lblx;Landroid/view/View;)V

    return-object p2
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 73
    check-cast p1, Lblx$a;

    .line 74
    invoke-virtual {p0, p2}, Lblx;->c(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 75
    invoke-static {p1}, Lblx$a;->c(Lblx$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v0

    invoke-virtual {p0, p2}, Lblx;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lapo;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0, p2}, Lblx;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;->getNightLogo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0, p2}, Lblx;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;->getLogo()Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_0
    invoke-static {p1}, Lblx$a;->b(Lblx$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$c;->category_default:I

    invoke-static {p1}, Lblx$a;->b(Lblx$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lbxo;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 84
    invoke-static {p1}, Lblx$a;->d(Lblx$a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->a(I)V

    .line 85
    iget-object v0, p1, Lblx$a;->itemView:Landroid/view/View;

    check-cast v0, Lcom/xiaopeng/xui/vui/VuiView;

    invoke-static {p1}, Lblx$a;->a(Lblx$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$g;->vui_play_position:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lblx;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    add-int/lit8 v3, p2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    const/4 v5, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLabel(Ljava/lang/String;)V

    .line 86
    iget-object v0, p1, Lblx$a;->itemView:Landroid/view/View;

    check-cast v0, Lcom/xiaopeng/xui/vui/VuiView;

    invoke-interface {v0, p2}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiPosition(I)V

    .line 87
    iget-object v0, p1, Lblx$a;->itemView:Landroid/view/View;

    check-cast v0, Lcom/xiaopeng/xui/vui/VuiView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lblx$a;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiElementId(Ljava/lang/String;)V

    .line 89
    invoke-static {p1}, Lblx$a;->a(Lblx$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->setText(I)V

    .line 90
    invoke-static {p1}, Lblx$a;->a(Lblx$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    move-result-object p1

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {p1, v4}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 1

    .line 52
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 53
    invoke-virtual {p0, p1, p2}, Lblx;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_2

    .line 55
    :cond_0
    invoke-virtual {p0, p2}, Lblx;->c(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 56
    check-cast p1, Lblx$a;

    .line 57
    invoke-static {p1}, Lblx$a;->a(Lblx$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    move-result-object p3

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p3, v0}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->setVisibility(I)V

    .line 58
    invoke-virtual {p0, p2}, Lblx;->c(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;

    .line 59
    sget-object p3, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p3}, Lapo;->d(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 62
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;->getNightLogo()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;->getLogo()Ljava/lang/String;

    move-result-object p2

    .line 66
    :goto_1
    invoke-static {p1}, Lblx$a;->b(Lblx$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaopeng/xui/widget/XImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/xiaopeng/musicradio/program/b$c;->category_default:I

    invoke-static {p1}, Lblx$a;->b(Lblx$a;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object p1

    invoke-static {p3, p2, v0, p1}, Lbxo;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lblx;->a(Landroid/view/ViewGroup;I)Lblx$a;

    move-result-object p1

    return-object p1
.end method
