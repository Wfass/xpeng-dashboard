.class Landroid/view/View$TransformationInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransformationInfo"
.end annotation


# instance fields
.field private mAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mInverseMatrix:Landroid/graphics/Matrix;

.field private final mMatrix:Landroid/graphics/Matrix;

.field mTransitionAlpha:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 4331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4339
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4354
    iput v0, p0, Landroid/view/View$TransformationInfo;->mAlpha:F

    .line 4362
    iput v0, p0, Landroid/view/View$TransformationInfo;->mTransitionAlpha:F

    return-void
.end method

.method static synthetic access$2400(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;
    .locals 0

    .line 4331
    iget-object p0, p0, Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$2500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;
    .locals 0

    .line 4331
    iget-object p0, p0, Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$2502(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 0

    .line 4331
    iput-object p1, p0, Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;

    return-object p1
.end method

.method static synthetic access$2600(Landroid/view/View$TransformationInfo;)F
    .locals 0

    .line 4331
    iget p0, p0, Landroid/view/View$TransformationInfo;->mAlpha:F

    return p0
.end method

.method static synthetic access$2602(Landroid/view/View$TransformationInfo;F)F
    .locals 0

    .line 4331
    iput p1, p0, Landroid/view/View$TransformationInfo;->mAlpha:F

    return p1
.end method
