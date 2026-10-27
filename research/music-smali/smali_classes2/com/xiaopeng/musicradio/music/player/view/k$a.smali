.class public Lcom/xiaopeng/musicradio/music/player/view/k$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MusicPlayListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/music/player/view/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Lcom/xiaopeng/xui/widget/XTextView;

.field b:Lcom/xiaopeng/xui/widget/XLoading;

.field final synthetic c:Lcom/xiaopeng/musicradio/music/player/view/k;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/music/player/view/k;Landroid/view/View;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/k$a;->c:Lcom/xiaopeng/musicradio/music/player/view/k;

    .line 328
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 329
    sget p1, Lbez$d;->tv_foot:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/k$a;->a:Lcom/xiaopeng/xui/widget/XTextView;

    .line 330
    sget p1, Lbez$d;->foot_loading:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XLoading;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/k$a;->b:Lcom/xiaopeng/xui/widget/XLoading;

    return-void
.end method
