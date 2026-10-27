.class Lcom/xiaopeng/musicradio/widget/viewpager/a;
.super Ljava/lang/Object;
.source "MusicAnimationUtils.java"


# static fields
.field static final a:Landroid/view/animation/Interpolator;

.field static final b:Landroid/view/animation/Interpolator;

.field static final c:Landroid/view/animation/Interpolator;

.field static final d:Landroid/view/animation/Interpolator;

.field static final e:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/widget/viewpager/a;->a:Landroid/view/animation/Interpolator;

    .line 29
    new-instance v0, Lhm;

    invoke-direct {v0}, Lhm;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/widget/viewpager/a;->b:Landroid/view/animation/Interpolator;

    .line 30
    new-instance v0, Lhl;

    invoke-direct {v0}, Lhl;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/widget/viewpager/a;->c:Landroid/view/animation/Interpolator;

    .line 31
    new-instance v0, Lhn;

    invoke-direct {v0}, Lhn;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/widget/viewpager/a;->d:Landroid/view/animation/Interpolator;

    .line 32
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/widget/viewpager/a;->e:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static a(IIF)I
    .locals 0

    sub-int/2addr p1, p0

    int-to-float p1, p1

    mul-float/2addr p2, p1

    .line 42
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method
