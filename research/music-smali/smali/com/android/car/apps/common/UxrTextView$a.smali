.class Lcom/android/car/apps/common/UxrTextView$a;
.super Ljava/lang/Object;
.source "UxrTextView.java"

# interfaces
.implements Landroid/text/method/TransformationMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/apps/common/UxrTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/car/apps/common/UxrTextView;


# direct methods
.method private constructor <init>(Lcom/android/car/apps/common/UxrTextView;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/android/car/apps/common/UxrTextView$a;->a:Lcom/android/car/apps/common/UxrTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/apps/common/UxrTextView;Lcom/android/car/apps/common/UxrTextView$1;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/android/car/apps/common/UxrTextView$a;-><init>(Lcom/android/car/apps/common/UxrTextView;)V

    return-void
.end method


# virtual methods
.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 113
    :cond_0
    iget-object p2, p0, Lcom/android/car/apps/common/UxrTextView$a;->a:Lcom/android/car/apps/common/UxrTextView;

    invoke-virtual {p2}, Lcom/android/car/apps/common/UxrTextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/car/apps/common/UxrTextView$a;->a:Lcom/android/car/apps/common/UxrTextView;

    .line 114
    invoke-static {v0}, Lcom/android/car/apps/common/UxrTextView;->a(Lcom/android/car/apps/common/UxrTextView;)Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v0

    .line 113
    invoke-static {p2, p1, v0}, Lair;->a(Landroid/content/Context;Ljava/lang/String;Landroid/car/drivingstate/CarUxRestrictions;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
