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
    .locals 2
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

    .line 712
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;)V

    .line 688
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mInitPoint:Landroid/graphics/Point;

    const/4 v0, 0x0

    .line 696
    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHasToggle:Z

    .line 697
    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mToggleEnable:Z

    .line 698
    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mIsMoving:Z

    .line 699
    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mIsRtl:Z

    .line 707
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mDefaultPoints:Ljava/util/HashMap;

    .line 708
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mTogglePoints:Ljava/util/HashMap;

    .line 709
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mListeners:Ljava/util/List;

    .line 713
    iput-object p7, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPanelLayout:Landroid/widget/FrameLayout;

    .line 714
    iput-object p8, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 715
    iput p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mBg:I

    .line 716
    iput-boolean p3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mClickable:Z

    .line 717
    iput-object p6, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPaddings:Ljava/util/List;

    .line 718
    iput p4, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPopPanelType:I

    .line 719
    invoke-virtual {p5}, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->getSlideAnimatorDuration()I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mAnimationDuration:I

    .line 720
    invoke-virtual {p5}, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;->getMaxSlideLength()I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mMaxSlideLength:I

    .line 721
    iget-object p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object p2

    iget p3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mBg:I

    invoke-virtual {p2, p3}, Lapr;->b(I)V

    .line 722
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->getWindowBound()Landroid/graphics/Rect;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    .line 723
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mIsRtl:Z

    .line 724
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mMaxSlideLength : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mMaxSlideLength:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mIsRtl : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mIsRtl:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mWindowRect : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XPopPanel"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$1600(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;IIIIZ)V
    .locals 0

    .line 679
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->setPoint(IIIIZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;I)Landroid/graphics/Point;
    .locals 0

    .line 679
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->getPositionPoint(I)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;)Z
    .locals 0

    .line 679
    iget-boolean p0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHasToggle:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;IZ)V
    .locals 0

    .line 679
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->moveToPointWithAnimation(IZ)V

    return-void
.end method

.method static synthetic access$2000(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;Landroid/graphics/Point;)V
    .locals 0

    .line 679
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->animationFinish(Landroid/graphics/Point;)V

    return-void
.end method

