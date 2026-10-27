.class Lbfs$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MsRadioItemLayoutBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 55
    sget v0, Lbez$d;->radio_item_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;

    iput-object p1, p0, Lbfs$a;->a:Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;

    return-void
.end method

.method static synthetic a(Lbfs$a;)Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;
    .locals 0

    .line 51
    iget-object p0, p0, Lbfs$a;->a:Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioItemLayout;

    return-object p0
.end method
