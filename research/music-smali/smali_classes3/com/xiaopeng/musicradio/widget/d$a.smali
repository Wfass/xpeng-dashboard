.class public Lcom/xiaopeng/musicradio/widget/d$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LeftSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/xiaopeng/xui/widget/XTextView;

.field public b:Lcom/xiaopeng/xui/widget/XImageView;

.field public c:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field public d:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field public e:Lcom/xiaopeng/xui/view/XView;

.field public f:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field public g:Lcom/xiaopeng/xui/widget/XTextView;

.field final synthetic h:Lcom/xiaopeng/musicradio/widget/d;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/d;Landroid/view/View;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/d$a;->h:Lcom/xiaopeng/musicradio/widget/d;

    .line 140
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 142
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/d$a;->itemView:Landroid/view/View;

    sget p2, Lcom/xiaopeng/musicradio/common/k$e;->left_select_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/d$a;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 143
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/d$a;->itemView:Landroid/view/View;

    sget p2, Lcom/xiaopeng/musicradio/common/k$e;->left_select_layout_13:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/d$a;->f:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 144
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/d$a;->itemView:Landroid/view/View;

    sget p2, Lcom/xiaopeng/musicradio/common/k$e;->left_select_layout_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/d$a;->c:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 145
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/d$a;->itemView:Landroid/view/View;

    sget p2, Lcom/xiaopeng/musicradio/common/k$e;->tab_txt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/d$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    .line 146
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/d$a;->itemView:Landroid/view/View;

    sget p2, Lcom/xiaopeng/musicradio/common/k$e;->tab_txt13:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/d$a;->g:Lcom/xiaopeng/xui/widget/XTextView;

    .line 147
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/d$a;->itemView:Landroid/view/View;

    sget p2, Lcom/xiaopeng/musicradio/common/k$e;->tab_img:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/d$a;->b:Lcom/xiaopeng/xui/widget/XImageView;

    .line 148
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/d$a;->itemView:Landroid/view/View;

    sget p2, Lcom/xiaopeng/musicradio/common/k$e;->tab_line:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/view/XView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/d$a;->e:Lcom/xiaopeng/xui/view/XView;

    return-void
.end method
