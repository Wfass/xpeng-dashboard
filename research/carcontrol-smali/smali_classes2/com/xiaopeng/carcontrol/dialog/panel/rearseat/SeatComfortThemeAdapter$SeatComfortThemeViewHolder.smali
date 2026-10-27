.class public Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$SeatComfortThemeViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SeatComfortThemeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeatComfortThemeViewHolder"
.end annotation


# instance fields
.field public mThemeTv:Lcom/xiaopeng/xui/widget/XButton;


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

    .line 122
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a035b

    .line 124
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XButton;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatComfortThemeAdapter$SeatComfortThemeViewHolder;->mThemeTv:Lcom/xiaopeng/xui/widget/XButton;

    return-void
.end method
