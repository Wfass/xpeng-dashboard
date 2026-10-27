.class public Lcom/android/car/ui/uxr/DrawableStateLinearLayout;
.super Landroid/widget/LinearLayout;
.source "DrawableStateLinearLayout.java"

# interfaces
.implements Lcom/android/car/ui/uxr/b;


# instance fields
.field private a:Lcom/android/car/ui/uxr/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Integer;)[I
    .locals 0

    .line 57
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$lAWS4EMp5bRpOXutCL1Mmps9EKI(Lcom/android/car/ui/uxr/DrawableStateLinearLayout;Ljava/lang/Integer;)[I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/ui/uxr/DrawableStateLinearLayout;->a(Ljava/lang/Integer;)[I

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreateDrawableState(I)[I
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/android/car/ui/uxr/DrawableStateLinearLayout;->a:Lcom/android/car/ui/uxr/a;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/android/car/ui/uxr/a;

    invoke-direct {v0, p0}, Lcom/android/car/ui/uxr/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/car/ui/uxr/DrawableStateLinearLayout;->a:Lcom/android/car/ui/uxr/a;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/uxr/DrawableStateLinearLayout;->a:Lcom/android/car/ui/uxr/a;

    new-instance v1, Lcom/android/car/ui/uxr/-$$Lambda$DrawableStateLinearLayout$lAWS4EMp5bRpOXutCL1Mmps9EKI;

    invoke-direct {v1, p0}, Lcom/android/car/ui/uxr/-$$Lambda$DrawableStateLinearLayout$lAWS4EMp5bRpOXutCL1Mmps9EKI;-><init>(Lcom/android/car/ui/uxr/DrawableStateLinearLayout;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/car/ui/uxr/a;->a(ILjava/util/function/Function;)[I

    move-result-object p1

    return-object p1
.end method

.method public setExtraDrawableState([I[I)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/car/ui/uxr/DrawableStateLinearLayout;->a:Lcom/android/car/ui/uxr/a;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/android/car/ui/uxr/a;

    invoke-direct {v0, p0}, Lcom/android/car/ui/uxr/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/car/ui/uxr/DrawableStateLinearLayout;->a:Lcom/android/car/ui/uxr/a;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/uxr/DrawableStateLinearLayout;->a:Lcom/android/car/ui/uxr/a;

    invoke-virtual {v0, p1, p2}, Lcom/android/car/ui/uxr/a;->setExtraDrawableState([I[I)V

    return-void
.end method
