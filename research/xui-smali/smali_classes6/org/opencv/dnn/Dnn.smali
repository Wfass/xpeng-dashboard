.class public Lorg/opencv/dnn/Dnn;
.super Ljava/lang/Object;
.source "Dnn.java"


# static fields
.field public static final DNN_BACKEND_CUDA:I = 0x5

.field public static final DNN_BACKEND_DEFAULT:I = 0x0

.field public static final DNN_BACKEND_HALIDE:I = 0x1

.field public static final DNN_BACKEND_INFERENCE_ENGINE:I = 0x2

.field public static final DNN_BACKEND_OPENCV:I = 0x3

.field public static final DNN_BACKEND_VKCOM:I = 0x4

.field public static final DNN_TARGET_CPU:I = 0x0

.field public static final DNN_TARGET_CUDA:I = 0x6

.field public static final DNN_TARGET_CUDA_FP16:I = 0x7

.field public static final DNN_TARGET_FPGA:I = 0x5

.field public static final DNN_TARGET_MYRIAD:I = 0x3

.field public static final DNN_TARGET_OPENCL:I = 0x1

.field public static final DNN_TARGET_OPENCL_FP16:I = 0x2

.field public static final DNN_TARGET_VULKAN:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static NMSBoxes(Lorg/opencv/core/MatOfRect2d;Lorg/opencv/core/MatOfFloat;FFLorg/opencv/core/MatOfInt;)V
    .locals 11
    .param p0, "bboxes"    # Lorg/opencv/core/MatOfRect2d;
    .param p1, "scores"    # Lorg/opencv/core/MatOfFloat;
    .param p2, "score_threshold"    # F
    .param p3, "nms_threshold"    # F
    .param p4, "indices"    # Lorg/opencv/core/MatOfInt;

    .line 905
    move-object v0, p0

    .line 906
    .local v0, "bboxes_mat":Lorg/opencv/core/Mat;
    move-object v1, p1

    .line 907
    .local v1, "scores_mat":Lorg/opencv/core/Mat;
    move-object v2, p4

    .line 908
    .local v2, "indices_mat":Lorg/opencv/core/Mat;
    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move v7, p2

    move v8, p3

    invoke-static/range {v3 .. v10}, Lorg/opencv/dnn/Dnn;->NMSBoxes_2(JJFFJ)V

    .line 909
    return-void
.end method

.method public static NMSBoxes(Lorg/opencv/core/MatOfRect2d;Lorg/opencv/core/MatOfFloat;FFLorg/opencv/core/MatOfInt;F)V
    .locals 12
    .param p0, "bboxes"    # Lorg/opencv/core/MatOfRect2d;
    .param p1, "scores"    # Lorg/opencv/core/MatOfFloat;
    .param p2, "score_threshold"    # F
    .param p3, "nms_threshold"    # F
    .param p4, "indices"    # Lorg/opencv/core/MatOfInt;
    .param p5, "eta"    # F

    .line 889
    move-object v0, p0

    .line 890
    .local v0, "bboxes_mat":Lorg/opencv/core/Mat;
    move-object v1, p1

    .line 891
    .local v1, "scores_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p4

    .line 892
    .local v2, "indices_mat":Lorg/opencv/core/Mat;
    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move v7, p2

    move v8, p3

    move/from16 v11, p5

    invoke-static/range {v3 .. v11}, Lorg/opencv/dnn/Dnn;->NMSBoxes_1(JJFFJF)V

    .line 893
    return-void
.end method

.method public static NMSBoxes(Lorg/opencv/core/MatOfRect2d;Lorg/opencv/core/MatOfFloat;FFLorg/opencv/core/MatOfInt;FI)V
    .locals 13
    .param p0, "bboxes"    # Lorg/opencv/core/MatOfRect2d;
    .param p1, "scores"    # Lorg/opencv/core/MatOfFloat;
    .param p2, "score_threshold"    # F
    .param p3, "nms_threshold"    # F
    .param p4, "indices"    # Lorg/opencv/core/MatOfInt;
    .param p5, "eta"    # F
    .param p6, "top_k"    # I

    .line 872
    move-object v0, p0

    .line 873
    .local v0, "bboxes_mat":Lorg/opencv/core/Mat;
    move-object v1, p1

    .line 874
    .local v1, "scores_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p4

    .line 875
    .local v2, "indices_mat":Lorg/opencv/core/Mat;
    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move v7, p2

    move/from16 v8, p3

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-static/range {v3 .. v12}, Lorg/opencv/dnn/Dnn;->NMSBoxes_0(JJFFJFI)V

    .line 876
    return-void
.end method

