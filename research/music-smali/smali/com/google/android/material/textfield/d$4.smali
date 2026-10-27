.class Lcom/google/android/material/textfield/d$4;
.super Lcom/google/android/material/textfield/TextInputLayout$a;
.source "DropdownMenuEndIconDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/textfield/d;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/d;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/google/android/material/textfield/d$4;->a:Lcom/google/android/material/textfield/d;

    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout$a;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgu;)V
    .locals 0

    .line 113
    invoke-super {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputLayout$a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgu;)V

    .line 115
    iget-object p1, p0, Lcom/google/android/material/textfield/d$4;->a:Lcom/google/android/material/textfield/d;

    iget-object p1, p1, Lcom/google/android/material/textfield/d;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/material/textfield/d;->b(Landroid/widget/EditText;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 116
    const-class p1, Landroid/widget/Spinner;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lgu;->b(Ljava/lang/CharSequence;)V

    .line 118
    :cond_0
    invoke-virtual {p2}, Lgu;->x()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 121
    invoke-virtual {p2, p1}, Lgu;->g(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 127
    invoke-super {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputLayout$a;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 128
    iget-object p1, p0, Lcom/google/android/material/textfield/d$4;->a:Lcom/google/android/material/textfield/d;

    iget-object p1, p1, Lcom/google/android/material/textfield/d;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 129
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/material/textfield/d;->a(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    .line 133
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/google/android/material/textfield/d$4;->a:Lcom/google/android/material/textfield/d;

    .line 134
    invoke-static {p2}, Lcom/google/android/material/textfield/d;->a(Lcom/google/android/material/textfield/d;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/material/textfield/d$4;->a:Lcom/google/android/material/textfield/d;

    iget-object p2, p2, Lcom/google/android/material/textfield/d;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 135
    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/material/textfield/d;->b(Landroid/widget/EditText;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 136
    iget-object p2, p0, Lcom/google/android/material/textfield/d$4;->a:Lcom/google/android/material/textfield/d;

    invoke-static {p2, p1}, Lcom/google/android/material/textfield/d;->a(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V

    :cond_0
    return-void
.end method
