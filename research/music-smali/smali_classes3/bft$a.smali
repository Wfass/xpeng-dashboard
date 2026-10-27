.class Lbft$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MsRadioTitleBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 59
    sget v0, Lbez$d;->radio_title_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;

    iput-object p1, p0, Lbft$a;->a:Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;

    return-void
.end method

.method static synthetic a(Lbft$a;)Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;
    .locals 0

    .line 54
    iget-object p0, p0, Lbft$a;->a:Lcom/xiaopeng/musicradio/music/concentration/radio/view/MsRadioTitleLayout;

    return-object p0
.end method
