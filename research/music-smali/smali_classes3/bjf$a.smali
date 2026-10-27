.class Lbjf$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AreaSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbjf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lbjf;

.field private b:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method constructor <init>(Lbjf;Landroid/view/View;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lbjf$a;->a:Lbjf;

    .line 81
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 83
    iget-object p1, p0, Lbjf$a;->itemView:Landroid/view/View;

    sget p2, Lbez$d;->area_txt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p1, p0, Lbjf$a;->b:Lcom/xiaopeng/xui/widget/XTextView;

    return-void
.end method

.method static synthetic a(Lbjf$a;)Lcom/xiaopeng/xui/widget/XTextView;
    .locals 0

    .line 76
    iget-object p0, p0, Lbjf$a;->b:Lcom/xiaopeng/xui/widget/XTextView;

    return-object p0
.end method
