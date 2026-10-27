.class Lbgf$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SingerItemLayoutBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbgf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 57
    sget v0, Lbez$d;->singer_item_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;

    iput-object p1, p0, Lbgf$a;->a:Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;

    return-void
.end method

.method static synthetic a(Lbgf$a;)Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;
    .locals 0

    .line 53
    iget-object p0, p0, Lbgf$a;->a:Lcom/xiaopeng/musicradio/music/concentration/singer/view/SingerItemLayout;

    return-object p0
.end method
