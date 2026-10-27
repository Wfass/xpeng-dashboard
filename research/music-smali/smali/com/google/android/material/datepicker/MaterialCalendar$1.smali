.class Lcom/google/android/material/datepicker/MaterialCalendar$1;
.super Lfh;
.source "MaterialCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/MaterialCalendar;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 153
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$1;->a:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-direct {p0}, Lfh;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgu;)V
    .locals 0

    .line 157
    invoke-super {p0, p1, p2}, Lfh;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgu;)V

    const/4 p1, 0x0

    .line 159
    invoke-virtual {p2, p1}, Lgu;->a(Ljava/lang/Object;)V

    return-void
.end method
