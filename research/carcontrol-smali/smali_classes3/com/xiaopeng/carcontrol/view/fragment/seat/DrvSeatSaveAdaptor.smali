.class public Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DrvSeatSaveAdaptor.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$DrvSeatSaveInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$SeatSaveViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$SeatSaveViewHolder;",
        ">;",
        "Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$DrvSeatSaveInterface;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectBtnIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "mLists"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor;->mLists:Ljava/util/List;

    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor;->mSelectBtnIndex:I

    return p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor;->mLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 23
    check-cast p1, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$SeatSaveViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor;->onBindViewHolder(Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$SeatSaveViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$SeatSaveViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 51
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$SeatSaveViewHolder;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$SeatSaveViewHolder;)Lcom/xiaopeng/xui/widget/XRadioButton;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor;->mLists:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor;->mSelectBtnIndex:I

    if-ne p2, v0, :cond_0

    .line 53
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$SeatSaveViewHolder;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$SeatSaveViewHolder;)Lcom/xiaopeng/xui/widget/XRadioButton;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XRadioButton;->setChecked(Z)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$SeatSaveViewHolder;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$SeatSaveViewHolder;)Lcom/xiaopeng/xui/widget/XRadioButton;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XRadioButton;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$SeatSaveViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$SeatSaveViewHolder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 37
    new-instance p2, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$SeatSaveViewHolder;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0060

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$SeatSaveViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    invoke-virtual {p2, v2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$SeatSaveViewHolder;->setIsRecyclable(Z)V

    .line 39
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$SeatSaveViewHolder;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$SeatSaveViewHolder;)Lcom/xiaopeng/xui/widget/XRadioButton;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$1;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$1;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor;Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor$SeatSaveViewHolder;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public showSelectButton(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 66
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor;->mSelectBtnIndex:I

    .line 67
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/DrvSeatSaveAdaptor;->notifyDataSetChanged()V

    return-void
.end method
