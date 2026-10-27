.class Lcom/google/android/material/datepicker/m$1;
.super Ljava/lang/Object;
.source "YearGridAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/m;->c(I)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/material/datepicker/m;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/m;I)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/google/android/material/datepicker/m$1;->b:Lcom/google/android/material/datepicker/m;

    iput p2, p0, Lcom/google/android/material/datepicker/m$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 87
    iget p1, p0, Lcom/google/android/material/datepicker/m$1;->a:I

    iget-object v0, p0, Lcom/google/android/material/datepicker/m$1;->b:Lcom/google/android/material/datepicker/m;

    invoke-static {v0}, Lcom/google/android/material/datepicker/m;->a(Lcom/google/android/material/datepicker/m;)Lcom/google/android/material/datepicker/MaterialCalendar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->getCurrentMonth()Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/datepicker/Month;->a:I

    invoke-static {p1, v0}, Lcom/google/android/material/datepicker/Month;->a(II)Lcom/google/android/material/datepicker/Month;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/google/android/material/datepicker/m$1;->b:Lcom/google/android/material/datepicker/m;

    invoke-static {v0}, Lcom/google/android/material/datepicker/m;->a(Lcom/google/android/material/datepicker/m;)Lcom/google/android/material/datepicker/MaterialCalendar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->getCalendarConstraints()Lcom/google/android/material/datepicker/CalendarConstraints;

    move-result-object v0

    .line 89
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/CalendarConstraints;->a(Lcom/google/android/material/datepicker/Month;)Lcom/google/android/material/datepicker/Month;

    move-result-object p1

    .line 90
    iget-object v0, p0, Lcom/google/android/material/datepicker/m$1;->b:Lcom/google/android/material/datepicker/m;

    invoke-static {v0}, Lcom/google/android/material/datepicker/m;->a(Lcom/google/android/material/datepicker/m;)Lcom/google/android/material/datepicker/MaterialCalendar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->setCurrentMonth(Lcom/google/android/material/datepicker/Month;)V

    .line 91
    iget-object p1, p0, Lcom/google/android/material/datepicker/m$1;->b:Lcom/google/android/material/datepicker/m;

    invoke-static {p1}, Lcom/google/android/material/datepicker/m;->a(Lcom/google/android/material/datepicker/m;)Lcom/google/android/material/datepicker/MaterialCalendar;

    move-result-object p1

    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$a;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$a;

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->setSelector(Lcom/google/android/material/datepicker/MaterialCalendar$a;)V

    return-void
.end method
