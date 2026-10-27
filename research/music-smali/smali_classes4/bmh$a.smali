.class Lbmh$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RankTitleBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/xiaopeng/musicradio/program/choice/view/rank/RankTitleLayout;

.field b:Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;)V
    .locals 1

    .line 61
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 62
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->rank_title_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankTitleLayout;

    iput-object p1, p0, Lbmh$a;->a:Lcom/xiaopeng/musicradio/program/choice/view/rank/RankTitleLayout;

    .line 64
    new-instance p1, Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;-><init>()V

    iput-object p1, p0, Lbmh$a;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;

    .line 65
    iget-object p1, p0, Lbmh$a;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;)V

    .line 66
    iget-object p1, p0, Lbmh$a;->a:Lcom/xiaopeng/musicradio/program/choice/view/rank/RankTitleLayout;

    iget-object p2, p0, Lbmh$a;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankTitleLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