.method private animationFinish(Landroid/graphics/Point;)V
    .locals 3

    const/4 v0, 0x0

    .line 1016
    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mIsMoving:Z

    .line 1017
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mInitPoint:Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 1018
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mInitPoint:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, v1, Landroid/graphics/Point;->y:I

    .line 1019
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;

    .line 1020
    invoke-interface {v1, v0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;->onUserMoveStateChange(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getDirection(Landroid/graphics/Point;)I
    .locals 4

    .line 881
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

    .line 882
    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPaddings:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    return v2

    :cond_0
    const/4 p1, 0x2

    return p1

    .line 888
    :cond_1
    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPaddings:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_2

    return v3

    :cond_2
    const/4 p1, 0x3

    return p1
.end method

.method private getPositionPoint(I)Landroid/graphics/Point;
    .locals 1

    .line 903
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHasToggle:Z

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mTogglePoints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Point;

    return-object p1

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mDefaultPoints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Point;

    return-object p1
.end method

.method private getTargetPoint(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 5

    .line 911
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 912
    iget v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mDefaultWidth:I

    .line 913
    iget v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mDefaultHeight:I

    .line 914
    iget-boolean v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHasToggle:Z

    if-eqz v3, :cond_0

    .line 915
    iget v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mToggleWidth:I

    .line 916
    iget v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mToggleHeight:I

    .line 918
    :cond_0
    iget v3, p2, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mMaxSlideLength:I

    if-le v3, v4, :cond_1

    .line 919
    iget-object v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPaddings:Ljava/util/List;

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 920
    :cond_1
    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mMaxSlideLength:I

    neg-int v3, v3

    if-ge v1, v3, :cond_2

    .line 921
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPaddings:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 923
    :cond_2
    iget v1, p1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 925
    :goto_0
    iget v1, p2, Landroid/graphics/Point;->y:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mMaxSlideLength:I

    if-le v1, v3, :cond_3

    .line 926
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v2

    iget-object p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPaddings:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 927
    :cond_3
    iget p2, p2, Landroid/graphics/Point;->y:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, v1

    iget v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mMaxSlideLength:I

    neg-int v1, v1

    if-ge p2, v1, :cond_4

    .line 928
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPaddings:Ljava/util/List;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 930
    :cond_4
    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, v0, Landroid/graphics/Point;->y:I

    :goto_1
    return-object v0
.end method

.method private getWindowBound()Landroid/graphics/Rect;
    .locals 3

    .line 897
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->newBuilder()Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;

    move-result-object v0

    const-string v1, "immersion"

    .line 898
    invoke-virtual {v0, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->setAreaType(Ljava/lang/String;)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;

    move-result-object v0

    .line 899
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->build()Landroid/os/Bundle;

    move-result-object v0

    const/16 v2, 0x32

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getWindowBounds(ILandroid/os/Bundle;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private moveToPointWithAnimation(IZ)V
    .locals 9

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 936
    iget-boolean v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mToggleEnable:Z

    if-eqz v1, :cond_0

    .line 937
    iget-boolean v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHasToggle:Z

    xor-int/2addr v1, v0

    iput-boolean v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHasToggle:Z

    .line 939
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->getPositionPoint(I)Landroid/graphics/Point;

    move-result-object p1

    .line 940
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->isAttachedToWindow()Z

    move-result v1

    const-string v2, "XPopPanel"

    if-nez v1, :cond_1

    const-string p1, "moveToPointWithAnimation: not attached to window"

    .line 941
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 944
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v1

    .line 945
    iget v3, p1, Landroid/graphics/Point;->x:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v6, p1, Landroid/graphics/Point;->y:I

    if-eq v3, v6, :cond_3

    .line 946
    :cond_2
    new-instance v3, Landroid/animation/PointFEvaluator;

    invoke-direct {v3}, Landroid/animation/PointFEvaluator;-><init>()V

    new-array v6, v5, [Ljava/lang/Object;

    new-instance v7, Landroid/graphics/PointF;

    int-to-float v1, v1

    iget-object v8, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v8, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v8, v8

    invoke-direct {v7, v1, v8}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v7, v6, v4

    new-instance v1, Landroid/graphics/PointF;

    iget v7, p1, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget v8, p1, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-direct {v1, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v6, v0

    invoke-static {v3, v6}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mSlideAnimator:Landroid/animation/ValueAnimator;

    .line 947
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mSlideAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mAnimationDuration:I

    int-to-long v6, v3

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 948
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mSlideAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 949
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mSlideAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/xiaopeng/xui/app/-$$Lambda$XPopPanel$BackgroundLayout$z6DCdKu0tPIL_BKaptfDnqGOiRY;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XPopPanel$BackgroundLayout$z6DCdKu0tPIL_BKaptfDnqGOiRY;-><init>(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 959
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mSlideAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$1;

    invoke-direct {v3, p0, p1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$1;-><init>(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;Landroid/graphics/Point;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 976
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mSlideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    if-eqz p2, :cond_7

    .line 978
    iget-boolean p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mToggleEnable:Z

    if-eqz p2, :cond_7

    .line 979
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->isAttachedToWindow()Z

    move-result p2

    if-nez p2, :cond_4

    .line 980
    iget-object p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWidthSizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 981
    iget-object p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHeightSizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 983
    :cond_4
    new-array p2, v5, [I

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    aput v1, p2, v4

    iget-boolean v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHasToggle:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mToggleWidth:I

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mDefaultWidth:I

    :goto_0
    aput v1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWidthSizeAnimator:Landroid/animation/ValueAnimator;

    .line 984
    new-array p2, v5, [I

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    aput v1, p2, v4

    iget-boolean v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHasToggle:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mToggleHeight:I

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mDefaultHeight:I

    :goto_1
    aput v1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHeightSizeAnimator:Landroid/animation/ValueAnimator;

    .line 985
    iget-object p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWidthSizeAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mAnimationDuration:I

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 986
    iget-object p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHeightSizeAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mAnimationDuration:I

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 987
    iget-object p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHeightSizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 988
    iget-object p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWidthSizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 989
    iget-object p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWidthSizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/xiaopeng/xui/app/-$$Lambda$XPopPanel$BackgroundLayout$-CYMUfo4utrWtYFrYVmNmoG_Re0;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XPopPanel$BackgroundLayout$-CYMUfo4utrWtYFrYVmNmoG_Re0;-><init>(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 997
    iget-object p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHeightSizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/xiaopeng/xui/app/-$$Lambda$XPopPanel$BackgroundLayout$Is_FVvsfEkcxugKrdtgJBJsbFf4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$XPopPanel$BackgroundLayout$Is_FVvsfEkcxugKrdtgJBJsbFf4;-><init>(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1005
    iget-object p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWidthSizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 1006
    iget-object p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHeightSizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 1008
    :cond_7
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->getDirection(Landroid/graphics/Point;)I

    move-result p1

    .line 1009
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "moveToPointWithAnimation direction : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mHasToggle : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHasToggle:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iget-object p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mListeners:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;

    .line 1011
    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;->onPositionChange(I)V

    goto :goto_2

    :cond_8
    return-void
.end method

.method private setPoint(IIIIZ)V
    .locals 8

    .line 734
    iput p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mDefaultWidth:I

    .line 735
    iput p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mDefaultHeight:I

    .line 736
    iput p3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mToggleWidth:I

    .line 737
    iput p4, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mToggleHeight:I

    .line 738
    iput-boolean p5, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mToggleEnable:Z

    .line 739
    iget-object p5, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPaddings:Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p5, v0

    .line 740
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPaddings:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    .line 741
    iget-object v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p1

    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPaddings:Ljava/util/List;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v2, p1

    .line 742
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPaddings:Ljava/util/List;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p1, p2

    .line 743
    iget-object p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPaddings:Ljava/util/List;

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    sub-int/2addr p2, p3

    .line 744
    iget-object p3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, p4

    iget-object p4, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPaddings:Ljava/util/List;

    invoke-interface {p4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    sub-int/2addr p3, p4

    .line 745
    iget-object p4, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mDefaultPoints:Ljava/util/HashMap;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p5, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p4, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    iget-object p4, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mDefaultPoints:Ljava/util/HashMap;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p4, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    iget-object p4, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mDefaultPoints:Ljava/util/HashMap;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p5, p1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p4, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    iget-object p4, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mDefaultPoints:Ljava/util/HashMap;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p4, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mTogglePoints:Ljava/util/HashMap;

    new-instance p4, Landroid/graphics/Point;

    invoke-direct {p4, p5, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mTogglePoints:Ljava/util/HashMap;

    new-instance p4, Landroid/graphics/Point;

    invoke-direct {p4, p2, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1, v3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mTogglePoints:Ljava/util/HashMap;

    new-instance p4, Landroid/graphics/Point;

    invoke-direct {p4, p5, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1, v5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mTogglePoints:Ljava/util/HashMap;

    new-instance p4, Landroid/graphics/Point;

    invoke-direct {p4, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1, v7, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;)V
    .locals 2

    .line 1037
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "XPopPanel"

    const-string v1, "addListener"

    .line 1038
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    .line 1025
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mSlideAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mSlideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWidthSizeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1029
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWidthSizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1031
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHeightSizeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1032
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHeightSizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 793
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_3

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;

    .line 809
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;->onActionCancel()V

    goto :goto_0

    .line 803
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;

    .line 804
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;->onActionUp()V

    goto :goto_1

    .line 795
    :cond_2
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mClickable:Z

    if-nez v0, :cond_3

    const/4 p1, 0x0

    return p1

    .line 798
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

    .line 799
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;->onActionDown()V

    goto :goto_2

    .line 813
    :cond_4
    :goto_3
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getViewBound()Landroid/graphics/Rect;
    .locals 5

    .line 756
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

.method public synthetic lambda$moveToPointWithAnimation$0$XPopPanel$BackgroundLayout(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 950
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    .line 951
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 952
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 953
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 954
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPanelLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p0, v0}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 956
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mSlideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$moveToPointWithAnimation$1$XPopPanel$BackgroundLayout(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 990
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 991
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 992
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPanelLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p0, v0}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 994
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWidthSizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$moveToPointWithAnimation$2$XPopPanel$BackgroundLayout(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 999
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1000
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPanelLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p0, v0}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1002
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mHeightSizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 777
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onAttachedToWindow()V

    .line 778
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

    .line 779
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;->onAttachedToWindow()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 729
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 730
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mIsRtl:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 785
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onDetachedFromWindow()V

    .line 786
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

    .line 787
    invoke-interface {v1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;->onDetachedFromWindow()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 818
    iget v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPopPanelType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 819
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 821
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    if-eq v0, v2, :cond_7

    if-eq v0, v1, :cond_1

    goto/16 :goto_2

    .line 831
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 832
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    .line 833
    iget v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->dx:I

    sub-int v1, v0, v1

    .line 834
    iget v3, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->dy:I

    sub-int v3, p1, v3

    .line 835
    iput v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->dx:I

    .line 836
    iput p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->dy:I

    .line 837
    iget-boolean p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mIsRtl:Z

    if-eqz p1, :cond_2

    neg-int v1, v1

    .line 840
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 841
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v0

    if-le p1, v0, :cond_3

    .line 842
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 844
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_4

    .line 845
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 847
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 848
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-le p1, v0, :cond_5

    .line 849
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 851
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_6

    .line 852
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mWindowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 854
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mPanelLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p0, v0}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 855
    iget-boolean p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mIsMoving:Z

    if-nez p1, :cond_c

    .line 856
    iput-boolean v2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mIsMoving:Z

    .line 857
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;

    .line 858
    invoke-interface {v0, v2}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;->onUserMoveStateChange(Z)V

    goto :goto_0

    .line 863
    :cond_7
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result p1

    .line 864
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mInitPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mMaxSlideLength:I

    const/4 v3, 0x0

    if-ge v0, v1, :cond_9

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mInitPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mMaxSlideLength:I

    if-lt v0, v1, :cond_8

    goto :goto_1

    .line 870
    :cond_8
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mInitPoint:Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->getDirection(Landroid/graphics/Point;)I

    move-result p1

    .line 871
    invoke-direct {p0, p1, v3}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->moveToPointWithAnimation(IZ)V

    goto :goto_2

    .line 865
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mInitPoint:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-direct {v1, p1, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->getTargetPoint(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    .line 866
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->getDirection(Landroid/graphics/Point;)I

    move-result v0

    .line 867
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "XPopPanel"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-direct {p0, v0, v3}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->moveToPointWithAnimation(IZ)V

    goto :goto_2

    .line 823
    :cond_a
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mIsMoving:Z

    if-nez v0, :cond_b

    .line 824
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mInitPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 825
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mInitPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 827
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->dx:I

    .line 828
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->dy:I

    :cond_c
    :goto_2
    return v2
.end method

.method public removeListener(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$BackgroundListener;)V
    .locals 1

    .line 1044
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