.method public static NMSBoxesRotated(Lorg/opencv/core/MatOfRotatedRect;Lorg/opencv/core/MatOfFloat;FFLorg/opencv/core/MatOfInt;)V
    .locals 11
    .param p0, "bboxes"    # Lorg/opencv/core/MatOfRotatedRect;
    .param p1, "scores"    # Lorg/opencv/core/MatOfFloat;
    .param p2, "score_threshold"    # F
    .param p3, "nms_threshold"    # F
    .param p4, "indices"    # Lorg/opencv/core/MatOfInt;

    .line 931
    move-object v0, p0

    .line 932
    .local v0, "bboxes_mat":Lorg/opencv/core/Mat;
    move-object v1, p1

    .line 933
    .local v1, "scores_mat":Lorg/opencv/core/Mat;
    move-object v2, p4

    .line 934
    .local v2, "indices_mat":Lorg/opencv/core/Mat;
    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move v7, p2

    move v8, p3

    invoke-static/range {v3 .. v10}, Lorg/opencv/dnn/Dnn;->NMSBoxesRotated_2(JJFFJ)V

    .line 935
    return-void
.end method

.method public static NMSBoxesRotated(Lorg/opencv/core/MatOfRotatedRect;Lorg/opencv/core/MatOfFloat;FFLorg/opencv/core/MatOfInt;F)V
    .locals 12
    .param p0, "bboxes"    # Lorg/opencv/core/MatOfRotatedRect;
    .param p1, "scores"    # Lorg/opencv/core/MatOfFloat;
    .param p2, "score_threshold"    # F
    .param p3, "nms_threshold"    # F
    .param p4, "indices"    # Lorg/opencv/core/MatOfInt;
    .param p5, "eta"    # F

    .line 924
    move-object v0, p0

    .line 925
    .local v0, "bboxes_mat":Lorg/opencv/core/Mat;
    move-object v1, p1

    .line 926
    .local v1, "scores_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p4

    .line 927
    .local v2, "indices_mat":Lorg/opencv/core/Mat;
    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move v7, p2

    move v8, p3

    move/from16 v11, p5

    invoke-static/range {v3 .. v11}, Lorg/opencv/dnn/Dnn;->NMSBoxesRotated_1(JJFFJF)V

    .line 928
    return-void
.end method

.method public static NMSBoxesRotated(Lorg/opencv/core/MatOfRotatedRect;Lorg/opencv/core/MatOfFloat;FFLorg/opencv/core/MatOfInt;FI)V
    .locals 13
    .param p0, "bboxes"    # Lorg/opencv/core/MatOfRotatedRect;
    .param p1, "scores"    # Lorg/opencv/core/MatOfFloat;
    .param p2, "score_threshold"    # F
    .param p3, "nms_threshold"    # F
    .param p4, "indices"    # Lorg/opencv/core/MatOfInt;
    .param p5, "eta"    # F
    .param p6, "top_k"    # I

    .line 917
    move-object v0, p0

    .line 918
    .local v0, "bboxes_mat":Lorg/opencv/core/Mat;
    move-object v1, p1

    .line 919
    .local v1, "scores_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p4

    .line 920
    .local v2, "indices_mat":Lorg/opencv/core/Mat;
    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move v7, p2

    move/from16 v8, p3

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-static/range {v3 .. v12}, Lorg/opencv/dnn/Dnn;->NMSBoxesRotated_0(JJFFJFI)V

    .line 921
    return-void
.end method

.method private static native NMSBoxesRotated_0(JJFFJFI)V
.end method

.method private static native NMSBoxesRotated_1(JJFFJF)V
.end method

.method private static native NMSBoxesRotated_2(JJFFJ)V
.end method

.method private static native NMSBoxes_0(JJFFJFI)V
.end method

.method private static native NMSBoxes_1(JJFFJF)V
.end method

.method private static native NMSBoxes_2(JJFFJ)V
.end method

.method public static blobFromImage(Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 3
    .param p0, "image"    # Lorg/opencv/core/Mat;

    .line 172
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v1, v2}, Lorg/opencv/dnn/Dnn;->blobFromImage_6(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public static blobFromImage(Lorg/opencv/core/Mat;D)Lorg/opencv/core/Mat;
    .locals 3
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "scalefactor"    # D

    .line 157
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v1, v2, p1, p2}, Lorg/opencv/dnn/Dnn;->blobFromImage_5(JD)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public static blobFromImage(Lorg/opencv/core/Mat;DLorg/opencv/core/Size;)Lorg/opencv/core/Mat;
    .locals 9
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "scalefactor"    # D
    .param p3, "size"    # Lorg/opencv/core/Size;

    .line 141
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p3, Lorg/opencv/core/Size;->width:D

    iget-wide v7, p3, Lorg/opencv/core/Size;->height:D

    move-wide v3, p1

    invoke-static/range {v1 .. v8}, Lorg/opencv/dnn/Dnn;->blobFromImage_4(JDDD)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public static blobFromImage(Lorg/opencv/core/Mat;DLorg/opencv/core/Size;Lorg/opencv/core/Scalar;)Lorg/opencv/core/Mat;
    .locals 20
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "scalefactor"    # D
    .param p3, "size"    # Lorg/opencv/core/Size;
    .param p4, "mean"    # Lorg/opencv/core/Scalar;

    move-object/from16 v0, p3

    .line 124
    move-object/from16 v1, p4

    new-instance v2, Lorg/opencv/core/Mat;

    move-object/from16 v3, p0

    iget-wide v4, v3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v10, v0, Lorg/opencv/core/Size;->height:D

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x0

    aget-wide v12, v6, v7

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x1

    aget-wide v14, v6, v7

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v16, v6, v7

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x3

    aget-wide v18, v6, v7

    move-wide/from16 v6, p1

    invoke-static/range {v4 .. v19}, Lorg/opencv/dnn/Dnn;->blobFromImage_3(JDDDDDDD)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v2
