.class public Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;
.super Landroid/widget/ArrayAdapter;
.source "XDropdownMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mSelectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "resource",
            "tvResource"
        }
    .end annotation

    .line 263
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    const/4 p1, -0x1

    .line 260
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;->mSelectedPosition:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 268
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 269
    sget p3, Lcom/xiaopeng/carcontrolmodule/R$id;->x_drop_down_tv:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;->mSelectedPosition:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p3, p1}, Landroid/view/View;->setSelected(Z)V

    return-object p2
.end method

.method public setSelectedPosition(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 274
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;->mSelectedPosition:I

    return-void
.end method
