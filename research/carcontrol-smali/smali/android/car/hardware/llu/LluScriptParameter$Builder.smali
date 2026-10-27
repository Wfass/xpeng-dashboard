.class public final Landroid/car/hardware/llu/LluScriptParameter$Builder;
.super Ljava/lang/Object;
.source "LluScriptParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/llu/LluScriptParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mEffectName:I

.field private mFrontEffectDataTotalLength:I

.field private mFrontEffectLoop:I

.field private mFrontEffectPeriod:I

.field private mFrontEffectRetain:I

.field private mRearEffectDataTotalLength:I

.field private mRearEffectLoop:I

.field private mRearEffectPeriod:I

.field private mRearEffectRetain:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/car/hardware/llu/LluScriptParameter;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 116
    iget v1, p0, Landroid/car/hardware/llu/LluScriptParameter$Builder;->mEffectName:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/car/hardware/llu/LluScriptParameter$Builder;->mFrontEffectPeriod:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/car/hardware/llu/LluScriptParameter$Builder;->mFrontEffectLoop:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Landroid/car/hardware/llu/LluScriptParameter$Builder;->mFrontEffectRetain:I

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Landroid/car/hardware/llu/LluScriptParameter$Builder;->mFrontEffectDataTotalLength:I

    const/4 v2, 0x4

    aput v1, v0, v2

    iget v1, p0, Landroid/car/hardware/llu/LluScriptParameter$Builder;->mRearEffectPeriod:I

    const/4 v2, 0x5

    aput v1, v0, v2

    iget v1, p0, Landroid/car/hardware/llu/LluScriptParameter$Builder;->mRearEffectLoop:I

    const/4 v2, 0x6

    aput v1, v0, v2

    iget v1, p0, Landroid/car/hardware/llu/LluScriptParameter$Builder;->mRearEffectRetain:I

    const/4 v2, 0x7

    aput v1, v0, v2

    iget v1, p0, Landroid/car/hardware/llu/LluScriptParameter$Builder;->mRearEffectDataTotalLength:I

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 117
    new-instance v1, Landroid/car/hardware/llu/LluScriptParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/car/hardware/llu/LluScriptParameter;-><init>([ILandroid/car/hardware/llu/LluScriptParameter$1;)V

    return-object v1
.end method

.method public effectName(I)Landroid/car/hardware/llu/LluScriptParameter$Builder;
    .locals 0

    .line 71
    iput p1, p0, Landroid/car/hardware/llu/LluScriptParameter$Builder;->mEffectName:I

    return-object p0
.end method

.method public frontEffectDataTotalLength(I)Landroid/car/hardware/llu/LluScriptParameter$Builder;
    .locals 0

    .line 91
    iput p1, p0, Landroid/car/hardware/llu/LluScriptParameter$Builder;->mFrontEffectDataTotalLength:I

    return-object p0
.end method

.method public frontEffectLoop(I)Landroid/car/hardware/llu/LluScriptParameter$Builder;
    .locals 0

    .line 81
    iput p1, p0, Landroid/car/hardware/llu/LluScriptParameter$Builder;->mFrontEffectLoop:I

    return-object p0
.end method

.method public frontEffectPeriod(I)Landroid/car/hardware/llu/LluScriptParameter$Builder;
    .locals 0

    .line 76
    iput p1, p0, Landroid/car/hardware/llu/LluScriptParameter$Builder;->mFrontEffectPeriod:I

    return-object p0
.end method

.method public frontEffectRetain(I)Landroid/car/hardware/llu/LluScriptParameter$Builder;
    .locals 0

    .line 86
    iput p1, p0, Landroid/car/hardware/llu/LluScriptParameter$Builder;->mFrontEffectRetain:I

    return-object p0
.end method

.method public rearEffectDataTotalLength(I)Landroid/car/hardware/llu/LluScriptParameter$Builder;
    .locals 0

    .line 111
    iput p1, p0, Landroid/car/hardware/llu/LluScriptParameter$Builder;->mRearEffectDataTotalLength:I

    return-object p0
.end method

.method public rearEffectLoop(I)Landroid/car/hardware/llu/LluScriptParameter$Builder;
    .locals 0

    .line 101
    iput p1, p0, Landroid/car/hardware/llu/LluScriptParameter$Builder;->mRearEffectLoop:I

    return-object p0
.end method

.method public rearEffectPeriod(I)Landroid/car/hardware/llu/LluScriptParameter$Builder;
    .locals 0

    .line 96
    iput p1, p0, Landroid/car/hardware/llu/LluScriptParameter$Builder;->mRearEffectPeriod:I

    return-object p0
.end method

.method public rearEffectRetain(I)Landroid/car/hardware/llu/LluScriptParameter$Builder;
    .locals 0

    .line 106
    iput p1, p0, Landroid/car/hardware/llu/LluScriptParameter$Builder;->mRearEffectRetain:I

    return-object p0
.end method
