.class Lbns$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SearchRoundRectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field protected a:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field protected b:Lcom/xiaopeng/xui/widget/XImageView;

.field protected c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 48
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->root_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lbns$a;->a:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 49
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->top_right_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lbns$a;->b:Lcom/xiaopeng/xui/widget/XImageView;

    .line 50
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->album_item_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    iput-object p1, p0, Lbns$a;->c:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    return-void
.end method
