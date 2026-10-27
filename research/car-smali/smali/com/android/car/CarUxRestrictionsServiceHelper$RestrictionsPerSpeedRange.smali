.class Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;
.super Ljava/lang/Object;
.source "CarUxRestrictionsServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarUxRestrictionsServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestrictionsPerSpeedRange"
.end annotation


# static fields
.field static final SPEED_INVALID:I = -0x1


# instance fields
.field final mMaxSpeed:F

.field final mMinSpeed:F

.field final mRequiresDistractionOptimization:Z

.field final mRestrictions:I

.field final synthetic this$0:Lcom/android/car/CarUxRestrictionsServiceHelper;


# direct methods
.method constructor <init>(Lcom/android/car/CarUxRestrictionsServiceHelper;FFIZ)V
    .locals 0
    .param p2, "minSpeed"    # F
    .param p3, "maxSpeed"    # F
    .param p4, "restrictions"    # I
    .param p5, "requiresOpt"    # Z

    .line 421
    iput-object p1, p0, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;->this$0:Lcom/android/car/CarUxRestrictionsServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput p2, p0, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;->mMinSpeed:F

    .line 423
    iput p3, p0, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;->mMaxSpeed:F

    .line 424
    iput p4, p0, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;->mRestrictions:I

    .line 425
    iput-boolean p5, p0, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;->mRequiresDistractionOptimization:Z

    .line 426
    return-void
.end method


# virtual methods
.method includes(F)Z
    .locals 4
    .param p1, "speed"    # F

    .line 435
    iget v0, p0, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;->mMinSpeed:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;->mMaxSpeed:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 439
    iget v0, p0, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;->mMinSpeed:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    move v2, v3

    nop

    :cond_0
    return v2

    .line 441
    :cond_1
    iget v0, p0, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;->mMinSpeed:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/car/CarUxRestrictionsServiceHelper$RestrictionsPerSpeedRange;->mMaxSpeed:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    move v2, v3

    nop

    :cond_2
    return v2
.end method
