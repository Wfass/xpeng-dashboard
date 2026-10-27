.class Lcom/google/android/material/datepicker/h$1;
.super Ljava/lang/Object;
.source "MonthsPagerAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/h;->a(Lcom/google/android/material/datepicker/h$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

.field final synthetic b:Lcom/google/android/material/datepicker/h;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/h;Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/google/android/material/datepicker/h$1;->b:Lcom/google/android/material/datepicker/h;

    iput-object p2, p0, Lcom/google/android/material/datepicker/h$1;->a:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 125
    iget-object p1, p0, Lcom/google/android/material/datepicker/h$1;->a:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/g;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/material/datepicker/g;->d(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/google/android/material/datepicker/h$1;->b:Lcom/google/android/material/datepicker/h;

    invoke-static {p1}, Lcom/google/android/material/datepicker/h;->a(Lcom/google/android/material/datepicker/h;)Lcom/google/android/material/datepicker/MaterialCalendar$b;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/material/datepicker/h$1;->a:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/g;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/google/android/material/datepicker/g;->a(I)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lcom/google/android/material/datepicker/MaterialCalendar$b;->a(J)V

    :cond_0
    return-void
.end method