.end method

.method public static blobFromImage(Lorg/opencv/core/Mat;DLorg/opencv/core/Size;Lorg/opencv/core/Scalar;Z)Lorg/opencv/core/Mat;
    .locals 21
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "scalefactor"    # D
    .param p3, "size"    # Lorg/opencv/core/Size;
    .param p4, "mean"    # Lorg/opencv/core/Scalar;
    .param p5, "swapRB"    # Z

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    .line 106
    new-instance v2, Lorg/opencv/core/Mat;

    move-object/from16 v3, p0

    iget-wide v4, v3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v10, v0, Lorg/opencv/core/Size;->height:D

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x0

    aget-wide v12, v6, v7

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x1

    aget-wide v14, v6, v7

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v16, v6, v7

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x3

    aget-wide v18, v6, v7

    move-wide/from16 v6, p1

    move/from16 v20, p5

    invoke-static/range {v4 .. v20}, Lorg/opencv/dnn/Dnn;->blobFromImage_2(JDDDDDDDZ)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v2
.end method

.method public static blobFromImage(Lorg/opencv/core/Mat;DLorg/opencv/core/Size;Lorg/opencv/core/Scalar;ZZ)Lorg/opencv/core/Mat;
    .locals 22
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "scalefactor"    # D
    .param p3, "size"    # Lorg/opencv/core/Size;
    .param p4, "mean"    # Lorg/opencv/core/Scalar;
    .param p5, "swapRB"    # Z
    .param p6, "crop"    # Z

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    .line 87
    new-instance v2, Lorg/opencv/core/Mat;

    move-object/from16 v3, p0

    iget-wide v4, v3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v10, v0, Lorg/opencv/core/Size;->height:D

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x0

    aget-wide v12, v6, v7

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x1

    aget-wide v14, v6, v7

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v16, v6, v7

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x3

    aget-wide v18, v6, v7

    move-wide/from16 v6, p1

    move/from16 v20, p5

    move/from16 v21, p6

    invoke-static/range {v4 .. v21}, Lorg/opencv/dnn/Dnn;->blobFromImage_1(JDDDDDDDZZ)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v2
.end method

.method public static blobFromImage(Lorg/opencv/core/Mat;DLorg/opencv/core/Size;Lorg/opencv/core/Scalar;ZZI)Lorg/opencv/core/Mat;
    .locals 23
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "scalefactor"    # D
    .param p3, "size"    # Lorg/opencv/core/Size;
    .param p4, "mean"    # Lorg/opencv/core/Scalar;
    .param p5, "swapRB"    # Z
    .param p6, "crop"    # Z
    .param p7, "ddepth"    # I

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    .line 67
    new-instance v2, Lorg/opencv/core/Mat;

    move-object/from16 v3, p0

    iget-wide v4, v3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v10, v0, Lorg/opencv/core/Size;->height:D

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x0

    aget-wide v12, v6, v7

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x1

    aget-wide v14, v6, v7

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v16, v6, v7

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x3

    aget-wide v18, v6, v7

    move-wide/from16 v6, p1

    move/from16 v20, p5

    move/from16 v21, p6

    move/from16 v22, p7

    invoke-static/range {v4 .. v22}, Lorg/opencv/dnn/Dnn;->blobFromImage_0(JDDDDDDDZZI)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v2
.end method

.method private static native blobFromImage_0(JDDDDDDDZZI)J
.end method

.method private static native blobFromImage_1(JDDDDDDDZZ)J
.end method

.method private static native blobFromImage_2(JDDDDDDDZ)J
.end method

.method private static native blobFromImage_3(JDDDDDDD)J
.end method

.method private static native blobFromImage_4(JDDD)J
.end method

.method private static native blobFromImage_5(JD)J
.end method

.method private static native blobFromImage_6(J)J
.end method

.method public static blobFromImages(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .line 316
    .local p0, "images":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 317
    .local v0, "images_mat":Lorg/opencv/core/Mat;
    new-instance v1, Lorg/opencv/core/Mat;

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/dnn/Dnn;->blobFromImages_6(J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v1
.end method

.method public static blobFromImages(Ljava/util/List;D)Lorg/opencv/core/Mat;
    .locals 4
    .param p1, "scalefactor"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;D)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .line 299
    .local p0, "images":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 300
    .local v0, "images_mat":Lorg/opencv/core/Mat;
    new-instance v1, Lorg/opencv/core/Mat;

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3, p1, p2}, Lorg/opencv/dnn/Dnn;->blobFromImages_5(JD)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v1
.end method

