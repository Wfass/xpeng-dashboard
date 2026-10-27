.class Lcom/google/android/material/datepicker/MaterialCalendar$6;
.super Lfh;
.source "MaterialCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/MaterialCalendar;->addActionsToMonthNavigation(Landroid/view/View;Lcom/google/android/material/datepicker/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/datepicker/MaterialCalendar;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$6;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-direct {p0}, Lfh;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgu;)V
    .locals 1

    .line 375
    invoke-super {p0, p1, p2}, Lfh;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgu;)V

    .line 376
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$6;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 377
    invoke-static {p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->access$500(Lcom/google/android/material/datepicker/MaterialCalendar;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$6;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    sget v0, Laiv$j;->mtrl_picker_toggle_to_year_selection:I

    .line 378
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$6;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    sget v0, Laiv$j;->mtrl_picker_toggle_to_day_selection:I

    .line 379
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 376
    :goto_0
    invoke-virtual {p2, p1}, Lgu;->g(Ljava/lang/CharSequence;)V

    return-void
.end method
