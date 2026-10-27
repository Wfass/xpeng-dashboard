.class Lbjy$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NrLocalRadioBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbjy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 55
    sget v0, Lbuc$d;->nRLocationRadioLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;

    iput-object p1, p0, Lbjy$a;->a:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;

    return-void
.end method
