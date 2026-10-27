.class public Lorg/opencv/ml/SVMSGD;
.super Lorg/opencv/ml/StatModel;
.source "SVMSGD.java"


# static fields
.field public static final ASGD:I = 0x1

.field public static final HARD_MARGIN:I = 0x1

.field public static final SGD:I

.field public static final SOFT_MARGIN:I


# direct methods
.method protected constructor <init>(J)V
    .locals 0
    .param p1, "addr"    # J

    .line 19
    invoke-direct {p0, p1, p2}, Lorg/opencv/ml/StatModel;-><init>(J)V

    return-void
.end method

.method public static __fromPtr__(J)Lorg/opencv/ml/SVMSGD;
    .locals 1
    .param p0, "addr"    # J

    .line 22
    new-instance v0, Lorg/opencv/ml/SVMSGD;

    invoke-direct {v0, p0, p1}, Lorg/opencv/ml/SVMSGD;-><init>(J)V

    return-object v0
.end method

.method public static create()Lorg/opencv/ml/SVMSGD;
    .locals 2

    .line 59
    invoke-static {}, Lorg/opencv/ml/SVMSGD;->create_0()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/ml/SVMSGD;->__fromPtr__(J)Lorg/opencv/ml/SVMSGD;

    move-result-object v0

    return-object v0
.end method

.method private static native create_0()J
.end method

.method private static native delete(J)V
.end method

.method private static native getInitialStepSize_0(J)F
.end method

.method private static native getMarginRegularization_0(J)F
.end method

.method private static native getMarginType_0(J)I
.end method

.method private static native getShift_0(J)F
.end method

.method private static native getStepDecreasingPower_0(J)F
.end method

.method private static native getSvmsgdType_0(J)I
.end method

