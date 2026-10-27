.class public Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;
.super Ljava/lang/Object;
.source "XTouchUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchParamsBulider"
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

.field private mTarget:Landroid/view/View;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mType:I
    .annotation build Lcom/xiaopeng/xui/utils/XTouchUtils$Type;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 142
    iput v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->mAnimTouch:I

    .line 143
    iput-boolean v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->mHasReverse:Z

    .line 148
    iput v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->mType:I

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;)Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->mHasReverse:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;)I
    .locals 0

    .line 137
    iget p0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->mType:I

    return p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;)F
    .locals 0

    .line 137
    iget p0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->mStartValue:F

    return p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;)F
    .locals 0

    .line 137
    iget p0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->mEndValue:F

    return p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;)I
    .locals 0

    .line 137
    iget p0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->mDuration:I

    return p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;)I
    .locals 0

    .line 137
    iget p0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->mDelay:I

    return p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;)I
    .locals 0

    .line 137
    iget p0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->mAnimType:I

    return p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;)Landroid/view/View;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->mTarget:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;)Landroid/view/View$OnTouchListener;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->mTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;)I
    .locals 0

    .line 137
    iget p0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->mAnimTouch:I

    return p0
.end method


# virtual methods
.method public build()Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;
    .locals 2

    .line 206
    new-instance v0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;-><init>(Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;Lcom/xiaopeng/xui/utils/XTouchUtils$1;)V

    return-object v0
.end method

.method public setAnimTouch(I)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;
    .locals 0
    .param p1    # I
        .annotation build Lcom/xiaopeng/xui/utils/XTouchUtils$AnimationTouch;
        .end annotation
    .end param

    .line 191
    iput p1, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->mAnimTouch:I

    return-object p0
.end method

.method public setAnimationType(I)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;
    .locals 0
    .param p1    # I
        .annotation build Lcom/xiaopeng/xui/utils/XTouchUtils$AnimationType;
        .end annotation
    .end param

    .line 176
    iput p1, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->mAnimType:I

    return-object p0
.end method

.method public setDelay(I)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;
    .locals 0

    .line 166
    iput p1, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->mDelay:I

    return-object p0
.end method

.method public setDuration(I)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;
    .locals 0

    .line 161
    iput p1, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->mDuration:I

    return-object p0
.end method

.method public setEndValue(F)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;
    .locals 0

    .line 156
    iput p1, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->mEndValue:F

    return-object p0
.end method

.method public setHasReverse(Z)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;
    .locals 0

    .line 196
    iput-boolean p1, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->mHasReverse:Z

    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->mTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method public setStartValue(F)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;
    .locals 0

    .line 151
    iput p1, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->mStartValue:F

    return-object p0
.end method

.method public setTarget(Landroid/view/View;)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->mTarget:Landroid/view/View;

    return-object p0
.end method

.method public setType(I)Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;
    .locals 0
    .param p1    # I
        .annotation build Lcom/xiaopeng/xui/utils/XTouchUtils$Type;
        .end annotation
    .end param

    .line 201
    iput p1, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams$TouchParamsBulider;->mType:I

    return-object p0
.end method
