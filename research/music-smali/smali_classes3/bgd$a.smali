.class Lbgd$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MsRmTitleBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbgd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 58
    sget v0, Lbez$d;->rm_title_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;

    iput-object p1, p0, Lbgd$a;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;

    return-void
.end method

.method static synthetic a(Lbgd$a;)Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;
    .locals 0

    .line 53
    iget-object p0, p0, Lbgd$a;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;

    return-object p0
.end method
