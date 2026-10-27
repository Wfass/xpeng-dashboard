.class public Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
.super Ljava/lang/Object;
.source "ConstraintWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;,
        Landroidx/constraintlayout/solver/widgets/ConstraintWidget$ContentAlignment;
    }
.end annotation


# static fields
.field protected static final ANCHOR_BASELINE:I = 0x4

.field protected static final ANCHOR_BOTTOM:I = 0x3

.field protected static final ANCHOR_LEFT:I = 0x0

.field protected static final ANCHOR_RIGHT:I = 0x1

.field protected static final ANCHOR_TOP:I = 0x2

.field private static final AUTOTAG_CENTER:Z = false

.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field public static DEFAULT_BIAS:F = 0.0f

.field static final DIMENSION_HORIZONTAL:I = 0x0

.field static final DIMENSION_VERTICAL:I = 0x1

.field protected static final DIRECT:I = 0x2

.field public static final GONE:I = 0x8

.field public static final HORIZONTAL:I = 0x0

.field public static final INVISIBLE:I = 0x4

.field public static final MATCH_CONSTRAINT_PERCENT:I = 0x2

.field public static final MATCH_CONSTRAINT_RATIO:I = 0x3

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field protected static final SOLVER:I = 0x1

.field public static final UNKNOWN:I = -0x1

.field public static final VERTICAL:I = 0x1

.field public static final VISIBLE:I = 0x0

.field private static final WRAP:I = -0x2


# instance fields
.field protected mAnchors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mBaselineDistance:I

.field mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mBottomHasCentered:Z

.field mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field private mCircleConstraintAngle:F

.field private mCompanionWidget:Ljava/lang/Object;

.field private mContainerItemSkip:I

.field private mDebugName:Ljava/lang/String;

.field protected mDimensionRatio:F

.field protected mDimensionRatioSide:I

.field mDistToBottom:I

.field mDistToLeft:I

.field mDistToRight:I

.field mDistToTop:I

.field private mDrawHeight:I

.field private mDrawWidth:I

.field private mDrawX:I

.field private mDrawY:I

.field mHeight:I

.field mHorizontalBiasPercent:F

.field mHorizontalChainFixedPosition:Z

.field mHorizontalChainStyle:I

.field mHorizontalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public mHorizontalResolution:I

.field mHorizontalWrapVisited:Z

.field mIsHeightWrapContent:Z

.field mIsWidthWrapContent:Z

.field mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mLeftHasCentered:Z

.field protected mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field protected mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field protected mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field protected mListNextVisibleWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field mMatchConstraintDefaultHeight:I

.field mMatchConstraintDefaultWidth:I

.field mMatchConstraintMaxHeight:I

.field mMatchConstraintMaxWidth:I

.field mMatchConstraintMinHeight:I

.field mMatchConstraintMinWidth:I

.field mMatchConstraintPercentHeight:F

.field mMatchConstraintPercentWidth:F

