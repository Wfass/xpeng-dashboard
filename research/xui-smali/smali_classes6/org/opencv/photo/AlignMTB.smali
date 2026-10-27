.class public Lorg/opencv/photo/AlignMTB;
.super Lorg/opencv/photo/AlignExposures;
.source "AlignMTB.java"


# direct methods
.method protected constructor <init>(J)V
    .locals 0
    .param p1, "addr"    # J

    .line 26
    invoke-direct {p0, p1, p2}, Lorg/opencv/photo/AlignExposures;-><init>(J)V

    return-void
.end method

.method public static __fromPtr__(J)Lorg/opencv/photo/AlignMTB;
    .locals 1
    .param p0, "addr"    # J

    .line 29
    new-instance v0, Lorg/opencv/photo/AlignMTB;

    invoke-direct {v0, p0, p1}, Lorg/opencv/photo/AlignMTB;-><init>(J)V

    return-object v0
.end method

.method private static native calculateShift_0(JJJ)[D
.end method

.method private static native computeBitmaps_0(JJJJ)V
.end method

.method private static native delete(J)V
.end method

.method private static native getCut_0(J)Z
.end method

.method private static native getExcludeRange_0(J)I
.end method

.method private static native getMaxBits_0(J)I
.end method

.method private static native process_0(JJJJJ)V
.end method

.method private static native process_1(JJJ)V
.end method

.method private static native setCut_0(JZ)V
.end method

.method private static native setExcludeRange_0(JI)V
.end method

.method private static native setMaxBits_0(JI)V
.end method

.method private static native shiftMat_0(JJJDD)V
.end method


# virtual methods
.method public calculateShift(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Lorg/opencv/core/Point;
    .locals 7
    .param p1, "img0"    # Lorg/opencv/core/Mat;
    .param p2, "img1"    # Lorg/opencv/core/Mat;

    .line 44
    new-instance v0, Lorg/opencv/core/Point;

    iget-wide v1, p0, Lorg/opencv/photo/AlignMTB;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v1 .. v6}, Lorg/opencv/photo/AlignMTB;->calculateShift_0(JJJ)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Point;-><init>([D)V

    return-object v0
.end method

.method public computeBitmaps(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "tb"    # Lorg/opencv/core/Mat;
    .param p3, "eb"    # Lorg/opencv/core/Mat;

    .line 87
    iget-wide v0, p0, Lorg/opencv/photo/AlignMTB;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/photo/AlignMTB;->computeBitmaps_0(JJJJ)V

    .line 88
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 164
    iget-wide v0, p0, Lorg/opencv/photo/AlignMTB;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/photo/AlignMTB;->delete(J)V

    .line 165
    return-void
.end method

.method public getCut()Z
    .locals 2

    .line 53
    iget-wide v0, p0, Lorg/opencv/photo/AlignMTB;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/photo/AlignMTB;->getCut_0(J)Z

    move-result v0

    return v0
.end method

.method public getExcludeRange()I
    .locals 2

    .line 62
    iget-wide v0, p0, Lorg/opencv/photo/AlignMTB;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/photo/AlignMTB;->getExcludeRange_0(J)I

    move-result v0

    return v0
.end method

.method public getMaxBits()I
    .locals 2

    .line 71
    iget-wide v0, p0, Lorg/opencv/photo/AlignMTB;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/photo/AlignMTB;->getMaxBits_0(J)I

    move-result v0

    return v0
.end method

.method public process(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;)V"
        }
    .end annotation

    .line 113
    .local p1, "src":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p2, "dst":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 114
    .local v0, "src_mat":Lorg/opencv/core/Mat;
    invoke-static {p2}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 115
    .local v1, "dst_mat":Lorg/opencv/core/Mat;
    iget-wide v2, p0, Lorg/opencv/photo/AlignMTB;->nativeObj:J

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v7}, Lorg/opencv/photo/AlignMTB;->process_1(JJJ)V

    .line 116
    return-void
.end method

.method public process(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 15
    .param p3, "times"    # Lorg/opencv/core/Mat;
    .param p4, "response"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            ")V"
        }
    .end annotation

    .line 96
    .local p1, "src":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p2, "dst":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 97
    .local v0, "src_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p2 .. p2}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 98
    .local v1, "dst_mat":Lorg/opencv/core/Mat;
    move-object v2, p0

    iget-wide v3, v2, Lorg/opencv/photo/AlignMTB;->nativeObj:J

    iget-wide v5, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p3

    iget-wide v9, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p4

    iget-wide v11, v14, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v3 .. v12}, Lorg/opencv/photo/AlignMTB;->process_0(JJJJJ)V

    .line 99
    return-void
.end method

.method public setCut(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 124
    iget-wide v0, p0, Lorg/opencv/photo/AlignMTB;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/photo/AlignMTB;->setCut_0(JZ)V

    .line 125
    return-void
.end method

.method public setExcludeRange(I)V
    .locals 2
    .param p1, "exclude_range"    # I

    .line 133
    iget-wide v0, p0, Lorg/opencv/photo/AlignMTB;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/photo/AlignMTB;->setExcludeRange_0(JI)V

    .line 134
    return-void
.end method

.method public setMaxBits(I)V
    .locals 2
    .param p1, "max_bits"    # I

    .line 142
    iget-wide v0, p0, Lorg/opencv/photo/AlignMTB;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/photo/AlignMTB;->setMaxBits_0(JI)V

    .line 143
    return-void
.end method

.method public shiftMat(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Point;)V
    .locals 10
    .param p1, "src"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "shift"    # Lorg/opencv/core/Point;

    .line 158
    iget-wide v0, p0, Lorg/opencv/photo/AlignMTB;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Point;->x:D

    iget-wide v8, p3, Lorg/opencv/core/Point;->y:D

    invoke-static/range {v0 .. v9}, Lorg/opencv/photo/AlignMTB;->shiftMat_0(JJJDD)V

    .line 159
    return-void
.end method
