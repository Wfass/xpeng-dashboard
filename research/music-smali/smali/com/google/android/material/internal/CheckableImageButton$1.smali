.class Lcom/google/android/material/internal/CheckableImageButton$1;
.super Lfh;
.source "CheckableImageButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/CheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/internal/CheckableImageButton;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/CheckableImageButton;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/google/android/material/internal/CheckableImageButton$1;->a:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-direct {p0}, Lfh;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 63
    invoke-super {p0, p1, p2}, Lfh;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 64
    iget-object p1, p0, Lcom/google/android/material/internal/CheckableImageButton$1;->a:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgu;)V
    .locals 0

    .line 70
    invoke-super {p0, p1, p2}, Lfh;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgu;)V

    .line 71
    iget-object p1, p0, Lcom/google/android/material/internal/CheckableImageButton$1;->a:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->a()Z

    move-result p1

    invoke-virtual {p2, p1}, Lgu;->a(Z)V

    .line 72
    iget-object p1, p0, Lcom/google/android/material/internal/CheckableImageButton$1;->a:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result p1

    invoke-virtual {p2, p1}, Lgu;->b(Z)V

    return-void
.end method