.field private mMaxDimension:[I

.field protected mMinHeight:I

.field protected mMinWidth:I

.field protected mOffsetX:I

.field protected mOffsetY:I

.field mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field mResolutionHeight:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

.field mResolutionWidth:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

.field mResolvedDimensionRatio:F

.field mResolvedDimensionRatioSide:I

.field mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mRightHasCentered:Z

.field mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mTopHasCentered:Z

.field private mType:Ljava/lang/String;

.field mVerticalBiasPercent:F

.field mVerticalChainFixedPosition:Z

.field mVerticalChainStyle:I

.field mVerticalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public mVerticalResolution:I

.field mVerticalWrapVisited:Z

.field private mVisibility:I

.field mWeight:[F

.field mWidth:I

.field private mWrapHeight:I

.field private mWrapWidth:I

.field protected mX:I

.field protected mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 201
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 70
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 77
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 78
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 79
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 80
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 81
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 82
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 83
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 84
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 88
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 89
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 91
    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    .line 92
    const/4 v3, 0x0

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 142
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 143
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 144
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 145
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 146
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 147
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 148
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 149
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 157
    const/4 v4, 0x6

    new-array v4, v4, [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v5, v4, v1

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v5, v4, v2

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v7, 0x3

    aput-object v5, v4, v7

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v7, 0x4

    aput-object v5, v4, v7

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v7, 0x5

    aput-object v5, v4, v7

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 158
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 163
    new-array v4, v2, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v5, v4, v1

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v5, v4, v6

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 166
    const/4 v4, 0x0

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 169
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 170
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 171
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 172
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 175
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 176
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 179
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 180
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 181
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 182
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 185
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 186
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 189
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 202
    sget v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 203
    sget v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 211
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 214
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 216
    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 217
    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 231
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 232
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 236
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    .line 238
    new-array v0, v2, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v4, v0, v1

    aput-object v4, v0, v6

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 239
    new-array v0, v2, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v4, v0, v1

    aput-object v4, v0, v6

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 241
    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 242
    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 393
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addAnchors()V

    .line 394
    return-void

    :array_0
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 420
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>(IIII)V

    .line 421
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 70
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 77
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 78
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 79
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 80
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 81
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 82
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 83
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 84
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 88
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 89
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 91
    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    .line 92
    const/4 v3, 0x0

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 142
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 143
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 144
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 145
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 146
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 147
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 148
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 149
    new-instance v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v4, p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 157
    const/4 v4, 0x6

    new-array v4, v4, [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v5, v4, v1

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v5, v4, v2

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v7, 0x3

    aput-object v5, v4, v7

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v7, 0x4

    aput-object v5, v4, v7

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v7, 0x5

    aput-object v5, v4, v7

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 158
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 163
    new-array v4, v2, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v5, v4, v1

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v5, v4, v6

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 166
    const/4 v4, 0x0

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 169
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 170
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 171
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 172
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 175
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 176
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 179
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 180
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 181
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 182
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 185
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 186
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 189
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 202
    sget v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 203
    sget v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 211
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 214
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 216
    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 217
    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 231
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 232
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 236
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    .line 238
    new-array v0, v2, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v4, v0, v1

    aput-object v4, v0, v6

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 239
    new-array v0, v2, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v4, v0, v1

    aput-object v4, v0, v6

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 241
    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 242
    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 405
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 406
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 407
    iput p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 408
    iput p4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 409
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addAnchors()V

    .line 410
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->forceUpdateDrawPosition()V

    .line 411
    return-void

    nop

    :array_0
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private addAnchors()V
    .locals 2

    .line 441
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    return-void
.end method

.method private applyConstraints(Landroidx/constraintlayout/solver/LinearSystem;ZLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIIFZZIIIFZ)V
    .locals 40
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p2, "parentWrapContent"    # Z
    .param p3, "parentMin"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p4, "parentMax"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p5, "dimensionBehaviour"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .param p6, "wrapContent"    # Z
    .param p7, "beginAnchor"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p8, "endAnchor"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p9, "beginPosition"    # I
    .param p10, "dimension"    # I
    .param p11, "minDimension"    # I
    .param p12, "maxDimension"    # I
    .param p13, "bias"    # F
    .param p14, "useRatio"    # Z
    .param p15, "inChain"    # Z
    .param p16, "matchConstraintDefault"    # I
    .param p17, "matchMinDimension"    # I
    .param p18, "matchMaxDimension"    # I
    .param p19, "matchPercentDimension"    # F
    .param p20, "applyPosition"    # Z

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p11

    move/from16 v14, p12

    .line 2430
    move-object/from16 v9, p7

    invoke-virtual {v10, v9}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    .line 2431
    .local v8, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v7, p8

    invoke-virtual {v10, v7}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    .line 2432
    .local v6, "end":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual/range {p7 .. p7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v5

    .line 2433
    .local v5, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual/range {p8 .. p8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    .line 2435
    .local v4, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    iget-boolean v1, v10, Landroidx/constraintlayout/solver/LinearSystem;->graphOptimizer:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 2436
    invoke-virtual/range {p7 .. p7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-ne v1, v2, :cond_2

    .line 2437
    invoke-virtual/range {p8 .. p8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-ne v1, v2, :cond_2

    .line 2438
    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2439
    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v1

    move-object/from16 v18, v4

    iget-wide v3, v1, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    .end local v4    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v18, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    const-wide/16 v15, 0x1

    add-long/2addr v3, v15

    iput-wide v3, v1, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    goto :goto_0

    .line 2441
    .end local v18    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v4    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_0
    move-object/from16 v18, v4

    .end local v4    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v18    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_0
    invoke-virtual/range {p7 .. p7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 2442
    invoke-virtual/range {p8 .. p8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 2443
    if-nez p15, :cond_1

    if-eqz p2, :cond_1

    .line 2444
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v10, v12, v6, v2, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2446
    :cond_1
    return-void

    .line 2449
    .end local v18    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v4    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_2
    move-object/from16 v18, v4

    .end local v4    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v18    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2450
    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v1

    iget-wide v3, v1, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    const-wide/16 v15, 0x1

    add-long/2addr v3, v15

    iput-wide v3, v1, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    .line 2453
    :cond_3
    invoke-virtual/range {p7 .. p7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v15

    .line 2454
    .local v15, "isBeginConnected":Z
    invoke-virtual/range {p8 .. p8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v16

    .line 2455
    .local v16, "isEndConnected":Z
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v20

    .line 2457
    .local v20, "isCenterConnected":Z
    const/4 v1, 0x0

    .line 2459
    .local v1, "variableSize":Z
    const/4 v3, 0x0

    .line 2460
    .local v3, "numConnections":I
    if-eqz v15, :cond_4

    add-int/lit8 v3, v3, 0x1

    .line 2461
    :cond_4
    if-eqz v16, :cond_5

    add-int/lit8 v3, v3, 0x1

    .line 2462
    :cond_5
    if-eqz v20, :cond_6

    add-int/lit8 v3, v3, 0x1

    .line 2464
    .end local v3    # "numConnections":I
    .local v4, "numConnections":I
    :cond_6
    move v4, v3

    if-eqz p14, :cond_7

    .line 2465
    const/4 v3, 0x3

    .end local p16    # "matchConstraintDefault":I
    .local v3, "matchConstraintDefault":I
    goto :goto_1

    .line 2467
    .end local v3    # "matchConstraintDefault":I
    .restart local p16    # "matchConstraintDefault":I
    :cond_7
    move/from16 v3, p16

    .end local p16    # "matchConstraintDefault":I
    .restart local v3    # "matchConstraintDefault":I
    :goto_1
    sget-object v21, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual/range {p5 .. p5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_0

    goto :goto_2

    .line 2478
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_2

    .line 2475
    :pswitch_1
    const/4 v1, 0x0

    .line 2476
    goto :goto_2

    .line 2472
    :pswitch_2
    const/4 v1, 0x0

    .line 2473
    goto :goto_2

    .line 2469
    :pswitch_3
    const/4 v1, 0x0

    .line 2470
    nop

    .line 2482
    :goto_2
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    move/from16 v24, v1

    const/16 v1, 0x8

    .end local v1    # "variableSize":Z
    .local v24, "variableSize":Z
    if-ne v2, v1, :cond_8

    .line 2483
    const/4 v1, 0x0

    .line 2484
    .end local p10    # "dimension":I
    .local v1, "dimension":I
    const/4 v2, 0x0

    .line 2488
    .end local v24    # "variableSize":Z
    .local v2, "variableSize":Z
    move/from16 v24, v2

    goto :goto_3

    .end local v1    # "dimension":I
    .end local v2    # "variableSize":Z
    .restart local v24    # "variableSize":Z
    .restart local p10    # "dimension":I
    :cond_8
    move/from16 v1, p10

    .end local p10    # "dimension":I
    .restart local v1    # "dimension":I
    :goto_3
    if-eqz p20, :cond_a

    .line 2489
    if-nez v15, :cond_9

    if-nez v16, :cond_9

    if-nez v20, :cond_9

    .line 2490
    move/from16 v2, p9

    invoke-virtual {v10, v8, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 2497
    move/from16 v25, v4

    goto :goto_4

    .line 2491
    :cond_9
    move/from16 v2, p9

    if-eqz v15, :cond_a

    if-nez v16, :cond_a

    .line 2492
    invoke-virtual/range {p7 .. p7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    move/from16 v25, v4

    const/4 v4, 0x6

    invoke-virtual {v10, v8, v5, v2, v4}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_4

    .line 2497
    :cond_a
    move/from16 v25, v4

    .end local v4    # "numConnections":I
    .local v25, "numConnections":I
    :goto_4
    const/4 v4, 0x3

    if-nez v24, :cond_e

    .line 2498
    if-eqz p6, :cond_c

    .line 2499
    const/4 v2, 0x0

    invoke-virtual {v10, v6, v8, v2, v4}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2500
    if-lez v13, :cond_b

    .line 2501
    const/4 v2, 0x6

    invoke-virtual {v10, v6, v8, v13, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_5

    .line 2503
    :cond_b
    const/4 v2, 0x6

    :goto_5
    const v4, 0x7fffffff

    if-ge v14, v4, :cond_d

    .line 2504
    invoke-virtual {v10, v6, v8, v14, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_6

    .line 2507
    :cond_c
    const/4 v2, 0x6

    invoke-virtual {v10, v6, v8, v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2566
    :cond_d
    :goto_6
    move/from16 v0, p17

    move/from16 v17, p18

    move v14, v1

    move/from16 v29, v3

    move-object/from16 v33, v5

    move-object v13, v6

    move-object/from16 v30, v18

    move/from16 v9, v25

    const/4 v1, 0x2

    const/4 v6, 0x6

    goto/16 :goto_10

    .line 2510
    :cond_e
    const/4 v2, -0x2

    move/from16 v4, p17

    if-ne v4, v2, :cond_f

    .line 2511
    move v4, v1

    .line 2513
    .end local p17    # "matchMinDimension":I
    .local v4, "matchMinDimension":I
    :cond_f
    move-object/from16 v26, v5

    move/from16 v5, p18

    if-ne v5, v2, :cond_10

    .line 2514
    .end local v5    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v26, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    move v2, v1

    .line 2517
    .end local p18    # "matchMaxDimension":I
    .local v2, "matchMaxDimension":I
    move v5, v2

    .end local v2    # "matchMaxDimension":I
    .local v5, "matchMaxDimension":I
    :cond_10
    if-lez v4, :cond_12

    .line 2518
    if-eqz p2, :cond_11

    .line 2519
    const/4 v2, 0x6

    invoke-virtual {v10, v6, v8, v4, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_7

    .line 2521
    :cond_11
    const/4 v2, 0x6

    invoke-virtual {v10, v6, v8, v4, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2523
    :goto_7
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2525
    :cond_12
    if-lez v5, :cond_14

    .line 2526
    if-eqz p2, :cond_13

    .line 2527
    const/4 v2, 0x1

    invoke-virtual {v10, v6, v8, v5, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2531
    const/4 v2, 0x6

    goto :goto_8

    .line 2529
    :cond_13
    const/4 v2, 0x1

    const/4 v2, 0x6

    invoke-virtual {v10, v6, v8, v5, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2531
    :goto_8
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_9

    .line 2533
    :cond_14
    const/4 v2, 0x6

    :goto_9
    const/4 v2, 0x1

    if-ne v3, v2, :cond_17

    .line 2534
    if-eqz p2, :cond_15

    .line 2535
    const/4 v2, 0x6

    invoke-virtual {v10, v6, v8, v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2556
    .end local v1    # "dimension":I
    .end local v3    # "matchConstraintDefault":I
    .end local v4    # "matchMinDimension":I
    .end local v5    # "matchMaxDimension":I
    .end local v6    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v18    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v25    # "numConnections":I
    .end local v26    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v0, "matchMaxDimension":I
    .local v9, "numConnections":I
    .local v13, "end":Landroidx/constraintlayout/solver/SolverVariable;
    .local v14, "dimension":I
    .local v29, "matchConstraintDefault":I
    .local v30, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v31, "matchMinDimension":I
    .local v33, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_a
    move v14, v1

    move/from16 v29, v3

    move/from16 v31, v4

    move v0, v5

    move-object v13, v6

    move-object/from16 v30, v18

    move/from16 v9, v25

    move-object/from16 v33, v26

    goto/16 :goto_d

    .line 2536
    .end local v0    # "matchMaxDimension":I
    .end local v9    # "numConnections":I
    .end local v13    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v14    # "dimension":I
    .end local v29    # "matchConstraintDefault":I
    .end local v30    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v31    # "matchMinDimension":I
    .end local v33    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v1    # "dimension":I
    .restart local v3    # "matchConstraintDefault":I
    .restart local v4    # "matchMinDimension":I
    .restart local v5    # "matchMaxDimension":I
    .restart local v6    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v18    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v25    # "numConnections":I
    .restart local v26    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_15
    const/4 v2, 0x6

    if-eqz p15, :cond_16

    .line 2537
    const/4 v2, 0x4

    invoke-virtual {v10, v6, v8, v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_a

    .line 2539
    :cond_16
    const/4 v2, 0x1

    invoke-virtual {v10, v6, v8, v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_a

    .line 2541
    :cond_17
    const/4 v2, 0x2

    if-ne v3, v2, :cond_1a

    .line 2542
    const/16 v17, 0x0

    .line 2543
    .local v17, "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    const/16 v19, 0x0

    .line 2544
    .local v19, "percentEnd":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual/range {p7 .. p7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v2

    move/from16 v27, v1

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .end local v1    # "dimension":I
    .local v27, "dimension":I
    if-eq v2, v1, :cond_19

    invoke-virtual/range {p7 .. p7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v1, v2, :cond_18

    goto :goto_b

    .line 2549
    :cond_18
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 2550
    .end local v17    # "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    .local v1, "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v28, v1

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .end local v1    # "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    .local v28, "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 2552
    .end local v19    # "percentEnd":Landroidx/constraintlayout/solver/SolverVariable;
    .local v1, "percentEnd":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v0, v1

    goto :goto_c

    .line 2546
    .end local v1    # "percentEnd":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v28    # "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v17    # "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v19    # "percentEnd":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_19
    :goto_b
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 2547
    .end local v17    # "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    .local v1, "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 2552
    .end local v19    # "percentEnd":Landroidx/constraintlayout/solver/SolverVariable;
    .local v0, "percentEnd":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v28, v1

    .end local v1    # "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v28    # "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v1

    move/from16 v2, v27

    .end local v27    # "dimension":I
    .local v2, "dimension":I
    move v14, v2

    const/4 v9, 0x2

    const/16 v17, 0x6

    const/16 v19, 0x0

    move-object v2, v6

    .end local v2    # "dimension":I
    .restart local v14    # "dimension":I
    move/from16 v29, v3

    move-object v3, v8

    .end local v3    # "matchConstraintDefault":I
    .restart local v29    # "matchConstraintDefault":I
    move/from16 v31, v4

    move-object/from16 v30, v18

    move/from16 v9, v25

    move-object v4, v0

    .end local v4    # "matchMinDimension":I
    .end local v18    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v25    # "numConnections":I
    .restart local v9    # "numConnections":I
    .restart local v30    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v31    # "matchMinDimension":I
    move-object/from16 v32, v0

    move v0, v5

    move-object/from16 v33, v26

    move-object/from16 v5, v28

    .end local v5    # "matchMaxDimension":I
    .end local v26    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v0, "matchMaxDimension":I
    .local v32, "percentEnd":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v33    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v13, v6

    move/from16 v6, p19

    .end local v6    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v13    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/solver/ArrayRow;->createRowDimensionRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 2553
    const/16 v24, 0x0

    .end local v28    # "percentBegin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v32    # "percentEnd":Landroidx/constraintlayout/solver/SolverVariable;
    goto :goto_d

    .line 2556
    .end local v0    # "matchMaxDimension":I
    .end local v9    # "numConnections":I
    .end local v13    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v14    # "dimension":I
    .end local v29    # "matchConstraintDefault":I
    .end local v30    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v31    # "matchMinDimension":I
    .end local v33    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v1, "dimension":I
    .restart local v3    # "matchConstraintDefault":I
    .restart local v4    # "matchMinDimension":I
    .restart local v5    # "matchMaxDimension":I
    .restart local v6    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v18    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v25    # "numConnections":I
    .restart local v26    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_1a
    move v14, v1

    move/from16 v29, v3

    move/from16 v31, v4

    move v0, v5

    move-object v13, v6

    move-object/from16 v30, v18

    move/from16 v9, v25

    move-object/from16 v33, v26

    .end local v1    # "dimension":I
    .end local v3    # "matchConstraintDefault":I
    .end local v4    # "matchMinDimension":I
    .end local v5    # "matchMaxDimension":I
    .end local v6    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v18    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v25    # "numConnections":I
    .end local v26    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v0    # "matchMaxDimension":I
    .restart local v9    # "numConnections":I
    .restart local v13    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v14    # "dimension":I
    .restart local v29    # "matchConstraintDefault":I
    .restart local v30    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v31    # "matchMinDimension":I
    .restart local v33    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_d
    if-eqz v24, :cond_1d

    const/4 v1, 0x2

    if-eq v9, v1, :cond_1c

    if-nez p14, :cond_1c

    .line 2557
    const/16 v24, 0x0

    .line 2558
    move/from16 v4, v31

    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2559
    .end local v31    # "matchMinDimension":I
    .local v2, "d":I
    .restart local v4    # "matchMinDimension":I
    if-lez v0, :cond_1b

    .line 2560
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2562
    :cond_1b
    const/4 v6, 0x6

    invoke-virtual {v10, v13, v8, v2, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .end local v2    # "d":I
    goto :goto_f

    .line 2566
    .end local v4    # "matchMinDimension":I
    .restart local v31    # "matchMinDimension":I
    :cond_1c
    move/from16 v4, v31

    goto :goto_e

    :cond_1d
    move/from16 v4, v31

    const/4 v1, 0x2

    :goto_e
    const/4 v6, 0x6

    .end local v31    # "matchMinDimension":I
    .local v0, "matchMinDimension":I
    .local v17, "matchMaxDimension":I
    :goto_f
    move/from16 v17, v0

    move v0, v4

    :goto_10
    if-eqz p20, :cond_36

    if-eqz p15, :cond_1e

    .line 2572
    move/from16 v36, v0

    move v5, v1

    move v2, v6

    move-object v0, v8

    move-object v3, v13

    move/from16 v34, v14

    move/from16 v38, v29

    move-object/from16 v4, v30

    move-object/from16 v14, v33

    const/4 v1, 0x0

    move v13, v9

    goto/16 :goto_1e

    .line 2581
    :cond_1e
    const/4 v1, 0x5

    if-nez v15, :cond_20

    if-nez v16, :cond_20

    if-nez v20, :cond_20

    .line 2583
    if-eqz p2, :cond_1f

    .line 2584
    const/4 v5, 0x0

    invoke-virtual {v10, v12, v13, v5, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_12

    .line 2662
    :cond_1f
    move/from16 v36, v0

    move v2, v6

    move-object v0, v8

    move-object v3, v13

    move/from16 v34, v14

    move/from16 v38, v29

    move-object/from16 v4, v30

    move-object/from16 v14, v33

    const/4 v1, 0x0

    .end local v8    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v9    # "numConnections":I
    .end local v29    # "matchConstraintDefault":I
    .end local v30    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v33    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v0, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .local v3, "end":Landroidx/constraintlayout/solver/SolverVariable;
    .local v4, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v13, "numConnections":I
    .local v14, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v34, "dimension":I
    .local v36, "matchMinDimension":I
    .local v38, "matchConstraintDefault":I
    :goto_11
    move v13, v9

    goto/16 :goto_1d

    .line 2586
    .end local v3    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v4    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v34    # "dimension":I
    .end local v36    # "matchMinDimension":I
    .end local v38    # "matchConstraintDefault":I
    .local v0, "matchMinDimension":I
    .restart local v8    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v9    # "numConnections":I
    .local v13, "end":Landroidx/constraintlayout/solver/SolverVariable;
    .local v14, "dimension":I
    .restart local v29    # "matchConstraintDefault":I
    .restart local v30    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v33    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_20
    const/4 v5, 0x0

    if-eqz v15, :cond_22

    if-nez v16, :cond_22

    .line 2588
    if-eqz p2, :cond_21

    .line 2589
    invoke-virtual {v10, v12, v13, v5, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2662
    .end local v8    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v9    # "numConnections":I
    .end local v29    # "matchConstraintDefault":I
    .end local v30    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v33    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v0, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v3    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v4    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v13, "numConnections":I
    .local v14, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v34    # "dimension":I
    .restart local v36    # "matchMinDimension":I
    .restart local v38    # "matchConstraintDefault":I
    :cond_21
    :goto_12
    move/from16 v36, v0

    move v1, v5

    move v2, v6

    move-object v0, v8

    move-object v3, v13

    move/from16 v34, v14

    move/from16 v38, v29

    move-object/from16 v4, v30

    :goto_13
    move-object/from16 v14, v33

    goto :goto_11

    .line 2591
    .end local v3    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v4    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v34    # "dimension":I
    .end local v36    # "matchMinDimension":I
    .end local v38    # "matchConstraintDefault":I
    .local v0, "matchMinDimension":I
    .restart local v8    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v9    # "numConnections":I
    .local v13, "end":Landroidx/constraintlayout/solver/SolverVariable;
    .local v14, "dimension":I
    .restart local v29    # "matchConstraintDefault":I
    .restart local v30    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v33    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_22
    if-nez v15, :cond_24

    if-eqz v16, :cond_24

    .line 2592
    invoke-virtual/range {p8 .. p8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    neg-int v2, v2

    move-object/from16 v4, v30

    invoke-virtual {v10, v13, v4, v2, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2593
    .end local v30    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v4    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    if-eqz p2, :cond_23

    .line 2594
    invoke-virtual {v10, v8, v11, v5, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2662
    .end local v8    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v9    # "numConnections":I
    .end local v29    # "matchConstraintDefault":I
    .end local v33    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v0, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v3    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .local v13, "numConnections":I
    .local v14, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v34    # "dimension":I
    .restart local v36    # "matchMinDimension":I
    .restart local v38    # "matchConstraintDefault":I
    :cond_23
    move/from16 v36, v0

    move v1, v5

    move v2, v6

    move-object v0, v8

    move-object v3, v13

    move/from16 v34, v14

    move/from16 v38, v29

    goto :goto_13

    .line 2596
    .end local v3    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v4    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v34    # "dimension":I
    .end local v36    # "matchMinDimension":I
    .end local v38    # "matchConstraintDefault":I
    .local v0, "matchMinDimension":I
    .restart local v8    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v9    # "numConnections":I
    .local v13, "end":Landroidx/constraintlayout/solver/SolverVariable;
    .local v14, "dimension":I
    .restart local v29    # "matchConstraintDefault":I
    .restart local v30    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v33    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_24
    move-object/from16 v4, v30

    .end local v30    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v4    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    if-eqz v15, :cond_34

    if-eqz v16, :cond_34

    .line 2600
    const/4 v2, 0x0

    .line 2601
    .local v2, "applyBoundsCheck":Z
    const/4 v3, 0x0

    .line 2602
    .local v3, "applyCentering":Z
    const/16 v18, 0x5

    .line 2604
    .local v18, "centeringStrength":I
    if-eqz v24, :cond_2f

    .line 2606
    if-eqz p2, :cond_25

    move-object v1, v13

    move/from16 v13, p11

    if-nez v13, :cond_26

    .line 2607
    .end local v13    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .local v1, "end":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {v10, v1, v8, v5, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_14

    .line 2610
    .end local v1    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v13    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_25
    move-object v1, v13

    move/from16 v13, p11

    .end local v13    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v1    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_26
    :goto_14
    move/from16 v13, v29

    if-nez v13, :cond_2b

    .line 2611
    .end local v29    # "matchConstraintDefault":I
    .local v13, "matchConstraintDefault":I
    const/16 v19, 0x6

    .line 2612
    .local v19, "strength":I
    if-gtz v17, :cond_28

    if-lez v0, :cond_27

    goto :goto_16

    .line 2616
    .local v2, "strength":I
    .local v19, "applyBoundsCheck":Z
    :cond_27
    :goto_15
    move/from16 v39, v19

    move/from16 v19, v2

    move/from16 v2, v39

    goto :goto_17

    .line 2613
    .local v2, "applyBoundsCheck":Z
    .local v19, "strength":I
    :cond_28
    :goto_16
    const/16 v19, 0x4

    .line 2614
    const/4 v2, 0x1

    goto :goto_15

    .line 2616
    .local v2, "strength":I
    .local v19, "applyBoundsCheck":Z
    :goto_17
    invoke-virtual/range {p7 .. p7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    move/from16 v34, v14

    move-object/from16 v14, v33

    invoke-virtual {v10, v8, v14, v5, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2617
    .end local v33    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v14, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v34    # "dimension":I
    invoke-virtual/range {p8 .. p8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v10, v1, v4, v5, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2618
    if-gtz v17, :cond_29

    if-lez v0, :cond_2a

    .line 2619
    :cond_29
    const/4 v2, 0x1

    .line 2621
    .end local v3    # "applyCentering":Z
    .local v2, "applyCentering":Z
    move v3, v2

    .line 2646
    .end local v2    # "applyCentering":Z
    .restart local v3    # "applyCentering":Z
    :cond_2a
    move-object v6, v1

    move/from16 v22, v19

    goto :goto_19

    .line 2621
    .end local v19    # "applyBoundsCheck":Z
    .end local v34    # "dimension":I
    .local v2, "applyBoundsCheck":Z
    .local v14, "dimension":I
    .restart local v33    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_2b
    move/from16 v34, v14

    move-object/from16 v14, v33

    .end local v33    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v14, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v34    # "dimension":I
    const/4 v5, 0x1

    if-ne v13, v5, :cond_2c

    .line 2622
    const/4 v3, 0x1

    .line 2623
    const/4 v2, 0x1

    .line 2624
    const/4 v5, 0x6

    .line 2646
    .end local v18    # "centeringStrength":I
    .local v5, "centeringStrength":I
    move-object v6, v1

    move/from16 v22, v2

    move/from16 v18, v3

    move/from16 v19, v5

    goto :goto_1a

    .line 2625
    .end local v5    # "centeringStrength":I
    .restart local v18    # "centeringStrength":I
    :cond_2c
    const/4 v5, 0x3

    if-ne v13, v5, :cond_2e

    .line 2626
    const/4 v3, 0x1

    .line 2627
    const/4 v2, 0x1

    .line 2628
    const/4 v5, 0x4

    .line 2629
    .local v5, "strength":I
    if-nez p14, :cond_2d

    .line 2632
    const/4 v5, 0x6

    .line 2634
    :cond_2d
    invoke-virtual/range {p7 .. p7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    invoke-virtual {v10, v8, v14, v6, v5}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2635
    invoke-virtual/range {p8 .. p8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v10, v1, v4, v6, v5}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2636
    .end local v5    # "strength":I
    nop

    .line 2646
    .end local v1    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v2    # "applyBoundsCheck":Z
    .end local v3    # "applyCentering":Z
    .restart local v6    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .local v18, "applyCentering":Z
    .local v19, "centeringStrength":I
    .local v22, "applyBoundsCheck":Z
    :cond_2e
    move-object v6, v1

    goto :goto_18

    .line 2639
    .end local v6    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v19    # "centeringStrength":I
    .end local v22    # "applyBoundsCheck":Z
    .end local v34    # "dimension":I
    .restart local v2    # "applyBoundsCheck":Z
    .restart local v3    # "applyCentering":Z
    .local v13, "end":Landroidx/constraintlayout/solver/SolverVariable;
    .local v14, "dimension":I
    .local v18, "centeringStrength":I
    .restart local v29    # "matchConstraintDefault":I
    .restart local v33    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_2f
    move-object v6, v13

    move/from16 v34, v14

    move/from16 v13, v29

    move-object/from16 v14, v33

    .end local v29    # "matchConstraintDefault":I
    .end local v33    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v6    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .local v13, "matchConstraintDefault":I
    .local v14, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v34    # "dimension":I
    const/4 v3, 0x1

    .line 2640
    if-eqz p2, :cond_30

    .line 2641
    invoke-virtual/range {p7 .. p7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    invoke-virtual {v10, v8, v14, v5, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2642
    invoke-virtual/range {p8 .. p8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v10, v6, v4, v5, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2646
    .end local v2    # "applyBoundsCheck":Z
    .end local v3    # "applyCentering":Z
    .local v18, "applyCentering":Z
    .restart local v19    # "centeringStrength":I
    .restart local v22    # "applyBoundsCheck":Z
    :cond_30
    :goto_18
    move/from16 v22, v2

    :goto_19
    move/from16 v19, v18

    move/from16 v18, v3

    :goto_1a
    if-eqz v18, :cond_31

    .line 2647
    invoke-virtual/range {p7 .. p7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    .line 2648
    invoke-virtual/range {p8 .. p8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v23

    .line 2647
    move-object v1, v10

    move-object v2, v8

    move-object v3, v14

    move-object/from16 v35, v4

    move v4, v5

    .end local v4    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v35, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v36, v0

    const/4 v0, 0x0

    move/from16 v5, p13

    .end local v0    # "matchMinDimension":I
    .restart local v36    # "matchMinDimension":I
    move-object/from16 v37, v6

    const/4 v0, 0x6

    move-object/from16 v6, v35

    .end local v6    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .local v37, "end":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v7, v37

    move-object v0, v8

    move/from16 v8, v23

    .end local v8    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .local v0, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v38, v13

    move v13, v9

    move/from16 v9, v19

    .end local v9    # "numConnections":I
    .local v13, "numConnections":I
    .restart local v38    # "matchConstraintDefault":I
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_1b

    .line 2651
    .end local v35    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v36    # "matchMinDimension":I
    .end local v37    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v38    # "matchConstraintDefault":I
    .local v0, "matchMinDimension":I
    .restart local v4    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v6    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v8    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v9    # "numConnections":I
    .local v13, "matchConstraintDefault":I
    :cond_31
    move/from16 v36, v0

    move-object/from16 v35, v4

    move-object/from16 v37, v6

    move-object v0, v8

    move/from16 v38, v13

    move v13, v9

    .end local v4    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v6    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v8    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v9    # "numConnections":I
    .local v0, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .local v13, "numConnections":I
    .restart local v35    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v36    # "matchMinDimension":I
    .restart local v37    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v38    # "matchConstraintDefault":I
    :goto_1b
    if-eqz v22, :cond_32

    .line 2653
    invoke-virtual/range {p7 .. p7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {v10, v0, v14, v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2654
    invoke-virtual/range {p8 .. p8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    neg-int v1, v1

    move-object/from16 v4, v35

    move-object/from16 v3, v37

    invoke-virtual {v10, v3, v4, v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_1c

    .line 2657
    :cond_32
    move-object/from16 v4, v35

    move-object/from16 v3, v37

    const/4 v2, 0x6

    .end local v35    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v37    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .local v3, "end":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v4    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_1c
    if-eqz p2, :cond_33

    .line 2658
    const/4 v1, 0x0

    invoke-virtual {v10, v0, v11, v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .end local v18    # "applyCentering":Z
    .end local v19    # "centeringStrength":I
    .end local v22    # "applyBoundsCheck":Z
    goto :goto_1d

    .line 2662
    :cond_33
    const/4 v1, 0x0

    goto :goto_1d

    .end local v3    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v34    # "dimension":I
    .end local v36    # "matchMinDimension":I
    .end local v38    # "matchConstraintDefault":I
    .local v0, "matchMinDimension":I
    .restart local v8    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v9    # "numConnections":I
    .local v13, "end":Landroidx/constraintlayout/solver/SolverVariable;
    .local v14, "dimension":I
    .restart local v29    # "matchConstraintDefault":I
    .restart local v33    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_34
    move/from16 v36, v0

    move v1, v5

    move v2, v6

    move-object v0, v8

    move-object v3, v13

    move/from16 v34, v14

    move/from16 v38, v29

    move-object/from16 v14, v33

    move v13, v9

    .end local v8    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v9    # "numConnections":I
    .end local v29    # "matchConstraintDefault":I
    .end local v33    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v0, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v3    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .local v13, "numConnections":I
    .local v14, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v34    # "dimension":I
    .restart local v36    # "matchMinDimension":I
    .restart local v38    # "matchConstraintDefault":I
    :goto_1d
    if-eqz p2, :cond_35

    .line 2663
    invoke-virtual {v10, v12, v3, v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2665
    :cond_35
    return-void

    .line 2572
    .end local v3    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v4    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v34    # "dimension":I
    .end local v36    # "matchMinDimension":I
    .end local v38    # "matchConstraintDefault":I
    .local v0, "matchMinDimension":I
    .restart local v8    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v9    # "numConnections":I
    .local v13, "end":Landroidx/constraintlayout/solver/SolverVariable;
    .local v14, "dimension":I
    .restart local v29    # "matchConstraintDefault":I
    .restart local v30    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v33    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_36
    move/from16 v36, v0

    move v5, v1

    move v2, v6

    move-object v0, v8

    move-object v3, v13

    move/from16 v34, v14

    move/from16 v38, v29

    move-object/from16 v4, v30

    move-object/from16 v14, v33

    const/4 v1, 0x0

    move v13, v9

    .end local v8    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v9    # "numConnections":I
    .end local v29    # "matchConstraintDefault":I
    .end local v30    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v33    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v0, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v3    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v4    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v13, "numConnections":I
    .local v14, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v34    # "dimension":I
    .restart local v36    # "matchMinDimension":I
    .restart local v38    # "matchConstraintDefault":I
    :goto_1e
    if-ge v13, v5, :cond_37

    if-eqz p2, :cond_37

    .line 2573
    invoke-virtual {v10, v0, v11, v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2574
    invoke-virtual {v10, v12, v3, v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2576
    :cond_37
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 56
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;

    move-object/from16 v15, p0

    .line 2182
    move-object/from16 v13, p1

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v13, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v36

    .line 2183
    .local v36, "left":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v13, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v12

    .line 2184
    .local v12, "right":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v13, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v11

    .line 2185
    .local v11, "top":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v13, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v10

    .line 2186
    .local v10, "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v13, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    .line 2188
    .local v9, "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v0, 0x0

    .line 2189
    .local v0, "inHorizontalChain":Z
    const/4 v1, 0x0

    .line 2190
    .local v1, "inVerticalChain":Z
    const/4 v2, 0x0

    .line 2191
    .local v2, "horizontalParentWrapContent":Z
    const/4 v3, 0x0

    .line 2193
    .local v3, "verticalParentWrapContent":Z
    iget-object v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/16 v5, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_9

    .line 2194
    iget-object v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v4, :cond_0

    iget-object v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v8

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    move v4, v8

    :goto_0
    move v2, v4

    .line 2195
    iget-object v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v4, :cond_1

    iget-object v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v7

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_1

    move v4, v7

    goto :goto_1

    :cond_1
    move v4, v8

    :goto_1
    move v3, v4

    .line 2198
    iget-object v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_2

    iget-object v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eq v4, v6, :cond_3

    :cond_2
    iget-object v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_4

    iget-object v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v4, v6, :cond_4

    .line 2200
    :cond_3
    iget-object v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4, v15, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addChain(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    .line 2201
    const/4 v0, 0x1

    .line 2204
    :cond_4
    iget-object v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_5

    iget-object v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eq v4, v6, :cond_6

    :cond_5
    iget-object v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_7

    iget-object v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v4, v6, :cond_7

    .line 2206
    :cond_6
    iget-object v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4, v15, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addChain(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    .line 2207
    const/4 v1, 0x1

    .line 2210
    :cond_7
    if-eqz v2, :cond_8

    iget v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    if-eq v4, v5, :cond_8

    iget-object v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v4, :cond_8

    iget-object v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v4, :cond_8

    .line 2212
    iget-object v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v13, v4}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    .line 2213
    .local v4, "parentRight":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {v13, v4, v12, v8, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2216
    .end local v4    # "parentRight":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_8
    if-eqz v3, :cond_9

    iget v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    if-eq v4, v5, :cond_9

    iget-object v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v4, :cond_9

    iget-object v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v4, :cond_9

    iget-object v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v4, :cond_9

    .line 2218
    iget-object v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v13, v4}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    .line 2219
    .local v4, "parentBottom":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {v13, v4, v10, v8, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 2223
    .end local v4    # "parentBottom":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_9
    move/from16 v37, v0

    move/from16 v38, v1

    move v1, v3

    .end local v0    # "inHorizontalChain":Z
    .end local v3    # "verticalParentWrapContent":Z
    .local v1, "verticalParentWrapContent":Z
    .local v37, "inHorizontalChain":Z
    .local v38, "inVerticalChain":Z
    iget v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 2224
    .local v0, "width":I
    iget v3, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v0, v3, :cond_a

    .line 2225
    iget v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    .line 2227
    :cond_a
    iget v3, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 2228
    .local v3, "height":I
    iget v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v3, v4, :cond_b

    .line 2229
    iget v3, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    .line 2233
    :cond_b
    iget-object v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v8

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v6, :cond_c

    move v4, v7

    goto :goto_2

    :cond_c
    move v4, v8

    .line 2234
    .local v4, "horizontalDimensionFixed":Z
    :goto_2
    iget-object v6, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, v6, v7

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v6, v14, :cond_d

    move v6, v7

    goto :goto_3

    :cond_d
    move v6, v8

    .line 2238
    .local v6, "verticalDimensionFixed":Z
    :goto_3
    const/4 v14, 0x0

    .line 2239
    .local v14, "useRatio":Z
    iget v7, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    iput v7, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2240
    iget v7, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    iput v7, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2242
    iget v7, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/16 v16, 0x0

    cmpl-float v7, v7, v16

    if-lez v7, :cond_e

    iget v7, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    if-eq v7, v5, :cond_e

    .line 2243
    const/4 v14, 0x1

    .line 2244
    iget-object v5, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v7, :cond_f

    iget-object v5, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v7, :cond_f

    .line 2246
    invoke-virtual {v15, v2, v1, v4, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setupDimensionRatio(ZZZZ)V

    .line 2260
    .end local v0    # "width":I
    .end local v3    # "height":I
    .end local v14    # "useRatio":Z
    .local v39, "useRatio":Z
    .local v42, "width":I
    .local v43, "height":I
    :cond_e
    const/4 v7, 0x1

    goto :goto_4

    .line 2247
    .end local v39    # "useRatio":Z
    .end local v42    # "width":I
    .end local v43    # "height":I
    .restart local v0    # "width":I
    .restart local v3    # "height":I
    .restart local v14    # "useRatio":Z
    :cond_f
    iget-object v5, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v8, :cond_10

    .line 2248
    iput v7, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2249
    iget v5, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    iget v7, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    int-to-float v7, v7

    mul-float/2addr v5, v7

    float-to-int v0, v5

    .line 2260
    move/from16 v42, v0

    move/from16 v43, v3

    move/from16 v39, v14

    const/4 v7, 0x1

    goto :goto_5

    .line 2250
    :cond_10
    iget-object v5, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v8, :cond_12

    .line 2251
    iput v7, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2252
    iget v5, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    const/4 v8, -0x1

    if-ne v5, v8, :cond_11

    .line 2254
    const/high16 v5, 0x3f800000    # 1.0f

    iget v8, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr v5, v8

    iput v5, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2256
    :cond_11
    iget v5, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    iget v8, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    int-to-float v8, v8

    mul-float/2addr v5, v8

    float-to-int v3, v5

    .line 2260
    .end local v0    # "width":I
    .end local v3    # "height":I
    .end local v14    # "useRatio":Z
    .restart local v39    # "useRatio":Z
    .restart local v42    # "width":I
    .restart local v43    # "height":I
    :cond_12
    :goto_4
    move/from16 v42, v0

    move/from16 v43, v3

    move/from16 v39, v14

    :goto_5
    if-eqz v39, :cond_14

    iget v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-eqz v0, :cond_13

    iget v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v8, -0x1

    if-ne v0, v8, :cond_15

    goto :goto_6

    :cond_13
    const/4 v8, -0x1

    :goto_6
    move v14, v7

    goto :goto_7

    :cond_14
    const/4 v8, -0x1

    :cond_15
    const/4 v14, 0x0

    .line 2264
    .local v14, "useHorizontalRatio":Z
    :goto_7
    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_16

    instance-of v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_16

    move v0, v7

    goto :goto_8

    :cond_16
    const/4 v0, 0x0

    :goto_8
    move/from16 v41, v6

    move v6, v0

    .line 2267
    .local v6, "wrapContent":Z
    .local v41, "verticalDimensionFixed":Z
    const/4 v0, 0x1

    .line 2268
    .local v0, "applyPosition":Z
    iget-object v3, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2269
    const/4 v0, 0x0

    .line 2272
    .end local v0    # "applyPosition":Z
    .local v22, "applyPosition":Z
    :cond_17
    move/from16 v22, v0

    iget v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    const/4 v5, 0x2

    const/16 v23, 0x0

    if-eq v0, v5, :cond_1a

    .line 2273
    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_18

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v13, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    goto :goto_9

    :cond_18
    move-object/from16 v0, v23

    :goto_9
    move/from16 v44, v4

    move-object v4, v0

    .line 2274
    .local v4, "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    .local v44, "horizontalDimensionFixed":Z
    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_19

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v13, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    move-object v3, v0

    goto :goto_a

    :cond_19
    move-object/from16 v3, v23

    .line 2275
    .local v3, "parentMin":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_a
    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v16, 0x0

    aget-object v17, v0, v16

    iget-object v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v46, v9

    iget v9, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .end local v9    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    .local v46, "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v47, v11

    iget v11, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    .end local v11    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .local v47, "top":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v5, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    aget v18, v5, v16

    iget v5, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    move-object/from16 v48, v3

    iget v3, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .end local v3    # "parentMin":Landroidx/constraintlayout/solver/SolverVariable;
    .local v48, "parentMin":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v49, v4

    iget v4, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .end local v4    # "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    .local v49, "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v50, v6

    iget v6, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .end local v6    # "wrapContent":Z
    .local v50, "wrapContent":Z
    move/from16 v51, v14

    iget v14, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .end local v14    # "useHorizontalRatio":Z
    .local v51, "useHorizontalRatio":Z
    move-object/from16 v19, v0

    move-object v0, v15

    move/from16 v40, v1

    move-object v1, v13

    .end local v1    # "verticalParentWrapContent":Z
    .local v40, "verticalParentWrapContent":Z
    move/from16 v52, v2

    .end local v2    # "horizontalParentWrapContent":Z
    .local v52, "horizontalParentWrapContent":Z
    move/from16 v20, v5

    move-object/from16 v5, v17

    move-object/from16 v7, v19

    move/from16 v24, v16

    move-object/from16 v53, v46

    .end local v46    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    .local v53, "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v45, v10

    move/from16 v10, v42

    .end local v10    # "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    .local v45, "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v54, v47

    .end local v47    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .local v54, "top":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v46, v12

    move/from16 v12, v18

    .end local v12    # "right":Landroidx/constraintlayout/solver/SolverVariable;
    .local v46, "right":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v13, v20

    move/from16 v15, v37

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v6

    move/from16 v19, v14

    move/from16 v20, v22

    move-object/from16 v3, v48

    move-object/from16 v4, v49

    move/from16 v6, v50

    move/from16 v14, v51

    invoke-direct/range {v0 .. v20}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->applyConstraints(Landroidx/constraintlayout/solver/LinearSystem;ZLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIIFZZIIIFZ)V

    .end local v48    # "parentMin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v49    # "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v50    # "wrapContent":Z
    .end local v51    # "useHorizontalRatio":Z
    .restart local v6    # "wrapContent":Z
    .restart local v14    # "useHorizontalRatio":Z
    goto :goto_b

    .line 2281
    .end local v40    # "verticalParentWrapContent":Z
    .end local v44    # "horizontalDimensionFixed":Z
    .end local v45    # "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v46    # "right":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v52    # "horizontalParentWrapContent":Z
    .end local v53    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v54    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v1    # "verticalParentWrapContent":Z
    .restart local v2    # "horizontalParentWrapContent":Z
    .local v4, "horizontalDimensionFixed":Z
    .restart local v9    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v10    # "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v11    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v12    # "right":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_1a
    move/from16 v40, v1

    move/from16 v52, v2

    move/from16 v44, v4

    move-object/from16 v53, v9

    move-object/from16 v45, v10

    move-object/from16 v54, v11

    move-object/from16 v46, v12

    const/16 v24, 0x0

    .end local v1    # "verticalParentWrapContent":Z
    .end local v2    # "horizontalParentWrapContent":Z
    .end local v4    # "horizontalDimensionFixed":Z
    .end local v9    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v10    # "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v11    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v12    # "right":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v40    # "verticalParentWrapContent":Z
    .restart local v44    # "horizontalDimensionFixed":Z
    .restart local v45    # "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v46    # "right":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v52    # "horizontalParentWrapContent":Z
    .restart local v53    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v54    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_b
    move-object/from16 v7, p0

    iget v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    .line 2288
    return-void

    .line 2291
    :cond_1b
    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_1c

    instance-of v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_1c

    move/from16 v21, v1

    goto :goto_c

    :cond_1c
    move/from16 v21, v24

    .line 2294
    .end local v6    # "wrapContent":Z
    .local v21, "wrapContent":Z
    :goto_c
    if-eqz v39, :cond_1e

    iget v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-eq v0, v1, :cond_1d

    iget v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1e

    :cond_1d
    move/from16 v29, v1

    goto :goto_d

    :cond_1e
    move/from16 v29, v24

    .line 2297
    .local v29, "useVerticalRatio":Z
    :goto_d
    iget v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v0, :cond_20

    .line 2298
    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-ne v0, v1, :cond_1f

    .line 2299
    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    move-object/from16 v8, p1

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 2310
    move-object/from16 v10, v53

    move-object/from16 v9, v54

    goto :goto_e

    .line 2301
    :cond_1f
    move-object/from16 v8, p1

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v0

    const/4 v2, 0x6

    move-object/from16 v10, v53

    move-object/from16 v9, v54

    invoke-virtual {v8, v10, v9, v0, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2302
    .end local v53    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v54    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .local v9, "top":Landroidx/constraintlayout/solver/SolverVariable;
    .local v10, "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_21

    .line 2303
    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 2304
    .local v0, "baselineTarget":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v3, 0x0

    .line 2305
    .local v3, "baselineMargin":I
    invoke-virtual {v8, v10, v0, v3, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 2306
    const/4 v0, 0x0

    .line 2310
    .end local v3    # "baselineMargin":I
    .end local v22    # "applyPosition":Z
    .local v0, "applyPosition":Z
    move v11, v0

    goto :goto_f

    .end local v0    # "applyPosition":Z
    .end local v9    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v10    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v22    # "applyPosition":Z
    .restart local v53    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v54    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_20
    move-object/from16 v10, v53

    move-object/from16 v9, v54

    move-object/from16 v8, p1

    .end local v53    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v54    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v9    # "top":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v10    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_21
    :goto_e
    move/from16 v11, v22

    .end local v22    # "applyPosition":Z
    .local v11, "applyPosition":Z
    :goto_f
    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_22

    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_10

    :cond_22
    move-object/from16 v19, v23

    .line 2311
    .local v19, "parentMax":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_10
    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_23

    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_11

    :cond_23
    move-object/from16 v18, v23

    .line 2312
    .local v18, "parentMin":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_11
    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v20, v0, v1

    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v3, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    iget v4, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    iget-object v5, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    aget v27, v5, v1

    iget v5, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    iget v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    iget v12, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    iget v13, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    iget v15, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    move/from16 v34, v15

    move-object v15, v7

    move-object/from16 v16, v8

    move/from16 v17, v40

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    move/from16 v24, v3

    move/from16 v25, v43

    move/from16 v26, v4

    move/from16 v28, v5

    move/from16 v30, v38

    move/from16 v31, v6

    move/from16 v32, v12

    move/from16 v33, v13

    move/from16 v35, v11

    invoke-direct/range {v15 .. v35}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->applyConstraints(Landroidx/constraintlayout/solver/LinearSystem;ZLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIIFZZIIIFZ)V

    .line 2317
    if-eqz v39, :cond_25

    .line 2318
    const/4 v12, 0x6

    .line 2319
    .local v12, "strength":I
    iget v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne v0, v1, :cond_24

    .line 2320
    iget v5, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move-object v0, v8

    move-object/from16 v1, v45

    move-object v2, v9

    move-object/from16 v3, v46

    move-object/from16 v4, v36

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/solver/LinearSystem;->addRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;FI)V

    goto :goto_12

    .line 2322
    :cond_24
    iget v5, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move-object v0, v8

    move-object/from16 v1, v46

    move-object/from16 v2, v36

    move-object/from16 v3, v45

    move-object v4, v9

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/solver/LinearSystem;->addRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;FI)V

    .line 2326
    .end local v12    # "strength":I
    :cond_25
    :goto_12
    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2327
    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    iget v1, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    invoke-virtual {v8, v7, v0, v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addCenterPoint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;FI)V

    .line 2335
    :cond_26
    return-void
.end method

.method public allowedInBarrier()Z
    .locals 2

    .line 1553
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public analyze(I)V
    .locals 0
    .param p1, "optimizationLevel"    # I

    .line 338
    invoke-static {p1, p0}, Landroidx/constraintlayout/solver/widgets/Optimizer;->analyze(ILandroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 339
    return-void
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V
    .locals 6
    .param p1, "constraintFrom"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    .param p2, "target"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p3, "constraintTo"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 1635
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V

    .line 1636
    return-void
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V
    .locals 6
    .param p1, "constraintFrom"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    .param p2, "target"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p3, "constraintTo"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    .param p4, "margin"    # I

    .line 1620
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V

    .line 1622
    return-void
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V
    .locals 7
    .param p1, "constraintFrom"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    .param p2, "target"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p3, "constraintTo"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    .param p4, "margin"    # I
    .param p5, "strength"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    .line 1652
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1654
    return-void
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V
    .locals 19
    .param p1, "constraintFrom"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    .param p2, "target"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p3, "constraintTo"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    .param p4, "margin"    # I
    .param p5, "strength"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;
    .param p6, "creator"    # I

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 1670
    move/from16 v11, p6

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v8, v0, :cond_e

    .line 1673
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v10, v0, :cond_9

    .line 1674
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    .line 1675
    .local v13, "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v14

    .line 1676
    .local v14, "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v15

    .line 1677
    .local v15, "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    .line 1678
    .local v6, "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/16 v16, 0x0

    .line 1679
    .local v16, "centerX":Z
    const/16 v17, 0x0

    .line 1680
    .local v17, "centerY":Z
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz v14, :cond_2

    .line 1681
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1690
    :cond_1
    move-object v12, v6

    goto :goto_0

    .line 1684
    :cond_2
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/4 v4, 0x0

    move-object v0, v7

    move-object v2, v9

    move-object/from16 v5, p5

    move-object v12, v6

    move v6, v11

    .end local v6    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v12, "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1686
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1688
    const/16 v16, 0x1

    .line 1690
    :goto_0
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    if-eqz v12, :cond_4

    .line 1691
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 1694
    :cond_4
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/4 v4, 0x0

    move-object v0, v7

    move-object v2, v9

    move-object/from16 v5, p5

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1696
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1698
    const/16 v17, 0x1

    .line 1700
    :cond_5
    :goto_1
    if-eqz v16, :cond_6

    if-eqz v17, :cond_6

    .line 1701
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1702
    .local v0, "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    .line 1703
    .end local v0    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    goto :goto_2

    :cond_6
    if-eqz v16, :cond_7

    .line 1704
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1705
    .restart local v0    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    .line 1706
    .end local v0    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    if-eqz v17, :cond_8

    .line 1707
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1708
    .restart local v0    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    .line 1710
    .end local v0    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v12    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v13    # "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v14    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v15    # "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v16    # "centerX":Z
    .end local v17    # "centerY":Z
    :cond_8
    :goto_2
    goto :goto_4

    :cond_9
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v10, v0, :cond_c

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v10, v0, :cond_a

    goto :goto_3

    .line 1718
    :cond_a
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v10, v0, :cond_b

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v10, v0, :cond_d

    .line 1720
    :cond_b
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/4 v4, 0x0

    move-object v0, v7

    move-object v2, v9

    move-object v3, v10

    move-object/from16 v5, p5

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1722
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1724
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1725
    .restart local v0    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual/range {p2 .. p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    .line 1726
    .end local v0    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    goto :goto_4

    .line 1712
    :cond_c
    :goto_3
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/4 v4, 0x0

    move-object v0, v7

    move-object v2, v9

    move-object v3, v10

    move-object/from16 v5, p5

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1714
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1716
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1717
    .restart local v0    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual/range {p2 .. p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    .line 1718
    .end local v0    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    nop

    .line 1839
    :cond_d
    :goto_4
    move-object/from16 v3, p5

    goto/16 :goto_8

    .line 1727
    :cond_e
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v8, v0, :cond_10

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v10, v0, :cond_f

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v10, v0, :cond_10

    .line 1730
    :cond_f
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1731
    .local v0, "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual/range {p2 .. p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1732
    .local v1, "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1733
    .local v2, "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    .line 1734
    invoke-virtual {v2, v1, v3, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    .line 1735
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1736
    .local v4, "centerX":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v4, v1, v3, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    .line 1737
    .end local v0    # "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v1    # "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v2    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v4    # "centerX":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    goto :goto_4

    :cond_10
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v8, v0, :cond_12

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v10, v0, :cond_11

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v10, v0, :cond_12

    .line 1740
    :cond_11
    invoke-virtual/range {p2 .. p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1741
    .local v0, "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1742
    .local v1, "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    .line 1743
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1744
    .local v3, "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3, v0, v2, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    .line 1745
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1746
    .local v4, "centerY":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v4, v0, v2, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    .line 1747
    .end local v0    # "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v1    # "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v3    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v4    # "centerY":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    goto :goto_4

    :cond_12
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v8, v0, :cond_13

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v10, v0, :cond_13

    .line 1750
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1751
    .local v0, "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1752
    .local v1, "leftTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    .line 1753
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1754
    .local v3, "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1755
    .local v4, "rightTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3, v4, v2, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    .line 1756
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    .line 1757
    .local v5, "centerX":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual/range {p2 .. p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v5, v6, v2, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    .line 1758
    .end local v0    # "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v1    # "leftTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v3    # "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v4    # "rightTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v5    # "centerX":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    goto/16 :goto_4

    :cond_13
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v8, v0, :cond_14

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v10, v0, :cond_14

    .line 1761
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1762
    .local v0, "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1763
    .local v1, "topTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    .line 1764
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1765
    .local v3, "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v9, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1766
    .local v4, "bottomTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3, v4, v2, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    .line 1767
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    .line 1768
    .local v5, "centerY":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual/range {p2 .. p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v5, v6, v2, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    .line 1769
    .end local v0    # "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v1    # "topTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v3    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v4    # "bottomTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v5    # "centerY":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    goto/16 :goto_4

    .line 1770
    :cond_14
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1771
    .local v0, "fromAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual/range {p2 .. p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1772
    .local v1, "toAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isValidConnection(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1775
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v8, v2, :cond_17

    .line 1776
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1777
    .local v2, "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1778
    .restart local v3    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    if-eqz v2, :cond_15

    .line 1779
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1781
    :cond_15
    if-eqz v3, :cond_16

    .line 1782
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1784
    :cond_16
    const/4 v2, 0x0

    .line 1785
    .end local v3    # "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local p4    # "margin":I
    .local v2, "margin":I
    goto/16 :goto_7

    .end local v2    # "margin":I
    .restart local p4    # "margin":I
    :cond_17
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v8, v2, :cond_1b

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v8, v2, :cond_18

    goto :goto_5

    .line 1811
    :cond_18
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v8, v2, :cond_19

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v8, v2, :cond_1f

    .line 1813
    :cond_19
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1814
    .local v2, "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    if-eq v3, v1, :cond_1a

    .line 1815
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1817
    :cond_1a
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOpposite()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1818
    .local v3, "opposite":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1819
    .local v4, "centerX":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1820
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1821
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .end local v2    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v3    # "opposite":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v4    # "centerX":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    goto :goto_6

    .line 1787
    :cond_1b
    :goto_5
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1788
    .local v2, "baseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    if-eqz v2, :cond_1c

    .line 1789
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1791
    :cond_1c
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1792
    .local v3, "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    if-eq v4, v1, :cond_1d

    .line 1793
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1795
    :cond_1d
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOpposite()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1796
    .local v4, "opposite":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    .line 1797
    .restart local v5    # "centerY":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 1798
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1799
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1811
    .end local v2    # "baseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v3    # "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v4    # "opposite":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v5    # "centerY":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_1e
    nop

    .line 1835
    :cond_1f
    :goto_6
    move/from16 v2, p4

    .end local p4    # "margin":I
    .local v2, "margin":I
    :goto_7
    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)Z

    .line 1836
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connectedTo(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .end local v0    # "fromAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v1    # "toAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    goto :goto_9

    .line 1839
    .end local v2    # "margin":I
    .restart local p4    # "margin":I
    :goto_8
    move/from16 v2, p4

    .end local p4    # "margin":I
    .restart local v2    # "margin":I
    :goto_9
    return-void
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V
    .locals 6
    .param p1, "from"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p2, "to"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p3, "margin"    # I

    .line 1599
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1600
    return-void
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)V
    .locals 6
    .param p1, "from"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p2, "to"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p3, "margin"    # I
    .param p4, "creator"    # I

    .line 1595
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1596
    return-void
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V
    .locals 8
    .param p1, "from"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p2, "to"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .param p3, "margin"    # I
    .param p4, "strength"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;
    .param p5, "creator"    # I

    .line 1604
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1605
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v2

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v3

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v4

    move-object v1, p0

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    .line 1607
    :cond_0
    return-void
.end method

.method public connectCircularConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;FI)V
    .locals 6
    .param p1, "target"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "angle"    # F
    .param p3, "radius"    # I

    .line 590
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    .line 592
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 593
    return-void
.end method

.method public connectedTo(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 0
    .param p1, "source"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1567
    return-void
.end method

.method public disconnectUnlockedWidget(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 6
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1991
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchors()Ljava/util/ArrayList;

    move-result-object v0

    .line 1992
    .local v0, "anchors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "anchorsSize":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1993
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1994
    .local v3, "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 1995
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getConnectionCreator()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1996
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1992
    .end local v3    # "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1999
    .end local v1    # "i":I
    .end local v2    # "anchorsSize":I
    :cond_1
    return-void
.end method

.method public disconnectWidget(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 5
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1976
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchors()Ljava/util/ArrayList;

    move-result-object v0

    .line 1977
    .local v0, "anchors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "anchorsSize":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1978
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1979
    .local v3, "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 1980
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1977
    .end local v3    # "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1983
    .end local v1    # "i":I
    .end local v2    # "anchorsSize":I
    :cond_1
    return-void
.end method

.method public forceUpdateDrawPosition()V
    .locals 5

    .line 1083
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 1084
    .local v0, "left":I
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 1085
    .local v1, "top":I
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    iget v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v2, v3

    .line 1086
    .local v2, "right":I
    iget v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    iget v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v3, v4

    .line 1087
    .local v3, "bottom":I
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 1088
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 1089
    sub-int v4, v2, v0

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 1090
    sub-int v4, v3, v1

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 1091
    return-void
.end method

.method public getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .locals 2
    .param p1, "anchorType"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 2008
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2036
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2034
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 2028
    :pswitch_1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 2025
    :pswitch_2
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 2031
    :pswitch_3
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 2022
    :pswitch_4
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 2019
    :pswitch_5
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 2016
    :pswitch_6
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 2013
    :pswitch_7
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 2010
    :pswitch_8
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAnchors()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation

    .line 987
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBaselineDistance()I
    .locals 1

    .line 968
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    return v0
.end method

.method public getBottom()I
    .locals 2

    .line 930
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getCompanionWidget()Ljava/lang/Object;
    .locals 1

    .line 978
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    return-object v0
.end method

.method public getContainerItemSkip()I
    .locals 1

    .line 1488
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    return v0
.end method

.method public getDebugName()Ljava/lang/String;
    .locals 1

    .line 637
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    return-object v0
.end method

.method public getDimensionRatio()F
    .locals 1

    .line 1282
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    return v0
.end method

.method public getDimensionRatioSide()I
    .locals 1

    .line 1291
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    return v0
.end method

.method public getDrawBottom()I
    .locals 2

    .line 847
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getDrawHeight()I
    .locals 1

    .line 838
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawHeight:I

    return v0
.end method

.method public getDrawRight()I
    .locals 2

    .line 856
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getDrawWidth()I
    .locals 1

    .line 834
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawWidth:I

    return v0
.end method

.method public getDrawX()I
    .locals 2

    .line 821
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getDrawY()I
    .locals 2

    .line 830
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getHeight()I
    .locals 2

    .line 800
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 801
    const/4 v0, 0x0

    return v0

    .line 803
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    return v0
.end method

.method public getHorizontalBiasPercent()F
    .locals 1

    .line 940
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    return v0
.end method

.method public getHorizontalChainControlWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 7

    .line 2100
    const/4 v0, 0x0

    .line 2101
    .local v0, "found":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2102
    move-object v1, v0

    move-object v0, p0

    .line 2104
    .local v0, "tmp":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v1, "found":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_0
    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    .line 2105
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 2106
    .local v2, "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v4, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 2107
    .local v4, "targetOwner":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_1
    if-nez v4, :cond_1

    move-object v5, v3

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    .line 2108
    .local v5, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_2
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 2109
    move-object v1, v0

    .line 2110
    goto :goto_5

    .line 2112
    :cond_2
    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v5, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 2113
    .local v3, "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    if-eq v6, v0, :cond_4

    .line 2114
    move-object v1, v0

    goto :goto_4

    .line 2116
    :cond_4
    move-object v0, v5

    .line 2118
    .end local v2    # "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v3    # "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v4    # "targetOwner":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v5    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_4
    goto :goto_0

    .line 2120
    .end local v1    # "found":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v0, "found":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_5
    move-object v1, v0

    .end local v0    # "found":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v1    # "found":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_6
    :goto_5
    return-object v1
.end method

.method public getHorizontalChainStyle()I
    .locals 1

    .line 1526
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    return v0
.end method

.method public getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 2

    .line 2045
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getInternalDrawBottom()I
    .locals 2

    .line 715
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getInternalDrawRight()I
    .locals 2

    .line 711
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method getInternalDrawX()I
    .locals 1

    .line 703
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    return v0
.end method

.method getInternalDrawY()I
    .locals 1

    .line 707
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .line 903
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v0

    return v0
.end method

.method public getMaxHeight()I
    .locals 2

    .line 95
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getMaxWidth()I
    .locals 2

    .line 99
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 894
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 885
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    return v0
.end method

.method public getOptimizerWrapHeight()I
    .locals 4

    .line 768
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 769
    .local v0, "h":I
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v3, :cond_2

    .line 770
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v1, v2, :cond_0

    .line 771
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 772
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v1, :cond_1

    .line 773
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 774
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    goto :goto_0

    .line 776
    :cond_1
    const/4 v0, 0x0

    .line 778
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v1, :cond_2

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-ge v1, v0, :cond_2

    .line 779
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 782
    :cond_2
    return v0
.end method

.method public getOptimizerWrapWidth()I
    .locals 3

    .line 750
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 751
    .local v0, "w":I
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_2

    .line 752
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 753
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 754
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v1, :cond_1

    .line 755
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 756
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    goto :goto_0

    .line 758
    :cond_1
    const/4 v0, 0x0

    .line 760
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v1, :cond_2

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-ge v1, v0, :cond_2

    .line 761
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 764
    :cond_2
    return v0
.end method

.method public getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 1

    .line 540
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;
    .locals 1

    .line 379
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolutionHeight:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    if-nez v0, :cond_0

    .line 380
    new-instance v0, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolutionHeight:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 382
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolutionHeight:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    return-object v0
.end method

.method public getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;
    .locals 1

    .line 368
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolutionWidth:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolutionWidth:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    .line 371
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolutionWidth:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    return-object v0
.end method

.method public getRight()I
    .locals 2

    .line 921
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getRootWidgetContainer()Landroidx/constraintlayout/solver/widgets/WidgetContainer;
    .locals 2

    .line 524
    move-object v0, p0

    .line 525
    .local v0, "root":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_0
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 526
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    goto :goto_0

    .line 528
    :cond_0
    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    if-eqz v1, :cond_1

    .line 529
    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    return-object v1

    .line 531
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getRootX()I
    .locals 2

    .line 866
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected getRootY()I
    .locals 2

    .line 876
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTop()I
    .locals 1

    .line 912
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v0

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 601
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getVerticalBiasPercent()F
    .locals 1

    .line 950
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    return v0
.end method

.method public getVerticalChainControlWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 7

    .line 2143
    const/4 v0, 0x0

    .line 2144
    .local v0, "found":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2145
    move-object v1, v0

    move-object v0, p0

    .line 2146
    .local v0, "tmp":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v1, "found":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_0
    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    .line 2147
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 2148
    .local v2, "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v4, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 2149
    .local v4, "targetOwner":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_1
    if-nez v4, :cond_1

    move-object v5, v3

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    .line 2150
    .local v5, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_2
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 2151
    move-object v1, v0

    .line 2152
    goto :goto_5

    .line 2154
    :cond_2
    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v5, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 2155
    .local v3, "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    if-eq v6, v0, :cond_4

    .line 2156
    move-object v1, v0

    goto :goto_4

    .line 2158
    :cond_4
    move-object v0, v5

    .line 2160
    .end local v2    # "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v3    # "targetAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v4    # "targetOwner":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v5    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_4
    goto :goto_0

    .line 2163
    .end local v1    # "found":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v0, "found":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_5
    move-object v1, v0

    .end local v0    # "found":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v1    # "found":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_6
    :goto_5
    return-object v1
.end method

.method public getVerticalChainStyle()I
    .locals 1

    .line 1546
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    return v0
.end method

.method public getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 2

    .line 2054
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .line 628
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    return v0
.end method

.method public getWidth()I
    .locals 2

    .line 743
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 744
    const/4 v0, 0x0

    return v0

    .line 746
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    return v0
.end method

.method public getWrapHeight()I
    .locals 1

    .line 812
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWrapHeight:I

    return v0
.end method

.method public getWrapWidth()I
    .locals 1

    .line 791
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWrapWidth:I

    return v0
.end method

.method public getX()I
    .locals 1

    .line 725
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 734
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    return v0
.end method

.method public hasAncestor(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)Z
    .locals 4
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 497
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 498
    .local v0, "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 499
    return v1

    .line 501
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 502
    return v3

    .line 504
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 505
    if-ne v0, p1, :cond_2

    .line 506
    return v1

    .line 508
    :cond_2
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    if-ne v0, v2, :cond_3

    .line 510
    return v1

    .line 512
    :cond_3
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    goto :goto_0

    .line 514
    :cond_4
    return v3
.end method

.method public hasBaseline()Z
    .locals 1

    .line 959
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V
    .locals 9
    .param p1, "startType"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    .param p2, "target"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p3, "endType"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    .param p4, "margin"    # I
    .param p5, "goneMargin"    # I

    .line 1580
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    .line 1581
    .local v7, "startAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    .line 1582
    .local v8, "endAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, v7

    move-object v1, v8

    move v2, p4

    move v3, p5

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    .line 1584
    return-void
.end method

.method public isFullyResolved()Z
    .locals 2

    .line 354
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 355
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 356
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 357
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v0

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-ne v0, v1, :cond_0

    .line 358
    return v1

    .line 360
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHeightWrapContent()Z
    .locals 1

    .line 580
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    return v0
.end method

.method public isInHorizontalChain()Z
    .locals 2

    .line 2087
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_2

    .line 2089
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 2091
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isInVerticalChain()Z
    .locals 2

    .line 2130
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v0, v1, :cond_2

    .line 2132
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 2134
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isInsideConstraintLayout()Z
    .locals 3

    .line 477
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 478
    .local v0, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 479
    return v1

    .line 481
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 482
    instance-of v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v2, :cond_1

    .line 483
    const/4 v1, 0x1

    return v1

    .line 485
    :cond_1
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    goto :goto_0

    .line 487
    :cond_2
    return v1
.end method

.method public isRoot()Z
    .locals 1

    .line 457
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRootContainer()Z
    .locals 1

    .line 467
    instance-of v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSpreadHeight()Z
    .locals 3

    .line 119
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSpreadWidth()Z
    .locals 3

    .line 111
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method public isWidthWrapContent()Z
    .locals 1

    .line 565
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    return v0
.end method

.method public reset()V
    .locals 7

    .line 246
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 247
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 248
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 249
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 250
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 251
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 252
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 253
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 255
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 256
    const/4 v2, 0x0

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 257
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 258
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 259
    const/4 v3, -0x1

    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 260
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 261
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 262
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 263
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 264
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 265
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 266
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 267
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 268
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 269
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    .line 270
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    .line 271
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWrapWidth:I

    .line 272
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWrapHeight:I

    .line 273
    sget v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 274
    sget v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 275
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v5, v4, v2

    .line 276
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 277
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 278
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 279
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 280
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 281
    iput-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    .line 282
    iput-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    .line 283
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 284
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 285
    iput-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    .line 286
    iput-boolean v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    .line 287
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    aput v1, v0, v2

    .line 288
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    aput v1, v0, v6

    .line 289
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 290
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 291
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const v1, 0x7fffffff

    aput v1, v0, v2

    .line 292
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    aput v1, v0, v6

    .line 293
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 294
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 295
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 296
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 297
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 298
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 299
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 300
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 301
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 302
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 303
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolutionWidth:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolutionWidth:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->reset()V

    .line 306
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolutionHeight:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolutionHeight:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->reset()V

    .line 309
    :cond_1
    return-void
.end method

.method public resetAllConstraints()V
    .locals 2

    .line 1845
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resetAnchors()V

    .line 1846
    sget v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 1847
    sget v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1848
    instance-of v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_0

    .line 1849
    return-void

    .line 1851
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_2

    .line 1852
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWrapWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1853
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_0

    .line 1854
    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getMinWidth()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 1855
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1858
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_4

    .line 1859
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWrapHeight()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 1860
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_1

    .line 1861
    :cond_3
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getMinHeight()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 1862
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1865
    :cond_4
    :goto_1
    return-void
.end method

.method public resetAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V
    .locals 10
    .param p1, "anchor"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1874
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1875
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_0

    .line 1876
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 1877
    .local v0, "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1878
    return-void

    .line 1882
    .end local v0    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    :cond_0
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1883
    .local v0, "left":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 1884
    .local v1, "right":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 1885
    .local v2, "top":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v3

    .line 1886
    .local v3, "bottom":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    .line 1887
    .local v4, "center":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    .line 1888
    .local v5, "centerX":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    .line 1890
    .local v6, "centerY":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/high16 v7, 0x3f000000    # 0.5f

    if-ne p1, v4, :cond_3

    .line 1891
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1892
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    if-ne v8, v9, :cond_1

    .line 1893
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1894
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1896
    :cond_1
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1897
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    if-ne v8, v9, :cond_2

    .line 1898
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1899
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1901
    :cond_2
    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 1902
    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto/16 :goto_1

    .line 1903
    :cond_3
    if-ne p1, v5, :cond_5

    .line 1904
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1905
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v8

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-ne v8, v9, :cond_4

    .line 1906
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1907
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1909
    :cond_4
    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    goto :goto_1

    .line 1910
    :cond_5
    if-ne p1, v6, :cond_7

    .line 1911
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1912
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v8

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-ne v8, v9, :cond_6

    .line 1913
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1914
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1916
    :cond_6
    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto :goto_1

    .line 1917
    :cond_7
    if-eq p1, v0, :cond_a

    if-ne p1, v1, :cond_8

    goto :goto_0

    .line 1921
    :cond_8
    if-eq p1, v2, :cond_9

    if-ne p1, v3, :cond_b

    .line 1922
    :cond_9
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    if-ne v7, v8, :cond_b

    .line 1923
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    goto :goto_1

    .line 1918
    :cond_a
    :goto_0
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    if-ne v7, v8, :cond_b

    .line 1919
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1926
    :cond_b
    :goto_1
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1927
    return-void
.end method

.method public resetAnchors()V
    .locals 4

    .line 1933
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 1934
    .local v0, "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v1, :cond_0

    .line 1935
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 1936
    .local v1, "parentContainer":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1937
    return-void

    .line 1940
    .end local v1    # "parentContainer":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "mAnchorsSize":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1941
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1942
    .local v3, "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1940
    .end local v3    # "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1944
    .end local v1    # "i":I
    .end local v2    # "mAnchorsSize":I
    :cond_1
    return-void
.end method

.method public resetAnchors(I)V
    .locals 5
    .param p1, "connectionCreator"    # I

    .line 1950
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 1951
    .local v0, "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v1, :cond_0

    .line 1952
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 1953
    .local v1, "parentContainer":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1954
    return-void

    .line 1957
    .end local v1    # "parentContainer":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "mAnchorsSize":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 1958
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 1959
    .local v3, "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getConnectionCreator()I

    move-result v4

    if-ne p1, v4, :cond_2

    .line 1960
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isVerticalAnchor()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1961
    sget v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    goto :goto_1

    .line 1963
    :cond_1
    sget v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1965
    :goto_1
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1957
    .end local v3    # "anchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1968
    .end local v1    # "i":I
    .end local v2    # "mAnchorsSize":I
    :cond_3
    return-void
.end method

.method public resetResolutionNodes()V
    .locals 2

    .line 319
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 320
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->reset()V

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public resetSolverVariables(Landroidx/constraintlayout/solver/Cache;)V
    .locals 1
    .param p1, "cache"    # Landroidx/constraintlayout/solver/Cache;

    .line 427
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 428
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 429
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 430
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 431
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 432
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 433
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 434
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 435
    return-void
.end method

.method public resolve()V
    .locals 0

    .line 346
    return-void
.end method

.method public setBaselineDistance(I)V
    .locals 0
    .param p1, "baseline"    # I

    .line 1453
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 1454
    return-void
.end method

.method public setCompanionWidget(Ljava/lang/Object;)V
    .locals 0
    .param p1, "companion"    # Ljava/lang/Object;

    .line 1463
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 1464
    return-void
.end method

.method public setContainerItemSkip(I)V
    .locals 1
    .param p1, "skip"    # I

    .line 1475
    if-ltz p1, :cond_0

    .line 1476
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    goto :goto_0

    .line 1478
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 1480
    :goto_0
    return-void
.end method

.method public setDebugName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 644
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 645
    return-void
.end method

.method public setDebugSolverName(Landroidx/constraintlayout/solver/LinearSystem;Ljava/lang/String;)V
    .locals 7
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p2, "name"    # Ljava/lang/String;

    .line 664
    iput-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 665
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 666
    .local v0, "left":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 667
    .local v1, "top":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    .line 668
    .local v2, "right":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    .line 669
    .local v3, "bottom":Landroidx/constraintlayout/solver/SolverVariable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".left"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 670
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".top"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 671
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".right"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 672
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".bottom"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 673
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v4, :cond_0

    .line 674
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    .line 675
    .local v4, "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".baseline"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 677
    .end local v4    # "baseline":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_0
    return-void
.end method

.method public setDimension(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 1365
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1366
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v0, v1, :cond_0

    .line 1367
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1369
    :cond_0
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1370
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v0, v1, :cond_1

    .line 1371
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1373
    :cond_1
    return-void
.end method

.method public setDimensionRatio(FI)V
    .locals 0
    .param p1, "ratio"    # F
    .param p2, "dimensionRatioSide"    # I

    .line 1272
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1273
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 1274
    return-void
.end method

.method public setDimensionRatio(Ljava/lang/String;)V
    .locals 12
    .param p1, "ratio"    # Ljava/lang/String;

    .line 1210
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 1214
    :cond_0
    const/4 v1, -0x1

    .line 1215
    .local v1, "dimensionRatioSide":I
    const/4 v2, 0x0

    .line 1216
    .local v2, "dimensionRatio":F
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1217
    .local v3, "len":I
    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1218
    .local v4, "commaIndex":I
    const/4 v5, 0x1

    if-lez v4, :cond_3

    add-int/lit8 v6, v3, -0x1

    if-ge v4, v6, :cond_3

    .line 1219
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1220
    .local v6, "dimension":Ljava/lang/String;
    const-string v7, "W"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1221
    const/4 v1, 0x0

    goto :goto_0

    .line 1222
    :cond_1
    const-string v7, "H"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1223
    const/4 v1, 0x1

    .line 1225
    :cond_2
    :goto_0
    add-int/2addr v4, v5

    .line 1226
    .end local v6    # "dimension":Ljava/lang/String;
    goto :goto_1

    .line 1227
    :cond_3
    const/4 v4, 0x0

    .line 1229
    :goto_1
    const/16 v6, 0x3a

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 1231
    .local v6, "colonIndex":I
    if-ltz v6, :cond_7

    add-int/lit8 v7, v3, -0x1

    if-ge v6, v7, :cond_7

    .line 1232
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1233
    .local v7, "nominator":Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1234
    .local v8, "denominator":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 1236
    :try_start_0
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    .line 1237
    .local v9, "nominatorValue":F
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 1238
    .local v10, "denominatorValue":F
    cmpl-float v11, v9, v0

    if-lez v11, :cond_5

    cmpl-float v11, v10, v0

    if-lez v11, :cond_5

    .line 1239
    if-ne v1, v5, :cond_4

    .line 1240
    div-float v5, v10, v9

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move v2, v5

    goto :goto_2

    .line 1242
    :cond_4
    div-float v5, v9, v10

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v5

    .line 1247
    .end local v9    # "nominatorValue":F
    .end local v10    # "denominatorValue":F
    :cond_5
    :goto_2
    goto :goto_3

    .line 1245
    :catch_0
    move-exception v5

    .line 1249
    .end local v7    # "nominator":Ljava/lang/String;
    .end local v8    # "denominator":Ljava/lang/String;
    :cond_6
    :goto_3
    goto :goto_4

    .line 1250
    :cond_7
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1251
    .local v5, "r":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_8

    .line 1253
    :try_start_1
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v7

    .line 1256
    goto :goto_4

    .line 1254
    :catch_1
    move-exception v7

    .line 1260
    .end local v5    # "r":Ljava/lang/String;
    :cond_8
    :goto_4
    cmpl-float v0, v2, v0

    if-lez v0, :cond_9

    .line 1261
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1262
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 1264
    :cond_9
    return-void

    .line 1211
    .end local v1    # "dimensionRatioSide":I
    .end local v2    # "dimensionRatio":F
    .end local v3    # "len":I
    .end local v4    # "commaIndex":I
    .end local v6    # "colonIndex":I
    :cond_a
    :goto_5
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1212
    return-void
.end method

.method public setDrawHeight(I)V
    .locals 0
    .param p1, "drawHeight"    # I

    .line 1141
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 1142
    return-void
.end method

.method public setDrawOrigin(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1100
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    sub-int v0, p1, v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 1101
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    sub-int v0, p2, v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 1102
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 1103
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 1104
    return-void
.end method

.method public setDrawWidth(I)V
    .locals 0
    .param p1, "drawWidth"    # I

    .line 1132
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 1133
    return-void
.end method

.method public setDrawX(I)V
    .locals 1
    .param p1, "x"    # I

    .line 1112
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    sub-int v0, p1, v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 1113
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 1114
    return-void
.end method

.method public setDrawY(I)V
    .locals 1
    .param p1, "y"    # I

    .line 1122
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    sub-int v0, p1, v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 1123
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 1124
    return-void
.end method

.method public setFrame(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1384
    sub-int v0, p3, p1

    .line 1385
    .local v0, "w":I
    sub-int v1, p4, p2

    .line 1387
    .local v1, "h":I
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 1388
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 1390
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    .line 1391
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1392
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1393
    return-void

    .line 1397
    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v3

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    if-ge v0, v2, :cond_1

    .line 1398
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1400
    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    if-ge v1, v2, :cond_2

    .line 1401
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1404
    :cond_2
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1405
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1407
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    iget v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v2, v3, :cond_3

    .line 1408
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1410
    :cond_3
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    iget v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v2, v3, :cond_4

    .line 1411
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1417
    :cond_4
    return-void
.end method

.method public setGoneMargin(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V
    .locals 2
    .param p1, "type"    # Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;
    .param p2, "goneMargin"    # I

    .line 1037
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1051
    :pswitch_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iput p2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 1053
    goto :goto_0

    .line 1047
    :pswitch_1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iput p2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 1049
    goto :goto_0

    .line 1043
    :pswitch_2
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iput p2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 1045
    goto :goto_0

    .line 1039
    :pswitch_3
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iput p2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    .line 1041
    nop

    .line 1061
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setHeight(I)V
    .locals 2
    .param p1, "h"    # I

    .line 1162
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1163
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v0, v1, :cond_0

    .line 1164
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1166
    :cond_0
    return-void
.end method

.method public setHeightWrapContent(Z)V
    .locals 0
    .param p1, "heightWrapContent"    # Z

    .line 573
    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    .line 574
    return-void
.end method

.method public setHorizontalBiasPercent(F)V
    .locals 0
    .param p1, "horizontalBiasPercent"    # F

    .line 1301
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 1302
    return-void
.end method

.method public setHorizontalChainStyle(I)V
    .locals 0
    .param p1, "horizontalChainStyle"    # I

    .line 1516
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 1517
    return-void
.end method

.method public setHorizontalDimension(II)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 1426
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 1427
    sub-int v0, p2, p1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1428
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v0, v1, :cond_0

    .line 1429
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1431
    :cond_0
    return-void
.end method

.method public setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 2
    .param p1, "behaviour"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2063
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2064
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v0, :cond_0

    .line 2065
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWrapWidth:I

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 2067
    :cond_0
    return-void
.end method

.method public setHorizontalMatchStyle(IIIF)V
    .locals 1
    .param p1, "horizontalMatchStyle"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "percent"    # F

    .line 1177
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 1178
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 1179
    iput p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 1180
    iput p4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 1181
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v0, :cond_0

    .line 1182
    const/4 v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 1184
    :cond_0
    return-void
.end method

.method public setHorizontalWeight(F)V
    .locals 2
    .param p1, "horizontalWeight"    # F

    .line 1497
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1498
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 2
    .param p1, "maxWidth"    # I

    .line 107
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 108
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 2
    .param p1, "maxWidth"    # I

    .line 103
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 104
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1
    .param p1, "h"    # I

    .line 1333
    if-gez p1, :cond_0

    .line 1334
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    goto :goto_0

    .line 1336
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    .line 1338
    :goto_0
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1
    .param p1, "w"    # I

    .line 1320
    if-gez p1, :cond_0

    .line 1321
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    goto :goto_0

    .line 1323
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    .line 1325
    :goto_0
    return-void
.end method

.method public setOffset(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1026
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 1027
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 1028
    return-void
.end method

.method public setOrigin(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1015
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 1016
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 1017
    return-void
.end method

.method public setParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 0
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 549
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 550
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 610
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 611
    return-void
.end method

.method public setVerticalBiasPercent(F)V
    .locals 0
    .param p1, "verticalBiasPercent"    # F

    .line 1311
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 1312
    return-void
.end method

.method public setVerticalChainStyle(I)V
    .locals 0
    .param p1, "verticalChainStyle"    # I

    .line 1536
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 1537
    return-void
.end method

.method public setVerticalDimension(II)V
    .locals 2
    .param p1, "top"    # I
    .param p2, "bottom"    # I

    .line 1440
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 1441
    sub-int v0, p2, p1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1442
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v0, v1, :cond_0

    .line 1443
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 1445
    :cond_0
    return-void
.end method

.method public setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 2
    .param p1, "behaviour"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2075
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2076
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v0, :cond_0

    .line 2077
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWrapHeight:I

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 2079
    :cond_0
    return-void
.end method

.method public setVerticalMatchStyle(IIIF)V
    .locals 1
    .param p1, "verticalMatchStyle"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "percent"    # F

    .line 1195
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 1196
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 1197
    iput p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 1198
    iput p4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 1199
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v0, :cond_0

    .line 1200
    const/4 v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 1202
    :cond_0
    return-void
.end method

.method public setVerticalWeight(F)V
    .locals 2
    .param p1, "verticalWeight"    # F

    .line 1506
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 1507
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 619
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 620
    return-void
.end method

.method public setWidth(I)V
    .locals 2
    .param p1, "w"    # I

    .line 1150
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1151
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v0, v1, :cond_0

    .line 1152
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 1154
    :cond_0
    return-void
.end method

.method public setWidthWrapContent(Z)V
    .locals 0
    .param p1, "widthWrapContent"    # Z

    .line 557
    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    .line 558
    return-void
.end method

.method public setWrapHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .line 1355
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWrapHeight:I

    .line 1356
    return-void
.end method

.method public setWrapWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .line 1346
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWrapWidth:I

    .line 1347
    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .line 996
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 997
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .line 1005
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 1006
    return-void
.end method

.method public setupDimensionRatio(ZZZZ)V
    .locals 5
    .param p1, "hparentWrapContent"    # Z
    .param p2, "vparentWrapContent"    # Z
    .param p3, "horizontalDimensionFixed"    # Z
    .param p4, "verticalDimensionFixed"    # Z

    .line 2347
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 2348
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 2350
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v0, :cond_1

    .line 2351
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 2354
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v0, v3, :cond_3

    .line 2355
    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    .line 2356
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_0

    .line 2357
    :cond_2
    if-nez p3, :cond_3

    if-eqz p4, :cond_3

    .line 2358
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2359
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    if-ne v0, v3, :cond_3

    .line 2361
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float v0, v1, v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2366
    :cond_3
    :goto_0
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2367
    :cond_4
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_1

    .line 2368
    :cond_5
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2369
    :cond_6
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2373
    :cond_7
    :goto_1
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne v0, v3, :cond_a

    .line 2374
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 2375
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2377
    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2378
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_2

    .line 2379
    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2380
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float v0, v1, v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2381
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2386
    :cond_a
    :goto_2
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne v0, v3, :cond_c

    .line 2387
    if-eqz p1, :cond_b

    if-nez p2, :cond_b

    .line 2388
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_3

    .line 2389
    :cond_b
    if-nez p1, :cond_c

    if-eqz p2, :cond_c

    .line 2390
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float v0, v1, v0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2391
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2395
    :cond_c
    :goto_3
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne v0, v3, :cond_f

    .line 2396
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v0, :cond_d

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v0, :cond_d

    .line 2397
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_4

    .line 2398
    :cond_d
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v0, :cond_e

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v0, :cond_e

    .line 2399
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr v1, v0

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2400
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_4

    .line 2402
    :cond_e
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr v1, v0

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2403
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2406
    :cond_f
    :goto_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") wrap: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWrapWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWrapHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDrawPosition()V
    .locals 5

    .line 1069
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 1070
    .local v0, "left":I
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 1071
    .local v1, "top":I
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    iget v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v2, v3

    .line 1072
    .local v2, "right":I
    iget v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    iget v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v3, v4

    .line 1073
    .local v3, "bottom":I
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 1074
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 1075
    sub-int v4, v2, v0

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 1076
    sub-int v4, v3, v1

    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 1077
    return-void
.end method

.method public updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 4
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;

    .line 2673
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v0

    .line 2674
    .local v0, "left":I
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v1

    .line 2675
    .local v1, "top":I
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v2

    .line 2676
    .local v2, "right":I
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v3

    .line 2677
    .local v3, "bottom":I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFrame(IIII)V

    .line 2678
    return-void
.end method

.method public updateResolutionNodes()V
    .locals 2

    .line 328
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 329
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->update()V

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
