.class public abstract Lait;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "CarUiTextView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 71
    invoke-direct {p0, p1, p2, v0}, Lait;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;)Lait;
    .locals 1

    .line 63
    invoke-static {p0}, Laik;->a(Landroid/content/Context;)Laij;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Laij;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lait;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract setText(Lcom/android/car/ui/b;)V
.end method

.method public abstract setText(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/car/ui/b;",
            ">;)V"
        }
    .end annotation
.end method
