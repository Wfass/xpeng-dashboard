.class public Lorg/opencv/ml/DTrees;
.super Lorg/opencv/ml/StatModel;
.source "DTrees.java"


# static fields
.field public static final PREDICT_AUTO:I = 0x0

.field public static final PREDICT_MASK:I = 0x300

.field public static final PREDICT_MAX_VOTE:I = 0x200

.field public static final PREDICT_SUM:I = 0x100


# direct methods
.method protected constructor <init>(J)V
    .locals 0
    .param p1, "addr"    # J

    .line 23
    invoke-direct {p0, p1, p2}, Lorg/opencv/ml/StatModel;-><init>(J)V

    return-void
.end method

.method public static __fromPtr__(J)Lorg/opencv/ml/DTrees;
    .locals 1
    .param p0, "addr"    # J

    .line 26
    new-instance v0, Lorg/opencv/ml/DTrees;

    invoke-direct {v0, p0, p1}, Lorg/opencv/ml/DTrees;-><init>(J)V

    return-object v0
.end method

.method public static create()Lorg/opencv/ml/DTrees;
    .locals 2

    .line 62
    invoke-static {}, Lorg/opencv/ml/DTrees;->create_0()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/ml/DTrees;->__fromPtr__(J)Lorg/opencv/ml/DTrees;

    move-result-object v0

    return-object v0
.end method

.method private static native create_0()J
.end method

.method private static native delete(J)V
.end method

.method private static native getCVFolds_0(J)I
.end method

.method private static native getMaxCategories_0(J)I
.end method

.method private static native getMaxDepth_0(J)I
.end method

.method private static native getMinSampleCount_0(J)I
.end method

.method private static native getPriors_0(J)J
.end method

.method private static native getRegressionAccuracy_0(J)F
.end method

.method private static native getTruncatePrunedTree_0(J)Z
.end method

.method private static native getUse1SERule_0(J)Z
.end method

.method private static native getUseSurrogates_0(J)Z
.end method

.method public static load(Ljava/lang/String;)Lorg/opencv/ml/DTrees;
    .locals 2
    .param p0, "filepath"    # Ljava/lang/String;

    .line 96
    invoke-static {p0}, Lorg/opencv/ml/DTrees;->load_1(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/ml/DTrees;->__fromPtr__(J)Lorg/opencv/ml/DTrees;

    move-result-object v0

    return-object v0
.end method

.method public static load(Ljava/lang/String;Ljava/lang/String;)Lorg/opencv/ml/DTrees;
    .locals 2
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "nodeName"    # Ljava/lang/String;

    .line 82
    invoke-static {p0, p1}, Lorg/opencv/ml/DTrees;->load_0(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/ml/DTrees;->__fromPtr__(J)Lorg/opencv/ml/DTrees;

    move-result-object v0

    return-object v0
.end method

.method private static native load_0(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native load_1(Ljava/lang/String;)J
.end method

.method private static native setCVFolds_0(JI)V
.end method

.method private static native setMaxCategories_0(JI)V
.end method

.method private static native setMaxDepth_0(JI)V
.end method

.method private static native setMinSampleCount_0(JI)V
.end method

.method private static native setPriors_0(JJ)V
.end method

.method private static native setRegressionAccuracy_0(JF)V
.end method

.method private static native setTruncatePrunedTree_0(JZ)V
.end method

.method private static native setUse1SERule_0(JZ)V
.end method

.method private static native setUseSurrogates_0(JZ)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 323
    iget-wide v0, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/DTrees;->delete(J)V

    .line 324
    return-void
.end method

.method public getCVFolds()I
    .locals 2

    .line 161
    iget-wide v0, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/DTrees;->getCVFolds_0(J)I

    move-result v0

    return v0
.end method

.method public getMaxCategories()I
    .locals 2

    .line 174
    iget-wide v0, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/DTrees;->getMaxCategories_0(J)I

    move-result v0

    return v0
.end method

.method public getMaxDepth()I
    .locals 2

    .line 187
    iget-wide v0, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/DTrees;->getMaxDepth_0(J)I

    move-result v0

    return v0
.end method

.method public getMinSampleCount()I
    .locals 2

    .line 200
    iget-wide v0, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/DTrees;->getMinSampleCount_0(J)I

    move-result v0

    return v0
.end method

.method public getPriors()Lorg/opencv/core/Mat;
    .locals 3

    .line 45
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v1, v2}, Lorg/opencv/ml/DTrees;->getPriors_0(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public getRegressionAccuracy()F
    .locals 2

    .line 148
    iget-wide v0, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/DTrees;->getRegressionAccuracy_0(J)F

    move-result v0

    return v0
.end method

.method public getTruncatePrunedTree()Z
    .locals 2

    .line 109
    iget-wide v0, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/DTrees;->getTruncatePrunedTree_0(J)Z

    move-result v0

    return v0
.end method

.method public getUse1SERule()Z
    .locals 2

    .line 122
    iget-wide v0, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/DTrees;->getUse1SERule_0(J)Z

    move-result v0

    return v0
.end method

.method public getUseSurrogates()Z
    .locals 2

    .line 135
    iget-wide v0, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/ml/DTrees;->getUseSurrogates_0(J)Z

    move-result v0

    return v0
.end method

.method public setCVFolds(I)V
    .locals 2
    .param p1, "val"    # I

    .line 213
    iget-wide v0, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/DTrees;->setCVFolds_0(JI)V

    .line 214
    return-void
.end method

.method public setMaxCategories(I)V
    .locals 2
    .param p1, "val"    # I

    .line 226
    iget-wide v0, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/DTrees;->setMaxCategories_0(JI)V

    .line 227
    return-void
.end method

.method public setMaxDepth(I)V
    .locals 2
    .param p1, "val"    # I

    .line 239
    iget-wide v0, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/DTrees;->setMaxDepth_0(JI)V

    .line 240
    return-void
.end method

.method public setMinSampleCount(I)V
    .locals 2
    .param p1, "val"    # I

    .line 252
    iget-wide v0, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/DTrees;->setMinSampleCount_0(JI)V

    .line 253
    return-void
.end method

.method public setPriors(Lorg/opencv/core/Mat;)V
    .locals 4
    .param p1, "val"    # Lorg/opencv/core/Mat;

    .line 265
    iget-wide v0, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/ml/DTrees;->setPriors_0(JJ)V

    .line 266
    return-void
.end method

.method public setRegressionAccuracy(F)V
    .locals 2
    .param p1, "val"    # F

    .line 278
    iget-wide v0, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/DTrees;->setRegressionAccuracy_0(JF)V

    .line 279
    return-void
.end method

.method public setTruncatePrunedTree(Z)V
    .locals 2
    .param p1, "val"    # Z

    .line 291
    iget-wide v0, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/DTrees;->setTruncatePrunedTree_0(JZ)V

    .line 292
    return-void
.end method

.method public setUse1SERule(Z)V
    .locals 2
    .param p1, "val"    # Z

    .line 304
    iget-wide v0, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/DTrees;->setUse1SERule_0(JZ)V

    .line 305
    return-void
.end method

.method public setUseSurrogates(Z)V
    .locals 2
    .param p1, "val"    # Z

    .line 317
    iget-wide v0, p0, Lorg/opencv/ml/DTrees;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/ml/DTrees;->setUseSurrogates_0(JZ)V

    .line 318
    return-void
.end method
