.class public Lcom/android/car/ui/SecureView;
.super Landroid/view/View;
.source "SecureView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/android/car/ui/SecureView;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/android/car/ui/SecureView;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/android/car/ui/SecureView;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/android/car/ui/SecureView;->a:Z

    return-void
.end method


# virtual methods
.method public onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 56
    iget-boolean v0, p0, Lcom/android/car/ui/SecureView;->a:Z

    if-nez v0, :cond_0

    .line 57
    invoke-super {p0, p1}, Landroid/view/View;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 61
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 65
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/view/View;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public setSecure(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/android/car/ui/SecureView;->a:Z

    return-void
.end method
