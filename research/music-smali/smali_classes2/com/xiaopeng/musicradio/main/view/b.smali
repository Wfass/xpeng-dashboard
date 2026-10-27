.class public Lcom/xiaopeng/musicradio/main/view/b;
.super Lcom/xiaopeng/musicradio/commonui/adapter/h;
.source "MainSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/main/view/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/adapter/h<",
        "Lasr;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    sget v0, Lbez$f;->main_select_item:I

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/xiaopeng/musicradio/main/view/b;->g:I

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/main/view/b;I)I
    .locals 0

    .line 17
    iput p1, p0, Lcom/xiaopeng/musicradio/main/view/b;->g:I

    return p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/main/view/b;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/xiaopeng/musicradio/main/view/b;->a:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/xiaopeng/musicradio/main/view/b$a;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/view/b;->c()Landroid/view/View;

    move-result-object p1

    .line 29
    new-instance p2, Lcom/xiaopeng/musicradio/main/view/b$a;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/musicradio/main/view/b$a;-><init>(Lcom/xiaopeng/musicradio/main/view/b;Landroid/view/View;)V

    return-object p2
.end method

.method public b(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/xiaopeng/musicradio/main/view/b;->g:I

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/view/b;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 34
    check-cast p1, Lcom/xiaopeng/musicradio/main/view/b$a;

    .line 35
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/main/view/b;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasr;

    .line 36
    iget v1, p0, Lcom/xiaopeng/musicradio/main/view/b;->g:I

    add-int/lit8 v2, p2, 0x1

    if-ne v1, v2, :cond_0

    .line 37
    invoke-static {p1}, Lcom/xiaopeng/musicradio/main/view/b$a;->a(Lcom/xiaopeng/musicradio/main/view/b$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setSelected(Z)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/musicradio/main/view/b$a;->a(Lcom/xiaopeng/musicradio/main/view/b$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setSelected(Z)V

    .line 42
    :goto_0
    invoke-static {p1}, Lcom/xiaopeng/musicradio/main/view/b$a;->a(Lcom/xiaopeng/musicradio/main/view/b$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v1

    invoke-virtual {v0}, Lasr;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-static {p1}, Lcom/xiaopeng/musicradio/main/view/b$a;->a(Lcom/xiaopeng/musicradio/main/view/b$a;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/musicradio/main/view/b$1;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/musicradio/main/view/b$1;-><init>(Lcom/xiaopeng/musicradio/main/view/b;I)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/main/view/b;->a(Landroid/view/ViewGroup;I)Lcom/xiaopeng/musicradio/main/view/b$a;

    move-result-object p1

    return-object p1
.end method
