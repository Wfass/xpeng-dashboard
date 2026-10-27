.class Lbfw$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RankTitleBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbfw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankTitleLayout;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 50
    sget v0, Lbez$d;->rank_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankTitleLayout;

    iput-object p1, p0, Lbfw$a;->a:Lcom/xiaopeng/musicradio/music/concentration/rank/view/RankTitleLayout;

    return-void
.end method
