.class Lcom/google/android/material/datepicker/SingleDateSelector$1;
.super Lcom/google/android/material/datepicker/c;
.source "SingleDateSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/SingleDateSelector;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/i;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/datepicker/i;

.field final synthetic b:Lcom/google/android/material/datepicker/SingleDateSelector;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/SingleDateSelector;Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/i;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->b:Lcom/google/android/material/datepicker/SingleDateSelector;

    iput-object p6, p0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->a:Lcom/google/android/material/datepicker/i;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/material/datepicker/c;-><init>(Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->a:Lcom/google/android/material/datepicker/i;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/i;->a()V

    return-void
.end method

.method a(Ljava/lang/Long;)V
    .locals 3

    if-nez p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->b:Lcom/google/android/material/datepicker/SingleDateSelector;

    invoke-static {p1}, Lcom/google/android/material/datepicker/SingleDateSelector;->a(Lcom/google/android/material/datepicker/SingleDateSelector;)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->b:Lcom/google/android/material/datepicker/SingleDateSelector;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/datepicker/SingleDateSelector;->a(J)V

    .line 127
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->a:Lcom/google/android/material/datepicker/i;

    iget-object v0, p0, Lcom/google/android/material/datepicker/SingleDateSelector$1;->b:Lcom/google/android/material/datepicker/SingleDateSelector;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/SingleDateSelector;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/i;->a(Ljava/lang/Object;)V

    return-void
.end method
