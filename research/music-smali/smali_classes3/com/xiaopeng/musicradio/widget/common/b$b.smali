.class public Lcom/xiaopeng/musicradio/widget/common/b$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SongListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/common/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

.field final synthetic b:Lcom/xiaopeng/musicradio/widget/common/b;


# direct methods
.method protected constructor <init>(Lcom/xiaopeng/musicradio/widget/common/b;Landroid/view/View;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/b$b;->b:Lcom/xiaopeng/musicradio/widget/common/b;

    .line 140
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 142
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/b$b;->itemView:Landroid/view/View;

    sget p2, Lcom/xiaopeng/musicradio/common/k$e;->music_list_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/b$b;->a:Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

    return-void
.end method