.method public static blobFromImages(Ljava/util/List;DLorg/opencv/core/Size;)Lorg/opencv/core/Mat;
    .locals 10
    .param p1, "scalefactor"    # D
    .param p3, "size"    # Lorg/opencv/core/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;D",
            "Lorg/opencv/core/Size;",
            ")",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .line 281
    .local p0, "images":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 282
    .local v0, "images_mat":Lorg/opencv/core/Mat;
    new-instance v1, Lorg/opencv/core/Mat;

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Size;->width:D

    iget-wide v8, p3, Lorg/opencv/core/Size;->height:D

    move-wide v4, p1

    invoke-static/range {v2 .. v9}, Lorg/opencv/dnn/Dnn;->blobFromImages_4(JDDD)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v1
.end method

.method public static blobFromImages(Ljava/util/List;DLorg/opencv/core/Size;Lorg/opencv/core/Scalar;)Lorg/opencv/core/Mat;
    .locals 20
    .param p1, "scalefactor"    # D
    .param p3, "size"    # Lorg/opencv/core/Size;
    .param p4, "mean"    # Lorg/opencv/core/Scalar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;D",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Scalar;",
            ")",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .local p0, "images":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p3

    .line 262
    move-object/from16 v1, p4

    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 263
    .local v2, "images_mat":Lorg/opencv/core/Mat;
    new-instance v3, Lorg/opencv/core/Mat;

    iget-wide v4, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v10, v0, Lorg/opencv/core/Size;->height:D

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x0

    aget-wide v12, v6, v7

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x1

    aget-wide v14, v6, v7

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v16, v6, v7

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x3

    aget-wide v18, v6, v7

    move-wide/from16 v6, p1

    invoke-static/range {v4 .. v19}, Lorg/opencv/dnn/Dnn;->blobFromImages_3(JDDDDDDD)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v3
.end method

.method public static blobFromImages(Ljava/util/List;DLorg/opencv/core/Size;Lorg/opencv/core/Scalar;Z)Lorg/opencv/core/Mat;
    .locals 21
    .param p1, "scalefactor"    # D
    .param p3, "size"    # Lorg/opencv/core/Size;
    .param p4, "mean"    # Lorg/opencv/core/Scalar;
    .param p5, "swapRB"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;D",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Scalar;",
            "Z)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .local p0, "images":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    .line 242
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 243
    .local v2, "images_mat":Lorg/opencv/core/Mat;
    new-instance v3, Lorg/opencv/core/Mat;

    iget-wide v4, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v10, v0, Lorg/opencv/core/Size;->height:D

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x0

    aget-wide v12, v6, v7

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x1

    aget-wide v14, v6, v7

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v16, v6, v7

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x3

    aget-wide v18, v6, v7

    move-wide/from16 v6, p1

    move/from16 v20, p5

    invoke-static/range {v4 .. v20}, Lorg/opencv/dnn/Dnn;->blobFromImages_2(JDDDDDDDZ)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v3
.end method

.method public static blobFromImages(Ljava/util/List;DLorg/opencv/core/Size;Lorg/opencv/core/Scalar;ZZ)Lorg/opencv/core/Mat;
    .locals 22
    .param p1, "scalefactor"    # D
    .param p3, "size"    # Lorg/opencv/core/Size;
    .param p4, "mean"    # Lorg/opencv/core/Scalar;
    .param p5, "swapRB"    # Z
    .param p6, "crop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;D",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Scalar;",
            "ZZ)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .local p0, "images":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    .line 221
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 222
    .local v2, "images_mat":Lorg/opencv/core/Mat;
    new-instance v3, Lorg/opencv/core/Mat;

    iget-wide v4, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v10, v0, Lorg/opencv/core/Size;->height:D

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x0

    aget-wide v12, v6, v7

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x1

    aget-wide v14, v6, v7

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v16, v6, v7

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x3

    aget-wide v18, v6, v7

    move-wide/from16 v6, p1

    move/from16 v20, p5

    move/from16 v21, p6

    invoke-static/range {v4 .. v21}, Lorg/opencv/dnn/Dnn;->blobFromImages_1(JDDDDDDDZZ)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v3
.end method

