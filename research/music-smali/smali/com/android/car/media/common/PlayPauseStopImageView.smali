.class public Lcom/android/car/media/common/PlayPauseStopImageView;
.super Landroid/widget/ImageView;
.source "PlayPauseStopImageView.java"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I


# instance fields
.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 41
    new-array v1, v0, [I

    sget v2, Lcom/android/car/media/common/f$b;->state_pause:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/android/car/media/common/PlayPauseStopImageView;->a:[I

    .line 42
    new-array v1, v0, [I

    sget v2, Lcom/android/car/media/common/f$b;->state_stop:I

    aput v2, v1, v3

    sput-object v1, Lcom/android/car/media/common/PlayPauseStopImageView;->b:[I

    .line 43
    new-array v1, v0, [I

    sget v2, Lcom/android/car/media/common/f$b;->state_play:I

    aput v2, v1, v3

    sput-object v1, Lcom/android/car/media/common/PlayPauseStopImageView;->c:[I

    .line 44
    new-array v0, v0, [I

    sget v1, Lcom/android/car/media/common/f$b;->state_disabled:I

    aput v1, v0, v3

    sput-object v0, Lcom/android/car/media/common/PlayPauseStopImageView;->d:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 62
    iput p1, p0, Lcom/android/car/media/common/PlayPauseStopImageView;->e:I

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/android/car/media/common/PlayPauseStopImageView;->e:I

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 91
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 93
    iget v1, p0, Lcom/android/car/media/common/PlayPauseStopImageView;->e:I

    if-eqz v1, :cond_3

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/media/common/PlayPauseStopImageView;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayPauseStopImageView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :cond_0
    sget-object v0, Lcom/android/car/media/common/PlayPauseStopImageView;->a:[I

    invoke-static {p1, v0}, Lcom/android/car/media/common/PlayPauseStopImageView;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 98
    :cond_1
    sget-object v0, Lcom/android/car/media/common/PlayPauseStopImageView;->b:[I

    invoke-static {p1, v0}, Lcom/android/car/media/common/PlayPauseStopImageView;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 95
    :cond_2
    sget-object v0, Lcom/android/car/media/common/PlayPauseStopImageView;->c:[I

    invoke-static {p1, v0}, Lcom/android/car/media/common/PlayPauseStopImageView;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 104
    :cond_3
    sget-object v0, Lcom/android/car/media/common/PlayPauseStopImageView;->d:[I

    invoke-static {p1, v0}, Lcom/android/car/media/common/PlayPauseStopImageView;->mergeDrawableStates([I[I)[I

    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/android/car/media/common/PlayPauseStopImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 110
    invoke-virtual {p0}, Lcom/android/car/media/common/PlayPauseStopImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    return-object p1
.end method

.method public setAction(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/android/car/media/common/PlayPauseStopImageView;->e:I

    .line 78
    invoke-virtual {p0}, Lcom/android/car/media/common/PlayPauseStopImageView;->refreshDrawableState()V

    return-void
.end method
