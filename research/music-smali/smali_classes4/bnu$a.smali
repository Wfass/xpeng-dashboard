.class Lbnu$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SearchSingerRectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field protected a:Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 44
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->singer_item_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;

    iput-object p1, p0, Lbnu$a;->a:Lcom/xiaopeng/musicradio/widget/common/SingerItemLayout;

    return-void
.end method
