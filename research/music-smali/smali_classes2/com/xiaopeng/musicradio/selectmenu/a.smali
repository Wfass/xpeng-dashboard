.class public Lcom/xiaopeng/musicradio/selectmenu/a;
.super Lcom/xiaopeng/musicradio/commonui/adapter/h;
.source "SelectMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/selectmenu/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/adapter/h<",
        "Lcom/xiaopeng/musicradio/bean/common/LeftSelect;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private g:I

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    sget v0, Lcom/xiaopeng/musicradio/main/a$e;->select_menu_item:I

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;-><init>(Landroid/content/Context;I)V

    const/4 p1, -0x1

    .line 24
    iput p1, p0, Lcom/xiaopeng/musicradio/selectmenu/a;->g:I

    .line 26
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/selectmenu/a;->h:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/selectmenu/a;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/xiaopeng/musicradio/selectmenu/a;->g:I

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/selectmenu/a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/xiaopeng/musicradio/selectmenu/a;->a:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    return-object p0
.end method


# virtual methods
.method protected a()I
    .locals 1

    .line 34
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/c;->a()Lcom/xiaopeng/musicradio/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    :goto_0
    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/xiaopeng/musicradio/selectmenu/a$a;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/selectmenu/a;->c()Landroid/view/View;

    move-result-object p1

    .line 41
    new-instance p2, Lcom/xiaopeng/musicradio/selectmenu/a$a;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/musicradio/selectmenu/a$a;-><init>(Lcom/xiaopeng/musicradio/selectmenu/a;Landroid/view/View;)V

    return-object p2
.end method

.method public b(I)V
    .locals 3

    if-ltz p1, :cond_3

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/selectmenu/a;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/selectmenu/a;->g:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/selectmenu/a;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->setSelected(Z)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/selectmenu/a;->notifyItemChanged(I)V

    .line 86
    iput p1, p0, Lcom/xiaopeng/musicradio/selectmenu/a;->g:I

    goto :goto_0

    :cond_1
    if-ne v0, p1, :cond_2

    return-void

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/selectmenu/a;->i()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/musicradio/selectmenu/a;->g:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->setSelected(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/selectmenu/a;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->setSelected(Z)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/selectmenu/a;->notifyItemChanged(I)V

    .line 94
    iget v0, p0, Lcom/xiaopeng/musicradio/selectmenu/a;->g:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/selectmenu/a;->notifyItemChanged(I)V

    .line 95
    iput p1, p0, Lcom/xiaopeng/musicradio/selectmenu/a;->g:I

    :cond_3
    :goto_0
    return-void
.end method

.method public g()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/xiaopeng/musicradio/selectmenu/a;->g:I

    return v0
.end method

.method public j()V
    .locals 2

    .line 103
    iget v0, p0, Lcom/xiaopeng/musicradio/selectmenu/a;->g:I

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/selectmenu/a;->i()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/selectmenu/a;->g:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;->setSelected(Z)V

    .line 105
    iget v0, p0, Lcom/xiaopeng/musicradio/selectmenu/a;->g:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/selectmenu/a;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public k()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/a;->h:Ljava/util/HashMap;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 46
    check-cast p1, Lcom/xiaopeng/musicradio/selectmenu/a$a;

    .line 47
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/selectmenu/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    if-eqz v0, :cond_2

    .line 49
    iget-object v1, p1, Lcom/xiaopeng/musicradio/selectmenu/a$a;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;

    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->setSelectMenuAdapter(Lcom/xiaopeng/musicradio/selectmenu/a;)V

    .line 50
    iget-object v1, p1, Lcom/xiaopeng/musicradio/selectmenu/a$a;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;

    invoke-virtual {v1, v0, p2}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->setInfo(Lcom/xiaopeng/musicradio/bean/common/LeftSelect;I)V

    .line 51
    iget-object v0, p1, Lcom/xiaopeng/musicradio/selectmenu/a$a;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/selectmenu/a$1;

    invoke-direct {v1, p0, p2}, Lcom/xiaopeng/musicradio/selectmenu/a$1;-><init>(Lcom/xiaopeng/musicradio/selectmenu/a;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x2

    if-le p2, v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/a;->h:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/a;->h:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p1, p1, Lcom/xiaopeng/musicradio/selectmenu/a$a;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/a;->h:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/selectmenu/a;->h:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p1, p1, Lcom/xiaopeng/musicradio/selectmenu/a$a;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    :cond_1
    iget-object p1, p1, Lcom/xiaopeng/musicradio/selectmenu/a$a;->a:Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/selectmenu/SelectMenuItemLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/selectmenu/a;->a(Landroid/view/ViewGroup;I)Lcom/xiaopeng/musicradio/selectmenu/a$a;

    move-result-object p1

    return-object p1
.end method
