.class Lcom/google/android/material/timepicker/ClockFaceView$2;
.super Lfh;
.source "ClockFaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/timepicker/ClockFaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/timepicker/ClockFaceView;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/ClockFaceView;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView$2;->a:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-direct {p0}, Lfh;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgu;)V
    .locals 7

    .line 149
    invoke-super {p0, p1, p2}, Lfh;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgu;)V

    .line 150
    sget v0, Laiv$f;->material_value_index:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    .line 152
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView$2;->a:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-static {v0}, Lcom/google/android/material/timepicker/ClockFaceView;->c(Lcom/google/android/material/timepicker/ClockFaceView;)Landroid/util/SparseArray;

    move-result-object v0

    add-int/lit8 v1, v3, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Lgu;->c(Landroid/view/View;)V

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v6

    .line 156
    invoke-static/range {v1 .. v6}, Lgu$c;->a(IIIIZZ)Lgu$c;

    move-result-object p1

    .line 155
    invoke-virtual {p2, p1}, Lgu;->b(Ljava/lang/Object;)V

    return-void
.end method
