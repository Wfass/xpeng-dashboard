.class public Lcom/android/car/apps/common/CrossfadeImageView;
.super Landroid/widget/FrameLayout;
.source "CrossfadeImageView.java"


# instance fields
.field private mActiveImageView:Lcom/android/car/apps/common/e;

.field private final mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCurrentBitmap:Landroid/graphics/Bitmap;

.field private mCurrentColor:Ljava/lang/Integer;

.field private mImageInAnimation:Landroid/view/animation/Animation;

.field private mImageOutAnimation:Landroid/view/animation/Animation;

.field private final mImageView1:Lcom/android/car/apps/common/e;

.field private final mImageView2:Lcom/android/car/apps/common/e;

.field private mInactiveImageView:Lcom/android/car/apps/common/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/android/car/apps/common/CrossfadeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/android/car/apps/common/CrossfadeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/car/apps/common/CrossfadeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 44
    iput-object v0, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mCurrentColor:Ljava/lang/Integer;

    .line 120
    new-instance v0, Lcom/android/car/apps/common/CrossfadeImageView$1;

    invoke-direct {v0, p0}, Lcom/android/car/apps/common/CrossfadeImageView$1;-><init>(Lcom/android/car/apps/common/CrossfadeImageView;)V

    iput-object v0, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 63
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 65
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, -0x1000000

    .line 67
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 68
    invoke-virtual {p0, v1}, Lcom/android/car/apps/common/CrossfadeImageView;->addView(Landroid/view/View;)V

    .line 69
    new-instance v1, Lcom/android/car/apps/common/e;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/car/apps/common/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mImageView1:Lcom/android/car/apps/common/e;

    .line 70
    iget-object v1, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mImageView1:Lcom/android/car/apps/common/e;

    invoke-virtual {v1, v0}, Lcom/android/car/apps/common/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v1, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mImageView1:Lcom/android/car/apps/common/e;

    invoke-virtual {p0, v1}, Lcom/android/car/apps/common/CrossfadeImageView;->addView(Landroid/view/View;)V

    .line 72
    new-instance v1, Lcom/android/car/apps/common/e;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/car/apps/common/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mImageView2:Lcom/android/car/apps/common/e;

    .line 73
    iget-object p2, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mImageView2:Lcom/android/car/apps/common/e;

    invoke-virtual {p2, v0}, Lcom/android/car/apps/common/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object p2, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mImageView2:Lcom/android/car/apps/common/e;

    invoke-virtual {p0, p2}, Lcom/android/car/apps/common/CrossfadeImageView;->addView(Landroid/view/View;)V

    .line 76
    iget-object p2, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mImageView1:Lcom/android/car/apps/common/e;

    iput-object p2, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mActiveImageView:Lcom/android/car/apps/common/e;

    .line 77
    iget-object p2, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mImageView2:Lcom/android/car/apps/common/e;

    iput-object p2, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mInactiveImageView:Lcom/android/car/apps/common/e;

    .line 79
    sget p2, Lcom/android/car/apps/common/h$a;->image_in:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mImageInAnimation:Landroid/view/animation/Animation;

    .line 80
    iget-object p2, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mImageInAnimation:Landroid/view/animation/Animation;

    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 81
    sget p2, Lcom/android/car/apps/common/h$a;->image_out:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mImageOutAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method static synthetic access$000(Lcom/android/car/apps/common/CrossfadeImageView;)Lcom/android/car/apps/common/e;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mInactiveImageView:Lcom/android/car/apps/common/e;

    return-object p0
.end method

.method private animateViews()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mInactiveImageView:Lcom/android/car/apps/common/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/car/apps/common/e;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mInactiveImageView:Lcom/android/car/apps/common/e;

    iget-object v1, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mImageInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/car/apps/common/e;->startAnimation(Landroid/view/animation/Animation;)V

    .line 139
    iget-object v0, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mInactiveImageView:Lcom/android/car/apps/common/e;

    invoke-virtual {v0}, Lcom/android/car/apps/common/e;->bringToFront()V

    .line 140
    iget-object v0, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mActiveImageView:Lcom/android/car/apps/common/e;

    iget-object v1, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mImageOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/car/apps/common/e;->startAnimation(Landroid/view/animation/Animation;)V

    .line 141
    iget-object v0, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mImageOutAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 142
    iget-object v0, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mActiveImageView:Lcom/android/car/apps/common/e;

    iget-object v1, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mImageView1:Lcom/android/car/apps/common/e;

    if-ne v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mImageView2:Lcom/android/car/apps/common/e;

    iput-object v0, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mActiveImageView:Lcom/android/car/apps/common/e;

    .line 144
    iput-object v1, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mInactiveImageView:Lcom/android/car/apps/common/e;

    goto :goto_0

    .line 146
    :cond_0
    iput-object v1, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mActiveImageView:Lcom/android/car/apps/common/e;

    .line 147
    iget-object v0, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mImageView2:Lcom/android/car/apps/common/e;

    iput-object v0, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mInactiveImageView:Lcom/android/car/apps/common/e;

    :goto_0
    return-void
.end method


# virtual methods
.method public setBackgroundColor(I)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mCurrentColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mInactiveImageView:Lcom/android/car/apps/common/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/car/apps/common/e;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 114
    iput-object v1, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mCurrentColor:Ljava/lang/Integer;

    .line 116
    iget-object v0, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mInactiveImageView:Lcom/android/car/apps/common/e;

    invoke-virtual {v0, p1}, Lcom/android/car/apps/common/e;->setBackgroundColor(I)V

    .line 117
    invoke-direct {p0}, Lcom/android/car/apps/common/CrossfadeImageView;->animateViews()V

    return-void
.end method

.method public setImageAdditionalScale(F)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mImageView2:Lcom/android/car/apps/common/e;

    invoke-virtual {v0, p1}, Lcom/android/car/apps/common/e;->setImageAdditionalScale(F)V

    .line 158
    iget-object v0, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mImageView1:Lcom/android/car/apps/common/e;

    invoke-virtual {v0, p1}, Lcom/android/car/apps/common/e;->setImageAdditionalScale(F)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 95
    :cond_0
    iput-object p1, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mCurrentColor:Ljava/lang/Integer;

    .line 97
    iget-object v0, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mInactiveImageView:Lcom/android/car/apps/common/e;

    invoke-virtual {v0, p1}, Lcom/android/car/apps/common/e;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p2, :cond_1

    .line 99
    invoke-direct {p0}, Lcom/android/car/apps/common/CrossfadeImageView;->animateViews()V

    goto :goto_0

    .line 101
    :cond_1
    iget-object p2, p0, Lcom/android/car/apps/common/CrossfadeImageView;->mActiveImageView:Lcom/android/car/apps/common/e;

    invoke-virtual {p2, p1}, Lcom/android/car/apps/common/e;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method