.method private static native getTermCriteria_0(J)[D
.end method

.method private static native getWeights_0(J)J
.end method

.method public static load(Ljava/lang/String;)Lorg/opencv/ml/SVMSGD;
    .locals 2
    .param p0, "filepath"    # Ljava/lang/String;

    .line 93
    invoke-static {p0}, Lorg/opencv/ml/SVMSGD;->load_1(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/ml/SVMSGD;->__fromPtr__(J)Lorg/opencv/ml/SVMSGD;

    move-result-object v0

    return-object v0
.end method

.method public static load(Ljava/lang/String;Ljava/lang/String;)Lorg/opencv/ml/SVMSGD;
    .locals 2
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "nodeName"    # Ljava/lang/String;

    .line 79
    invoke-static {p0, p1}, Lorg/opencv/ml/SVMSGD;->load_0(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/ml/SVMSGD;->__fromPtr__(J)Lorg/opencv/ml/SVMSGD;

    move-result-object v0

    return-object v0
.end method

.method private static native load_0(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native load_1(Ljava/lang/String;)J
.end method

.method private static native setInitialStepSize_0(JF)V
.end method

.method private static native setMarginRegularization_0(JF)V
.end method

.method private static native setMarginType_0(JI)V
.end method

.method private static native setOptimalParameters_0(JII)V
.end method

.method private static native setOptimalParameters_1(JI)V
.end method

.method private static native setOptimalParameters_2(J)V
.end method

.method private static native setStepDecreasingPower_0(JF)V
.end method

.method private static native setSvmsgdType_0(JI)V
.end method

.method private static native setTermCriteria_0(JIID)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 296
    iget-wide v0, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/SVMSGD;->delete(J)V

    .line 297
    return-void
.end method

.method public getInitialStepSize()F
    .locals 2

    .line 119
    iget-wide v0, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/SVMSGD;->getInitialStepSize_0(J)F

    move-result v0

    return v0
.end method

.method public getMarginRegularization()F
    .locals 2

    .line 132
    iget-wide v0, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/SVMSGD;->getMarginRegularization_0(J)F

    move-result v0

    return v0
.end method

.method public getMarginType()I
    .locals 2

    .line 170
    iget-wide v0, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/SVMSGD;->getMarginType_0(J)I

    move-result v0

    return v0
.end method

.method public getShift()F
    .locals 2

    .line 144
    iget-wide v0, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/SVMSGD;->getShift_0(J)F

    move-result v0

    return v0
.end method

.method public getStepDecreasingPower()F
    .locals 2

    .line 157
    iget-wide v0, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/SVMSGD;->getStepDecreasingPower_0(J)F

    move-result v0

    return v0
.end method

.method public getSvmsgdType()I
    .locals 2

    .line 183
    iget-wide v0, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/SVMSGD;->getSvmsgdType_0(J)I

    move-result v0

    return v0
.end method

.method public getTermCriteria()Lorg/opencv/core/TermCriteria;
    .locals 3

    .line 106
    new-instance v0, Lorg/opencv/core/TermCriteria;

    iget-wide v1, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v1, v2}, Lorg/opencv/ml/SVMSGD;->getTermCriteria_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/TermCriteria;-><init>([D)V

    return-object v0
.end method

.method public getWeights()Lorg/opencv/core/Mat;
    .locals 3

    .line 44
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v1, v2}, Lorg/opencv/ml/SVMSGD;->getWeights_0(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public setInitialStepSize(F)V
    .locals 2
    .param p1, "InitialStepSize"    # F

    .line 196
    iget-wide v0, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/SVMSGD;->setInitialStepSize_0(JF)V

    .line 197
    return-void
.end method

.method public setMarginRegularization(F)V
    .locals 2
    .param p1, "marginRegularization"    # F

    .line 209
    iget-wide v0, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/SVMSGD;->setMarginRegularization_0(JF)V

    .line 210
    return-void
.end method

.method public setMarginType(I)V
    .locals 2
    .param p1, "marginType"    # I

    .line 222
    iget-wide v0, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/SVMSGD;->setMarginType_0(JI)V

    .line 223
    return-void
.end method

.method public setOptimalParameters()V
    .locals 2

    .line 251
    iget-wide v0, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/SVMSGD;->setOptimalParameters_2(J)V

    .line 252
    return-void
.end method

.method public setOptimalParameters(I)V
    .locals 2
    .param p1, "svmsgdType"    # I

    .line 244
    iget-wide v0, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/SVMSGD;->setOptimalParameters_1(JI)V

    .line 245
    return-void
.end method

.method public setOptimalParameters(II)V
    .locals 2
    .param p1, "svmsgdType"    # I
    .param p2, "marginType"    # I

    .line 236
    iget-wide v0, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/ml/SVMSGD;->setOptimalParameters_0(JII)V

    .line 237
    return-void
.end method

.method public setStepDecreasingPower(F)V
    .locals 2
    .param p1, "stepDecreasingPower"    # F

    .line 264
    iget-wide v0, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/SVMSGD;->setStepDecreasingPower_0(JF)V

    .line 265
    return-void
.end method

.method public setSvmsgdType(I)V
    .locals 2
    .param p1, "svmsgdType"    # I

    .line 277
    iget-wide v0, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/SVMSGD;->setSvmsgdType_0(JI)V

    .line 278
    return-void
.end method

.method public setTermCriteria(Lorg/opencv/core/TermCriteria;)V
    .locals 6
    .param p1, "val"    # Lorg/opencv/core/TermCriteria;

    .line 290
    iget-wide v0, p0, Lorg/opencv/ml/SVMSGD;->nativeObj:J

    iget v2, p1, Lorg/opencv/core/TermCriteria;->type:I

    iget v3, p1, Lorg/opencv/core/TermCriteria;->maxCount:I

    iget-wide v4, p1, Lorg/opencv/core/TermCriteria;->epsilon:D

    invoke-static/range {v0 .. v5}, Lorg/opencv/ml/SVMSGD;->setTermCriteria_0(JIID)V

    .line 291
    return-void
.end method
