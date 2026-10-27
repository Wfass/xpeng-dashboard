.class public Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;
.super Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParamsParent;
.source "XTouchUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/utils/XTouchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;
    }
.end annotation


# instance fields
.field private mAnimTouch:I
    .annotation build Lcom/xiaopeng/xui/utils/XTouchUtils$AnimationTouch;
    .end annotation
.end field

.field private mAnimType:I
    .annotation build Lcom/xiaopeng/xui/utils/XTouchUtils$AnimationType;
    .end annotation
.end field

.field private mDelay:I

.field private mDuration:I

.field private mEndValue:F

.field private mHasReverse:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mStartValue:F

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mType:I
    .annotation build Lcom/xiaopeng/xui/utils/XTouchUtils$Type;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParamsParent;-><init>(Lcom/xiaopeng/xui/utils/XTouchUtils$1;)V

    .line 124
    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->access$100(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 125
    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->access$200(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->mStartValue:F

    .line 126
    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->access$300(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->mEndValue:F

    .line 127
    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->access$400(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->mDuration:I

    .line 128
    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->access$500(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->mDelay:I

    .line 129
    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->access$600(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->mAnimType:I

    .line 130
    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->access$700(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->mTarget:Landroid/view/View;

    .line 131
    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->access$800(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 132
    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->access$900(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->mAnimTouch:I

    .line 133
    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->access$1000(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->mHasReverse:Z

    .line 134
    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->access$1100(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->mType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;Lcom/xiaopeng/xui/utils/XTouchUtils$1;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;-><init>(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;)V

    return-void
.end method


# virtual methods
.method public getAnimTouch()I
    .locals 1
    .annotation build Lcom/xiaopeng/xui/utils/XTouchUtils$AnimationTouch;
    .end annotation

    .line 227
    iget v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->mAnimTouch:I

    return v0
.end method

.method public getAnimationType()I
    .locals 1
    .annotation build Lcom/xiaopeng/xui/utils/XTouchUtils$AnimationType;
    .end annotation

    .line 239
    iget v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->mAnimType:I

    return v0
.end method

.method public getDelay()I
    .locals 1

    .line 223
    iget v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->mDelay:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 219
    iget v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->mDuration:I

    return v0
.end method

.method public getEndValue()F
    .locals 1

    .line 215
    iget v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->mEndValue:F

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getStartValue()F
    .locals 1

    .line 211
    iget v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->mStartValue:F

    return v0
.end method

.method public bridge synthetic getTarget()Landroid/view/View;
    .locals 1

    .line 111
    invoke-super {p0}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParamsParent;->getTarget()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->mTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getType()I
    .locals 1
    .annotation build Lcom/xiaopeng/xui/utils/XTouchUtils$Type;
    .end annotation

    .line 243
    iget v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->mType:I

    return v0
.end method

.method public hasReverse()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->mHasReverse:Z

    return v0
.end method
