.class public Lorg/opencv/features2d/Features2d;
.super Ljava/lang/Object;
.source "Features2d.java"


# static fields
.field public static final DrawMatchesFlags_DEFAULT:I = 0x0

.field public static final DrawMatchesFlags_DRAW_OVER_OUTIMG:I = 0x1

.field public static final DrawMatchesFlags_DRAW_RICH_KEYPOINTS:I = 0x4

.field public static final DrawMatchesFlags_NOT_DRAW_SINGLE_POINTS:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawKeypoints(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/Mat;)V
    .locals 7
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "keypoints"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p2, "outImage"    # Lorg/opencv/core/Mat;

    .line 87
    move-object v0, p1

    .line 88
    .local v0, "keypoints_mat":Lorg/opencv/core/Mat;
    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v1 .. v6}, Lorg/opencv/features2d/Features2d;->drawKeypoints_2(JJJ)V

    .line 89
    return-void
.end method

.method public static drawKeypoints(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;)V
    .locals 20
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "keypoints"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p2, "outImage"    # Lorg/opencv/core/Mat;
    .param p3, "color"    # Lorg/opencv/core/Scalar;

    .line 68
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    .line 69
    .local v1, "keypoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p0

    iget-wide v3, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p2

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v9, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v10, 0x0

    aget-wide v9, v9, v10

    iget-object v11, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v12, 0x1

    aget-wide v11, v11, v12

    iget-object v13, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v14, 0x2

    aget-wide v13, v13, v14

    move-object/from16 v17, v1

    iget-object v1, v0, Lorg/opencv/core/Scalar;->val:[D

    .end local v1    # "keypoints_mat":Lorg/opencv/core/Mat;
    .local v17, "keypoints_mat":Lorg/opencv/core/Mat;
    const/16 v16, 0x3

    aget-wide v18, v1, v16

    move-wide/from16 v15, v18

    invoke-static/range {v3 .. v16}, Lorg/opencv/features2d/Features2d;->drawKeypoints_1(JJJDDDD)V

    .line 70
    return-void
.end method

.method public static drawKeypoints(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;I)V
    .locals 19
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "keypoints"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p2, "outImage"    # Lorg/opencv/core/Mat;
    .param p3, "color"    # Lorg/opencv/core/Scalar;
    .param p4, "flags"    # I

    move-object/from16 v0, p3

    .line 48
    move-object/from16 v1, p1

    .line 49
    .local v1, "keypoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p0

    iget-wide v3, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p2

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v9, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v10, 0x0

    aget-wide v9, v9, v10

    iget-object v11, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v12, 0x1

    aget-wide v11, v11, v12

    iget-object v13, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v14, 0x2

    aget-wide v13, v13, v14

    move-object/from16 v18, v1

    iget-object v1, v0, Lorg/opencv/core/Scalar;->val:[D

    .end local v1    # "keypoints_mat":Lorg/opencv/core/Mat;
    .local v18, "keypoints_mat":Lorg/opencv/core/Mat;
    const/16 v16, 0x3

    aget-wide v16, v1, v16

    move-wide/from16 v15, v16

    move/from16 v17, p4

    invoke-static/range {v3 .. v17}, Lorg/opencv/features2d/Features2d;->drawKeypoints_0(JJJDDDDI)V

    .line 50
    return-void
.end method

.method private static native drawKeypoints_0(JJJDDDDI)V
.end method

.method private static native drawKeypoints_1(JJJDDDD)V
.end method

.method private static native drawKeypoints_2(JJJ)V
.end method

.method public static drawMatches(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/MatOfDMatch;Lorg/opencv/core/Mat;)V
    .locals 18
    .param p0, "img1"    # Lorg/opencv/core/Mat;
    .param p1, "keypoints1"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p2, "img2"    # Lorg/opencv/core/Mat;
    .param p3, "keypoints2"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p4, "matches1to2"    # Lorg/opencv/core/MatOfDMatch;
    .param p5, "outImg"    # Lorg/opencv/core/Mat;

    .line 232
    move-object/from16 v0, p1

    .line 233
    .local v0, "keypoints1_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p3

    .line 234
    .local v1, "keypoints2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p4

    .line 235
    .local v2, "matches1to2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p0

    iget-wide v4, v3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v8, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v12, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p5

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    iget-wide v0, v15, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v0    # "keypoints1_mat":Lorg/opencv/core/Mat;
    .end local v1    # "keypoints2_mat":Lorg/opencv/core/Mat;
    .local v16, "keypoints1_mat":Lorg/opencv/core/Mat;
    .local v17, "keypoints2_mat":Lorg/opencv/core/Mat;
    move-wide v14, v0

    invoke-static/range {v4 .. v15}, Lorg/opencv/features2d/Features2d;->drawMatches_4(JJJJJJ)V

    .line 236
    return-void
.end method

.method public static drawMatches(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/MatOfDMatch;Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;)V
    .locals 29
    .param p0, "img1"    # Lorg/opencv/core/Mat;
    .param p1, "keypoints1"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p2, "img2"    # Lorg/opencv/core/Mat;
    .param p3, "keypoints2"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p4, "matches1to2"    # Lorg/opencv/core/MatOfDMatch;
    .param p5, "outImg"    # Lorg/opencv/core/Mat;
    .param p6, "matchColor"    # Lorg/opencv/core/Scalar;

    .line 206
    move-object/from16 v0, p6

    move-object/from16 v1, p1

    .line 207
    .local v1, "keypoints1_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p3

    .line 208
    .local v2, "keypoints2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p4

    .line 209
    .local v3, "matches1to2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v4, p0

    iget-wide v5, v4, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p2

    iget-wide v9, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v11, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v13, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v25, v1

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v1, p5

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v1    # "keypoints1_mat":Lorg/opencv/core/Mat;
    .end local v2    # "keypoints2_mat":Lorg/opencv/core/Mat;
    .end local v3    # "matches1to2_mat":Lorg/opencv/core/Mat;
    .local v25, "keypoints1_mat":Lorg/opencv/core/Mat;
    .local v26, "keypoints2_mat":Lorg/opencv/core/Mat;
    .local v27, "matches1to2_mat":Lorg/opencv/core/Mat;
    iget-object v1, v0, Lorg/opencv/core/Scalar;->val:[D

    const/16 v16, 0x0

    aget-wide v17, v1, v16

    iget-object v1, v0, Lorg/opencv/core/Scalar;->val:[D

    const/16 v16, 0x1

    aget-wide v19, v1, v16

    iget-object v1, v0, Lorg/opencv/core/Scalar;->val:[D

    const/16 v16, 0x2

    aget-wide v21, v1, v16

    iget-object v1, v0, Lorg/opencv/core/Scalar;->val:[D

    const/16 v16, 0x3

    aget-wide v23, v1, v16

    move-wide v15, v2

    invoke-static/range {v5 .. v24}, Lorg/opencv/features2d/Features2d;->drawMatches_3(JJJJJJDDDD)V

    .line 210
    return-void
.end method

.method public static drawMatches(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/MatOfDMatch;Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Scalar;)V
    .locals 39
    .param p0, "img1"    # Lorg/opencv/core/Mat;
    .param p1, "keypoints1"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p2, "img2"    # Lorg/opencv/core/Mat;
    .param p3, "keypoints2"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p4, "matches1to2"    # Lorg/opencv/core/MatOfDMatch;
    .param p5, "outImg"    # Lorg/opencv/core/Mat;
    .param p6, "matchColor"    # Lorg/opencv/core/Scalar;
    .param p7, "singlePointColor"    # Lorg/opencv/core/Scalar;

    move-object/from16 v0, p6

    .line 179
    move-object/from16 v1, p7

    move-object/from16 v2, p1

    .line 180
    .local v2, "keypoints1_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p3

    .line 181
    .local v3, "keypoints2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v4, p4

    .line 182
    .local v4, "matches1to2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v5, p0

    iget-wide v6, v5, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v10, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v12, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v34, v2

    move-object/from16 v35, v3

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v2    # "keypoints1_mat":Lorg/opencv/core/Mat;
    .end local v3    # "keypoints2_mat":Lorg/opencv/core/Mat;
    .local v34, "keypoints1_mat":Lorg/opencv/core/Mat;
    .local v35, "keypoints2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v15, p5

    move-object/from16 v36, v4

    iget-wide v4, v15, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v4    # "matches1to2_mat":Lorg/opencv/core/Mat;
    .local v36, "matches1to2_mat":Lorg/opencv/core/Mat;
    iget-object v14, v0, Lorg/opencv/core/Scalar;->val:[D

    const/16 v16, 0x0

    aget-wide v18, v14, v16

    iget-object v14, v0, Lorg/opencv/core/Scalar;->val:[D

    const/16 v17, 0x1

    aget-wide v20, v14, v17

    iget-object v14, v0, Lorg/opencv/core/Scalar;->val:[D

    const/16 v22, 0x2

    aget-wide v23, v14, v22

    iget-object v14, v0, Lorg/opencv/core/Scalar;->val:[D

    const/16 v25, 0x3

    aget-wide v26, v14, v25

    iget-object v14, v1, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v28, v14, v16

    iget-object v14, v1, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v30, v14, v17

    iget-object v14, v1, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v32, v14, v22

    iget-object v14, v1, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v37, v14, v25

    move-wide v14, v2

    move-wide/from16 v16, v4

    move-wide/from16 v22, v23

    move-wide/from16 v24, v26

    move-wide/from16 v26, v28

    move-wide/from16 v28, v30

    move-wide/from16 v30, v32

    move-wide/from16 v32, v37

    invoke-static/range {v6 .. v33}, Lorg/opencv/features2d/Features2d;->drawMatches_2(JJJJJJDDDDDDDD)V

    .line 183
    return-void
.end method

.method public static drawMatches(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/MatOfDMatch;Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Scalar;Lorg/opencv/core/MatOfByte;)V
    .locals 43
    .param p0, "img1"    # Lorg/opencv/core/Mat;
    .param p1, "keypoints1"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p2, "img2"    # Lorg/opencv/core/Mat;
    .param p3, "keypoints2"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p4, "matches1to2"    # Lorg/opencv/core/MatOfDMatch;
    .param p5, "outImg"    # Lorg/opencv/core/Mat;
    .param p6, "matchColor"    # Lorg/opencv/core/Scalar;
    .param p7, "singlePointColor"    # Lorg/opencv/core/Scalar;
    .param p8, "matchesMask"    # Lorg/opencv/core/MatOfByte;

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    .line 150
    move-object/from16 v2, p1

    .line 151
    .local v2, "keypoints1_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p3

    .line 152
    .local v3, "keypoints2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v4, p4

    .line 153
    .local v4, "matches1to2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v5, p8

    .line 154
    .local v5, "matchesMask_mat":Lorg/opencv/core/Mat;
    move-object/from16 v6, p0

    iget-wide v7, v6, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p2

    iget-wide v11, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v13, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v37, v2

    move-object/from16 v38, v3

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v2    # "keypoints1_mat":Lorg/opencv/core/Mat;
    .end local v3    # "keypoints2_mat":Lorg/opencv/core/Mat;
    .local v37, "keypoints1_mat":Lorg/opencv/core/Mat;
    .local v38, "keypoints2_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v40, v2

    move-object/from16 v39, v4

    move-object/from16 v4, p5

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v4    # "matches1to2_mat":Lorg/opencv/core/Mat;
    .local v39, "matches1to2_mat":Lorg/opencv/core/Mat;
    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/16 v16, 0x0

    aget-wide v19, v4, v16

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/16 v17, 0x1

    aget-wide v21, v4, v17

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/16 v18, 0x2

    aget-wide v23, v4, v18

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/16 v25, 0x3

    aget-wide v26, v4, v25

    iget-object v4, v1, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v28, v4, v16

    iget-object v4, v1, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v30, v4, v17

    iget-object v4, v1, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v32, v4, v18

    iget-object v4, v1, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v34, v4, v25

    iget-wide v0, v5, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v15, v40

    move-wide/from16 v17, v2

    move-wide/from16 v25, v26

    move-wide/from16 v27, v28

    move-wide/from16 v29, v30

    move-wide/from16 v31, v32

    move-wide/from16 v33, v34

    move-wide/from16 v35, v0

    invoke-static/range {v7 .. v36}, Lorg/opencv/features2d/Features2d;->drawMatches_1(JJJJJJDDDDDDDDJ)V

    .line 155
    return-void
.end method

.method public static drawMatches(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/MatOfDMatch;Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Scalar;Lorg/opencv/core/MatOfByte;I)V
    .locals 44
    .param p0, "img1"    # Lorg/opencv/core/Mat;
    .param p1, "keypoints1"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p2, "img2"    # Lorg/opencv/core/Mat;
    .param p3, "keypoints2"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p4, "matches1to2"    # Lorg/opencv/core/MatOfDMatch;
    .param p5, "outImg"    # Lorg/opencv/core/Mat;
    .param p6, "matchColor"    # Lorg/opencv/core/Scalar;
    .param p7, "singlePointColor"    # Lorg/opencv/core/Scalar;
    .param p8, "matchesMask"    # Lorg/opencv/core/MatOfByte;
    .param p9, "flags"    # I

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    .line 120
    move-object/from16 v2, p1

    .line 121
    .local v2, "keypoints1_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p3

    .line 122
    .local v3, "keypoints2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v4, p4

    .line 123
    .local v4, "matches1to2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v5, p8

    .line 124
    .local v5, "matchesMask_mat":Lorg/opencv/core/Mat;
    move-object/from16 v6, p0

    iget-wide v7, v6, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p2

    iget-wide v11, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v13, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v38, v2

    move-object/from16 v39, v3

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v2    # "keypoints1_mat":Lorg/opencv/core/Mat;
    .end local v3    # "keypoints2_mat":Lorg/opencv/core/Mat;
    .local v38, "keypoints1_mat":Lorg/opencv/core/Mat;
    .local v39, "keypoints2_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v41, v2

    move-object/from16 v40, v4

    move-object/from16 v4, p5

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v4    # "matches1to2_mat":Lorg/opencv/core/Mat;
    .local v40, "matches1to2_mat":Lorg/opencv/core/Mat;
    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/16 v16, 0x0

    aget-wide v19, v4, v16

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/16 v17, 0x1

    aget-wide v21, v4, v17

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/16 v18, 0x2

    aget-wide v23, v4, v18

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/16 v25, 0x3

    aget-wide v26, v4, v25

    iget-object v4, v1, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v28, v4, v16

    iget-object v4, v1, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v30, v4, v17

    iget-object v4, v1, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v32, v4, v18

    iget-object v4, v1, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v34, v4, v25

    iget-wide v0, v5, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v15, v41

    move-wide/from16 v17, v2

    move-wide/from16 v25, v26

    move-wide/from16 v27, v28

    move-wide/from16 v29, v30

    move-wide/from16 v31, v32

    move-wide/from16 v33, v34

    move-wide/from16 v35, v0

    move/from16 v37, p9

    invoke-static/range {v7 .. v37}, Lorg/opencv/features2d/Features2d;->drawMatches_0(JJJJJJDDDDDDDDJI)V

    .line 125
    return-void
.end method

.method public static drawMatchesKnn(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Ljava/util/List;Lorg/opencv/core/Mat;)V
    .locals 21
    .param p0, "img1"    # Lorg/opencv/core/Mat;
    .param p1, "keypoints1"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p2, "img2"    # Lorg/opencv/core/Mat;
    .param p3, "keypoints2"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p5, "outImg"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/MatOfKeyPoint;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/MatOfKeyPoint;",
            "Ljava/util/List<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;",
            "Lorg/opencv/core/Mat;",
            ")V"
        }
    .end annotation

    .local p4, "matches1to2":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    move-object/from16 v0, p4

    .line 280
    move-object/from16 v1, p1

    .line 281
    .local v1, "keypoints1_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p3

    .line 282
    .local v2, "keypoints2_mat":Lorg/opencv/core/Mat;
    new-instance v3, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 283
    .local v3, "matches1to2_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {v0, v3}, Lorg/opencv/utils/Converters;->vector_vector_DMatch_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v4

    .line 284
    .local v4, "matches1to2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v5, p0

    iget-wide v6, v5, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v10, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v12, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v18, v1

    iget-wide v0, v4, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v1    # "keypoints1_mat":Lorg/opencv/core/Mat;
    .local v18, "keypoints1_mat":Lorg/opencv/core/Mat;
    move-object/from16 v15, p5

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    iget-wide v2, v15, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v2    # "keypoints2_mat":Lorg/opencv/core/Mat;
    .end local v3    # "matches1to2_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local v19, "keypoints2_mat":Lorg/opencv/core/Mat;
    .local v20, "matches1to2_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-wide v14, v0

    move-wide/from16 v16, v2

    invoke-static/range {v6 .. v17}, Lorg/opencv/features2d/Features2d;->drawMatchesKnn_4(JJJJJJ)V

    .line 285
    return-void
.end method

.method public static drawMatchesKnn(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;)V
    .locals 32
    .param p0, "img1"    # Lorg/opencv/core/Mat;
    .param p1, "keypoints1"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p2, "img2"    # Lorg/opencv/core/Mat;
    .param p3, "keypoints2"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p5, "outImg"    # Lorg/opencv/core/Mat;
    .param p6, "matchColor"    # Lorg/opencv/core/Scalar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/MatOfKeyPoint;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/MatOfKeyPoint;",
            "Ljava/util/List<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Scalar;",
            ")V"
        }
    .end annotation

    .local p4, "matches1to2":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    move-object/from16 v0, p4

    .line 272
    move-object/from16 v1, p6

    move-object/from16 v2, p1

    .line 273
    .local v2, "keypoints1_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p3

    .line 274
    .local v3, "keypoints2_mat":Lorg/opencv/core/Mat;
    new-instance v4, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 275
    .local v4, "matches1to2_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {v0, v4}, Lorg/opencv/utils/Converters;->vector_vector_DMatch_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v6

    .line 276
    .local v6, "matches1to2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v7, p0

    iget-wide v8, v7, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v12, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v14, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    iget-wide v2, v6, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v2    # "keypoints1_mat":Lorg/opencv/core/Mat;
    .end local v3    # "keypoints2_mat":Lorg/opencv/core/Mat;
    .local v28, "keypoints1_mat":Lorg/opencv/core/Mat;
    .local v29, "keypoints2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v5, p5

    move-object/from16 v30, v6

    iget-wide v6, v5, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v6    # "matches1to2_mat":Lorg/opencv/core/Mat;
    .local v30, "matches1to2_mat":Lorg/opencv/core/Mat;
    iget-object v0, v1, Lorg/opencv/core/Scalar;->val:[D

    const/16 v16, 0x0

    aget-wide v20, v0, v16

    iget-object v0, v1, Lorg/opencv/core/Scalar;->val:[D

    const/16 v16, 0x1

    aget-wide v22, v0, v16

    iget-object v0, v1, Lorg/opencv/core/Scalar;->val:[D

    const/16 v16, 0x2

    aget-wide v24, v0, v16

    iget-object v0, v1, Lorg/opencv/core/Scalar;->val:[D

    const/16 v16, 0x3

    aget-wide v26, v0, v16

    move-wide/from16 v16, v2

    move-wide/from16 v18, v6

    invoke-static/range {v8 .. v27}, Lorg/opencv/features2d/Features2d;->drawMatchesKnn_3(JJJJJJDDDD)V

    .line 277
    return-void
.end method

.method public static drawMatchesKnn(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Scalar;)V
    .locals 43
    .param p0, "img1"    # Lorg/opencv/core/Mat;
    .param p1, "keypoints1"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p2, "img2"    # Lorg/opencv/core/Mat;
    .param p3, "keypoints2"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p5, "outImg"    # Lorg/opencv/core/Mat;
    .param p6, "matchColor"    # Lorg/opencv/core/Scalar;
    .param p7, "singlePointColor"    # Lorg/opencv/core/Scalar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/MatOfKeyPoint;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/MatOfKeyPoint;",
            "Ljava/util/List<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Scalar;",
            "Lorg/opencv/core/Scalar;",
            ")V"
        }
    .end annotation

    .local p4, "matches1to2":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    move-object/from16 v0, p4

    move-object/from16 v1, p6

    .line 264
    move-object/from16 v2, p7

    move-object/from16 v3, p1

    .line 265
    .local v3, "keypoints1_mat":Lorg/opencv/core/Mat;
    move-object/from16 v4, p3

    .line 266
    .local v4, "keypoints2_mat":Lorg/opencv/core/Mat;
    new-instance v5, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 267
    .local v5, "matches1to2_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {v0, v5}, Lorg/opencv/utils/Converters;->vector_vector_DMatch_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v7

    .line 268
    .local v7, "matches1to2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v8, p0

    iget-wide v9, v8, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v11, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p2

    iget-wide v13, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v37, v13

    iget-wide v13, v4, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v39, v3

    move-object/from16 v40, v4

    iget-wide v3, v7, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v3    # "keypoints1_mat":Lorg/opencv/core/Mat;
    .end local v4    # "keypoints2_mat":Lorg/opencv/core/Mat;
    .local v39, "keypoints1_mat":Lorg/opencv/core/Mat;
    .local v40, "keypoints2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v6, p5

    move-object/from16 v41, v7

    iget-wide v7, v6, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v7    # "matches1to2_mat":Lorg/opencv/core/Mat;
    .local v41, "matches1to2_mat":Lorg/opencv/core/Mat;
    iget-object v0, v1, Lorg/opencv/core/Scalar;->val:[D

    const/16 v16, 0x0

    aget-wide v21, v0, v16

    iget-object v0, v1, Lorg/opencv/core/Scalar;->val:[D

    const/16 v17, 0x1

    aget-wide v23, v0, v17

    iget-object v0, v1, Lorg/opencv/core/Scalar;->val:[D

    const/16 v18, 0x2

    aget-wide v25, v0, v18

    iget-object v0, v1, Lorg/opencv/core/Scalar;->val:[D

    const/16 v19, 0x3

    aget-wide v27, v0, v19

    iget-object v0, v2, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v29, v0, v16

    iget-object v0, v2, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v31, v0, v17

    iget-object v0, v2, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v33, v0, v18

    iget-object v0, v2, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v35, v0, v19

    move-wide/from16 v16, v13

    move-wide/from16 v13, v37

    move-wide/from16 v15, v16

    move-wide/from16 v17, v3

    move-wide/from16 v19, v7

    invoke-static/range {v9 .. v36}, Lorg/opencv/features2d/Features2d;->drawMatchesKnn_2(JJJJJJDDDDDDDD)V

    .line 269
    return-void
.end method

.method public static drawMatchesKnn(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Scalar;Ljava/util/List;)V
    .locals 50
    .param p0, "img1"    # Lorg/opencv/core/Mat;
    .param p1, "keypoints1"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p2, "img2"    # Lorg/opencv/core/Mat;
    .param p3, "keypoints2"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p5, "outImg"    # Lorg/opencv/core/Mat;
    .param p6, "matchColor"    # Lorg/opencv/core/Scalar;
    .param p7, "singlePointColor"    # Lorg/opencv/core/Scalar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/MatOfKeyPoint;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/MatOfKeyPoint;",
            "Ljava/util/List<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Scalar;",
            "Lorg/opencv/core/Scalar;",
            "Ljava/util/List<",
            "Lorg/opencv/core/MatOfByte;",
            ">;)V"
        }
    .end annotation

    .local p4, "matches1to2":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    .local p8, "matchesMask":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfByte;>;"
    move-object/from16 v0, p4

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    .line 254
    move-object/from16 v3, p8

    move-object/from16 v4, p1

    .line 255
    .local v4, "keypoints1_mat":Lorg/opencv/core/Mat;
    move-object/from16 v5, p3

    .line 256
    .local v5, "keypoints2_mat":Lorg/opencv/core/Mat;
    new-instance v6, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 257
    .local v6, "matches1to2_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {v0, v6}, Lorg/opencv/utils/Converters;->vector_vector_DMatch_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v8

    .line 258
    .local v8, "matches1to2_mat":Lorg/opencv/core/Mat;
    new-instance v9, Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 259
    .local v9, "matchesMask_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {v3, v9}, Lorg/opencv/utils/Converters;->vector_vector_char_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v10

    .line 260
    .local v10, "matchesMask_mat":Lorg/opencv/core/Mat;
    move-object/from16 v11, p0

    iget-wide v12, v11, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v14, v4, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v7, p2

    move-object/from16 v42, v4

    iget-wide v3, v7, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v4    # "keypoints1_mat":Lorg/opencv/core/Mat;
    .local v42, "keypoints1_mat":Lorg/opencv/core/Mat;
    move-object/from16 v43, v6

    iget-wide v6, v5, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v6    # "matches1to2_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local v43, "matches1to2_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v44, v5

    move-wide/from16 v45, v6

    iget-wide v5, v8, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v5    # "keypoints2_mat":Lorg/opencv/core/Mat;
    .local v44, "keypoints2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v7, p5

    move-object/from16 v47, v8

    move-object/from16 v48, v9

    iget-wide v8, v7, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v8    # "matches1to2_mat":Lorg/opencv/core/Mat;
    .end local v9    # "matchesMask_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local v47, "matches1to2_mat":Lorg/opencv/core/Mat;
    .local v48, "matchesMask_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    iget-object v0, v1, Lorg/opencv/core/Scalar;->val:[D

    const/16 v16, 0x0

    aget-wide v24, v0, v16

    iget-object v0, v1, Lorg/opencv/core/Scalar;->val:[D

    const/16 v17, 0x1

    aget-wide v26, v0, v17

    iget-object v0, v1, Lorg/opencv/core/Scalar;->val:[D

    const/16 v18, 0x2

    aget-wide v28, v0, v18

    iget-object v0, v1, Lorg/opencv/core/Scalar;->val:[D

    const/16 v19, 0x3

    aget-wide v30, v0, v19

    iget-object v0, v2, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v32, v0, v16

    iget-object v0, v2, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v34, v0, v17

    iget-object v0, v2, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v36, v0, v18

    iget-object v0, v2, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v38, v0, v19

    iget-wide v0, v10, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, v3

    move-wide/from16 v18, v45

    move-wide/from16 v20, v5

    move-wide/from16 v22, v8

    move-wide/from16 v40, v0

    invoke-static/range {v12 .. v41}, Lorg/opencv/features2d/Features2d;->drawMatchesKnn_1(JJJJJJDDDDDDDDJ)V

    .line 261
    return-void
.end method

.method public static drawMatchesKnn(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfKeyPoint;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Scalar;Ljava/util/List;I)V
    .locals 51
    .param p0, "img1"    # Lorg/opencv/core/Mat;
    .param p1, "keypoints1"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p2, "img2"    # Lorg/opencv/core/Mat;
    .param p3, "keypoints2"    # Lorg/opencv/core/MatOfKeyPoint;
    .param p5, "outImg"    # Lorg/opencv/core/Mat;
    .param p6, "matchColor"    # Lorg/opencv/core/Scalar;
    .param p7, "singlePointColor"    # Lorg/opencv/core/Scalar;
    .param p9, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/MatOfKeyPoint;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/MatOfKeyPoint;",
            "Ljava/util/List<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Scalar;",
            "Lorg/opencv/core/Scalar;",
            "Ljava/util/List<",
            "Lorg/opencv/core/MatOfByte;",
            ">;I)V"
        }
    .end annotation

    .local p4, "matches1to2":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    .local p8, "matchesMask":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfByte;>;"
    move-object/from16 v0, p4

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    .line 244
    move-object/from16 v4, p1

    .line 245
    .local v4, "keypoints1_mat":Lorg/opencv/core/Mat;
    move-object/from16 v5, p3

    .line 246
    .local v5, "keypoints2_mat":Lorg/opencv/core/Mat;
    new-instance v6, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 247
    .local v6, "matches1to2_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {v0, v6}, Lorg/opencv/utils/Converters;->vector_vector_DMatch_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v8

    .line 248
    .local v8, "matches1to2_mat":Lorg/opencv/core/Mat;
    new-instance v9, Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 249
    .local v9, "matchesMask_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {v3, v9}, Lorg/opencv/utils/Converters;->vector_vector_char_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v10

    .line 250
    .local v10, "matchesMask_mat":Lorg/opencv/core/Mat;
    move-object/from16 v11, p0

    iget-wide v12, v11, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v14, v4, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v7, p2

    move-object/from16 v43, v4

    iget-wide v3, v7, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v4    # "keypoints1_mat":Lorg/opencv/core/Mat;
    .local v43, "keypoints1_mat":Lorg/opencv/core/Mat;
    move-object/from16 v44, v6

    iget-wide v6, v5, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v6    # "matches1to2_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local v44, "matches1to2_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v45, v5

    move-wide/from16 v46, v6

    iget-wide v5, v8, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v5    # "keypoints2_mat":Lorg/opencv/core/Mat;
    .local v45, "keypoints2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v7, p5

    move-object/from16 v48, v8

    move-object/from16 v49, v9

    iget-wide v8, v7, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v8    # "matches1to2_mat":Lorg/opencv/core/Mat;
    .end local v9    # "matchesMask_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local v48, "matches1to2_mat":Lorg/opencv/core/Mat;
    .local v49, "matchesMask_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    iget-object v0, v1, Lorg/opencv/core/Scalar;->val:[D

    const/16 v16, 0x0

    aget-wide v24, v0, v16

    iget-object v0, v1, Lorg/opencv/core/Scalar;->val:[D

    const/16 v17, 0x1

    aget-wide v26, v0, v17

    iget-object v0, v1, Lorg/opencv/core/Scalar;->val:[D

    const/16 v18, 0x2

    aget-wide v28, v0, v18

    iget-object v0, v1, Lorg/opencv/core/Scalar;->val:[D

    const/16 v19, 0x3

    aget-wide v30, v0, v19

    iget-object v0, v2, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v32, v0, v16

    iget-object v0, v2, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v34, v0, v17

    iget-object v0, v2, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v36, v0, v18

    iget-object v0, v2, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v38, v0, v19

    iget-wide v0, v10, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, v3

    move-wide/from16 v18, v46

    move-wide/from16 v20, v5

    move-wide/from16 v22, v8

    move-wide/from16 v40, v0

    move/from16 v42, p9

    invoke-static/range {v12 .. v42}, Lorg/opencv/features2d/Features2d;->drawMatchesKnn_0(JJJJJJDDDDDDDDJI)V

    .line 251
    return-void
.end method

.method private static native drawMatchesKnn_0(JJJJJJDDDDDDDDJI)V
.end method

.method private static native drawMatchesKnn_1(JJJJJJDDDDDDDDJ)V
.end method

.method private static native drawMatchesKnn_2(JJJJJJDDDDDDDD)V
.end method

.method private static native drawMatchesKnn_3(JJJJJJDDDD)V
.end method

.method private static native drawMatchesKnn_4(JJJJJJ)V
.end method

.method private static native drawMatches_0(JJJJJJDDDDDDDDJI)V
.end method

.method private static native drawMatches_1(JJJJJJDDDDDDDDJ)V
.end method

.method private static native drawMatches_2(JJJJJJDDDDDDDD)V
.end method

.method private static native drawMatches_3(JJJJJJDDDD)V
.end method

.method private static native drawMatches_4(JJJJJJ)V
.end method
