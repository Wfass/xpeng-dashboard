.class Lbod$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BaseSearchBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 87
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 88
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->mix_item_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;

    iput-object p1, p0, Lbod$a;->a:Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;

    return-void
.end method

.method static synthetic a(Lbod$a;)Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;
    .locals 0

    .line 83
    iget-object p0, p0, Lbod$a;->a:Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;

    return-object p0
.end method
