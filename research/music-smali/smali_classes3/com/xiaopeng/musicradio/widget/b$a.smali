.class Lcom/xiaopeng/musicradio/widget/b$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AccountImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/b;

.field private b:Lcom/xiaopeng/xui/widget/XImageView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/b;Landroid/view/View;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/b$a;->a:Lcom/xiaopeng/musicradio/widget/b;

    .line 56
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 58
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/b$a;->itemView:Landroid/view/View;

    sget p2, Lcom/xiaopeng/musicradio/common/k$e;->tab_img:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/b$a;->b:Lcom/xiaopeng/xui/widget/XImageView;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/widget/b$a;)Lcom/xiaopeng/xui/widget/XImageView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/b$a;->b:Lcom/xiaopeng/xui/widget/XImageView;

    return-object p0
.end method
