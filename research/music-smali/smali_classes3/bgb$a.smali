.class public Lbgb$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MsRmListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lbgb;

.field private b:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;


# direct methods
.method public constructor <init>(Lbgb;Landroid/view/View;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lbgb$a;->a:Lbgb;

    .line 147
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 149
    iget-object p1, p0, Lbgb$a;->itemView:Landroid/view/View;

    sget p2, Lbez$d;->album_item_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    iput-object p1, p0, Lbgb$a;->b:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    return-void
.end method

.method static synthetic a(Lbgb$a;)Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;
    .locals 0

    .line 142
    iget-object p0, p0, Lbgb$a;->b:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    return-object p0
.end method
