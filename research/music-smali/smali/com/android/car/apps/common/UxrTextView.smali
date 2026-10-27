.class public Lcom/android/car/apps/common/UxrTextView;
.super Landroid/widget/TextView;
.source "UxrTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/apps/common/UxrTextView$a;
    }
.end annotation


# instance fields
.field private a:Lair;

.field private b:Landroid/car/drivingstate/CarUxRestrictions;

.field private c:Lair$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/android/car/apps/common/UxrTextView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/android/car/apps/common/UxrTextView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    invoke-direct {p0, p1}, Lcom/android/car/apps/common/UxrTextView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    invoke-direct {p0, p1}, Lcom/android/car/apps/common/UxrTextView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/android/car/apps/common/UxrTextView;)Landroid/car/drivingstate/CarUxRestrictions;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/car/apps/common/UxrTextView;->b:Landroid/car/drivingstate/CarUxRestrictions;

    return-object p0
.end method

.method private a(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 1

    .line 74
    iput-object p1, p0, Lcom/android/car/apps/common/UxrTextView;->b:Landroid/car/drivingstate/CarUxRestrictions;

    .line 77
    new-instance p1, Lcom/android/car/apps/common/UxrTextView$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/car/apps/common/UxrTextView$a;-><init>(Lcom/android/car/apps/common/UxrTextView;Lcom/android/car/apps/common/UxrTextView$1;)V

    invoke-virtual {p0, p1}, Lcom/android/car/apps/common/UxrTextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-static {p1}, Lair;->a(Landroid/content/Context;)Lair;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/apps/common/UxrTextView;->a:Lair;

    .line 70
    new-instance p1, Lcom/android/car/apps/common/-$$Lambda$UxrTextView$-OzBlMFX6Y6jLWtZo59Jyb0yU74;

    invoke-direct {p1, p0}, Lcom/android/car/apps/common/-$$Lambda$UxrTextView$-OzBlMFX6Y6jLWtZo59Jyb0yU74;-><init>(Lcom/android/car/apps/common/UxrTextView;)V

    iput-object p1, p0, Lcom/android/car/apps/common/UxrTextView;->c:Lair$a;

    return-void
.end method

.method public static synthetic lambda$-OzBlMFX6Y6jLWtZo59Jyb0yU74(Lcom/android/car/apps/common/UxrTextView;Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/apps/common/UxrTextView;->a(Landroid/car/drivingstate/CarUxRestrictions;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 82
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 83
    iget-object v0, p0, Lcom/android/car/apps/common/UxrTextView;->a:Lair;

    iget-object v1, p0, Lcom/android/car/apps/common/UxrTextView;->c:Lair$a;

    invoke-virtual {v0, v1}, Lair;->a(Lair$a;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 88
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 89
    iget-object v0, p0, Lcom/android/car/apps/common/UxrTextView;->a:Lair;

    iget-object v1, p0, Lcom/android/car/apps/common/UxrTextView;->c:Lair$a;

    invoke-virtual {v0, v1}, Lair;->b(Lair$a;)V

    return-void
.end method

.method public setAllCaps(Z)V
    .locals 0

    return-void
.end method

.method public setInputType(I)V
    .locals 0

    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    return-void
.end method
