.class Lcom/google/android/material/timepicker/a;
.super Lfh;
.source "ClickActionDelegate.java"


# instance fields
.field private final a:Lgu$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lfh;-><init>()V

    .line 29
    new-instance v0, Lgu$a;

    .line 31
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x10

    invoke-direct {v0, p2, p1}, Lgu$a;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/a;->a:Lgu$a;

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgu;)V
    .locals 0

    .line 36
    invoke-super {p0, p1, p2}, Lfh;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgu;)V

    .line 37
    iget-object p1, p0, Lcom/google/android/material/timepicker/a;->a:Lgu$a;

    invoke-virtual {p2, p1}, Lgu;->a(Lgu$a;)V

    return-void
.end method
