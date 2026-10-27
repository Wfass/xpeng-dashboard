.class public interface abstract Lcom/android/car/apps/common/b;
.super Ljava/lang/Object;
.source "CarControlBar.java"


# direct methods
.method public static a(II)I
    .locals 4

    const/4 v0, 0x2

    if-eqz p0, :cond_5

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p0, v3, :cond_3

    if-eq p0, v0, :cond_1

    if-ne p0, v2, :cond_0

    sub-int/2addr p1, v3

    return p1

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-ge p1, v0, :cond_2

    goto :goto_0

    .line 99
    :cond_2
    div-int/2addr p1, v0

    add-int/lit8 v1, p1, 0x1

    :goto_0
    return v1

    :cond_3
    if-ge p1, v2, :cond_4

    goto :goto_1

    .line 97
    :cond_4
    div-int/2addr p1, v0

    add-int/lit8 v1, p1, -0x1

    :goto_1
    return v1

    .line 95
    :cond_5
    div-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public abstract a(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;
.end method

.method public abstract a(Landroid/view/View;I)V
.end method

.method public abstract getFocusedViewIndex()I
.end method

.method public abstract setFocusAtViewIndex(I)V
.end method

.method public abstract setViews([Landroid/view/View;)V
.end method
