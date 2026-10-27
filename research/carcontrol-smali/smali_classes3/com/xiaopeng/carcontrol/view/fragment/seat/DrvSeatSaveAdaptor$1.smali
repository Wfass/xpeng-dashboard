.class Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$1;
.super Ljava/lang/Object;
.source "DrvSeatSaveAdaptor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$SeatSaveViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor;

.field final synthetic val$viewHolder:Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$SeatSaveViewHolder;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor;Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$SeatSaveViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$viewHolder"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$1;->val$viewHolder:Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$SeatSaveViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 42
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$1;->val$viewHolder:Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$SeatSaveViewHolder;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$SeatSaveViewHolder;->getAbsoluteAdapterPosition()I

    move-result v0

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor;->access$002(Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor;I)I

    .line 43
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor;->notifyDataSetChanged()V

    return-void
.end method
