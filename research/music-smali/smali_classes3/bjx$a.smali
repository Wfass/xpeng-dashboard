.class Lbjx$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NrAllRadioBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbjx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 59
    sget v0, Lbuc$d;->nRAllRadioLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;

    iput-object p1, p0, Lbjx$a;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;

    return-void
.end method
