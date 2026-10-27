.class Landroid/view/View$SendViewScrolledAccessibilityEvent;
.super Landroid/view/View$SendAccessibilityEventThrottle;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendViewScrolledAccessibilityEvent"
.end annotation


# instance fields
.field public mDeltaX:I

.field public mDeltaY:I

.field final synthetic this$0:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 30142
    iput-object p1, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->this$0:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/View$SendAccessibilityEventThrottle;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/view/View$1;)V
    .locals 0

    .line 30142
    invoke-direct {p0, p1}, Landroid/view/View$SendViewScrolledAccessibilityEvent;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .line 30157
    invoke-super {p0}, Landroid/view/View$SendAccessibilityEventThrottle;->reset()V

    const/4 v0, 0x0

    .line 30158
    iput v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaX:I

    .line 30159
    iput v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaY:I

    return-void
.end method

.method public updateWithAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 30148
    invoke-super {p0, p1}, Landroid/view/View$SendAccessibilityEventThrottle;->updateWithAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 30149
    iget v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaX:I

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getScrollDeltaX()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaX:I

    .line 30150
    iget v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaY:I

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getScrollDeltaY()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaY:I

    .line 30151
    iget v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaX:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollDeltaX(I)V

    .line 30152
    iget v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollDeltaY(I)V

    return-void
.end method
