.class Lbnq$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SearchNetRadioAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field protected a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

.field final synthetic b:Lbnq;


# direct methods
.method public constructor <init>(Lbnq;Landroid/view/View;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lbnq$a;->b:Lbnq;

    .line 94
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 95
    sget p1, Lcom/xiaopeng/musicradio/search/a$d;->album_item_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    iput-object p1, p0, Lbnq$a;->a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    return-void
.end method
