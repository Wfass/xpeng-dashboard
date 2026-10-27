.class public abstract Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SeatComfortThemeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$OnItemClickListener;,
        Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$SeatComfortThemeViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$SeatComfortThemeViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mItemClickListener:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$OnItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$OnItemClickListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field mLeftTime:J

.field mRunningTheme:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mScreenId:I

.field mSeat:I

.field mSeatName:Ljava/lang/String;

.field mSelectedPosition:I

.field mThemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "themes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->mThemes:Ljava/util/List;

    const/4 v1, -0x1

    .line 24
    iput v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->mSelectedPosition:I

    const-string v1, ""

    .line 25
    iput-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->mSeatName:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 27
    iput-wide v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->mLeftTime:J

    const/4 v1, 0x0

    .line 29
    iput v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->mScreenId:I

    .line 33
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public abstract getIconForTheme(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "theme"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public getItemCount()I
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->mThemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public abstract getNameForTheme(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "theme"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getTipForTheme(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "theme"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public getmRunningTheme()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->mRunningTheme:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public synthetic lambda$onBindViewHolder$0$SeatComfortThemeAdapter(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$SeatComfortThemeViewHolder;ILjava/lang/Object;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "viewHolder",
            "i",
            "theme",
            "v"
        }
    .end annotation

    .line 82
    invoke-virtual {p4}, Landroid/view/View;->getId()I

    move-result p4

    const-wide/16 v0, 0x1f4

    const/4 v2, 0x0

    invoke-static {p4, v0, v1, v2}, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->isFastClick(IJZ)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 83
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const p2, 0x7f1103cb

    iget p3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->mScreenId:I

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(II)V

    return-void

    .line 86
    :cond_0
    iget-object p4, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$SeatComfortThemeViewHolder;->mThemeTv:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p4}, Lcom/xiaopeng/xui/widget/XButton;->isSelected()Z

    move-result p4

    if-eqz p4, :cond_1

    return-void

    .line 89
    :cond_1
    iget-object p4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->mItemClickListener:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$OnItemClickListener;

    if-eqz p4, :cond_2

    .line 90
    iget v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->mSeat:I

    invoke-interface {p4, p2, v0, p3}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$OnItemClickListener;->onItemClick(IILjava/lang/Object;)V

    .line 91
    iget-object p2, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$SeatComfortThemeViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 92
    iget-object p1, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$SeatComfortThemeViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "viewHolder",
            "i"
        }
    .end annotation

    .line 21
    check-cast p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$SeatComfortThemeViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->onBindViewHolder(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$SeatComfortThemeViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$SeatComfortThemeViewHolder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewHolder",
            "i"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->mThemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_0

    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$SeatComfortThemeViewHolder;->mThemeTv:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XButton;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->mThemes:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->getNameForTheme(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 69
    iget-object v2, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$SeatComfortThemeViewHolder;->mThemeTv:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVuiLabel(Ljava/lang/String;)V

    .line 70
    iget-object v1, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$SeatComfortThemeViewHolder;->mThemeTv:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v1, p2}, Lcom/xiaopeng/xui/widget/XButton;->setVuiPosition(I)V

    .line 71
    iget-object v1, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$SeatComfortThemeViewHolder;->mThemeTv:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVuiElementId(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->mThemes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 73
    iget-object v1, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$SeatComfortThemeViewHolder;->mThemeTv:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->getNameForTheme(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->mRunningTheme:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$SeatComfortThemeViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 76
    iget-object v1, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$SeatComfortThemeViewHolder;->mThemeTv:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    goto :goto_0

    .line 78
    :cond_1
    iget-object v1, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$SeatComfortThemeViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 79
    iget-object v1, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$SeatComfortThemeViewHolder;->mThemeTv:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XButton;->setSelected(Z)V

    .line 81
    :goto_0
    iget-object v1, p1, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$SeatComfortThemeViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatComfortThemeAdapter$VyEEek3pcOh9svmoyOYKVD0xDTc;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatComfortThemeAdapter$VyEEek3pcOh9svmoyOYKVD0xDTc;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$SeatComfortThemeViewHolder;ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
            "viewGroup",
            "i"
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$SeatComfortThemeViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$SeatComfortThemeViewHolder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewGroup",
            "i"
        }
    .end annotation

    .line 101
    new-instance p2, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$SeatComfortThemeViewHolder;

    .line 102
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 101
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0058

    const/4 v2, 0x0

    .line 102
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$SeatComfortThemeViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setItemClickListener(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$OnItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$OnItemClickListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->mItemClickListener:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$OnItemClickListener;

    return-void
.end method

.method public setLeftTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 56
    iput-wide p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->mLeftTime:J

    .line 57
    iget p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->mSelectedPosition:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public setRunningTheme(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runningTheme"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->mRunningTheme:Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->mThemes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->mSelectedPosition:I

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSeat(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seat",
            "seatName"
        }
    .end annotation

    .line 51
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->mSeatName:Ljava/lang/String;

    .line 52
    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->mSeat:I

    return-void
.end method

.method public setmScreenId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mScreenId"
        }
    .end annotation

    .line 37
    iput p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;->mScreenId:I

    return-void
.end method
