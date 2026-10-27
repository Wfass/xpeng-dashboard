.class Lblw$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AlbumCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lblw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;

.field final synthetic b:Lblw;


# direct methods
.method public constructor <init>(Lblw;Landroid/view/View;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lblw$a;->b:Lblw;

    .line 123
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 124
    sget p1, Lcom/xiaopeng/musicradio/program/b$d;->rank_item:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;

    iput-object p1, p0, Lblw$a;->a:Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;

    return-void
.end method
