.class Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "XPopPanel.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/XPopPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundLayout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;
    }
.end annotation


# static fields
.field private static final PADDING_BOTTOM:I = 0x3

.field private static final PADDING_LEFT:I = 0x0

.field private static final PADDING_RIGHT:I = 0x2

.field private static final PADDING_TOP:I = 0x1


# instance fields
.field private dx:I

.field private dy:I

.field private mAnimationDuration:I

.field private final mBg:I

.field private final mClickable:Z

.field private mDefaultHeight:I

.field private mDefaultPoints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultWidth:I

.field private mHasToggle:Z

.field private mHeightSizeAnimator:Landroid/animation/ValueAnimator;

.field private mInitPoint:Landroid/graphics/Point;

.field private mIsMoving:Z

.field private mIsRtl:Z

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxSlideLength:I

.field private mPaddings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPanelLayout:Landroid/widget/FrameLayout;

.field private final mParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mPopPanelType:I

.field private mSlideAnimator:Landroid/animation/ValueAnimator;

.field private mToggleEnable:Z

.field private mToggleHeight:I

.field private mTogglePoints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mToggleWidth:I

.field private mWidthSizeAnimator:Landroid/animation/ValueAnimator;

.field private mWindowRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZILcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;Ljava/util/List;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bg"    # I
    .param p3, "clickable"    # Z
    .param p4, "poppanelType"    # I
    .param p5, "record"    # Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;
    .param p7, "frameLayout"    # Landroid/widget/FrameLayout;
    .param p8, "params"    # Landroid/widget/FrameLayout$LayoutParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZI",
            "Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/widget/FrameLayout;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            ")V"
        }
    .end annotation

    .line 707
    .local p6, "paddings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;)V

    .line 683
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mInitPoint:Landroid/graphics/Point;

    .line 691
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHasToggle:Z

    .line 692
    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mToggleEnable:Z

    .line 693
    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mIsMoving:Z

    .line 694
    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mIsRtl:Z

    .line 702
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mDefaultPoints:Ljava/util/HashMap;

    .line 703
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mTogglePoints:Ljava/util/HashMap;

    .line 704
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mListeners:Ljava/util/List;

    .line 708
    iput-object p7, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPanelLayout:Landroid/widget/FrameLayout;

    .line 709
    iput-object p8, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 710
    iput p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mBg:I

    .line 711
    iput-boolean p3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mClickable:Z

    .line 712
    iput-object p6, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPaddings:Ljava/util/List;

    .line 713
    iput p4, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPopPanelType:I

    .line 714
    invoke-virtual {p5}, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->getSlideAnimatorDuration()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mAnimationDuration:I

    .line 715
    invoke-virtual {p5}, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->getMaxSlideLength()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mMaxSlideLength:I

    .line 716
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mBg:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setBackgroundResource(I)V

    .line 717
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->getWindowBound()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    .line 718
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mIsRtl:Z

    .line 719
    const-string v0, "XPopPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMaxSlideLength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mMaxSlideLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsRtl : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mIsRtl:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mWindowRect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-void
.end method

