.class final Lfh$a;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lfh;


# direct methods
.method constructor <init>(Lfh;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 65
    iput-object p1, p0, Lfh$a;->a:Lfh;

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 71
    iget-object v0, p0, Lfh$a;->a:Lfh;

    invoke-virtual {v0, p1, p2}, Lfh;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 119
    iget-object v0, p0, Lfh$a;->a:Lfh;

    .line 120
    invoke-virtual {v0, p1}, Lfh;->getAccessibilityNodeProvider(Landroid/view/View;)Lgv;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1}, Lgv;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeProvider;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lfh$a;->a:Lfh;

    invoke-virtual {v0, p1, p2}, Lfh;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 82
    invoke-static {p2}, Lgu;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Lgu;

    move-result-object v0

    .line 83
    invoke-static {p1}, Lgj;->H(Landroid/view/View;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lgu;->k(Z)V

    .line 84
    invoke-static {p1}, Lgj;->J(Landroid/view/View;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lgu;->m(Z)V

    .line 85
    invoke-static {p1}, Lgj;->I(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgu;->i(Ljava/lang/CharSequence;)V

    .line 86
    invoke-static {p1}, Lgj;->g(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgu;->f(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p0, Lfh$a;->a:Lfh;

    invoke-virtual {v1, p1, v0}, Lfh;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgu;)V

    .line 88
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lgu;->a(Ljava/lang/CharSequence;Landroid/view/View;)V

    .line 89
    invoke-static {p1}, Lfh;->getActionList(Landroid/view/View;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    .line 90
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 91
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgu$a;

    invoke-virtual {v0, v1}, Lgu;->a(Lgu$a;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lfh$a;->a:Lfh;

    invoke-virtual {v0, p1, p2}, Lfh;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 103
    iget-object v0, p0, Lfh$a;->a:Lfh;

    invoke-virtual {v0, p1, p2, p3}, Lfh;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 127
    iget-object v0, p0, Lfh$a;->a:Lfh;

    invoke-virtual {v0, p1, p2, p3}, Lfh;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .line 108
    iget-object v0, p0, Lfh$a;->a:Lfh;

    invoke-virtual {v0, p1, p2}, Lfh;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lfh$a;->a:Lfh;

    invoke-virtual {v0, p1, p2}, Lfh;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
