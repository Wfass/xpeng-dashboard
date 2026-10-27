.class Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$SeatSaveViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DrvSeatSaveAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SeatSaveViewHolder"
.end annotation


# instance fields
.field private xButton:Lcom/xiaopeng/xui/widget/XRadioButton;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemView"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a035c

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XRadioButton;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$SeatSaveViewHolder;->xButton:Lcom/xiaopeng/xui/widget/XRadioButton;

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$SeatSaveViewHolder;)Lcom/xiaopeng/xui/widget/XRadioButton;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$SeatSaveViewHolder;->xButton:Lcom/xiaopeng/xui/widget/XRadioButton;

    return-object p0
.end method
