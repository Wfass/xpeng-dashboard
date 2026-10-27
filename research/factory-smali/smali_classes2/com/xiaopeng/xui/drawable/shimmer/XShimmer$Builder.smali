.class public abstract Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
.super Ljava/lang/Object;
.source "XShimmer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 131
    .local p0, "this":Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;, "Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    invoke-direct {v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    return-void
.end method

.method private static clamp(FFF)F
    .locals 1
    .param p0, "min"    # F
    .param p1, "max"    # F
    .param p2, "value"    # F

    .line 376
    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method


# virtual methods
.method public build()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;
    .locals 1

    .line 370
    .local p0, "this":Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;, "Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->updateColors()V

    .line 371
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->updatePositions()V

    .line 372
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    return-object v0
.end method

.method public consumeAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .line 138
    .local p0, "this":Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;, "Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder<TT;>;"
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 139
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->consumeAttributes(Landroid/content/res/TypedArray;)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    move-result-object v1

    return-object v1
.end method

.method consumeAttributes(Landroid/content/res/TypedArray;)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/TypedArray;",
            ")TT;"
        }
    .end annotation

    .line 143
    .local p0, "this":Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;, "Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder<TT;>;"
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_clip_to_children:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_clip_to_children:I

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget-boolean v1, v1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->clipToChildren:Z

    .line 145
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 144
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setClipToChildren(Z)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 148
    :cond_0
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_auto_start:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_auto_start:I

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget-boolean v1, v1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->autoStart:Z

    .line 150
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 149
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setAutoStart(Z)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 152
    :cond_1
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_base_alpha:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_base_alpha:I

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setBaseAlpha(F)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 155
    :cond_2
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_highlight_alpha:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_highlight_alpha:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setHighlightAlpha(F)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 158
    :cond_3
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_duration:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 159
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_duration:I

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget-wide v1, v1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->animationDuration:J

    long-to-int v1, v1

    .line 160
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v0, v0

    .line 159
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setDuration(J)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 163
    :cond_4
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_repeat_count:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 164
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_repeat_count:I

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v1, v1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->repeatCount:I

    .line 165
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 164
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setRepeatCount(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 167
    :cond_5
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_repeat_delay:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 168
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_repeat_delay:I

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget-wide v1, v1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->repeatDelay:J

    long-to-int v1, v1

    .line 169
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v0, v0

    .line 168
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setRepeatDelay(J)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 172
    :cond_6
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_repeat_mode:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 173
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_repeat_mode:I

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v1, v1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->repeatMode:I

    .line 174
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 173
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setRepeatMode(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 177
    :cond_7
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_direction:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 178
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_direction:I

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v1, v1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->direction:I

    .line 179
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 180
    .local v0, "direction":I
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setDirection(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 183
    .end local v0    # "direction":I
    :cond_8
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_shape:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 184
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_shape:I

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v1, v1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->shape:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 185
    .local v0, "shape":I
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setShape(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 188
    .end local v0    # "shape":I
    :cond_9
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_dropoff:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 189
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_dropoff:I

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v1, v1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->dropoff:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setDropoff(F)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 191
    :cond_a
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_fixed_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 192
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_fixed_width:I

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v1, v1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->fixedWidth:I

    .line 193
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 192
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setFixedWidth(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 196
    :cond_b
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_fixed_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 197
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_fixed_height:I

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v1, v1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->fixedHeight:I

    .line 198
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 197
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setFixedHeight(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 201
    :cond_c
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_intensity:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 202
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_intensity:I

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v1, v1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->intensity:F

    .line 203
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 202
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setIntensity(F)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 205
    :cond_d
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_width_ratio:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 206
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_width_ratio:I

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v1, v1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->widthRatio:F

    .line 207
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 206
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setWidthRatio(F)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 209
    :cond_e
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_height_ratio:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 210
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_height_ratio:I

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v1, v1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->heightRatio:F

    .line 211
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 210
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setHeightRatio(F)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 213
    :cond_f
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_tilt:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 214
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_tilt:I

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v1, v1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->tilt:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setTilt(F)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 216
    :cond_10
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_global_configuration_enable:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 217
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XShimmerDrawable_shimmer_global_configuration_enable:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 218
    .local v0, "global":Z
    if-eqz v0, :cond_11

    .line 219
    sget-boolean v1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->msGlobalEnable:Z

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setAutoStart(Z)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 222
    .end local v0    # "global":Z
    :cond_11
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public copyFrom(Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
    .locals 2
    .param p1, "other"    # Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;",
            ")TT;"
        }
    .end annotation

    .line 227
    .local p0, "this":Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;, "Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder<TT;>;"
    iget v0, p1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->direction:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setDirection(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 228
    iget v0, p1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->shape:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setShape(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 229
    iget v0, p1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->fixedWidth:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setFixedWidth(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 230
    iget v0, p1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->fixedHeight:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setFixedHeight(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 231
    iget v0, p1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->widthRatio:F

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setWidthRatio(F)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 232
    iget v0, p1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->heightRatio:F

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setHeightRatio(F)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 233
    iget v0, p1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->intensity:F

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setIntensity(F)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 234
    iget v0, p1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->dropoff:F

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setDropoff(F)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 235
    iget v0, p1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->tilt:F

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setTilt(F)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 236
    iget-boolean v0, p1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->clipToChildren:Z

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setClipToChildren(Z)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 237
    iget-boolean v0, p1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->autoStart:Z

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setAutoStart(Z)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 238
    iget v0, p1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->repeatCount:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setRepeatCount(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 239
    iget v0, p1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->repeatMode:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setRepeatMode(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 240
    iget-wide v0, p1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->repeatDelay:J

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setRepeatDelay(J)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 241
    iget-wide v0, p1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->animationDuration:J

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->setDuration(J)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v1, p1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->baseColor:I

    iput v1, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->baseColor:I

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v1, p1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->highlightColor:I

    iput v1, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->highlightColor:I

    .line 244
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public setAutoStart(Z)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
    .locals 1
    .param p1, "status"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 337
    .local p0, "this":Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;, "Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iput-boolean p1, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->autoStart:Z

    .line 338
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setBaseAlpha(F)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
    .locals 5
    .param p1, "alpha"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 312
    .local p0, "this":Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;, "Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder<TT;>;"
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->clamp(FFF)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 313
    .local v0, "intAlpha":I
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    shl-int/lit8 v2, v0, 0x18

    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v3, v3, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->baseColor:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    iput v2, v1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->baseColor:I

    .line 314
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    move-result-object v1

    return-object v1
.end method

.method public setBaseColor(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 327
    .local p0, "this":Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;, "Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder<TT;>;"
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClipToChildren(Z)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
    .locals 1
    .param p1, "status"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 331
    .local p0, "this":Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;, "Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iput-boolean p1, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->clipToChildren:Z

    .line 332
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDirection(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
    .locals 1
    .param p1, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 248
    .local p0, "this":Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;, "Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iput p1, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->direction:I

    .line 249
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDropoff(F)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
    .locals 3
    .param p1, "dropoff"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 298
    .local p0, "this":Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;, "Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder<TT;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iput p1, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->dropoff:F

    .line 302
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    move-result-object v0

    return-object v0

    .line 299
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given invalid dropoff value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDuration(J)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
    .locals 3
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 362
    .local p0, "this":Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;, "Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iput-wide p1, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->animationDuration:J

    .line 366
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    move-result-object v0

    return-object v0

    .line 363
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given a negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFixedHeight(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
    .locals 3
    .param p1, "fixedHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 266
    .local p0, "this":Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;, "Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder<TT;>;"
    if-ltz p1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iput p1, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->fixedHeight:I

    .line 270
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    move-result-object v0

    return-object v0

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given invalid height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFixedWidth(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
    .locals 3
    .param p1, "fixedWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 258
    .local p0, "this":Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;, "Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder<TT;>;"
    if-ltz p1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iput p1, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->fixedWidth:I

    .line 262
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    move-result-object v0

    return-object v0

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given invalid width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHeightRatio(F)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
    .locals 3
    .param p1, "heightRatio"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 282
    .local p0, "this":Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;, "Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder<TT;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iput p1, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->heightRatio:F

    .line 286
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    move-result-object v0

    return-object v0

    .line 283
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given invalid height ratio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHighlightAlpha(F)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
    .locals 5
    .param p1, "alpha"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 318
    .local p0, "this":Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;, "Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder<TT;>;"
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->clamp(FFF)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 319
    .local v0, "intAlpha":I
    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    shl-int/lit8 v2, v0, 0x18

    iget-object v3, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iget v3, v3, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->highlightColor:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    iput v2, v1, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->highlightColor:I

    .line 320
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    move-result-object v1

    return-object v1
.end method

.method public setHighlightColor(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 324
    .local p0, "this":Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;, "Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder<TT;>;"
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIntensity(F)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
    .locals 3
    .param p1, "intensity"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 290
    .local p0, "this":Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;, "Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder<TT;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iput p1, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->intensity:F

    .line 294
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    move-result-object v0

    return-object v0

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given invalid intensity value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRepeatCount(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
    .locals 1
    .param p1, "repeatCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 343
    .local p0, "this":Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;, "Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iput p1, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->repeatCount:I

    .line 344
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setRepeatDelay(J)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
    .locals 3
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 354
    .local p0, "this":Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;, "Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iput-wide p1, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->repeatDelay:J

    .line 358
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    move-result-object v0

    return-object v0

    .line 355
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given a negative repeat delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRepeatMode(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
    .locals 1
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 349
    .local p0, "this":Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;, "Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iput p1, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->repeatMode:I

    .line 350
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setShape(I)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
    .locals 1
    .param p1, "shape"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 253
    .local p0, "this":Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;, "Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iput p1, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->shape:I

    .line 254
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTilt(F)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
    .locals 1
    .param p1, "tilt"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 306
    .local p0, "this":Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;, "Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iput p1, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->tilt:F

    .line 307
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setWidthRatio(F)Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;
    .locals 3
    .param p1, "widthRatio"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 274
    .local p0, "this":Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;, "Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder<TT;>;"
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->mShimmer:Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;

    iput p1, v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->widthRatio:F

    .line 278
    invoke-virtual {p0}, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;->getThis()Lcom/xiaopeng/xui/drawable/shimmer/XShimmer$Builder;

    move-result-object v0

    return-object v0

    .line 275
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given invalid width ratio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