.method static synthetic access$1600(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;IIIIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Z

    .line 674
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->setPoint(IIIIZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;I)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;
    .param p1, "x1"    # I

    .line 674
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->getPositionPoint(I)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    .line 674
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHasToggle:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 674
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->moveToPointWithAnimation(IZ)V

    return-void
.end method

.method static synthetic access$2000(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;Landroid/graphics/Point;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;
    .param p1, "x1"    # Landroid/graphics/Point;

    .line 674
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->animationFinish(Landroid/graphics/Point;)V

    return-void
.end method

.method private animationFinish(Landroid/graphics/Point;)V
    .locals 3
    .param p1, "point"    # Landroid/graphics/Point;

    .line 1011
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mIsMoving:Z

    .line 1012
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mInitPoint:Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 1013
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mInitPoint:Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 1014
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;

    .line 1015
    .local v2, "listener":Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;
    invoke-interface {v2, v0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;->onUserMoveStateChange(Z)V

    .line 1016
    .end local v2    # "listener":Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;
    goto :goto_0

    .line 1017
    :cond_0
    return-void
.end method

.method private getDirection(Landroid/graphics/Point;)I
    .locals 4
    .param p1, "point"    # Landroid/graphics/Point;

    .line 876
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPaddings:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 877
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPaddings:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    if-ne v0, v1, :cond_0

    .line 878
    return v2

    .line 880
    :cond_0
    const/4 v0, 0x2

    return v0

    .line 883
    :cond_1
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPaddings:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_2

    .line 884
    return v3

    .line 886
    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method private getPositionPoint(I)Landroid/graphics/Point;
    .locals 2
    .param p1, "position"    # I

    .line 898
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHasToggle:Z

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mTogglePoints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    return-object v0

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mDefaultPoints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    return-object v0
.end method

.method private getTargetPoint(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6
    .param p1, "initPoint"    # Landroid/graphics/Point;
    .param p2, "currentPoint"    # Landroid/graphics/Point;

    .line 906
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 907
    .local v0, "point":Landroid/graphics/Point;
    iget v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mDefaultWidth:I

    .line 908
    .local v1, "viewWidth":I
    iget v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mDefaultHeight:I

    .line 909
    .local v2, "viewHeight":I
    iget-boolean v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHasToggle:Z

    if-eqz v3, :cond_0

    .line 910
    iget v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mToggleWidth:I

    .line 911
    iget v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mToggleHeight:I

    .line 913
    :cond_0
    iget v3, p2, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mMaxSlideLength:I

    if-le v3, v4, :cond_1

    .line 914
    iget-object v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    iget-object v4, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPaddings:Ljava/util/List;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 915
    :cond_1
    iget v3, p2, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mMaxSlideLength:I

    neg-int v4, v4

    if-ge v3, v4, :cond_2

    .line 916
    iget-object v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPaddings:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 918
    :cond_2
    iget v3, p1, Landroid/graphics/Point;->x:I

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 920
    :goto_0
    iget v3, p2, Landroid/graphics/Point;->y:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mMaxSlideLength:I

    if-le v3, v4, :cond_3

    .line 921
    iget-object v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v2

    iget-object v4, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPaddings:Ljava/util/List;

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 922
    :cond_3
    iget v3, p2, Landroid/graphics/Point;->y:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mMaxSlideLength:I

    neg-int v4, v4

    if-ge v3, v4, :cond_4

    .line 923
    iget-object v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPaddings:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 925
    :cond_4
    iget v3, p1, Landroid/graphics/Point;->y:I

    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 927
    :goto_1
    return-object v0
.end method

.method private getWindowBound()Landroid/graphics/Rect;
    .locals 4

    .line 892
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->newBuilder()Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;

    move-result-object v0

    const-string v1, "immersion"

    .line 893
    invoke-virtual {v0, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->setAreaType(Ljava/lang/String;)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;

    move-result-object v0

    .line 894
    .local v0, "builder":Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->build()Landroid/os/Bundle;

    move-result-object v2

    const/16 v3, 0x32

    invoke-virtual {v1, v3, v2}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getWindowBounds(ILandroid/os/Bundle;)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic lambda$moveToPointWithAnimation$0(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 945
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 946
    .local v0, "pointF":Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 947
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 948
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 949
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPanelLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, p0, v2}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 951
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mSlideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 953
    :goto_0
    return-void
.end method

.method public static synthetic lambda$moveToPointWithAnimation$1(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 985
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 986
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPanelLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p0, v1}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 989
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWidthSizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 991
    :goto_0
    return-void
.end method

.method public static synthetic lambda$moveToPointWithAnimation$2(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 993
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 994
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPanelLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p0, v1}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 997
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHeightSizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 999
    :goto_0
    return-void
.end method

.method private moveToPointWithAnimation(IZ)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "needSizeAnimation"    # Z

    .line 931
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-boolean v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mToggleEnable:Z

    if-eqz v1, :cond_0

    .line 932
    iget-boolean v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHasToggle:Z

    xor-int/2addr v1, v0

    iput-boolean v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHasToggle:Z

    .line 934
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->getPositionPoint(I)Landroid/graphics/Point;

    move-result-object v1

    .line 935
    .local v1, "point":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_1

    .line 936
    const-string v0, "XPopPanel"

    const-string v2, "moveToPointWithAnimation: not attached to window"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    return-void

    .line 939
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v2

    .line 940
    .local v2, "leftMargin":I
    iget v3, v1, Landroid/graphics/Point;->x:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    if-eq v3, v6, :cond_3

    .line 941
    :cond_2
    new-instance v3, Landroid/animation/PointFEvaluator;

    invoke-direct {v3}, Landroid/animation/PointFEvaluator;-><init>()V

    new-array v6, v5, [Ljava/lang/Object;

    new-instance v7, Landroid/graphics/PointF;

    int-to-float v8, v2

    iget-object v9, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v9, v9

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v7, v6, v4

    new-instance v7, Landroid/graphics/PointF;

    iget v8, v1, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v9, v1, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v7, v6, v0

    invoke-static {v3, v6}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mSlideAnimator:Landroid/animation/ValueAnimator;

    .line 942
    iget-object v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mSlideAnimator:Landroid/animation/ValueAnimator;

    iget v6, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mAnimationDuration:I

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 943
    iget-object v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mSlideAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 944
    iget-object v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mSlideAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/xiaopeng/xui/app/-$$Lambda$XPopPanel$BackgroundLayout$z6DCdKu0tPIL_BKaptfDnqGOiRY;

    invoke-direct {v6, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XPopPanel$BackgroundLayout$z6DCdKu0tPIL_BKaptfDnqGOiRY;-><init>(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 954
    iget-object v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mSlideAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$1;

    invoke-direct {v6, p0, v1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$1;-><init>(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;Landroid/graphics/Point;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 971
    iget-object v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mSlideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 973
    :cond_3
    if-eqz p2, :cond_7

    iget-boolean v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mToggleEnable:Z

    if-eqz v3, :cond_7

    .line 974
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_4

    .line 975
    iget-object v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWidthSizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 976
    iget-object v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHeightSizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 978
    :cond_4
    new-array v3, v5, [I

    iget-object v6, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    aput v6, v3, v4

    iget-boolean v6, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHasToggle:Z

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mToggleWidth:I

    goto :goto_0

    :cond_5
    iget v6, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mDefaultWidth:I

    :goto_0
    aput v6, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWidthSizeAnimator:Landroid/animation/ValueAnimator;

    .line 979
    new-array v3, v5, [I

    iget-object v5, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    aput v5, v3, v4

    iget-boolean v4, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHasToggle:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mToggleHeight:I

    goto :goto_1

    :cond_6
    iget v4, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mDefaultHeight:I

    :goto_1
    aput v4, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHeightSizeAnimator:Landroid/animation/ValueAnimator;

    .line 980
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWidthSizeAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mAnimationDuration:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 981
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHeightSizeAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mAnimationDuration:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 982
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHeightSizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 983
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWidthSizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 984
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWidthSizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/xiaopeng/xui/app/-$$Lambda$XPopPanel$BackgroundLayout$-CYMUfo4utrWtYFrYVmNmoG_Re0;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XPopPanel$BackgroundLayout$-CYMUfo4utrWtYFrYVmNmoG_Re0;-><init>(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 992
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHeightSizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/xiaopeng/xui/app/-$$Lambda$XPopPanel$BackgroundLayout$Is_FVvsfEkcxugKrdtgJBJsbFf4;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XPopPanel$BackgroundLayout$Is_FVvsfEkcxugKrdtgJBJsbFf4;-><init>(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1000
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWidthSizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1001
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHeightSizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1003
    :cond_7
    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->getDirection(Landroid/graphics/Point;)I

    move-result v0

    .line 1004
    .local v0, "direction":I
    const-string v3, "XPopPanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveToPointWithAnimation direction : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mHasToggle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHasToggle:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget-object v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;

    .line 1006
    .local v4, "listener":Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;
    invoke-interface {v4, v0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;->onPositionChange(I)V

    .line 1007
    .end local v4    # "listener":Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;
    goto :goto_2

    .line 1008
    :cond_8
    return-void
.end method

.method private setPoint(IIIIZ)V
    .locals 17
    .param p1, "defaultWidth"    # I
    .param p2, "defaultHeight"    # I
    .param p3, "toggleWidth"    # I
    .param p4, "toggleHeight"    # I
    .param p5, "toggleEnable"    # Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 729
    iput v1, v0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mDefaultWidth:I

    .line 730
    iput v2, v0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mDefaultHeight:I

    .line 731
    iput v3, v0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mToggleWidth:I

    .line 732
    iput v4, v0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mToggleHeight:I

    .line 733
    move/from16 v5, p5

    iput-boolean v5, v0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mToggleEnable:Z

    .line 734
    iget-object v6, v0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPaddings:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v8, v0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v8

    .line 735
    .local v6, "left":I
    iget-object v8, v0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPaddings:Ljava/util/List;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v10, v0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v10

    .line 736
    .local v8, "top":I
    iget-object v10, v0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v1

    iget-object v11, v0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPaddings:Ljava/util/List;

    const/4 v12, 0x2

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int/2addr v10, v11

    .line 737
    .local v10, "defaultRight":I
    iget-object v11, v0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v2

    iget-object v13, v0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPaddings:Ljava/util/List;

    const/4 v14, 0x3

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    sub-int/2addr v11, v13

    .line 738
    .local v11, "defaultBottom":I
    iget-object v13, v0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v3

    iget-object v15, v0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPaddings:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    sub-int/2addr v13, v15

    .line 739
    .local v13, "toggleRight":I
    iget-object v15, v0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v15, v4

    iget-object v12, v0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPaddings:Ljava/util/List;

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sub-int/2addr v15, v12

    .line 740
    .local v15, "toggleBottom":I
    iget-object v12, v0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mDefaultPoints:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v6, v8}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v12, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    iget-object v7, v0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mDefaultPoints:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14, v10, v8}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v7, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    iget-object v7, v0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mDefaultPoints:Ljava/util/HashMap;

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v6, v11}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v7, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    iget-object v7, v0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mDefaultPoints:Ljava/util/HashMap;

    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v7, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    iget-object v7, v0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mTogglePoints:Ljava/util/HashMap;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14, v6, v8}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v7, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    iget-object v7, v0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mTogglePoints:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v13, v8}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v7, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    iget-object v7, v0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mTogglePoints:Ljava/util/HashMap;

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v6, v15}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v7, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    iget-object v7, v0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mTogglePoints:Ljava/util/HashMap;

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v13, v15}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v7, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    return-void
.end method


# virtual methods
.method public addListener(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;

    .line 1032
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1033
    const-string v0, "XPopPanel"

    const-string v1, "addListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1036
    :cond_0
    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    .line 1020
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mSlideAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mSlideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mSlideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1023
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWidthSizeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWidthSizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1024
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWidthSizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1026
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHeightSizeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHeightSizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1027
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHeightSizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1029
    :cond_2
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 788
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 798
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;

    .line 799
    .local v1, "listener":Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;->onActionUp()V

    .line 800
    .end local v1    # "listener":Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;
    goto :goto_0

    .line 801
    :cond_0
    goto :goto_3

    .line 790
    :pswitch_1
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mClickable:Z

    if-nez v0, :cond_1

    .line 791
    const/4 v0, 0x0

    return v0

    .line 793
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;

    .line 794
    .restart local v1    # "listener":Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;->onActionDown()V

    .line 795
    .end local v1    # "listener":Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;
    goto :goto_1

    .line 796
    :cond_2
    goto :goto_3

    .line 803
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;

    .line 804
    .restart local v1    # "listener":Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;->onActionCancel()V

    .line 805
    .end local v1    # "listener":Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;
    goto :goto_2

    .line 808
    :cond_4
    :goto_3
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewBound()Landroid/graphics/Rect;
    .locals 5

    .line 751
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->getBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 772
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onAttachedToWindow()V

    .line 773
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;

    .line 774
    .local v1, "listener":Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;->onAttachedToWindow()V

    .line 775
    .end local v1    # "listener":Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;
    goto :goto_0

    .line 776
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 724
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 725
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mIsRtl:Z

    .line 726
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 780
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onDetachedFromWindow()V

    .line 781
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;

    .line 782
    .local v1, "listener":Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;->onDetachedFromWindow()V

    .line 783
    .end local v1    # "listener":Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;
    goto :goto_0

    .line 784
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 813
    iget v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPopPanelType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 814
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 816
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 826
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 827
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    .line 828
    .local v2, "y":I
    iget v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->dx:I

    sub-int v3, v0, v3

    .line 829
    .local v3, "deltaX":I
    iget v4, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->dy:I

    sub-int v4, v2, v4

    .line 830
    .local v4, "deltaY":I
    iput v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->dx:I

    .line 831
    iput v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->dy:I

    .line 832
    iget-boolean v5, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mIsRtl:Z

    if-eqz v5, :cond_1

    .line 833
    neg-int v3, v3

    .line 835
    :cond_1
    iget-object v5, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v6, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 836
    iget-object v5, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v6

    if-le v5, v6, :cond_2

    .line 837
    iget-object v5, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v6, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 839
    :cond_2
    iget-object v5, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v6

    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_3

    .line 840
    iget-object v5, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v6, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 842
    :cond_3
    iget-object v5, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v4

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 843
    iget-object v5, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-le v5, v6, :cond_4

    .line 844
    iget-object v5, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v6, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 846
    :cond_4
    iget-object v5, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_5

    .line 847
    iget-object v5, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v6, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 849
    :cond_5
    iget-object v5, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPanelLayout:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v5, p0, v6}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 850
    iget-boolean v5, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mIsMoving:Z

    if-nez v5, :cond_9

    .line 851
    iput-boolean v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mIsMoving:Z

    .line 852
    iget-object v5, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;

    .line 853
    .local v6, "listener":Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;
    invoke-interface {v6, v1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;->onUserMoveStateChange(Z)V

    .line 854
    .end local v6    # "listener":Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;
    goto :goto_0

    .line 858
    .end local v0    # "x":I
    .end local v2    # "y":I
    .end local v3    # "deltaX":I
    .end local v4    # "deltaY":I
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v0

    .line 859
    .local v0, "leftMargin":I
    iget-object v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mInitPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mMaxSlideLength:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_7

    iget-object v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mInitPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mMaxSlideLength:I

    if-lt v2, v3, :cond_6

    goto :goto_1

    .line 865
    :cond_6
    iget-object v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mInitPoint:Landroid/graphics/Point;

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->getDirection(Landroid/graphics/Point;)I

    move-result v2

    .line 866
    .local v2, "direction":I
    invoke-direct {p0, v2, v4}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->moveToPointWithAnimation(IZ)V

    .line 868
    .end local v2    # "direction":I
    goto :goto_2

    .line 860
    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mInitPoint:Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    iget-object v5, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-direct {v3, v0, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->getTargetPoint(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    .line 861
    .local v2, "point":Landroid/graphics/Point;
    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->getDirection(Landroid/graphics/Point;)I

    move-result v3

    .line 862
    .local v3, "direction":I
    const-string v5, "XPopPanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onTouchEvent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-direct {p0, v3, v4}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->moveToPointWithAnimation(IZ)V

    .line 864
    .end local v2    # "point":Landroid/graphics/Point;
    .end local v3    # "direction":I
    goto :goto_2

    .line 818
    .end local v0    # "leftMargin":I
    :pswitch_2
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mIsMoving:Z

    if-nez v0, :cond_8

    .line 819
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mInitPoint:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 820
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mInitPoint:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 822
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->dx:I

    .line 823
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->dy:I

    .line 824
    nop

    .line 872
    :cond_9
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeListener(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;

    .line 1039
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1040
    return-void
.end method