.method public static blobFromImages(Ljava/util/List;DLorg/opencv/core/Size;Lorg/opencv/core/Scalar;ZZI)Lorg/opencv/core/Mat;
    .locals 23
    .param p1, "scalefactor"    # D
    .param p3, "size"    # Lorg/opencv/core/Size;
    .param p4, "mean"    # Lorg/opencv/core/Scalar;
    .param p5, "swapRB"    # Z
    .param p6, "crop"    # Z
    .param p7, "ddepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;D",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Scalar;",
            "ZZI)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .local p0, "images":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    .line 199
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 200
    .local v2, "images_mat":Lorg/opencv/core/Mat;
    new-instance v3, Lorg/opencv/core/Mat;

    iget-wide v4, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v10, v0, Lorg/opencv/core/Size;->height:D

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x0

    aget-wide v12, v6, v7

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x1

    aget-wide v14, v6, v7

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v16, v6, v7

    iget-object v6, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x3

    aget-wide v18, v6, v7

    move-wide/from16 v6, p1

    move/from16 v20, p5

    move/from16 v21, p6

    move/from16 v22, p7

    invoke-static/range {v4 .. v22}, Lorg/opencv/dnn/Dnn;->blobFromImages_0(JDDDDDDDZZI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v3
.end method

.method private static native blobFromImages_0(JDDDDDDDZZI)J
.end method

.method private static native blobFromImages_1(JDDDDDDDZZ)J
.end method

.method private static native blobFromImages_2(JDDDDDDDZ)J
.end method

.method private static native blobFromImages_3(JDDDDDDD)J
.end method

.method private static native blobFromImages_4(JDDD)J
.end method

.method private static native blobFromImages_5(JD)J
.end method

.method private static native blobFromImages_6(J)J
.end method

.method public static getAvailableTargets(I)Ljava/util/List;
    .locals 1
    .param p0, "be"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 852
    invoke-static {p0}, Lorg/opencv/dnn/Dnn;->getAvailableTargets_0(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static native getAvailableTargets_0(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public static getInferenceEngineBackendType()Ljava/lang/String;
    .locals 1

    .line 811
    invoke-static {}, Lorg/opencv/dnn/Dnn;->getInferenceEngineBackendType_0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native getInferenceEngineBackendType_0()Ljava/lang/String;
.end method

.method public static getInferenceEngineVPUType()Ljava/lang/String;
    .locals 1

    .line 826
    invoke-static {}, Lorg/opencv/dnn/Dnn;->getInferenceEngineVPUType_0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native getInferenceEngineVPUType_0()Ljava/lang/String;
.end method

.method public static imagesFromBlob(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 5
    .param p0, "blob_"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;)V"
        }
    .end annotation

    .line 952
    .local p1, "images_":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 953
    .local v0, "images__mat":Lorg/opencv/core/Mat;
    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v1, v2, v3, v4}, Lorg/opencv/dnn/Dnn;->imagesFromBlob_0(JJ)V

    .line 954
    invoke-static {v0, p1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 955
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 956
    return-void
.end method

.method private static native imagesFromBlob_0(JJ)V
.end method

.method public static readNet(Ljava/lang/String;)Lorg/opencv/dnn/Net;
    .locals 3
    .param p0, "model"    # Ljava/lang/String;

    .line 476
    new-instance v0, Lorg/opencv/dnn/Net;

    invoke-static {p0}, Lorg/opencv/dnn/Dnn;->readNet_4(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/dnn/Net;-><init>(J)V

    return-object v0
.end method

.method public static readNet(Ljava/lang/String;Ljava/lang/String;)Lorg/opencv/dnn/Net;
    .locals 3
    .param p0, "model"    # Ljava/lang/String;
    .param p1, "config"    # Ljava/lang/String;

    .line 450
    new-instance v0, Lorg/opencv/dnn/Net;

    invoke-static {p0, p1}, Lorg/opencv/dnn/Dnn;->readNet_3(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/dnn/Net;-><init>(J)V

    return-object v0
.end method

.method public static readNet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/opencv/dnn/Net;
    .locals 3
    .param p0, "model"    # Ljava/lang/String;
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "framework"    # Ljava/lang/String;

    .line 423
    new-instance v0, Lorg/opencv/dnn/Net;

    invoke-static {p0, p1, p2}, Lorg/opencv/dnn/Dnn;->readNet_2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/dnn/Net;-><init>(J)V

    return-object v0
.end method

.method public static readNet(Ljava/lang/String;Lorg/opencv/core/MatOfByte;)Lorg/opencv/dnn/Net;
    .locals 4
    .param p0, "framework"    # Ljava/lang/String;
    .param p1, "bufferModel"    # Lorg/opencv/core/MatOfByte;

    .line 389
    move-object v0, p1

    .line 390
    .local v0, "bufferModel_mat":Lorg/opencv/core/Mat;
    new-instance v1, Lorg/opencv/dnn/Net;

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {p0, v2, v3}, Lorg/opencv/dnn/Dnn;->readNet_1(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/opencv/dnn/Net;-><init>(J)V

    return-object v1
.end method

.method public static readNet(Ljava/lang/String;Lorg/opencv/core/MatOfByte;Lorg/opencv/core/MatOfByte;)Lorg/opencv/dnn/Net;
    .locals 7
    .param p0, "framework"    # Ljava/lang/String;
    .param p1, "bufferModel"    # Lorg/opencv/core/MatOfByte;
    .param p2, "bufferConfig"    # Lorg/opencv/core/MatOfByte;

    .line 375
    move-object v0, p1

    .line 376
    .local v0, "bufferModel_mat":Lorg/opencv/core/Mat;
    move-object v1, p2

    .line 377
    .local v1, "bufferConfig_mat":Lorg/opencv/core/Mat;
    new-instance v2, Lorg/opencv/dnn/Net;

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {p0, v3, v4, v5, v6}, Lorg/opencv/dnn/Dnn;->readNet_0(Ljava/lang/String;JJ)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/opencv/dnn/Net;-><init>(J)V

    return-object v2
.end method

.method public static readNetFromCaffe(Ljava/lang/String;)Lorg/opencv/dnn/Net;
    .locals 3
    .param p0, "prototxt"    # Ljava/lang/String;

    .line 500
    new-instance v0, Lorg/opencv/dnn/Net;

    invoke-static {p0}, Lorg/opencv/dnn/Dnn;->readNetFromCaffe_1(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/dnn/Net;-><init>(J)V

    return-object v0
.end method

.method public static readNetFromCaffe(Ljava/lang/String;Ljava/lang/String;)Lorg/opencv/dnn/Net;
    .locals 3
    .param p0, "prototxt"    # Ljava/lang/String;
    .param p1, "caffeModel"    # Ljava/lang/String;

    .line 491
    new-instance v0, Lorg/opencv/dnn/Net;

    invoke-static {p0, p1}, Lorg/opencv/dnn/Dnn;->readNetFromCaffe_0(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/dnn/Net;-><init>(J)V

    return-object v0
.end method

.method public static readNetFromCaffe(Lorg/opencv/core/MatOfByte;)Lorg/opencv/dnn/Net;
    .locals 4
    .param p0, "bufferProto"    # Lorg/opencv/core/MatOfByte;

    .line 526
    move-object v0, p0

    .line 527
    .local v0, "bufferProto_mat":Lorg/opencv/core/Mat;
    new-instance v1, Lorg/opencv/dnn/Net;

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/dnn/Dnn;->readNetFromCaffe_3(J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/opencv/dnn/Net;-><init>(J)V

    return-object v1
.end method

.method public static readNetFromCaffe(Lorg/opencv/core/MatOfByte;Lorg/opencv/core/MatOfByte;)Lorg/opencv/dnn/Net;
    .locals 7
    .param p0, "bufferProto"    # Lorg/opencv/core/MatOfByte;
    .param p1, "bufferModel"    # Lorg/opencv/core/MatOfByte;

    .line 515
    move-object v0, p0

    .line 516
    .local v0, "bufferProto_mat":Lorg/opencv/core/Mat;
    move-object v1, p1

    .line 517
    .local v1, "bufferModel_mat":Lorg/opencv/core/Mat;
    new-instance v2, Lorg/opencv/dnn/Net;

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v3, v4, v5, v6}, Lorg/opencv/dnn/Dnn;->readNetFromCaffe_2(JJ)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/opencv/dnn/Net;-><init>(J)V

    return-object v2
.end method

.method private static native readNetFromCaffe_0(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native readNetFromCaffe_1(Ljava/lang/String;)J
.end method

.method private static native readNetFromCaffe_2(JJ)J
.end method

.method private static native readNetFromCaffe_3(J)J
.end method

.method public static readNetFromDarknet(Ljava/lang/String;)Lorg/opencv/dnn/Net;
    .locals 3
    .param p0, "cfgFile"    # Ljava/lang/String;

    .line 553
    new-instance v0, Lorg/opencv/dnn/Net;

    invoke-static {p0}, Lorg/opencv/dnn/Dnn;->readNetFromDarknet_1(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/dnn/Net;-><init>(J)V

    return-object v0
.end method

.method public static readNetFromDarknet(Ljava/lang/String;Ljava/lang/String;)Lorg/opencv/dnn/Net;
    .locals 3
    .param p0, "cfgFile"    # Ljava/lang/String;
    .param p1, "darknetModel"    # Ljava/lang/String;

    .line 543
    new-instance v0, Lorg/opencv/dnn/Net;

    invoke-static {p0, p1}, Lorg/opencv/dnn/Dnn;->readNetFromDarknet_0(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/dnn/Net;-><init>(J)V

    return-object v0
.end method

.method public static readNetFromDarknet(Lorg/opencv/core/MatOfByte;)Lorg/opencv/dnn/Net;
    .locals 4
    .param p0, "bufferCfg"    # Lorg/opencv/core/MatOfByte;

    .line 579
    move-object v0, p0

    .line 580
    .local v0, "bufferCfg_mat":Lorg/opencv/core/Mat;
    new-instance v1, Lorg/opencv/dnn/Net;

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/dnn/Dnn;->readNetFromDarknet_3(J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/opencv/dnn/Net;-><init>(J)V

    return-object v1
.end method

.method public static readNetFromDarknet(Lorg/opencv/core/MatOfByte;Lorg/opencv/core/MatOfByte;)Lorg/opencv/dnn/Net;
    .locals 7
    .param p0, "bufferCfg"    # Lorg/opencv/core/MatOfByte;
    .param p1, "bufferModel"    # Lorg/opencv/core/MatOfByte;

    .line 568
    move-object v0, p0

    .line 569
    .local v0, "bufferCfg_mat":Lorg/opencv/core/Mat;
    move-object v1, p1

    .line 570
    .local v1, "bufferModel_mat":Lorg/opencv/core/Mat;
    new-instance v2, Lorg/opencv/dnn/Net;

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v3, v4, v5, v6}, Lorg/opencv/dnn/Dnn;->readNetFromDarknet_2(JJ)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/opencv/dnn/Net;-><init>(J)V

    return-object v2
.end method

.method private static native readNetFromDarknet_0(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native readNetFromDarknet_1(Ljava/lang/String;)J
.end method

.method private static native readNetFromDarknet_2(JJ)J
.end method

.method private static native readNetFromDarknet_3(J)J
.end method

.method public static readNetFromModelOptimizer(Ljava/lang/String;Ljava/lang/String;)Lorg/opencv/dnn/Net;
    .locals 3
    .param p0, "xml"    # Ljava/lang/String;
    .param p1, "bin"    # Ljava/lang/String;

    .line 597
    new-instance v0, Lorg/opencv/dnn/Net;

    invoke-static {p0, p1}, Lorg/opencv/dnn/Dnn;->readNetFromModelOptimizer_0(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/dnn/Net;-><init>(J)V

    return-object v0
.end method

.method public static readNetFromModelOptimizer(Lorg/opencv/core/MatOfByte;Lorg/opencv/core/MatOfByte;)Lorg/opencv/dnn/Net;
    .locals 7
    .param p0, "bufferModelConfig"    # Lorg/opencv/core/MatOfByte;
    .param p1, "bufferWeights"    # Lorg/opencv/core/MatOfByte;

    .line 614
    move-object v0, p0

    .line 615
    .local v0, "bufferModelConfig_mat":Lorg/opencv/core/Mat;
    move-object v1, p1

    .line 616
    .local v1, "bufferWeights_mat":Lorg/opencv/core/Mat;
    new-instance v2, Lorg/opencv/dnn/Net;

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v3, v4, v5, v6}, Lorg/opencv/dnn/Dnn;->readNetFromModelOptimizer_1(JJ)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/opencv/dnn/Net;-><init>(J)V

    return-object v2
.end method

.method private static native readNetFromModelOptimizer_0(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native readNetFromModelOptimizer_1(JJ)J
.end method

.method public static readNetFromONNX(Ljava/lang/String;)Lorg/opencv/dnn/Net;
    .locals 3
    .param p0, "onnxFile"    # Ljava/lang/String;

    .line 630
    new-instance v0, Lorg/opencv/dnn/Net;

    invoke-static {p0}, Lorg/opencv/dnn/Dnn;->readNetFromONNX_0(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/dnn/Net;-><init>(J)V

    return-object v0
.end method

.method public static readNetFromONNX(Lorg/opencv/core/MatOfByte;)Lorg/opencv/dnn/Net;
    .locals 4
    .param p0, "buffer"    # Lorg/opencv/core/MatOfByte;

    .line 646
    move-object v0, p0

    .line 647
    .local v0, "buffer_mat":Lorg/opencv/core/Mat;
    new-instance v1, Lorg/opencv/dnn/Net;

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/dnn/Dnn;->readNetFromONNX_1(J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/opencv/dnn/Net;-><init>(J)V

    return-object v1
.end method

.method private static native readNetFromONNX_0(Ljava/lang/String;)J
.end method

.method private static native readNetFromONNX_1(J)J
.end method

.method public static readNetFromTensorflow(Ljava/lang/String;)Lorg/opencv/dnn/Net;
    .locals 3
    .param p0, "model"    # Ljava/lang/String;

    .line 675
    new-instance v0, Lorg/opencv/dnn/Net;

    invoke-static {p0}, Lorg/opencv/dnn/Dnn;->readNetFromTensorflow_1(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/dnn/Net;-><init>(J)V

    return-object v0
.end method

.method public static readNetFromTensorflow(Ljava/lang/String;Ljava/lang/String;)Lorg/opencv/dnn/Net;
    .locals 3
    .param p0, "model"    # Ljava/lang/String;
    .param p1, "config"    # Ljava/lang/String;

    .line 664
    new-instance v0, Lorg/opencv/dnn/Net;

    invoke-static {p0, p1}, Lorg/opencv/dnn/Dnn;->readNetFromTensorflow_0(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/dnn/Net;-><init>(J)V

    return-object v0
.end method

.method public static readNetFromTensorflow(Lorg/opencv/core/MatOfByte;)Lorg/opencv/dnn/Net;
    .locals 4
    .param p0, "bufferModel"    # Lorg/opencv/core/MatOfByte;

    .line 701
    move-object v0, p0

    .line 702
    .local v0, "bufferModel_mat":Lorg/opencv/core/Mat;
    new-instance v1, Lorg/opencv/dnn/Net;

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/dnn/Dnn;->readNetFromTensorflow_3(J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/opencv/dnn/Net;-><init>(J)V

    return-object v1
.end method

.method public static readNetFromTensorflow(Lorg/opencv/core/MatOfByte;Lorg/opencv/core/MatOfByte;)Lorg/opencv/dnn/Net;
    .locals 7
    .param p0, "bufferModel"    # Lorg/opencv/core/MatOfByte;
    .param p1, "bufferConfig"    # Lorg/opencv/core/MatOfByte;

    .line 690
    move-object v0, p0

    .line 691
    .local v0, "bufferModel_mat":Lorg/opencv/core/Mat;
    move-object v1, p1

    .line 692
    .local v1, "bufferConfig_mat":Lorg/opencv/core/Mat;
    new-instance v2, Lorg/opencv/dnn/Net;

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v3, v4, v5, v6}, Lorg/opencv/dnn/Dnn;->readNetFromTensorflow_2(JJ)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/opencv/dnn/Net;-><init>(J)V

    return-object v2
.end method

.method private static native readNetFromTensorflow_0(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native readNetFromTensorflow_1(Ljava/lang/String;)J
.end method

.method private static native readNetFromTensorflow_2(JJ)J
.end method

.method private static native readNetFromTensorflow_3(J)J
.end method

.method public static readNetFromTorch(Ljava/lang/String;)Lorg/opencv/dnn/Net;
    .locals 3
    .param p0, "model"    # Ljava/lang/String;

    .line 794
    new-instance v0, Lorg/opencv/dnn/Net;

    invoke-static {p0}, Lorg/opencv/dnn/Dnn;->readNetFromTorch_2(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/dnn/Net;-><init>(J)V

    return-object v0
.end method

.method public static readNetFromTorch(Ljava/lang/String;Z)Lorg/opencv/dnn/Net;
    .locals 3
    .param p0, "model"    # Ljava/lang/String;
    .param p1, "isBinary"    # Z

    .line 766
    new-instance v0, Lorg/opencv/dnn/Net;

    invoke-static {p0, p1}, Lorg/opencv/dnn/Dnn;->readNetFromTorch_1(Ljava/lang/String;Z)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/dnn/Net;-><init>(J)V

    return-object v0
.end method

.method public static readNetFromTorch(Ljava/lang/String;ZZ)Lorg/opencv/dnn/Net;
    .locals 3
    .param p0, "model"    # Ljava/lang/String;
    .param p1, "isBinary"    # Z
    .param p2, "evaluate"    # Z

    .line 737
    new-instance v0, Lorg/opencv/dnn/Net;

    invoke-static {p0, p1, p2}, Lorg/opencv/dnn/Dnn;->readNetFromTorch_0(Ljava/lang/String;ZZ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/dnn/Net;-><init>(J)V

    return-object v0
.end method

.method private static native readNetFromTorch_0(Ljava/lang/String;ZZ)J
.end method

.method private static native readNetFromTorch_1(Ljava/lang/String;Z)J
.end method

.method private static native readNetFromTorch_2(Ljava/lang/String;)J
.end method

.method private static native readNet_0(Ljava/lang/String;JJ)J
.end method

.method private static native readNet_1(Ljava/lang/String;J)J
.end method

.method private static native readNet_2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native readNet_3(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native readNet_4(Ljava/lang/String;)J
.end method

.method public static readTensorFromONNX(Ljava/lang/String;)Lorg/opencv/core/Mat;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .line 331
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-static {p0}, Lorg/opencv/dnn/Dnn;->readTensorFromONNX_0(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method private static native readTensorFromONNX_0(Ljava/lang/String;)J
.end method

.method public static readTorchBlob(Ljava/lang/String;)Lorg/opencv/core/Mat;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .line 357
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-static {p0}, Lorg/opencv/dnn/Dnn;->readTorchBlob_1(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public static readTorchBlob(Ljava/lang/String;Z)Lorg/opencv/core/Mat;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "isBinary"    # Z

    .line 347
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-static {p0, p1}, Lorg/opencv/dnn/Dnn;->readTorchBlob_0(Ljava/lang/String;Z)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method private static native readTorchBlob_0(Ljava/lang/String;Z)J
.end method

.method private static native readTorchBlob_1(Ljava/lang/String;)J
.end method

.method public static resetMyriadDevice()V
    .locals 0

    .line 970
    invoke-static {}, Lorg/opencv/dnn/Dnn;->resetMyriadDevice_0()V

    .line 971
    return-void
.end method

.method private static native resetMyriadDevice_0()V
.end method

.method public static setInferenceEngineBackendType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "newBackendType"    # Ljava/lang/String;

    .line 843
    invoke-static {p0}, Lorg/opencv/dnn/Dnn;->setInferenceEngineBackendType_0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native setInferenceEngineBackendType_0(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static shrinkCaffeModel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "dst"    # Ljava/lang/String;

    .line 1010
    invoke-static {p0, p1}, Lorg/opencv/dnn/Dnn;->shrinkCaffeModel_1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    return-void
.end method

.method public static shrinkCaffeModel(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "dst"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 993
    .local p2, "layersTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Lorg/opencv/dnn/Dnn;->shrinkCaffeModel_0(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 994
    return-void
.end method

.method private static native shrinkCaffeModel_0(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native shrinkCaffeModel_1(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static writeTextGraph(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "model"    # Ljava/lang/String;
    .param p1, "output"    # Ljava/lang/String;

    .line 1026
    invoke-static {p0, p1}, Lorg/opencv/dnn/Dnn;->writeTextGraph_0(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    return-void
.end method

.method private static native writeTextGraph_0(Ljava/lang/String;Ljava/lang/String;)V
.end method
