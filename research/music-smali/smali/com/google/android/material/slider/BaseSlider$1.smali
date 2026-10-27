.class Lcom/google/android/material/slider/BaseSlider$1;
.super Ljava/lang/Object;
.source "BaseSlider.java"

# interfaces
.implements Lcom/google/android/material/slider/BaseSlider$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/slider/BaseSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/util/AttributeSet;

.field final synthetic b:I

.field final synthetic c:Lcom/google/android/material/slider/BaseSlider;


# virtual methods
.method public a()Laku;
    .locals 7

    .line 360
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$1;->c:Lcom/google/android/material/slider/BaseSlider;

    .line 362
    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider$1;->a:Landroid/util/AttributeSet;

    sget-object v3, Laiv$l;->Slider:[I

    iget v4, p0, Lcom/google/android/material/slider/BaseSlider$1;->b:I

    sget v5, Lcom/google/android/material/slider/BaseSlider;->a:I

    const/4 v0, 0x0

    new-array v6, v0, [I

    .line 361
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/o;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$1;->c:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v1}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/material/slider/BaseSlider;->a(Landroid/content/Context;Landroid/content/res/TypedArray;)Laku;

    move-result-object v1

    .line 364
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method
