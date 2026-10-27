.class Lbgc$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MsRmItemLayoutBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbgc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 57
    sget v0, Lbez$d;->rm_item_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    iput-object p1, p0, Lbgc$a;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    return-void
.end method

.method static synthetic a(Lbgc$a;)Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;
    .locals 0

    .line 53
    iget-object p0, p0, Lbgc$a;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    return-object p0
.end method
