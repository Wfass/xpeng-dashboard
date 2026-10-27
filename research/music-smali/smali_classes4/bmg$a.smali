.class Lbmg$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RankBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;

.field b:Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;

.field c:Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 69
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->rank_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;

    iput-object p1, p0, Lbmg$a;->a:Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;

    .line 70
    new-instance p1, Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;-><init>()V

    iput-object p1, p0, Lbmg$a;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;

    .line 71
    iget-object p1, p0, Lbmg$a;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;)V

    .line 72
    new-instance p1, Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;-><init>()V

    iput-object p1, p0, Lbmg$a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;

    .line 73
    iget-object p1, p0, Lbmg$a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;)V

    .line 74
    iget-object p1, p0, Lbmg$a;->a:Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;

    iget-object p2, p0, Lbmg$a;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;->setItemClickListener(Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;)V

    .line 75
    iget-object p1, p0, Lbmg$a;->a:Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;

    iget-object p2, p0, Lbmg$a;->c:Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankLayout;->setItemPlayListener(Lcom/xiaopeng/musicradio/widget/recyclerview/e$c;)V

    return-void
.end method
