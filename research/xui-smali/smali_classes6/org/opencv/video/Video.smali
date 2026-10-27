.class public Lorg/opencv/video/Video;
.super Ljava/lang/Object;
.source "Video.java"


# static fields
.field private static final CV_LKFLOW_GET_MIN_EIGENVALS:I = 0x8

.field private static final CV_LKFLOW_INITIAL_GUESSES:I = 0x4

.field public static final MOTION_AFFINE:I = 0x2

.field public static final MOTION_EUCLIDEAN:I = 0x1

.field public static final MOTION_HOMOGRAPHY:I = 0x3

.field public static final MOTION_TRANSLATION:I = 0x0

.field public static final OPTFLOW_FARNEBACK_GAUSSIAN:I = 0x100

.field public static final OPTFLOW_LK_GET_MIN_EIGENVALS:I = 0x8

.field public static final OPTFLOW_USE_INITIAL_FLOW:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CamShift(Lorg/opencv/core/Mat;Lorg/opencv/core/Rect;Lorg/opencv/core/TermCriteria;)Lorg/opencv/core/RotatedRect;
    .locals 13
    .param p0, "probImage"    # Lorg/opencv/core/Mat;
    .param p1, "window"    # Lorg/opencv/core/Rect;
    .param p2, "criteria"    # Lorg/opencv/core/TermCriteria;

    .line 202
    const/4 v0, 0x4

    new-array v0, v0, [D

    .line 203
    .local v0, "window_out":[D
    new-instance v12, Lorg/opencv/core/RotatedRect;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget v3, p1, Lorg/opencv/core/Rect;->x:I

    iget v4, p1, Lorg/opencv/core/Rect;->y:I

    iget v5, p1, Lorg/opencv/core/Rect;->width:I

    iget v6, p1, Lorg/opencv/core/Rect;->height:I

    iget v8, p2, Lorg/opencv/core/TermCriteria;->type:I

    iget v9, p2, Lorg/opencv/core/TermCriteria;->maxCount:I

    iget-wide v10, p2, Lorg/opencv/core/TermCriteria;->epsilon:D

    move-object v7, v0

    invoke-static/range {v1 .. v11}, Lorg/opencv/video/Video;->CamShift_0(JIIII[DIID)[D

    move-result-object v1

    invoke-direct {v12, v1}, Lorg/opencv/core/RotatedRect;-><init>([D)V

    move-object v1, v12

    .line 204
    .local v1, "retVal":Lorg/opencv/core/RotatedRect;
    if-eqz p1, :cond_0

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    double-to-int v2, v2

    iput v2, p1, Lorg/opencv/core/Rect;->x:I

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    double-to-int v2, v2

    iput v2, p1, Lorg/opencv/core/Rect;->y:I

    const/4 v2, 0x2

    aget-wide v2, v0, v2

    double-to-int v2, v2

    iput v2, p1, Lorg/opencv/core/Rect;->width:I

    const/4 v2, 0x3

    aget-wide v2, v0, v2

    double-to-int v2, v2

    iput v2, p1, Lorg/opencv/core/Rect;->height:I

    .line 205
    :cond_0
    return-object v1
.end method

.method private static native CamShift_0(JIIII[DIID)[D
.end method

.method public static buildOpticalFlowPyramid(Lorg/opencv/core/Mat;Ljava/util/List;Lorg/opencv/core/Size;I)I
    .locals 10
    .param p0, "img"    # Lorg/opencv/core/Mat;
    .param p2, "winSize"    # Lorg/opencv/core/Size;
    .param p3, "maxLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "I)I"
        }
    .end annotation

    .line 444
    .local p1, "pyramid":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 445
    .local v0, "pyramid_mat":Lorg/opencv/core/Mat;
    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p2, Lorg/opencv/core/Size;->width:D

    iget-wide v7, p2, Lorg/opencv/core/Size;->height:D

    move v9, p3

    invoke-static/range {v1 .. v9}, Lorg/opencv/video/Video;->buildOpticalFlowPyramid_4(JJDDI)I

    move-result v1

    .line 446
    .local v1, "retVal":I
    invoke-static {v0, p1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 447
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 448
    return v1
.end method

.method public static buildOpticalFlowPyramid(Lorg/opencv/core/Mat;Ljava/util/List;Lorg/opencv/core/Size;IZ)I
    .locals 11
    .param p0, "img"    # Lorg/opencv/core/Mat;
    .param p2, "winSize"    # Lorg/opencv/core/Size;
    .param p3, "maxLevel"    # I
    .param p4, "withDerivatives"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "IZ)I"
        }
    .end annotation

    .line 424
    .local p1, "pyramid":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 425
    .local v0, "pyramid_mat":Lorg/opencv/core/Mat;
    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p2, Lorg/opencv/core/Size;->width:D

    iget-wide v7, p2, Lorg/opencv/core/Size;->height:D

    move v9, p3

    move v10, p4

    invoke-static/range {v1 .. v10}, Lorg/opencv/video/Video;->buildOpticalFlowPyramid_3(JJDDIZ)I

    move-result v1

    .line 426
    .local v1, "retVal":I
    invoke-static {v0, p1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 427
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 428
    return v1
.end method

.method public static buildOpticalFlowPyramid(Lorg/opencv/core/Mat;Ljava/util/List;Lorg/opencv/core/Size;IZI)I
    .locals 14
    .param p0, "img"    # Lorg/opencv/core/Mat;
    .param p2, "winSize"    # Lorg/opencv/core/Size;
    .param p3, "maxLevel"    # I
    .param p4, "withDerivatives"    # Z
    .param p5, "pyrBorder"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "IZI)I"
        }
    .end annotation

    .local p1, "pyramid":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p2

    .line 403
    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    .line 404
    .local v1, "pyramid_mat":Lorg/opencv/core/Mat;
    move-object v2, p0

    iget-wide v3, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v9, v0, Lorg/opencv/core/Size;->height:D

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-static/range {v3 .. v13}, Lorg/opencv/video/Video;->buildOpticalFlowPyramid_2(JJDDIZI)I

    move-result v3

    .line 405
    .local v3, "retVal":I
    move-object v4, p1

    invoke-static {v1, v4}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 406
    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    .line 407
    return v3
.end method

.method public static buildOpticalFlowPyramid(Lorg/opencv/core/Mat;Ljava/util/List;Lorg/opencv/core/Size;IZII)I
    .locals 15
    .param p0, "img"    # Lorg/opencv/core/Mat;
    .param p2, "winSize"    # Lorg/opencv/core/Size;
    .param p3, "maxLevel"    # I
    .param p4, "withDerivatives"    # Z
    .param p5, "pyrBorder"    # I
    .param p6, "derivBorder"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "IZII)I"
        }
    .end annotation

    .local p1, "pyramid":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p2

    .line 381
    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    .line 382
    .local v1, "pyramid_mat":Lorg/opencv/core/Mat;
    move-object v2, p0

    iget-wide v3, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v9, v0, Lorg/opencv/core/Size;->height:D

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    invoke-static/range {v3 .. v14}, Lorg/opencv/video/Video;->buildOpticalFlowPyramid_1(JJDDIZII)I

    move-result v3

    .line 383
    .local v3, "retVal":I
    move-object/from16 v4, p1

    invoke-static {v1, v4}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 384
    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    .line 385
    return v3
.end method

.method public static buildOpticalFlowPyramid(Lorg/opencv/core/Mat;Ljava/util/List;Lorg/opencv/core/Size;IZIIZ)I
    .locals 16
    .param p0, "img"    # Lorg/opencv/core/Mat;
    .param p2, "winSize"    # Lorg/opencv/core/Size;
    .param p3, "maxLevel"    # I
    .param p4, "withDerivatives"    # Z
    .param p5, "pyrBorder"    # I
    .param p6, "derivBorder"    # I
    .param p7, "tryReuseInputImage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "IZIIZ)I"
        }
    .end annotation

    .local p1, "pyramid":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p2

    .line 358
    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    .line 359
    .local v1, "pyramid_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p0

    iget-wide v3, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v9, v0, Lorg/opencv/core/Size;->height:D

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    invoke-static/range {v3 .. v15}, Lorg/opencv/video/Video;->buildOpticalFlowPyramid_0(JJDDIZIIZ)I

    move-result v3

    .line 360
    .local v3, "retVal":I
    move-object/from16 v4, p1

    invoke-static {v1, v4}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 361
    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    .line 362
    return v3
.end method

.method private static native buildOpticalFlowPyramid_0(JJDDIZIIZ)I
.end method

.method private static native buildOpticalFlowPyramid_1(JJDDIZII)I
.end method

.method private static native buildOpticalFlowPyramid_2(JJDDIZI)I
.end method

.method private static native buildOpticalFlowPyramid_3(JJDDIZ)I
.end method

.method private static native buildOpticalFlowPyramid_4(JJDDI)I
.end method

.method public static calcOpticalFlowFarneback(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DIIIIDI)V
    .locals 16
    .param p0, "prev"    # Lorg/opencv/core/Mat;
    .param p1, "next"    # Lorg/opencv/core/Mat;
    .param p2, "flow"    # Lorg/opencv/core/Mat;
    .param p3, "pyr_scale"    # D
    .param p5, "levels"    # I
    .param p6, "winsize"    # I
    .param p7, "iterations"    # I
    .param p8, "poly_n"    # I
    .param p9, "poly_sigma"    # D
    .param p11, "flags"    # I

    .line 540
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v3, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v5, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v7, p3

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-wide/from16 v13, p9

    move/from16 v15, p11

    invoke-static/range {v1 .. v15}, Lorg/opencv/video/Video;->calcOpticalFlowFarneback_0(JJJDIIIIDI)V

    .line 541
    return-void
.end method

.method private static native calcOpticalFlowFarneback_0(JJJDIIIIDI)V
.end method

.method public static calcOpticalFlowPyrLK(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfByte;Lorg/opencv/core/MatOfFloat;)V
    .locals 19
    .param p0, "prevImg"    # Lorg/opencv/core/Mat;
    .param p1, "nextImg"    # Lorg/opencv/core/Mat;
    .param p2, "prevPts"    # Lorg/opencv/core/MatOfPoint2f;
    .param p3, "nextPts"    # Lorg/opencv/core/MatOfPoint2f;
    .param p4, "status"    # Lorg/opencv/core/MatOfByte;
    .param p5, "err"    # Lorg/opencv/core/MatOfFloat;

    .line 946
    move-object/from16 v0, p2

    .line 947
    .local v0, "prevPts_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p3

    .line 948
    .local v1, "nextPts_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p4

    .line 949
    .local v2, "status_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p5

    .line 950
    .local v3, "err_mat":Lorg/opencv/core/Mat;
    move-object/from16 v4, p0

    iget-wide v5, v4, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v11, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v13, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    iget-wide v0, v3, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v0    # "prevPts_mat":Lorg/opencv/core/Mat;
    .end local v1    # "nextPts_mat":Lorg/opencv/core/Mat;
    .local v17, "prevPts_mat":Lorg/opencv/core/Mat;
    .local v18, "nextPts_mat":Lorg/opencv/core/Mat;
    move-wide v15, v0

    invoke-static/range {v5 .. v16}, Lorg/opencv/video/Video;->calcOpticalFlowPyrLK_5(JJJJJJ)V

    .line 951
    return-void
.end method

.method public static calcOpticalFlowPyrLK(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfByte;Lorg/opencv/core/MatOfFloat;Lorg/opencv/core/Size;)V
    .locals 30
    .param p0, "prevImg"    # Lorg/opencv/core/Mat;
    .param p1, "nextImg"    # Lorg/opencv/core/Mat;
    .param p2, "prevPts"    # Lorg/opencv/core/MatOfPoint2f;
    .param p3, "nextPts"    # Lorg/opencv/core/MatOfPoint2f;
    .param p4, "status"    # Lorg/opencv/core/MatOfByte;
    .param p5, "err"    # Lorg/opencv/core/MatOfFloat;
    .param p6, "winSize"    # Lorg/opencv/core/Size;

    .line 881
    move-object/from16 v0, p6

    move-object/from16 v1, p2

    .line 882
    .local v1, "prevPts_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p3

    .line 883
    .local v2, "nextPts_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p4

    .line 884
    .local v3, "status_mat":Lorg/opencv/core/Mat;
    move-object/from16 v4, p5

    .line 885
    .local v4, "err_mat":Lorg/opencv/core/Mat;
    move-object/from16 v5, p0

    iget-wide v6, v5, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v8, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v12, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    iget-wide v1, v3, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v1    # "prevPts_mat":Lorg/opencv/core/Mat;
    .end local v2    # "nextPts_mat":Lorg/opencv/core/Mat;
    .local v22, "prevPts_mat":Lorg/opencv/core/Mat;
    .local v23, "nextPts_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v24, v1

    iget-wide v1, v4, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    iget-wide v3, v0, Lorg/opencv/core/Size;->width:D

    .end local v3    # "status_mat":Lorg/opencv/core/Mat;
    .end local v4    # "err_mat":Lorg/opencv/core/Mat;
    .local v26, "status_mat":Lorg/opencv/core/Mat;
    .local v27, "err_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v28, v3

    iget-wide v3, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v14, v24

    move-wide/from16 v16, v1

    move-wide/from16 v18, v28

    move-wide/from16 v20, v3

    invoke-static/range {v6 .. v21}, Lorg/opencv/video/Video;->calcOpticalFlowPyrLK_4(JJJJJJDD)V

    .line 886
    return-void
.end method

.method public static calcOpticalFlowPyrLK(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfByte;Lorg/opencv/core/MatOfFloat;Lorg/opencv/core/Size;I)V
    .locals 31
    .param p0, "prevImg"    # Lorg/opencv/core/Mat;
    .param p1, "nextImg"    # Lorg/opencv/core/Mat;
    .param p2, "prevPts"    # Lorg/opencv/core/MatOfPoint2f;
    .param p3, "nextPts"    # Lorg/opencv/core/MatOfPoint2f;
    .param p4, "status"    # Lorg/opencv/core/MatOfByte;
    .param p5, "err"    # Lorg/opencv/core/MatOfFloat;
    .param p6, "winSize"    # Lorg/opencv/core/Size;
    .param p7, "maxLevel"    # I

    move-object/from16 v0, p6

    .line 815
    move-object/from16 v1, p2

    .line 816
    .local v1, "prevPts_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p3

    .line 817
    .local v2, "nextPts_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p4

    .line 818
    .local v3, "status_mat":Lorg/opencv/core/Mat;
    move-object/from16 v4, p5

    .line 819
    .local v4, "err_mat":Lorg/opencv/core/Mat;
    move-object/from16 v5, p0

    iget-wide v6, v5, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v8, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v12, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v23, v1

    move-object/from16 v24, v2

    iget-wide v1, v3, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v1    # "prevPts_mat":Lorg/opencv/core/Mat;
    .end local v2    # "nextPts_mat":Lorg/opencv/core/Mat;
    .local v23, "prevPts_mat":Lorg/opencv/core/Mat;
    .local v24, "nextPts_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v25, v1

    iget-wide v1, v4, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    iget-wide v3, v0, Lorg/opencv/core/Size;->width:D

    .end local v3    # "status_mat":Lorg/opencv/core/Mat;
    .end local v4    # "err_mat":Lorg/opencv/core/Mat;
    .local v27, "status_mat":Lorg/opencv/core/Mat;
    .local v28, "err_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v29, v3

    iget-wide v3, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v14, v25

    move-wide/from16 v16, v1

    move-wide/from16 v18, v29

    move-wide/from16 v20, v3

    move/from16 v22, p7

    invoke-static/range {v6 .. v22}, Lorg/opencv/video/Video;->calcOpticalFlowPyrLK_3(JJJJJJDDI)V

    .line 820
    return-void
.end method

.method public static calcOpticalFlowPyrLK(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfByte;Lorg/opencv/core/MatOfFloat;Lorg/opencv/core/Size;ILorg/opencv/core/TermCriteria;)V
    .locals 38
    .param p0, "prevImg"    # Lorg/opencv/core/Mat;
    .param p1, "nextImg"    # Lorg/opencv/core/Mat;
    .param p2, "prevPts"    # Lorg/opencv/core/MatOfPoint2f;
    .param p3, "nextPts"    # Lorg/opencv/core/MatOfPoint2f;
    .param p4, "status"    # Lorg/opencv/core/MatOfByte;
    .param p5, "err"    # Lorg/opencv/core/MatOfFloat;
    .param p6, "winSize"    # Lorg/opencv/core/Size;
    .param p7, "maxLevel"    # I
    .param p8, "criteria"    # Lorg/opencv/core/TermCriteria;

    move-object/from16 v0, p6

    .line 748
    move-object/from16 v1, p8

    move-object/from16 v2, p2

    .line 749
    .local v2, "prevPts_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p3

    .line 750
    .local v3, "nextPts_mat":Lorg/opencv/core/Mat;
    move-object/from16 v4, p4

    .line 751
    .local v4, "status_mat":Lorg/opencv/core/Mat;
    move-object/from16 v5, p5

    .line 752
    .local v5, "err_mat":Lorg/opencv/core/Mat;
    move-object/from16 v6, p0

    iget-wide v7, v6, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v9, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v11, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v13, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v2    # "prevPts_mat":Lorg/opencv/core/Mat;
    .end local v3    # "nextPts_mat":Lorg/opencv/core/Mat;
    .local v28, "prevPts_mat":Lorg/opencv/core/Mat;
    .local v29, "nextPts_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v30, v2

    iget-wide v2, v5, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v32, v4

    move-object/from16 v33, v5

    iget-wide v4, v0, Lorg/opencv/core/Size;->width:D

    .end local v4    # "status_mat":Lorg/opencv/core/Mat;
    .end local v5    # "err_mat":Lorg/opencv/core/Mat;
    .local v32, "status_mat":Lorg/opencv/core/Mat;
    .local v33, "err_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v34, v4

    iget-wide v4, v0, Lorg/opencv/core/Size;->height:D

    iget v0, v1, Lorg/opencv/core/TermCriteria;->type:I

    iget v6, v1, Lorg/opencv/core/TermCriteria;->maxCount:I

    move-wide/from16 v36, v4

    iget-wide v4, v1, Lorg/opencv/core/TermCriteria;->epsilon:D

    move-wide/from16 v15, v30

    move-wide/from16 v17, v2

    move-wide/from16 v19, v34

    move-wide/from16 v21, v36

    move/from16 v23, p7

    move/from16 v24, v0

    move/from16 v25, v6

    move-wide/from16 v26, v4

    invoke-static/range {v7 .. v27}, Lorg/opencv/video/Video;->calcOpticalFlowPyrLK_2(JJJJJJDDIIID)V

    .line 753
    return-void
.end method

.method public static calcOpticalFlowPyrLK(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfByte;Lorg/opencv/core/MatOfFloat;Lorg/opencv/core/Size;ILorg/opencv/core/TermCriteria;I)V
    .locals 39
    .param p0, "prevImg"    # Lorg/opencv/core/Mat;
    .param p1, "nextImg"    # Lorg/opencv/core/Mat;
    .param p2, "prevPts"    # Lorg/opencv/core/MatOfPoint2f;
    .param p3, "nextPts"    # Lorg/opencv/core/MatOfPoint2f;
    .param p4, "status"    # Lorg/opencv/core/MatOfByte;
    .param p5, "err"    # Lorg/opencv/core/MatOfFloat;
    .param p6, "winSize"    # Lorg/opencv/core/Size;
    .param p7, "maxLevel"    # I
    .param p8, "criteria"    # Lorg/opencv/core/TermCriteria;
    .param p9, "flags"    # I

    move-object/from16 v0, p6

    move-object/from16 v1, p8

    .line 680
    move-object/from16 v2, p2

    .line 681
    .local v2, "prevPts_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p3

    .line 682
    .local v3, "nextPts_mat":Lorg/opencv/core/Mat;
    move-object/from16 v4, p4

    .line 683
    .local v4, "status_mat":Lorg/opencv/core/Mat;
    move-object/from16 v5, p5

    .line 684
    .local v5, "err_mat":Lorg/opencv/core/Mat;
    move-object/from16 v6, p0

    iget-wide v7, v6, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v9, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v11, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v13, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v2    # "prevPts_mat":Lorg/opencv/core/Mat;
    .end local v3    # "nextPts_mat":Lorg/opencv/core/Mat;
    .local v29, "prevPts_mat":Lorg/opencv/core/Mat;
    .local v30, "nextPts_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v31, v2

    iget-wide v2, v5, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    iget-wide v4, v0, Lorg/opencv/core/Size;->width:D

    .end local v4    # "status_mat":Lorg/opencv/core/Mat;
    .end local v5    # "err_mat":Lorg/opencv/core/Mat;
    .local v33, "status_mat":Lorg/opencv/core/Mat;
    .local v34, "err_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v35, v4

    iget-wide v4, v0, Lorg/opencv/core/Size;->height:D

    iget v0, v1, Lorg/opencv/core/TermCriteria;->type:I

    iget v6, v1, Lorg/opencv/core/TermCriteria;->maxCount:I

    move-wide/from16 v37, v4

    iget-wide v4, v1, Lorg/opencv/core/TermCriteria;->epsilon:D

    move-wide/from16 v15, v31

    move-wide/from16 v17, v2

    move-wide/from16 v19, v35

    move-wide/from16 v21, v37

    move/from16 v23, p7

    move/from16 v24, v0

    move/from16 v25, v6

    move-wide/from16 v26, v4

    move/from16 v28, p9

    invoke-static/range {v7 .. v28}, Lorg/opencv/video/Video;->calcOpticalFlowPyrLK_1(JJJJJJDDIIIDI)V

    .line 685
    return-void
.end method

.method public static calcOpticalFlowPyrLK(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfByte;Lorg/opencv/core/MatOfFloat;Lorg/opencv/core/Size;ILorg/opencv/core/TermCriteria;ID)V
    .locals 41
    .param p0, "prevImg"    # Lorg/opencv/core/Mat;
    .param p1, "nextImg"    # Lorg/opencv/core/Mat;
    .param p2, "prevPts"    # Lorg/opencv/core/MatOfPoint2f;
    .param p3, "nextPts"    # Lorg/opencv/core/MatOfPoint2f;
    .param p4, "status"    # Lorg/opencv/core/MatOfByte;
    .param p5, "err"    # Lorg/opencv/core/MatOfFloat;
    .param p6, "winSize"    # Lorg/opencv/core/Size;
    .param p7, "maxLevel"    # I
    .param p8, "criteria"    # Lorg/opencv/core/TermCriteria;
    .param p9, "flags"    # I
    .param p10, "minEigThreshold"    # D

    move-object/from16 v0, p6

    move-object/from16 v1, p8

    .line 611
    move-object/from16 v2, p2

    .line 612
    .local v2, "prevPts_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p3

    .line 613
    .local v3, "nextPts_mat":Lorg/opencv/core/Mat;
    move-object/from16 v4, p4

    .line 614
    .local v4, "status_mat":Lorg/opencv/core/Mat;
    move-object/from16 v5, p5

    .line 615
    .local v5, "err_mat":Lorg/opencv/core/Mat;
    move-object/from16 v6, p0

    iget-wide v7, v6, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v9, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v11, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v13, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v2    # "prevPts_mat":Lorg/opencv/core/Mat;
    .end local v3    # "nextPts_mat":Lorg/opencv/core/Mat;
    .local v31, "prevPts_mat":Lorg/opencv/core/Mat;
    .local v32, "nextPts_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v33, v2

    iget-wide v2, v5, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v35, v4

    move-object/from16 v36, v5

    iget-wide v4, v0, Lorg/opencv/core/Size;->width:D

    .end local v4    # "status_mat":Lorg/opencv/core/Mat;
    .end local v5    # "err_mat":Lorg/opencv/core/Mat;
    .local v35, "status_mat":Lorg/opencv/core/Mat;
    .local v36, "err_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v37, v4

    iget-wide v4, v0, Lorg/opencv/core/Size;->height:D

    iget v0, v1, Lorg/opencv/core/TermCriteria;->type:I

    iget v6, v1, Lorg/opencv/core/TermCriteria;->maxCount:I

    move-wide/from16 v39, v4

    iget-wide v4, v1, Lorg/opencv/core/TermCriteria;->epsilon:D

    move-wide/from16 v15, v33

    move-wide/from16 v17, v2

    move-wide/from16 v19, v37

    move-wide/from16 v21, v39

    move/from16 v23, p7

    move/from16 v24, v0

    move/from16 v25, v6

    move-wide/from16 v26, v4

    move/from16 v28, p9

    move-wide/from16 v29, p10

    invoke-static/range {v7 .. v30}, Lorg/opencv/video/Video;->calcOpticalFlowPyrLK_0(JJJJJJDDIIIDID)V

    .line 616
    return-void
.end method

.method private static native calcOpticalFlowPyrLK_0(JJJJJJDDIIIDID)V
.end method

.method private static native calcOpticalFlowPyrLK_1(JJJJJJDDIIIDI)V
.end method

.method private static native calcOpticalFlowPyrLK_2(JJJJJJDDIIID)V
.end method

.method private static native calcOpticalFlowPyrLK_3(JJJJJJDDI)V
.end method

.method private static native calcOpticalFlowPyrLK_4(JJJJJJDD)V
.end method

.method private static native calcOpticalFlowPyrLK_5(JJJJJJ)V
.end method

.method public static computeECC(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)D
    .locals 4
    .param p0, "templateImage"    # Lorg/opencv/core/Mat;
    .param p1, "inputImage"    # Lorg/opencv/core/Mat;

    .line 261
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/video/Video;->computeECC_1(JJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public static computeECC(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)D
    .locals 6
    .param p0, "templateImage"    # Lorg/opencv/core/Mat;
    .param p1, "inputImage"    # Lorg/opencv/core/Mat;
    .param p2, "inputMask"    # Lorg/opencv/core/Mat;

    .line 246
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/video/Video;->computeECC_0(JJJ)D

    move-result-wide v0

    return-wide v0
.end method

.method private static native computeECC_0(JJJ)D
.end method

.method private static native computeECC_1(JJ)D
.end method

.method public static createBackgroundSubtractorKNN()Lorg/opencv/video/BackgroundSubtractorKNN;
    .locals 2

    .line 110
    invoke-static {}, Lorg/opencv/video/Video;->createBackgroundSubtractorKNN_3()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/video/BackgroundSubtractorKNN;->__fromPtr__(J)Lorg/opencv/video/BackgroundSubtractorKNN;

    move-result-object v0

    return-object v0
.end method

.method public static createBackgroundSubtractorKNN(I)Lorg/opencv/video/BackgroundSubtractorKNN;
    .locals 2
    .param p0, "history"    # I

    .line 99
    invoke-static {p0}, Lorg/opencv/video/Video;->createBackgroundSubtractorKNN_2(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/video/BackgroundSubtractorKNN;->__fromPtr__(J)Lorg/opencv/video/BackgroundSubtractorKNN;

    move-result-object v0

    return-object v0
.end method

.method public static createBackgroundSubtractorKNN(ID)Lorg/opencv/video/BackgroundSubtractorKNN;
    .locals 2
    .param p0, "history"    # I
    .param p1, "dist2Threshold"    # D

    .line 87
    invoke-static {p0, p1, p2}, Lorg/opencv/video/Video;->createBackgroundSubtractorKNN_1(ID)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/video/BackgroundSubtractorKNN;->__fromPtr__(J)Lorg/opencv/video/BackgroundSubtractorKNN;

    move-result-object v0

    return-object v0
.end method

.method public static createBackgroundSubtractorKNN(IDZ)Lorg/opencv/video/BackgroundSubtractorKNN;
    .locals 2
    .param p0, "history"    # I
    .param p1, "dist2Threshold"    # D
    .param p3, "detectShadows"    # Z

    .line 74
    invoke-static {p0, p1, p2, p3}, Lorg/opencv/video/Video;->createBackgroundSubtractorKNN_0(IDZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/video/BackgroundSubtractorKNN;->__fromPtr__(J)Lorg/opencv/video/BackgroundSubtractorKNN;

    move-result-object v0

    return-object v0
.end method

.method private static native createBackgroundSubtractorKNN_0(IDZ)J
.end method

.method private static native createBackgroundSubtractorKNN_1(ID)J
.end method

.method private static native createBackgroundSubtractorKNN_2(I)J
.end method

.method private static native createBackgroundSubtractorKNN_3()J
.end method

.method public static createBackgroundSubtractorMOG2()Lorg/opencv/video/BackgroundSubtractorMOG2;
    .locals 2

    .line 169
    invoke-static {}, Lorg/opencv/video/Video;->createBackgroundSubtractorMOG2_3()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/video/BackgroundSubtractorMOG2;->__fromPtr__(J)Lorg/opencv/video/BackgroundSubtractorMOG2;

    move-result-object v0

    return-object v0
.end method

.method public static createBackgroundSubtractorMOG2(I)Lorg/opencv/video/BackgroundSubtractorMOG2;
    .locals 2
    .param p0, "history"    # I

    .line 157
    invoke-static {p0}, Lorg/opencv/video/Video;->createBackgroundSubtractorMOG2_2(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/video/BackgroundSubtractorMOG2;->__fromPtr__(J)Lorg/opencv/video/BackgroundSubtractorMOG2;

    move-result-object v0

    return-object v0
.end method

.method public static createBackgroundSubtractorMOG2(ID)Lorg/opencv/video/BackgroundSubtractorMOG2;
    .locals 2
    .param p0, "history"    # I
    .param p1, "varThreshold"    # D

    .line 144
    invoke-static {p0, p1, p2}, Lorg/opencv/video/Video;->createBackgroundSubtractorMOG2_1(ID)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/video/BackgroundSubtractorMOG2;->__fromPtr__(J)Lorg/opencv/video/BackgroundSubtractorMOG2;

    move-result-object v0

    return-object v0
.end method

.method public static createBackgroundSubtractorMOG2(IDZ)Lorg/opencv/video/BackgroundSubtractorMOG2;
    .locals 2
    .param p0, "history"    # I
    .param p1, "varThreshold"    # D
    .param p3, "detectShadows"    # Z

    .line 130
    invoke-static {p0, p1, p2, p3}, Lorg/opencv/video/Video;->createBackgroundSubtractorMOG2_0(IDZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/video/BackgroundSubtractorMOG2;->__fromPtr__(J)Lorg/opencv/video/BackgroundSubtractorMOG2;

    move-result-object v0

    return-object v0
.end method

.method private static native createBackgroundSubtractorMOG2_0(IDZ)J
.end method

.method private static native createBackgroundSubtractorMOG2_1(ID)J
.end method

.method private static native createBackgroundSubtractorMOG2_2(I)J
.end method

.method private static native createBackgroundSubtractorMOG2_3()J
.end method

.method public static findTransformECC(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ILorg/opencv/core/TermCriteria;Lorg/opencv/core/Mat;I)D
    .locals 17
    .param p0, "templateImage"    # Lorg/opencv/core/Mat;
    .param p1, "inputImage"    # Lorg/opencv/core/Mat;
    .param p2, "warpMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "motionType"    # I
    .param p4, "criteria"    # Lorg/opencv/core/TermCriteria;
    .param p5, "inputMask"    # Lorg/opencv/core/Mat;
    .param p6, "gaussFiltSize"    # I

    move-object/from16 v0, p4

    .line 333
    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v4, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v6, v13, Lorg/opencv/core/Mat;->nativeObj:J

    iget v9, v0, Lorg/opencv/core/TermCriteria;->type:I

    iget v10, v0, Lorg/opencv/core/TermCriteria;->maxCount:I

    iget-wide v11, v0, Lorg/opencv/core/TermCriteria;->epsilon:D

    move-object/from16 v14, p5

    iget-wide v0, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v8, p3

    move-wide v13, v0

    move/from16 v15, p6

    invoke-static/range {v2 .. v15}, Lorg/opencv/video/Video;->findTransformECC_0(JJJIIIDJI)D

    move-result-wide v0

    return-wide v0
.end method

.method private static native findTransformECC_0(JJJIIIDJI)D
.end method

.method public static meanShift(Lorg/opencv/core/Mat;Lorg/opencv/core/Rect;Lorg/opencv/core/TermCriteria;)I
    .locals 12
    .param p0, "probImage"    # Lorg/opencv/core/Mat;
    .param p1, "window"    # Lorg/opencv/core/Rect;
    .param p2, "criteria"    # Lorg/opencv/core/TermCriteria;

    .line 477
    const/4 v0, 0x4

    new-array v0, v0, [D

    .line 478
    .local v0, "window_out":[D
    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget v3, p1, Lorg/opencv/core/Rect;->x:I

    iget v4, p1, Lorg/opencv/core/Rect;->y:I

    iget v5, p1, Lorg/opencv/core/Rect;->width:I

    iget v6, p1, Lorg/opencv/core/Rect;->height:I

    iget v8, p2, Lorg/opencv/core/TermCriteria;->type:I

    iget v9, p2, Lorg/opencv/core/TermCriteria;->maxCount:I

    iget-wide v10, p2, Lorg/opencv/core/TermCriteria;->epsilon:D

    move-object v7, v0

    invoke-static/range {v1 .. v11}, Lorg/opencv/video/Video;->meanShift_0(JIIII[DIID)I

    move-result v1

    .line 479
    .local v1, "retVal":I
    if-eqz p1, :cond_0

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    double-to-int v2, v2

    iput v2, p1, Lorg/opencv/core/Rect;->x:I

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    double-to-int v2, v2

    iput v2, p1, Lorg/opencv/core/Rect;->y:I

    const/4 v2, 0x2

    aget-wide v2, v0, v2

    double-to-int v2, v2

    iput v2, p1, Lorg/opencv/core/Rect;->width:I

    const/4 v2, 0x3

    aget-wide v2, v0, v2

    double-to-int v2, v2

    iput v2, p1, Lorg/opencv/core/Rect;->height:I

    .line 480
    :cond_0
    return v1
.end method

.method private static native meanShift_0(JIIII[DIID)I
.end method

.method public static readOpticalFlow(Ljava/lang/String;)Lorg/opencv/core/Mat;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .line 55
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-static {p0}, Lorg/opencv/video/Video;->readOpticalFlow_0(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method private static native readOpticalFlow_0(Ljava/lang/String;)J
.end method

.method public static writeOpticalFlow(Ljava/lang/String;Lorg/opencv/core/Mat;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "flow"    # Lorg/opencv/core/Mat;

    .line 225
    iget-wide v0, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {p0, v0, v1}, Lorg/opencv/video/Video;->writeOpticalFlow_0(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method private static native writeOpticalFlow_0(Ljava/lang/String;J)Z
.end method
