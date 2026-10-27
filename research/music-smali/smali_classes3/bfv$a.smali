.class Lbfv$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RankItemLayoutBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbfv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 57
    sget v0, Lbez$d;->rank_item_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;

    iput-object p1, p0, Lbfv$a;->a:Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;

    return-void
.end method

.method static synthetic a(Lbfv$a;)Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;
    .locals 0

    .line 53
    iget-object p0, p0, Lbfv$a;->a:Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankItemLayout;

    return-object p0
.end method
