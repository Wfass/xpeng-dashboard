.class Lbgk$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "XpPlayTitleBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbgk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 51
    sget v0, Lbez$d;->xp_play_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;

    iput-object p1, p0, Lbgk$a;->a:Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;

    return-void
.end method

.method static synthetic a(Lbgk$a;)Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;
    .locals 0

    .line 47
    iget-object p0, p0, Lbgk$a;->a:Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayTitleLayout;

    return-object p0
.end method
