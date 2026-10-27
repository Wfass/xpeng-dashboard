.class public Lorg/opencv/calib3d/Calib3d;
.super Ljava/lang/Object;
.source "Calib3d.java"


# static fields
.field public static final CALIB_CB_ACCURACY:I = 0x20

.field public static final CALIB_CB_ADAPTIVE_THRESH:I = 0x1

.field public static final CALIB_CB_ASYMMETRIC_GRID:I = 0x2

.field public static final CALIB_CB_CLUSTERING:I = 0x4

.field public static final CALIB_CB_EXHAUSTIVE:I = 0x10

.field public static final CALIB_CB_FAST_CHECK:I = 0x8

.field public static final CALIB_CB_FILTER_QUADS:I = 0x4

.field public static final CALIB_CB_LARGER:I = 0x40

.field public static final CALIB_CB_MARKER:I = 0x80

.field public static final CALIB_CB_NORMALIZE_IMAGE:I = 0x2

.field public static final CALIB_CB_SYMMETRIC_GRID:I = 0x1

.field public static final CALIB_FIX_ASPECT_RATIO:I = 0x2

.field public static final CALIB_FIX_FOCAL_LENGTH:I = 0x10

.field public static final CALIB_FIX_INTRINSIC:I = 0x100

.field public static final CALIB_FIX_K1:I = 0x20

.field public static final CALIB_FIX_K2:I = 0x40

.field public static final CALIB_FIX_K3:I = 0x80

.field public static final CALIB_FIX_K4:I = 0x800

.field public static final CALIB_FIX_K5:I = 0x1000

.field public static final CALIB_FIX_K6:I = 0x2000

.field public static final CALIB_FIX_PRINCIPAL_POINT:I = 0x4

.field public static final CALIB_FIX_S1_S2_S3_S4:I = 0x10000

.field public static final CALIB_FIX_TANGENT_DIST:I = 0x200000

.field public static final CALIB_FIX_TAUX_TAUY:I = 0x80000

.field public static final CALIB_HAND_EYE_ANDREFF:I = 0x3

.field public static final CALIB_HAND_EYE_DANIILIDIS:I = 0x4

.field public static final CALIB_HAND_EYE_HORAUD:I = 0x2

.field public static final CALIB_HAND_EYE_PARK:I = 0x1

.field public static final CALIB_HAND_EYE_TSAI:I = 0x0

.field public static final CALIB_NINTRINSIC:I = 0x12

.field public static final CALIB_RATIONAL_MODEL:I = 0x4000

.field public static final CALIB_SAME_FOCAL_LENGTH:I = 0x200

.field public static final CALIB_THIN_PRISM_MODEL:I = 0x8000

.field public static final CALIB_TILTED_MODEL:I = 0x40000

.field public static final CALIB_USE_EXTRINSIC_GUESS:I = 0x400000

.field public static final CALIB_USE_INTRINSIC_GUESS:I = 0x1

.field public static final CALIB_USE_LU:I = 0x20000

.field public static final CALIB_USE_QR:I = 0x100000

.field public static final CALIB_ZERO_DISPARITY:I = 0x400

.field public static final CALIB_ZERO_TANGENT_DIST:I = 0x8

.field public static final CV_DLS:I = 0x3

.field public static final CV_EPNP:I = 0x1

.field public static final CV_ITERATIVE:I = 0x0

.field public static final CV_P3P:I = 0x2

.field public static final CirclesGridFinderParameters_ASYMMETRIC_GRID:I = 0x1

.field public static final CirclesGridFinderParameters_SYMMETRIC_GRID:I = 0x0

.field public static final CvLevMarq_CALC_J:I = 0x2

.field public static final CvLevMarq_CHECK_ERR:I = 0x3

.field public static final CvLevMarq_DONE:I = 0x0

.field public static final CvLevMarq_STARTED:I = 0x1

.field public static final FM_7POINT:I = 0x1

.field public static final FM_8POINT:I = 0x2

.field public static final FM_LMEDS:I = 0x4

.field public static final FM_RANSAC:I = 0x8

.field public static final LMEDS:I = 0x4

.field public static final PROJ_SPHERICAL_EQRECT:I = 0x1

.field public static final PROJ_SPHERICAL_ORTHO:I = 0x0

.field public static final RANSAC:I = 0x8

.field public static final RHO:I = 0x10

.field public static final SOLVEPNP_AP3P:I = 0x5

.field public static final SOLVEPNP_DLS:I = 0x3

.field public static final SOLVEPNP_EPNP:I = 0x1

.field public static final SOLVEPNP_IPPE:I = 0x6

.field public static final SOLVEPNP_IPPE_SQUARE:I = 0x7

.field public static final SOLVEPNP_ITERATIVE:I = 0x0

.field public static final SOLVEPNP_MAX_COUNT:I = 0x8

.field public static final SOLVEPNP_P3P:I = 0x2

.field public static final SOLVEPNP_UPNP:I = 0x4

.field public static final fisheye_CALIB_CHECK_COND:I = 0x4

.field public static final fisheye_CALIB_FIX_INTRINSIC:I = 0x100

.field public static final fisheye_CALIB_FIX_K1:I = 0x10

.field public static final fisheye_CALIB_FIX_K2:I = 0x20

.field public static final fisheye_CALIB_FIX_K3:I = 0x40

.field public static final fisheye_CALIB_FIX_K4:I = 0x80

.field public static final fisheye_CALIB_FIX_PRINCIPAL_POINT:I = 0x200

.field public static final fisheye_CALIB_FIX_SKEW:I = 0x8

.field public static final fisheye_CALIB_RECOMPUTE_EXTRINSIC:I = 0x2

.field public static final fisheye_CALIB_USE_INTRINSIC_GUESS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static RQDecomp3x3(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)[D
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "mtxR"    # Lorg/opencv/core/Mat;
    .param p2, "mtxQ"    # Lorg/opencv/core/Mat;

    .line 2597
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/calib3d/Calib3d;->RQDecomp3x3_3(JJJ)[D

    move-result-object v0

    return-object v0
.end method

.method public static RQDecomp3x3(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)[D
    .locals 8
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "mtxR"    # Lorg/opencv/core/Mat;
    .param p2, "mtxQ"    # Lorg/opencv/core/Mat;
    .param p3, "Qx"    # Lorg/opencv/core/Mat;

    .line 2575
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/calib3d/Calib3d;->RQDecomp3x3_2(JJJJ)[D

    move-result-object v0

    return-object v0
.end method

.method public static RQDecomp3x3(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)[D
    .locals 10
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "mtxR"    # Lorg/opencv/core/Mat;
    .param p2, "mtxQ"    # Lorg/opencv/core/Mat;
    .param p3, "Qx"    # Lorg/opencv/core/Mat;
    .param p4, "Qy"    # Lorg/opencv/core/Mat;

    .line 2552
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, p4, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v9}, Lorg/opencv/calib3d/Calib3d;->RQDecomp3x3_1(JJJJJ)[D

    move-result-object v0

    return-object v0
.end method

.method public static RQDecomp3x3(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)[D
    .locals 17
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "mtxR"    # Lorg/opencv/core/Mat;
    .param p2, "mtxQ"    # Lorg/opencv/core/Mat;
    .param p3, "Qx"    # Lorg/opencv/core/Mat;
    .param p4, "Qy"    # Lorg/opencv/core/Mat;
    .param p5, "Qz"    # Lorg/opencv/core/Mat;

    .line 2528
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p1

    iget-wide v3, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v5, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p3

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v11, p4

    iget-wide v9, v11, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p5

    iget-wide v13, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v11, v13

    invoke-static/range {v1 .. v12}, Lorg/opencv/calib3d/Calib3d;->RQDecomp3x3_0(JJJJJJ)[D

    move-result-object v1

    return-object v1
.end method

.method private static native RQDecomp3x3_0(JJJJJJ)[D
.end method

.method private static native RQDecomp3x3_1(JJJJJ)[D
.end method

.method private static native RQDecomp3x3_2(JJJJ)[D
.end method

.method private static native RQDecomp3x3_3(JJJ)[D
.end method

.method public static Rodrigues(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .line 8426
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/calib3d/Calib3d;->Rodrigues_1(JJ)V

    .line 8427
    return-void
.end method

.method public static Rodrigues(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "jacobian"    # Lorg/opencv/core/Mat;

    .line 8384
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/calib3d/Calib3d;->Rodrigues_0(JJJ)V

    .line 8385
    return-void
.end method

.method private static native Rodrigues_0(JJJ)V
.end method

.method private static native Rodrigues_1(JJ)V
.end method

.method public static calibrateCamera(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;)D
    .locals 26
    .param p2, "imageSize"    # Lorg/opencv/core/Size;
    .param p3, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p4, "distCoeffs"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;)D"
        }
    .end annotation

    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p5, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p6, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p2

    .line 4718
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 4719
    .local v1, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 4720
    .local v2, "imagePoints_mat":Lorg/opencv/core/Mat;
    new-instance v3, Lorg/opencv/core/Mat;

    invoke-direct {v3}, Lorg/opencv/core/Mat;-><init>()V

    .line 4721
    .local v3, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v4, Lorg/opencv/core/Mat;

    invoke-direct {v4}, Lorg/opencv/core/Mat;-><init>()V

    .line 4722
    .local v4, "tvecs_mat":Lorg/opencv/core/Mat;
    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v11, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v15, p3

    iget-wide v13, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v1    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v2    # "imagePoints_mat":Lorg/opencv/core/Mat;
    .local v21, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v22, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v23, v1

    iget-wide v0, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v25, v3

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v3    # "rvecs_mat":Lorg/opencv/core/Mat;
    .local v25, "rvecs_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v15, v23

    move-wide/from16 v17, v0

    move-wide/from16 v19, v2

    invoke-static/range {v5 .. v20}, Lorg/opencv/calib3d/Calib3d;->calibrateCamera_2(JJDDJJJJ)D

    move-result-wide v0

    .line 4723
    .local v0, "retVal":D
    move-object/from16 v2, p5

    move-object/from16 v3, v25

    invoke-static {v3, v2}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 4724
    .end local v25    # "rvecs_mat":Lorg/opencv/core/Mat;
    .restart local v3    # "rvecs_mat":Lorg/opencv/core/Mat;
    invoke-virtual {v3}, Lorg/opencv/core/Mat;->release()V

    .line 4725
    move-object/from16 v5, p6

    invoke-static {v4, v5}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 4726
    invoke-virtual {v4}, Lorg/opencv/core/Mat;->release()V

    .line 4727
    return-wide v0
.end method

.method public static calibrateCamera(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;I)D
    .locals 27
    .param p2, "imageSize"    # Lorg/opencv/core/Size;
    .param p3, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p4, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p7, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;I)D"
        }
    .end annotation

    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p5, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p6, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p2

    .line 4705
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 4706
    .local v1, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 4707
    .local v2, "imagePoints_mat":Lorg/opencv/core/Mat;
    new-instance v3, Lorg/opencv/core/Mat;

    invoke-direct {v3}, Lorg/opencv/core/Mat;-><init>()V

    .line 4708
    .local v3, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v4, Lorg/opencv/core/Mat;

    invoke-direct {v4}, Lorg/opencv/core/Mat;-><init>()V

    .line 4709
    .local v4, "tvecs_mat":Lorg/opencv/core/Mat;
    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v11, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v15, p3

    iget-wide v13, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v1    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v2    # "imagePoints_mat":Lorg/opencv/core/Mat;
    .local v22, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v23, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v24, v1

    iget-wide v0, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v26, v3

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v3    # "rvecs_mat":Lorg/opencv/core/Mat;
    .local v26, "rvecs_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v15, v24

    move-wide/from16 v17, v0

    move-wide/from16 v19, v2

    move/from16 v21, p7

    invoke-static/range {v5 .. v21}, Lorg/opencv/calib3d/Calib3d;->calibrateCamera_1(JJDDJJJJI)D

    move-result-wide v0

    .line 4710
    .local v0, "retVal":D
    move-object/from16 v2, p5

    move-object/from16 v3, v26

    invoke-static {v3, v2}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 4711
    .end local v26    # "rvecs_mat":Lorg/opencv/core/Mat;
    .restart local v3    # "rvecs_mat":Lorg/opencv/core/Mat;
    invoke-virtual {v3}, Lorg/opencv/core/Mat;->release()V

    .line 4712
    move-object/from16 v5, p6

    invoke-static {v4, v5}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 4713
    invoke-virtual {v4}, Lorg/opencv/core/Mat;->release()V

    .line 4714
    return-wide v0
.end method

.method public static calibrateCamera(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;ILorg/opencv/core/TermCriteria;)D
    .locals 38
    .param p2, "imageSize"    # Lorg/opencv/core/Size;
    .param p3, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p4, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p7, "flags"    # I
    .param p8, "criteria"    # Lorg/opencv/core/TermCriteria;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;I",
            "Lorg/opencv/core/TermCriteria;",
            ")D"
        }
    .end annotation

    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p5, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p6, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p2

    .line 4692
    move-object/from16 v1, p8

    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 4693
    .local v2, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v3

    .line 4694
    .local v3, "imagePoints_mat":Lorg/opencv/core/Mat;
    new-instance v4, Lorg/opencv/core/Mat;

    invoke-direct {v4}, Lorg/opencv/core/Mat;-><init>()V

    .line 4695
    .local v4, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v5, Lorg/opencv/core/Mat;

    invoke-direct {v5}, Lorg/opencv/core/Mat;-><init>()V

    .line 4696
    .local v5, "tvecs_mat":Lorg/opencv/core/Mat;
    iget-wide v6, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v12, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v14, p3

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    iget-wide v2, v14, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v2    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v3    # "imagePoints_mat":Lorg/opencv/core/Mat;
    .local v27, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v28, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v15, p4

    move-wide/from16 v29, v2

    iget-wide v2, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v31, v2

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v33, v2

    iget-wide v2, v5, Lorg/opencv/core/Mat;->nativeObj:J

    iget v0, v1, Lorg/opencv/core/TermCriteria;->type:I

    move-object/from16 v35, v5

    iget v5, v1, Lorg/opencv/core/TermCriteria;->maxCount:I

    .end local v5    # "tvecs_mat":Lorg/opencv/core/Mat;
    .local v35, "tvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v36, v4

    move/from16 v37, v5

    iget-wide v4, v1, Lorg/opencv/core/TermCriteria;->epsilon:D

    .end local v4    # "rvecs_mat":Lorg/opencv/core/Mat;
    .local v36, "rvecs_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v14, v29

    move-wide/from16 v16, v31

    move-wide/from16 v18, v33

    move-wide/from16 v20, v2

    move/from16 v22, p7

    move/from16 v23, v0

    move/from16 v24, v37

    move-wide/from16 v25, v4

    invoke-static/range {v6 .. v26}, Lorg/opencv/calib3d/Calib3d;->calibrateCamera_0(JJDDJJJJIIID)D

    move-result-wide v2

    .line 4697
    .local v2, "retVal":D
    move-object/from16 v0, p5

    move-object/from16 v4, v36

    invoke-static {v4, v0}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 4698
    .end local v36    # "rvecs_mat":Lorg/opencv/core/Mat;
    .restart local v4    # "rvecs_mat":Lorg/opencv/core/Mat;
    invoke-virtual {v4}, Lorg/opencv/core/Mat;->release()V

    .line 4699
    move-object/from16 v5, p6

    move-object/from16 v6, v35

    invoke-static {v6, v5}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 4700
    .end local v35    # "tvecs_mat":Lorg/opencv/core/Mat;
    .local v6, "tvecs_mat":Lorg/opencv/core/Mat;
    invoke-virtual {v6}, Lorg/opencv/core/Mat;->release()V

    .line 4701
    return-wide v2
.end method

.method public static calibrateCameraExtended(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)D
    .locals 39
    .param p2, "imageSize"    # Lorg/opencv/core/Size;
    .param p3, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p4, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p7, "stdDeviationsIntrinsics"    # Lorg/opencv/core/Mat;
    .param p8, "stdDeviationsExtrinsics"    # Lorg/opencv/core/Mat;
    .param p9, "perViewErrors"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            ")D"
        }
    .end annotation

    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p5, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p6, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p2

    .line 4674
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 4675
    .local v1, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 4676
    .local v2, "imagePoints_mat":Lorg/opencv/core/Mat;
    new-instance v3, Lorg/opencv/core/Mat;

    invoke-direct {v3}, Lorg/opencv/core/Mat;-><init>()V

    .line 4677
    .local v3, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v4, Lorg/opencv/core/Mat;

    invoke-direct {v4}, Lorg/opencv/core/Mat;-><init>()V

    .line 4678
    .local v4, "tvecs_mat":Lorg/opencv/core/Mat;
    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v11, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v15, p3

    iget-wide v13, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    move-object/from16 v27, v1

    move-object/from16 v28, v2

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v1    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v2    # "imagePoints_mat":Lorg/opencv/core/Mat;
    .local v27, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v28, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v29, v1

    iget-wide v0, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v31, v3

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v3    # "rvecs_mat":Lorg/opencv/core/Mat;
    .local v31, "rvecs_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v33, v2

    move-object/from16 v32, v4

    move-object/from16 v4, p7

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v4    # "tvecs_mat":Lorg/opencv/core/Mat;
    .local v32, "tvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v4, p8

    move-wide/from16 v35, v2

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v4, p9

    move-wide/from16 v37, v2

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v15, v29

    move-wide/from16 v17, v0

    move-wide/from16 v19, v33

    move-wide/from16 v21, v35

    move-wide/from16 v23, v37

    move-wide/from16 v25, v2

    invoke-static/range {v5 .. v26}, Lorg/opencv/calib3d/Calib3d;->calibrateCameraExtended_2(JJDDJJJJJJJ)D

    move-result-wide v0

    .line 4679
    .local v0, "retVal":D
    move-object/from16 v2, p5

    move-object/from16 v3, v31

    invoke-static {v3, v2}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 4680
    .end local v31    # "rvecs_mat":Lorg/opencv/core/Mat;
    .restart local v3    # "rvecs_mat":Lorg/opencv/core/Mat;
    invoke-virtual {v3}, Lorg/opencv/core/Mat;->release()V

    .line 4681
    move-object/from16 v5, p6

    move-object/from16 v6, v32

    invoke-static {v6, v5}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 4682
    .end local v32    # "tvecs_mat":Lorg/opencv/core/Mat;
    .local v6, "tvecs_mat":Lorg/opencv/core/Mat;
    invoke-virtual {v6}, Lorg/opencv/core/Mat;->release()V

    .line 4683
    return-wide v0
.end method

.method public static calibrateCameraExtended(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)D
    .locals 40
    .param p2, "imageSize"    # Lorg/opencv/core/Size;
    .param p3, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p4, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p7, "stdDeviationsIntrinsics"    # Lorg/opencv/core/Mat;
    .param p8, "stdDeviationsExtrinsics"    # Lorg/opencv/core/Mat;
    .param p9, "perViewErrors"    # Lorg/opencv/core/Mat;
    .param p10, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "I)D"
        }
    .end annotation

    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p5, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p6, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p2

    .line 4510
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 4511
    .local v1, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 4512
    .local v2, "imagePoints_mat":Lorg/opencv/core/Mat;
    new-instance v3, Lorg/opencv/core/Mat;

    invoke-direct {v3}, Lorg/opencv/core/Mat;-><init>()V

    .line 4513
    .local v3, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v4, Lorg/opencv/core/Mat;

    invoke-direct {v4}, Lorg/opencv/core/Mat;-><init>()V

    .line 4514
    .local v4, "tvecs_mat":Lorg/opencv/core/Mat;
    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v11, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v15, p3

    iget-wide v13, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    move-object/from16 v28, v1

    move-object/from16 v29, v2

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v1    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v2    # "imagePoints_mat":Lorg/opencv/core/Mat;
    .local v28, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v29, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v30, v1

    iget-wide v0, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v32, v3

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v3    # "rvecs_mat":Lorg/opencv/core/Mat;
    .local v32, "rvecs_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v34, v2

    move-object/from16 v33, v4

    move-object/from16 v4, p7

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v4    # "tvecs_mat":Lorg/opencv/core/Mat;
    .local v33, "tvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v4, p8

    move-wide/from16 v36, v2

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v4, p9

    move-wide/from16 v38, v2

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v15, v30

    move-wide/from16 v17, v0

    move-wide/from16 v19, v34

    move-wide/from16 v21, v36

    move-wide/from16 v23, v38

    move-wide/from16 v25, v2

    move/from16 v27, p10

    invoke-static/range {v5 .. v27}, Lorg/opencv/calib3d/Calib3d;->calibrateCameraExtended_1(JJDDJJJJJJJI)D

    move-result-wide v0

    .line 4515
    .local v0, "retVal":D
    move-object/from16 v2, p5

    move-object/from16 v3, v32

    invoke-static {v3, v2}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 4516
    .end local v32    # "rvecs_mat":Lorg/opencv/core/Mat;
    .restart local v3    # "rvecs_mat":Lorg/opencv/core/Mat;
    invoke-virtual {v3}, Lorg/opencv/core/Mat;->release()V

    .line 4517
    move-object/from16 v5, p6

    move-object/from16 v6, v33

    invoke-static {v6, v5}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 4518
    .end local v33    # "tvecs_mat":Lorg/opencv/core/Mat;
    .local v6, "tvecs_mat":Lorg/opencv/core/Mat;
    invoke-virtual {v6}, Lorg/opencv/core/Mat;->release()V

    .line 4519
    return-wide v0
.end method

.method public static calibrateCameraExtended(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ILorg/opencv/core/TermCriteria;)D
    .locals 50
    .param p2, "imageSize"    # Lorg/opencv/core/Size;
    .param p3, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p4, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p7, "stdDeviationsIntrinsics"    # Lorg/opencv/core/Mat;
    .param p8, "stdDeviationsExtrinsics"    # Lorg/opencv/core/Mat;
    .param p9, "perViewErrors"    # Lorg/opencv/core/Mat;
    .param p10, "flags"    # I
    .param p11, "criteria"    # Lorg/opencv/core/TermCriteria;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "I",
            "Lorg/opencv/core/TermCriteria;",
            ")D"
        }
    .end annotation

    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p5, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p6, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p2

    .line 4345
    move-object/from16 v1, p11

    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 4346
    .local v2, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v3

    .line 4347
    .local v3, "imagePoints_mat":Lorg/opencv/core/Mat;
    new-instance v4, Lorg/opencv/core/Mat;

    invoke-direct {v4}, Lorg/opencv/core/Mat;-><init>()V

    .line 4348
    .local v4, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v5, Lorg/opencv/core/Mat;

    invoke-direct {v5}, Lorg/opencv/core/Mat;-><init>()V

    .line 4349
    .local v5, "tvecs_mat":Lorg/opencv/core/Mat;
    iget-wide v6, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v12, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v14, p3

    move-object/from16 v33, v2

    move-object/from16 v34, v3

    iget-wide v2, v14, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v2    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v3    # "imagePoints_mat":Lorg/opencv/core/Mat;
    .local v33, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v34, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v15, p4

    move-wide/from16 v35, v2

    iget-wide v2, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v37, v2

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v39, v2

    iget-wide v2, v5, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    move-object/from16 v41, v4

    move-object/from16 v42, v5

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v4    # "rvecs_mat":Lorg/opencv/core/Mat;
    .end local v5    # "tvecs_mat":Lorg/opencv/core/Mat;
    .local v41, "rvecs_mat":Lorg/opencv/core/Mat;
    .local v42, "tvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, p8

    move-wide/from16 v43, v4

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p9

    move-wide/from16 v45, v4

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget v0, v1, Lorg/opencv/core/TermCriteria;->type:I

    move/from16 v47, v0

    iget v0, v1, Lorg/opencv/core/TermCriteria;->maxCount:I

    move-wide/from16 v48, v4

    iget-wide v4, v1, Lorg/opencv/core/TermCriteria;->epsilon:D

    move-wide/from16 v14, v35

    move-wide/from16 v16, v37

    move-wide/from16 v18, v39

    move-wide/from16 v20, v2

    move-wide/from16 v22, v43

    move-wide/from16 v24, v45

    move-wide/from16 v26, v48

    move/from16 v28, p10

    move/from16 v29, v47

    move/from16 v30, v0

    move-wide/from16 v31, v4

    invoke-static/range {v6 .. v32}, Lorg/opencv/calib3d/Calib3d;->calibrateCameraExtended_0(JJDDJJJJJJJIIID)D

    move-result-wide v2

    .line 4350
    .local v2, "retVal":D
    move-object/from16 v0, p5

    move-object/from16 v4, v41

    invoke-static {v4, v0}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 4351
    .end local v41    # "rvecs_mat":Lorg/opencv/core/Mat;
    .restart local v4    # "rvecs_mat":Lorg/opencv/core/Mat;
    invoke-virtual {v4}, Lorg/opencv/core/Mat;->release()V

    .line 4352
    move-object/from16 v5, p6

    move-object/from16 v6, v42

    invoke-static {v6, v5}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 4353
    .end local v42    # "tvecs_mat":Lorg/opencv/core/Mat;
    .local v6, "tvecs_mat":Lorg/opencv/core/Mat;
    invoke-virtual {v6}, Lorg/opencv/core/Mat;->release()V

    .line 4354
    return-wide v2
.end method

.method private static native calibrateCameraExtended_0(JJDDJJJJJJJIIID)D
.end method

.method private static native calibrateCameraExtended_1(JJDDJJJJJJJI)D
.end method

.method private static native calibrateCameraExtended_2(JJDDJJJJJJJ)D
.end method

.method public static calibrateCameraRO(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Size;ILorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;)D
    .locals 33
    .param p2, "imageSize"    # Lorg/opencv/core/Size;
    .param p3, "iFixedPoint"    # I
    .param p4, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p5, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p8, "newObjPoints"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "I",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            ")D"
        }
    .end annotation

    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p6, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p7, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p2

    .line 4977
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 4978
    .local v1, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 4979
    .local v2, "imagePoints_mat":Lorg/opencv/core/Mat;
    new-instance v3, Lorg/opencv/core/Mat;

    invoke-direct {v3}, Lorg/opencv/core/Mat;-><init>()V

    .line 4980
    .local v3, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v4, Lorg/opencv/core/Mat;

    invoke-direct {v4}, Lorg/opencv/core/Mat;-><init>()V

    .line 4981
    .local v4, "tvecs_mat":Lorg/opencv/core/Mat;
    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v11, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v14, p4

    move-object/from16 v24, v1

    iget-wide v0, v14, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v1    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v24, "objectPoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v15, p5

    move-wide/from16 v25, v0

    iget-wide v0, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v27, v0

    iget-wide v0, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v2    # "imagePoints_mat":Lorg/opencv/core/Mat;
    .end local v3    # "rvecs_mat":Lorg/opencv/core/Mat;
    .local v29, "imagePoints_mat":Lorg/opencv/core/Mat;
    .local v30, "rvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v13, p8

    move-wide/from16 v31, v2

    iget-wide v2, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v13, p3

    move-wide/from16 v14, v25

    move-wide/from16 v16, v27

    move-wide/from16 v18, v0

    move-wide/from16 v20, v31

    move-wide/from16 v22, v2

    invoke-static/range {v5 .. v23}, Lorg/opencv/calib3d/Calib3d;->calibrateCameraRO_2(JJDDIJJJJJ)D

    move-result-wide v0

    .line 4982
    .local v0, "retVal":D
    move-object/from16 v2, p6

    move-object/from16 v3, v30

    invoke-static {v3, v2}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 4983
    .end local v30    # "rvecs_mat":Lorg/opencv/core/Mat;
    .restart local v3    # "rvecs_mat":Lorg/opencv/core/Mat;
    invoke-virtual {v3}, Lorg/opencv/core/Mat;->release()V

    .line 4984
    move-object/from16 v5, p7

    invoke-static {v4, v5}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 4985
    invoke-virtual {v4}, Lorg/opencv/core/Mat;->release()V

    .line 4986
    return-wide v0
.end method

.method public static calibrateCameraRO(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Size;ILorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;I)D
    .locals 34
    .param p2, "imageSize"    # Lorg/opencv/core/Size;
    .param p3, "iFixedPoint"    # I
    .param p4, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p5, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p8, "newObjPoints"    # Lorg/opencv/core/Mat;
    .param p9, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "I",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "I)D"
        }
    .end annotation

    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p6, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p7, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p2

    .line 4964
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 4965
    .local v1, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 4966
    .local v2, "imagePoints_mat":Lorg/opencv/core/Mat;
    new-instance v3, Lorg/opencv/core/Mat;

    invoke-direct {v3}, Lorg/opencv/core/Mat;-><init>()V

    .line 4967
    .local v3, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v4, Lorg/opencv/core/Mat;

    invoke-direct {v4}, Lorg/opencv/core/Mat;-><init>()V

    .line 4968
    .local v4, "tvecs_mat":Lorg/opencv/core/Mat;
    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v11, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v14, p4

    move-object/from16 v25, v1

    iget-wide v0, v14, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v1    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v25, "objectPoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v15, p5

    move-wide/from16 v26, v0

    iget-wide v0, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v28, v0

    iget-wide v0, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v2    # "imagePoints_mat":Lorg/opencv/core/Mat;
    .end local v3    # "rvecs_mat":Lorg/opencv/core/Mat;
    .local v30, "imagePoints_mat":Lorg/opencv/core/Mat;
    .local v31, "rvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v13, p8

    move-wide/from16 v32, v2

    iget-wide v2, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v13, p3

    move-wide/from16 v14, v26

    move-wide/from16 v16, v28

    move-wide/from16 v18, v0

    move-wide/from16 v20, v32

    move-wide/from16 v22, v2

    move/from16 v24, p9

    invoke-static/range {v5 .. v24}, Lorg/opencv/calib3d/Calib3d;->calibrateCameraRO_1(JJDDIJJJJJI)D

    move-result-wide v0

    .line 4969
    .local v0, "retVal":D
    move-object/from16 v2, p6

    move-object/from16 v3, v31

    invoke-static {v3, v2}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 4970
    .end local v31    # "rvecs_mat":Lorg/opencv/core/Mat;
    .restart local v3    # "rvecs_mat":Lorg/opencv/core/Mat;
    invoke-virtual {v3}, Lorg/opencv/core/Mat;->release()V

    .line 4971
    move-object/from16 v5, p7

    invoke-static {v4, v5}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 4972
    invoke-virtual {v4}, Lorg/opencv/core/Mat;->release()V

    .line 4973
    return-wide v0
.end method

.method public static calibrateCameraRO(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Size;ILorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;ILorg/opencv/core/TermCriteria;)D
    .locals 43
    .param p2, "imageSize"    # Lorg/opencv/core/Size;
    .param p3, "iFixedPoint"    # I
    .param p4, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p5, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p8, "newObjPoints"    # Lorg/opencv/core/Mat;
    .param p9, "flags"    # I
    .param p10, "criteria"    # Lorg/opencv/core/TermCriteria;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "I",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "I",
            "Lorg/opencv/core/TermCriteria;",
            ")D"
        }
    .end annotation

    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p6, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p7, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p2

    .line 4951
    move-object/from16 v1, p10

    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 4952
    .local v2, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v3

    .line 4953
    .local v3, "imagePoints_mat":Lorg/opencv/core/Mat;
    new-instance v4, Lorg/opencv/core/Mat;

    invoke-direct {v4}, Lorg/opencv/core/Mat;-><init>()V

    .line 4954
    .local v4, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v5, Lorg/opencv/core/Mat;

    invoke-direct {v5}, Lorg/opencv/core/Mat;-><init>()V

    .line 4955
    .local v5, "tvecs_mat":Lorg/opencv/core/Mat;
    iget-wide v6, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v12, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v15, p4

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    iget-wide v2, v15, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v2    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v3    # "imagePoints_mat":Lorg/opencv/core/Mat;
    .local v30, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v31, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v14, p5

    move-wide/from16 v32, v2

    iget-wide v2, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v34, v2

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v36, v2

    iget-wide v2, v5, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p8

    move-object/from16 v38, v4

    move-object/from16 v39, v5

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v4    # "rvecs_mat":Lorg/opencv/core/Mat;
    .end local v5    # "tvecs_mat":Lorg/opencv/core/Mat;
    .local v38, "rvecs_mat":Lorg/opencv/core/Mat;
    .local v39, "tvecs_mat":Lorg/opencv/core/Mat;
    iget v0, v1, Lorg/opencv/core/TermCriteria;->type:I

    move/from16 v40, v0

    iget v0, v1, Lorg/opencv/core/TermCriteria;->maxCount:I

    move-wide/from16 v41, v4

    iget-wide v4, v1, Lorg/opencv/core/TermCriteria;->epsilon:D

    move/from16 v14, p3

    move-wide/from16 v15, v32

    move-wide/from16 v17, v34

    move-wide/from16 v19, v36

    move-wide/from16 v21, v2

    move-wide/from16 v23, v41

    move/from16 v25, p9

    move/from16 v26, v40

    move/from16 v27, v0

    move-wide/from16 v28, v4

    invoke-static/range {v6 .. v29}, Lorg/opencv/calib3d/Calib3d;->calibrateCameraRO_0(JJDDIJJJJJIIID)D

    move-result-wide v2

    .line 4956
    .local v2, "retVal":D
    move-object/from16 v0, p6

    move-object/from16 v4, v38

    invoke-static {v4, v0}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 4957
    .end local v38    # "rvecs_mat":Lorg/opencv/core/Mat;
    .restart local v4    # "rvecs_mat":Lorg/opencv/core/Mat;
    invoke-virtual {v4}, Lorg/opencv/core/Mat;->release()V

    .line 4958
    move-object/from16 v5, p7

    move-object/from16 v6, v39

    invoke-static {v6, v5}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 4959
    .end local v39    # "tvecs_mat":Lorg/opencv/core/Mat;
    .local v6, "tvecs_mat":Lorg/opencv/core/Mat;
    invoke-virtual {v6}, Lorg/opencv/core/Mat;->release()V

    .line 4960
    return-wide v2
.end method

.method public static calibrateCameraROExtended(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Size;ILorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)D
    .locals 50
    .param p2, "imageSize"    # Lorg/opencv/core/Size;
    .param p3, "iFixedPoint"    # I
    .param p4, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p5, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p8, "newObjPoints"    # Lorg/opencv/core/Mat;
    .param p9, "stdDeviationsIntrinsics"    # Lorg/opencv/core/Mat;
    .param p10, "stdDeviationsExtrinsics"    # Lorg/opencv/core/Mat;
    .param p11, "stdDeviationsObjPoints"    # Lorg/opencv/core/Mat;
    .param p12, "perViewErrors"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "I",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            ")D"
        }
    .end annotation

    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p6, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p7, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p2

    .line 4933
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 4934
    .local v1, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 4935
    .local v2, "imagePoints_mat":Lorg/opencv/core/Mat;
    new-instance v3, Lorg/opencv/core/Mat;

    invoke-direct {v3}, Lorg/opencv/core/Mat;-><init>()V

    .line 4936
    .local v3, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v4, Lorg/opencv/core/Mat;

    invoke-direct {v4}, Lorg/opencv/core/Mat;-><init>()V

    .line 4937
    .local v4, "tvecs_mat":Lorg/opencv/core/Mat;
    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v11, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v14, p4

    move-object/from16 v32, v1

    iget-wide v0, v14, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v1    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v32, "objectPoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v15, p5

    move-wide/from16 v33, v0

    iget-wide v0, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v35, v0

    iget-wide v0, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v37, v2

    move-object/from16 v38, v3

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v2    # "imagePoints_mat":Lorg/opencv/core/Mat;
    .end local v3    # "rvecs_mat":Lorg/opencv/core/Mat;
    .local v37, "imagePoints_mat":Lorg/opencv/core/Mat;
    .local v38, "rvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v13, p8

    move-wide/from16 v39, v2

    iget-wide v2, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v42, v2

    move-object/from16 v41, v4

    move-object/from16 v4, p9

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v4    # "tvecs_mat":Lorg/opencv/core/Mat;
    .local v41, "tvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v4, p10

    move-wide/from16 v44, v2

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v4, p11

    move-wide/from16 v46, v2

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v4, p12

    move-wide/from16 v48, v2

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v13, p3

    move-wide/from16 v14, v33

    move-wide/from16 v16, v35

    move-wide/from16 v18, v0

    move-wide/from16 v20, v39

    move-wide/from16 v22, v42

    move-wide/from16 v24, v44

    move-wide/from16 v26, v46

    move-wide/from16 v28, v48

    move-wide/from16 v30, v2

    invoke-static/range {v5 .. v31}, Lorg/opencv/calib3d/Calib3d;->calibrateCameraROExtended_2(JJDDIJJJJJJJJJ)D

    move-result-wide v0

    .line 4938
    .local v0, "retVal":D
    move-object/from16 v2, p6

    move-object/from16 v3, v38

    invoke-static {v3, v2}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 4939
    .end local v38    # "rvecs_mat":Lorg/opencv/core/Mat;
    .restart local v3    # "rvecs_mat":Lorg/opencv/core/Mat;
    invoke-virtual {v3}, Lorg/opencv/core/Mat;->release()V

    .line 4940
    move-object/from16 v5, p7

    move-object/from16 v6, v41

    invoke-static {v6, v5}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 4941
    .end local v41    # "tvecs_mat":Lorg/opencv/core/Mat;
    .local v6, "tvecs_mat":Lorg/opencv/core/Mat;
    invoke-virtual {v6}, Lorg/opencv/core/Mat;->release()V

    .line 4942
    return-wide v0
.end method

.method public static calibrateCameraROExtended(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Size;ILorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)D
    .locals 51
    .param p2, "imageSize"    # Lorg/opencv/core/Size;
    .param p3, "iFixedPoint"    # I
    .param p4, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p5, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p8, "newObjPoints"    # Lorg/opencv/core/Mat;
    .param p9, "stdDeviationsIntrinsics"    # Lorg/opencv/core/Mat;
    .param p10, "stdDeviationsExtrinsics"    # Lorg/opencv/core/Mat;
    .param p11, "stdDeviationsObjPoints"    # Lorg/opencv/core/Mat;
    .param p12, "perViewErrors"    # Lorg/opencv/core/Mat;
    .param p13, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "I",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "I)D"
        }
    .end annotation

    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p6, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p7, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p2

    .line 4864
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 4865
    .local v1, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 4866
    .local v2, "imagePoints_mat":Lorg/opencv/core/Mat;
    new-instance v3, Lorg/opencv/core/Mat;

    invoke-direct {v3}, Lorg/opencv/core/Mat;-><init>()V

    .line 4867
    .local v3, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v4, Lorg/opencv/core/Mat;

    invoke-direct {v4}, Lorg/opencv/core/Mat;-><init>()V

    .line 4868
    .local v4, "tvecs_mat":Lorg/opencv/core/Mat;
    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v11, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v14, p4

    move-object/from16 v33, v1

    iget-wide v0, v14, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v1    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v33, "objectPoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v15, p5

    move-wide/from16 v34, v0

    iget-wide v0, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v36, v0

    iget-wide v0, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v38, v2

    move-object/from16 v39, v3

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v2    # "imagePoints_mat":Lorg/opencv/core/Mat;
    .end local v3    # "rvecs_mat":Lorg/opencv/core/Mat;
    .local v38, "imagePoints_mat":Lorg/opencv/core/Mat;
    .local v39, "rvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v13, p8

    move-wide/from16 v40, v2

    iget-wide v2, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v43, v2

    move-object/from16 v42, v4

    move-object/from16 v4, p9

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v4    # "tvecs_mat":Lorg/opencv/core/Mat;
    .local v42, "tvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v4, p10

    move-wide/from16 v45, v2

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v4, p11

    move-wide/from16 v47, v2

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v4, p12

    move-wide/from16 v49, v2

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v13, p3

    move-wide/from16 v14, v34

    move-wide/from16 v16, v36

    move-wide/from16 v18, v0

    move-wide/from16 v20, v40

    move-wide/from16 v22, v43

    move-wide/from16 v24, v45

    move-wide/from16 v26, v47

    move-wide/from16 v28, v49

    move-wide/from16 v30, v2

    move/from16 v32, p13

    invoke-static/range {v5 .. v32}, Lorg/opencv/calib3d/Calib3d;->calibrateCameraROExtended_1(JJDDIJJJJJJJJJI)D

    move-result-wide v0

    .line 4869
    .local v0, "retVal":D
    move-object/from16 v2, p6

    move-object/from16 v3, v39

    invoke-static {v3, v2}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 4870
    .end local v39    # "rvecs_mat":Lorg/opencv/core/Mat;
    .restart local v3    # "rvecs_mat":Lorg/opencv/core/Mat;
    invoke-virtual {v3}, Lorg/opencv/core/Mat;->release()V

    .line 4871
    move-object/from16 v5, p7

    move-object/from16 v6, v42

    invoke-static {v6, v5}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 4872
    .end local v42    # "tvecs_mat":Lorg/opencv/core/Mat;
    .local v6, "tvecs_mat":Lorg/opencv/core/Mat;
    invoke-virtual {v6}, Lorg/opencv/core/Mat;->release()V

    .line 4873
    return-wide v0
.end method

.method public static calibrateCameraROExtended(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Size;ILorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ILorg/opencv/core/TermCriteria;)D
    .locals 59
    .param p2, "imageSize"    # Lorg/opencv/core/Size;
    .param p3, "iFixedPoint"    # I
    .param p4, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p5, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p8, "newObjPoints"    # Lorg/opencv/core/Mat;
    .param p9, "stdDeviationsIntrinsics"    # Lorg/opencv/core/Mat;
    .param p10, "stdDeviationsExtrinsics"    # Lorg/opencv/core/Mat;
    .param p11, "stdDeviationsObjPoints"    # Lorg/opencv/core/Mat;
    .param p12, "perViewErrors"    # Lorg/opencv/core/Mat;
    .param p13, "flags"    # I
    .param p14, "criteria"    # Lorg/opencv/core/TermCriteria;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "I",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "I",
            "Lorg/opencv/core/TermCriteria;",
            ")D"
        }
    .end annotation

    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p6, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p7, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p2

    .line 4794
    move-object/from16 v1, p14

    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 4795
    .local v2, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v3

    .line 4796
    .local v3, "imagePoints_mat":Lorg/opencv/core/Mat;
    new-instance v4, Lorg/opencv/core/Mat;

    invoke-direct {v4}, Lorg/opencv/core/Mat;-><init>()V

    .line 4797
    .local v4, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v5, Lorg/opencv/core/Mat;

    invoke-direct {v5}, Lorg/opencv/core/Mat;-><init>()V

    .line 4798
    .local v5, "tvecs_mat":Lorg/opencv/core/Mat;
    iget-wide v6, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v12, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v15, p4

    move-object/from16 v38, v2

    move-object/from16 v39, v3

    iget-wide v2, v15, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v2    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v3    # "imagePoints_mat":Lorg/opencv/core/Mat;
    .local v38, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v39, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v14, p5

    move-wide/from16 v40, v2

    iget-wide v2, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v42, v2

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v44, v2

    iget-wide v2, v5, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p8

    move-object/from16 v46, v4

    move-object/from16 v47, v5

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v4    # "rvecs_mat":Lorg/opencv/core/Mat;
    .end local v5    # "tvecs_mat":Lorg/opencv/core/Mat;
    .local v46, "rvecs_mat":Lorg/opencv/core/Mat;
    .local v47, "tvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v0, p9

    move-wide/from16 v48, v4

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p10

    move-wide/from16 v50, v4

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p11

    move-wide/from16 v52, v4

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p12

    move-wide/from16 v54, v4

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget v0, v1, Lorg/opencv/core/TermCriteria;->type:I

    move/from16 v56, v0

    iget v0, v1, Lorg/opencv/core/TermCriteria;->maxCount:I

    move-wide/from16 v57, v4

    iget-wide v4, v1, Lorg/opencv/core/TermCriteria;->epsilon:D

    move/from16 v14, p3

    move-wide/from16 v15, v40

    move-wide/from16 v17, v42

    move-wide/from16 v19, v44

    move-wide/from16 v21, v2

    move-wide/from16 v23, v48

    move-wide/from16 v25, v50

    move-wide/from16 v27, v52

    move-wide/from16 v29, v54

    move-wide/from16 v31, v57

    move/from16 v33, p13

    move/from16 v34, v56

    move/from16 v35, v0

    move-wide/from16 v36, v4

    invoke-static/range {v6 .. v37}, Lorg/opencv/calib3d/Calib3d;->calibrateCameraROExtended_0(JJDDIJJJJJJJJJIIID)D

    move-result-wide v2

    .line 4799
    .local v2, "retVal":D
    move-object/from16 v0, p6

    move-object/from16 v4, v46

    invoke-static {v4, v0}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 4800
    .end local v46    # "rvecs_mat":Lorg/opencv/core/Mat;
    .restart local v4    # "rvecs_mat":Lorg/opencv/core/Mat;
    invoke-virtual {v4}, Lorg/opencv/core/Mat;->release()V

    .line 4801
    move-object/from16 v5, p7

    move-object/from16 v6, v47

    invoke-static {v6, v5}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 4802
    .end local v47    # "tvecs_mat":Lorg/opencv/core/Mat;
    .local v6, "tvecs_mat":Lorg/opencv/core/Mat;
    invoke-virtual {v6}, Lorg/opencv/core/Mat;->release()V

    .line 4803
    return-wide v2
.end method

.method private static native calibrateCameraROExtended_0(JJDDIJJJJJJJJJIIID)D
.end method

.method private static native calibrateCameraROExtended_1(JJDDIJJJJJJJJJI)D
.end method

.method private static native calibrateCameraROExtended_2(JJDDIJJJJJJJJJ)D
.end method

.method private static native calibrateCameraRO_0(JJDDIJJJJJIIID)D
.end method

.method private static native calibrateCameraRO_1(JJDDIJJJJJI)D
.end method

.method private static native calibrateCameraRO_2(JJDDIJJJJJ)D
.end method

.method private static native calibrateCamera_0(JJDDJJJJIIID)D
.end method

.method private static native calibrateCamera_1(JJDDJJJJI)D
.end method

.method private static native calibrateCamera_2(JJDDJJJJ)D
.end method

.method public static calibrateHandEye(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 18
    .param p4, "R_cam2gripper"    # Lorg/opencv/core/Mat;
    .param p5, "t_cam2gripper"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
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

    .line 8746
    .local p0, "R_gripper2base":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "t_gripper2base":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p2, "R_target2cam":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p3, "t_target2cam":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 8747
    .local v0, "R_gripper2base_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 8748
    .local v1, "t_gripper2base_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p2 .. p2}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 8749
    .local v2, "R_target2cam_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p3 .. p3}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v3

    .line 8750
    .local v3, "t_target2cam_mat":Lorg/opencv/core/Mat;
    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p4

    iget-wide v12, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p5

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    iget-wide v0, v15, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v0    # "R_gripper2base_mat":Lorg/opencv/core/Mat;
    .end local v1    # "t_gripper2base_mat":Lorg/opencv/core/Mat;
    .local v16, "R_gripper2base_mat":Lorg/opencv/core/Mat;
    .local v17, "t_gripper2base_mat":Lorg/opencv/core/Mat;
    move-wide v14, v0

    invoke-static/range {v4 .. v15}, Lorg/opencv/calib3d/Calib3d;->calibrateHandEye_1(JJJJJJ)V

    .line 8751
    return-void
.end method

.method public static calibrateHandEye(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 19
    .param p4, "R_cam2gripper"    # Lorg/opencv/core/Mat;
    .param p5, "t_cam2gripper"    # Lorg/opencv/core/Mat;
    .param p6, "method"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "I)V"
        }
    .end annotation

    .line 8587
    .local p0, "R_gripper2base":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "t_gripper2base":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p2, "R_target2cam":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p3, "t_target2cam":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 8588
    .local v0, "R_gripper2base_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 8589
    .local v1, "t_gripper2base_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p2 .. p2}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 8590
    .local v2, "R_target2cam_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p3 .. p3}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v3

    .line 8591
    .local v3, "t_target2cam_mat":Lorg/opencv/core/Mat;
    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p4

    iget-wide v12, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p5

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    iget-wide v0, v15, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v0    # "R_gripper2base_mat":Lorg/opencv/core/Mat;
    .end local v1    # "t_gripper2base_mat":Lorg/opencv/core/Mat;
    .local v17, "R_gripper2base_mat":Lorg/opencv/core/Mat;
    .local v18, "t_gripper2base_mat":Lorg/opencv/core/Mat;
    move-wide v14, v0

    move/from16 v16, p6

    invoke-static/range {v4 .. v16}, Lorg/opencv/calib3d/Calib3d;->calibrateHandEye_0(JJJJJJI)V

    .line 8592
    return-void
.end method

.method private static native calibrateHandEye_0(JJJJJJI)V
.end method

.method private static native calibrateHandEye_1(JJJJJJ)V
.end method

.method public static calibrationMatrixValues(Lorg/opencv/core/Mat;Lorg/opencv/core/Size;DD[D[D[DLorg/opencv/core/Point;[D)V
    .locals 23
    .param p0, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p1, "imageSize"    # Lorg/opencv/core/Size;
    .param p2, "apertureWidth"    # D
    .param p4, "apertureHeight"    # D
    .param p6, "fovx"    # [D
    .param p7, "fovy"    # [D
    .param p8, "focalLength"    # [D
    .param p9, "principalPoint"    # Lorg/opencv/core/Point;
    .param p10, "aspectRatio"    # [D

    move-object/from16 v0, p1

    move-object/from16 v1, p9

    .line 8780
    const/4 v2, 0x1

    new-array v11, v2, [D

    .line 8781
    .local v11, "fovx_out":[D
    new-array v9, v2, [D

    .line 8782
    .local v9, "fovy_out":[D
    new-array v10, v2, [D

    .line 8783
    .local v10, "focalLength_out":[D
    const/4 v3, 0x2

    new-array v7, v3, [D

    .line 8784
    .local v7, "principalPoint_out":[D
    new-array v8, v2, [D

    .line 8785
    .local v8, "aspectRatio_out":[D
    move-object/from16 v5, p0

    iget-wide v3, v5, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    iget-wide v7, v0, Lorg/opencv/core/Size;->height:D

    .end local v7    # "principalPoint_out":[D
    .end local v8    # "aspectRatio_out":[D
    .local v19, "principalPoint_out":[D
    .local v20, "aspectRatio_out":[D
    move-object/from16 v18, v19

    move-object/from16 v19, v20

    .end local v20    # "aspectRatio_out":[D
    .local v18, "principalPoint_out":[D
    .local v19, "aspectRatio_out":[D
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-wide/from16 v9, p2

    .end local v9    # "fovy_out":[D
    .end local v10    # "focalLength_out":[D
    .local v20, "fovy_out":[D
    .local v21, "focalLength_out":[D
    move-object/from16 v22, v11

    move-wide/from16 v11, p4

    .end local v11    # "fovx_out":[D
    .local v22, "fovx_out":[D
    move-object/from16 v13, v22

    move-object/from16 v14, v20

    move-object/from16 v15, v21

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    invoke-static/range {v3 .. v17}, Lorg/opencv/calib3d/Calib3d;->calibrationMatrixValues_0(JDDDD[D[D[D[D[D)V

    .line 8786
    const/4 v3, 0x0

    if-eqz p6, :cond_0

    aget-wide v4, v22, v3

    aput-wide v4, p6, v3

    .line 8787
    :cond_0
    if-eqz p7, :cond_1

    aget-wide v4, v20, v3

    aput-wide v4, p7, v3

    .line 8788
    :cond_1
    if-eqz p8, :cond_2

    aget-wide v4, v21, v3

    aput-wide v4, p8, v3

    .line 8789
    :cond_2
    if-eqz v1, :cond_3

    aget-wide v4, v18, v3

    iput-wide v4, v1, Lorg/opencv/core/Point;->x:D

    aget-wide v4, v18, v2

    iput-wide v4, v1, Lorg/opencv/core/Point;->y:D

    .line 8790
    :cond_3
    if-eqz p10, :cond_4

    aget-wide v4, v19, v3

    aput-wide v4, p10, v3

    .line 8791
    :cond_4
    return-void
.end method

.method private static native calibrationMatrixValues_0(JDDDD[D[D[D[D[D)V
.end method

.method public static checkChessboard(Lorg/opencv/core/Mat;Lorg/opencv/core/Size;)Z
    .locals 6
    .param p0, "img"    # Lorg/opencv/core/Mat;
    .param p1, "size"    # Lorg/opencv/core/Size;

    .line 2606
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Size;->width:D

    iget-wide v4, p1, Lorg/opencv/core/Size;->height:D

    invoke-static/range {v0 .. v5}, Lorg/opencv/calib3d/Calib3d;->checkChessboard_0(JDD)Z

    move-result v0

    return v0
.end method

.method private static native checkChessboard_0(JDD)Z
.end method

.method public static composeRT(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 17
    .param p0, "rvec1"    # Lorg/opencv/core/Mat;
    .param p1, "tvec1"    # Lorg/opencv/core/Mat;
    .param p2, "rvec2"    # Lorg/opencv/core/Mat;
    .param p3, "tvec2"    # Lorg/opencv/core/Mat;
    .param p4, "rvec3"    # Lorg/opencv/core/Mat;
    .param p5, "tvec3"    # Lorg/opencv/core/Mat;

    .line 9065
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p1

    iget-wide v3, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v5, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p3

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v11, p4

    iget-wide v9, v11, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p5

    iget-wide v13, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v11, v13

    invoke-static/range {v1 .. v12}, Lorg/opencv/calib3d/Calib3d;->composeRT_8(JJJJJJ)V

    .line 9066
    return-void
.end method

.method public static composeRT(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 18
    .param p0, "rvec1"    # Lorg/opencv/core/Mat;
    .param p1, "tvec1"    # Lorg/opencv/core/Mat;
    .param p2, "rvec2"    # Lorg/opencv/core/Mat;
    .param p3, "tvec2"    # Lorg/opencv/core/Mat;
    .param p4, "rvec3"    # Lorg/opencv/core/Mat;
    .param p5, "tvec3"    # Lorg/opencv/core/Mat;
    .param p6, "dr3dr1"    # Lorg/opencv/core/Mat;

    .line 9039
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v3, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v5, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v7, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v11, p4

    iget-wide v9, v11, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p5

    iget-wide v13, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, v11

    move-wide v11, v13

    move-wide/from16 v13, v16

    invoke-static/range {v1 .. v14}, Lorg/opencv/calib3d/Calib3d;->composeRT_7(JJJJJJJ)V

    .line 9040
    return-void
.end method

.method public static composeRT(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 21
    .param p0, "rvec1"    # Lorg/opencv/core/Mat;
    .param p1, "tvec1"    # Lorg/opencv/core/Mat;
    .param p2, "rvec2"    # Lorg/opencv/core/Mat;
    .param p3, "tvec2"    # Lorg/opencv/core/Mat;
    .param p4, "rvec3"    # Lorg/opencv/core/Mat;
    .param p5, "tvec3"    # Lorg/opencv/core/Mat;
    .param p6, "dr3dr1"    # Lorg/opencv/core/Mat;
    .param p7, "dr3dt1"    # Lorg/opencv/core/Mat;

    .line 9012
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v3, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v5, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v7, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v11, p4

    iget-wide v9, v11, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p5

    iget-wide v13, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    move-wide/from16 v19, v11

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v17, v19

    move-wide/from16 v19, v11

    move-wide v11, v13

    move-wide/from16 v13, v17

    move-wide/from16 v15, v19

    invoke-static/range {v1 .. v16}, Lorg/opencv/calib3d/Calib3d;->composeRT_6(JJJJJJJJ)V

    .line 9013
    return-void
.end method

.method public static composeRT(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 25
    .param p0, "rvec1"    # Lorg/opencv/core/Mat;
    .param p1, "tvec1"    # Lorg/opencv/core/Mat;
    .param p2, "rvec2"    # Lorg/opencv/core/Mat;
    .param p3, "tvec2"    # Lorg/opencv/core/Mat;
    .param p4, "rvec3"    # Lorg/opencv/core/Mat;
    .param p5, "tvec3"    # Lorg/opencv/core/Mat;
    .param p6, "dr3dr1"    # Lorg/opencv/core/Mat;
    .param p7, "dr3dt1"    # Lorg/opencv/core/Mat;
    .param p8, "dr3dr2"    # Lorg/opencv/core/Mat;

    .line 8984
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v3, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v5, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v7, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v11, p4

    iget-wide v9, v11, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p5

    iget-wide v13, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    move-wide/from16 v21, v11

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p8

    move-wide/from16 v23, v11

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, v21

    move-wide/from16 v19, v23

    move-wide/from16 v21, v11

    move-wide v11, v13

    move-wide/from16 v13, v16

    move-wide/from16 v15, v19

    move-wide/from16 v17, v21

    invoke-static/range {v1 .. v18}, Lorg/opencv/calib3d/Calib3d;->composeRT_5(JJJJJJJJJ)V

    .line 8985
    return-void
.end method

.method public static composeRT(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 29
    .param p0, "rvec1"    # Lorg/opencv/core/Mat;
    .param p1, "tvec1"    # Lorg/opencv/core/Mat;
    .param p2, "rvec2"    # Lorg/opencv/core/Mat;
    .param p3, "tvec2"    # Lorg/opencv/core/Mat;
    .param p4, "rvec3"    # Lorg/opencv/core/Mat;
    .param p5, "tvec3"    # Lorg/opencv/core/Mat;
    .param p6, "dr3dr1"    # Lorg/opencv/core/Mat;
    .param p7, "dr3dt1"    # Lorg/opencv/core/Mat;
    .param p8, "dr3dr2"    # Lorg/opencv/core/Mat;
    .param p9, "dr3dt2"    # Lorg/opencv/core/Mat;

    .line 8955
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v3, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v5, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v7, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v11, p4

    iget-wide v9, v11, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p5

    iget-wide v13, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    move-wide/from16 v23, v11

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p8

    move-wide/from16 v25, v11

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p9

    move-wide/from16 v27, v11

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, v23

    move-wide/from16 v18, v25

    move-wide/from16 v21, v27

    move-wide/from16 v23, v11

    move-wide v11, v13

    move-wide/from16 v13, v16

    move-wide/from16 v15, v18

    move-wide/from16 v17, v21

    move-wide/from16 v19, v23

    invoke-static/range {v1 .. v20}, Lorg/opencv/calib3d/Calib3d;->composeRT_4(JJJJJJJJJJ)V

    .line 8956
    return-void
.end method

.method public static composeRT(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 33
    .param p0, "rvec1"    # Lorg/opencv/core/Mat;
    .param p1, "tvec1"    # Lorg/opencv/core/Mat;
    .param p2, "rvec2"    # Lorg/opencv/core/Mat;
    .param p3, "tvec2"    # Lorg/opencv/core/Mat;
    .param p4, "rvec3"    # Lorg/opencv/core/Mat;
    .param p5, "tvec3"    # Lorg/opencv/core/Mat;
    .param p6, "dr3dr1"    # Lorg/opencv/core/Mat;
    .param p7, "dr3dt1"    # Lorg/opencv/core/Mat;
    .param p8, "dr3dr2"    # Lorg/opencv/core/Mat;
    .param p9, "dr3dt2"    # Lorg/opencv/core/Mat;
    .param p10, "dt3dr1"    # Lorg/opencv/core/Mat;

    .line 8925
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v3, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v5, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v7, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v11, p4

    iget-wide v9, v11, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p5

    iget-wide v13, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    move-wide/from16 v25, v11

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p8

    move-wide/from16 v27, v11

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p9

    move-wide/from16 v29, v11

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p10

    move-wide/from16 v31, v11

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, v25

    move-wide/from16 v18, v27

    move-wide/from16 v20, v29

    move-wide/from16 v23, v31

    move-wide/from16 v25, v11

    move-wide v11, v13

    move-wide/from16 v13, v16

    move-wide/from16 v15, v18

    move-wide/from16 v17, v20

    move-wide/from16 v19, v23

    move-wide/from16 v21, v25

    invoke-static/range {v1 .. v22}, Lorg/opencv/calib3d/Calib3d;->composeRT_3(JJJJJJJJJJJ)V

    .line 8926
    return-void
.end method

.method public static composeRT(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 37
    .param p0, "rvec1"    # Lorg/opencv/core/Mat;
    .param p1, "tvec1"    # Lorg/opencv/core/Mat;
    .param p2, "rvec2"    # Lorg/opencv/core/Mat;
    .param p3, "tvec2"    # Lorg/opencv/core/Mat;
    .param p4, "rvec3"    # Lorg/opencv/core/Mat;
    .param p5, "tvec3"    # Lorg/opencv/core/Mat;
    .param p6, "dr3dr1"    # Lorg/opencv/core/Mat;
    .param p7, "dr3dt1"    # Lorg/opencv/core/Mat;
    .param p8, "dr3dr2"    # Lorg/opencv/core/Mat;
    .param p9, "dr3dt2"    # Lorg/opencv/core/Mat;
    .param p10, "dt3dr1"    # Lorg/opencv/core/Mat;
    .param p11, "dt3dt1"    # Lorg/opencv/core/Mat;

    .line 8894
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v3, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v5, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v7, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v11, p4

    iget-wide v9, v11, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p5

    iget-wide v13, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    move-wide/from16 v27, v11

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p8

    move-wide/from16 v29, v11

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p9

    move-wide/from16 v31, v11

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p10

    move-wide/from16 v33, v11

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p11

    move-wide/from16 v35, v11

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, v27

    move-wide/from16 v18, v29

    move-wide/from16 v20, v31

    move-wide/from16 v22, v33

    move-wide/from16 v25, v35

    move-wide/from16 v27, v11

    move-wide v11, v13

    move-wide/from16 v13, v16

    move-wide/from16 v15, v18

    move-wide/from16 v17, v20

    move-wide/from16 v19, v22

    move-wide/from16 v21, v25

    move-wide/from16 v23, v27

    invoke-static/range {v1 .. v24}, Lorg/opencv/calib3d/Calib3d;->composeRT_2(JJJJJJJJJJJJ)V

    .line 8895
    return-void
.end method

.method public static composeRT(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 41
    .param p0, "rvec1"    # Lorg/opencv/core/Mat;
    .param p1, "tvec1"    # Lorg/opencv/core/Mat;
    .param p2, "rvec2"    # Lorg/opencv/core/Mat;
    .param p3, "tvec2"    # Lorg/opencv/core/Mat;
    .param p4, "rvec3"    # Lorg/opencv/core/Mat;
    .param p5, "tvec3"    # Lorg/opencv/core/Mat;
    .param p6, "dr3dr1"    # Lorg/opencv/core/Mat;
    .param p7, "dr3dt1"    # Lorg/opencv/core/Mat;
    .param p8, "dr3dr2"    # Lorg/opencv/core/Mat;
    .param p9, "dr3dt2"    # Lorg/opencv/core/Mat;
    .param p10, "dt3dr1"    # Lorg/opencv/core/Mat;
    .param p11, "dt3dt1"    # Lorg/opencv/core/Mat;
    .param p12, "dt3dr2"    # Lorg/opencv/core/Mat;

    .line 8862
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v3, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v5, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v7, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v11, p4

    iget-wide v9, v11, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p5

    iget-wide v13, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    move-wide/from16 v29, v11

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p8

    move-wide/from16 v31, v11

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p9

    move-wide/from16 v33, v11

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p10

    move-wide/from16 v35, v11

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p11

    move-wide/from16 v37, v11

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p12

    move-wide/from16 v39, v11

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, v29

    move-wide/from16 v18, v31

    move-wide/from16 v20, v33

    move-wide/from16 v22, v35

    move-wide/from16 v24, v37

    move-wide/from16 v27, v39

    move-wide/from16 v29, v11

    move-wide v11, v13

    move-wide/from16 v13, v16

    move-wide/from16 v15, v18

    move-wide/from16 v17, v20

    move-wide/from16 v19, v22

    move-wide/from16 v21, v24

    move-wide/from16 v23, v27

    move-wide/from16 v25, v29

    invoke-static/range {v1 .. v26}, Lorg/opencv/calib3d/Calib3d;->composeRT_1(JJJJJJJJJJJJJ)V

    .line 8863
    return-void
.end method

.method public static composeRT(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 45
    .param p0, "rvec1"    # Lorg/opencv/core/Mat;
    .param p1, "tvec1"    # Lorg/opencv/core/Mat;
    .param p2, "rvec2"    # Lorg/opencv/core/Mat;
    .param p3, "tvec2"    # Lorg/opencv/core/Mat;
    .param p4, "rvec3"    # Lorg/opencv/core/Mat;
    .param p5, "tvec3"    # Lorg/opencv/core/Mat;
    .param p6, "dr3dr1"    # Lorg/opencv/core/Mat;
    .param p7, "dr3dt1"    # Lorg/opencv/core/Mat;
    .param p8, "dr3dr2"    # Lorg/opencv/core/Mat;
    .param p9, "dr3dt2"    # Lorg/opencv/core/Mat;
    .param p10, "dt3dr1"    # Lorg/opencv/core/Mat;
    .param p11, "dt3dt1"    # Lorg/opencv/core/Mat;
    .param p12, "dt3dr2"    # Lorg/opencv/core/Mat;
    .param p13, "dt3dt2"    # Lorg/opencv/core/Mat;

    .line 8829
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v3, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v5, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v7, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v11, p4

    iget-wide v9, v11, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p5

    iget-wide v13, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    move-wide/from16 v31, v11

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p8

    move-wide/from16 v33, v11

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p9

    move-wide/from16 v35, v11

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p10

    move-wide/from16 v37, v11

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p11

    move-wide/from16 v39, v11

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p12

    move-wide/from16 v41, v11

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p13

    move-wide/from16 v43, v11

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, v31

    move-wide/from16 v18, v33

    move-wide/from16 v20, v35

    move-wide/from16 v22, v37

    move-wide/from16 v24, v39

    move-wide/from16 v26, v41

    move-wide/from16 v29, v43

    move-wide/from16 v31, v11

    move-wide v11, v13

    move-wide/from16 v13, v16

    move-wide/from16 v15, v18

    move-wide/from16 v17, v20

    move-wide/from16 v19, v22

    move-wide/from16 v21, v24

    move-wide/from16 v23, v26

    move-wide/from16 v25, v29

    move-wide/from16 v27, v31

    invoke-static/range {v1 .. v28}, Lorg/opencv/calib3d/Calib3d;->composeRT_0(JJJJJJJJJJJJJJ)V

    .line 8830
    return-void
.end method

.method private static native composeRT_0(JJJJJJJJJJJJJJ)V
.end method

.method private static native composeRT_1(JJJJJJJJJJJJJ)V
.end method

.method private static native composeRT_2(JJJJJJJJJJJJ)V
.end method

.method private static native composeRT_3(JJJJJJJJJJJ)V
.end method

.method private static native composeRT_4(JJJJJJJJJJ)V
.end method

.method private static native composeRT_5(JJJJJJJJJ)V
.end method

.method private static native composeRT_6(JJJJJJJJ)V
.end method

.method private static native composeRT_7(JJJJJJJ)V
.end method

.method private static native composeRT_8(JJJJJJ)V
.end method

.method public static computeCorrespondEpilines(Lorg/opencv/core/Mat;ILorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 7
    .param p0, "points"    # Lorg/opencv/core/Mat;
    .param p1, "whichImage"    # I
    .param p2, "F"    # Lorg/opencv/core/Mat;
    .param p3, "lines"    # Lorg/opencv/core/Mat;

    .line 9098
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move v2, p1

    invoke-static/range {v0 .. v6}, Lorg/opencv/calib3d/Calib3d;->computeCorrespondEpilines_0(JIJJ)V

    .line 9099
    return-void
.end method

.method private static native computeCorrespondEpilines_0(JIJJ)V
.end method

.method public static convertPointsFromHomogeneous(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .line 9117
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/calib3d/Calib3d;->convertPointsFromHomogeneous_0(JJ)V

    .line 9118
    return-void
.end method

.method private static native convertPointsFromHomogeneous_0(JJ)V
.end method

.method public static convertPointsToHomogeneous(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .line 9135
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/calib3d/Calib3d;->convertPointsToHomogeneous_0(JJ)V

    .line 9136
    return-void
.end method

.method private static native convertPointsToHomogeneous_0(JJ)V
.end method

.method public static correctMatches(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 10
    .param p0, "F"    # Lorg/opencv/core/Mat;
    .param p1, "points1"    # Lorg/opencv/core/Mat;
    .param p2, "points2"    # Lorg/opencv/core/Mat;
    .param p3, "newPoints1"    # Lorg/opencv/core/Mat;
    .param p4, "newPoints2"    # Lorg/opencv/core/Mat;

    .line 9160
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, p4, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v9}, Lorg/opencv/calib3d/Calib3d;->correctMatches_0(JJJJJ)V

    .line 9161
    return-void
.end method

.method private static native correctMatches_0(JJJJJ)V
.end method

.method public static decomposeEssentialMat(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "E"    # Lorg/opencv/core/Mat;
    .param p1, "R1"    # Lorg/opencv/core/Mat;
    .param p2, "R2"    # Lorg/opencv/core/Mat;
    .param p3, "t"    # Lorg/opencv/core/Mat;

    .line 9188
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/calib3d/Calib3d;->decomposeEssentialMat_0(JJJJ)V

    .line 9189
    return-void
.end method

.method private static native decomposeEssentialMat_0(JJJJ)V
.end method

.method public static decomposeHomographyMat(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;Ljava/util/List;)I
    .locals 15
    .param p0, "H"    # Lorg/opencv/core/Mat;
    .param p1, "K"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;)I"
        }
    .end annotation

    .line 5928
    .local p2, "rotations":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p3, "translations":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p4, "normals":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 5929
    .local v0, "rotations_mat":Lorg/opencv/core/Mat;
    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    .line 5930
    .local v1, "translations_mat":Lorg/opencv/core/Mat;
    new-instance v2, Lorg/opencv/core/Mat;

    invoke-direct {v2}, Lorg/opencv/core/Mat;-><init>()V

    .line 5931
    .local v2, "normals_mat":Lorg/opencv/core/Mat;
    move-object v3, p0

    iget-wide v4, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v6, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v12, v2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v4 .. v13}, Lorg/opencv/calib3d/Calib3d;->decomposeHomographyMat_0(JJJJJ)I

    move-result v4

    .line 5932
    .local v4, "retVal":I
    move-object/from16 v5, p2

    invoke-static {v0, v5}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 5933
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 5934
    move-object/from16 v6, p3

    invoke-static {v1, v6}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 5935
    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    .line 5936
    move-object/from16 v7, p4

    invoke-static {v2, v7}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 5937
    invoke-virtual {v2}, Lorg/opencv/core/Mat;->release()V

    .line 5938
    return v4
.end method

.method private static native decomposeHomographyMat_0(JJJJJ)I
.end method

.method public static decomposeProjectionMatrix(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "projMatrix"    # Lorg/opencv/core/Mat;
    .param p1, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p2, "rotMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "transVect"    # Lorg/opencv/core/Mat;

    .line 9318
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/calib3d/Calib3d;->decomposeProjectionMatrix_4(JJJJ)V

    .line 9319
    return-void
.end method

.method public static decomposeProjectionMatrix(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 10
    .param p0, "projMatrix"    # Lorg/opencv/core/Mat;
    .param p1, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p2, "rotMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "transVect"    # Lorg/opencv/core/Mat;
    .param p4, "rotMatrixX"    # Lorg/opencv/core/Mat;

    .line 9295
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, p4, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v9}, Lorg/opencv/calib3d/Calib3d;->decomposeProjectionMatrix_3(JJJJJ)V

    .line 9296
    return-void
.end method

.method public static decomposeProjectionMatrix(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 17
    .param p0, "projMatrix"    # Lorg/opencv/core/Mat;
    .param p1, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p2, "rotMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "transVect"    # Lorg/opencv/core/Mat;
    .param p4, "rotMatrixX"    # Lorg/opencv/core/Mat;
    .param p5, "rotMatrixY"    # Lorg/opencv/core/Mat;

    .line 9271
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p1

    iget-wide v3, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v5, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p3

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v11, p4

    iget-wide v9, v11, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p5

    iget-wide v13, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v11, v13

    invoke-static/range {v1 .. v12}, Lorg/opencv/calib3d/Calib3d;->decomposeProjectionMatrix_2(JJJJJJ)V

    .line 9272
    return-void
.end method

.method public static decomposeProjectionMatrix(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 18
    .param p0, "projMatrix"    # Lorg/opencv/core/Mat;
    .param p1, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p2, "rotMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "transVect"    # Lorg/opencv/core/Mat;
    .param p4, "rotMatrixX"    # Lorg/opencv/core/Mat;
    .param p5, "rotMatrixY"    # Lorg/opencv/core/Mat;
    .param p6, "rotMatrixZ"    # Lorg/opencv/core/Mat;

    .line 9246
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v3, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v5, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v7, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v11, p4

    iget-wide v9, v11, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p5

    iget-wide v13, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, v11

    move-wide v11, v13

    move-wide/from16 v13, v16

    invoke-static/range {v1 .. v14}, Lorg/opencv/calib3d/Calib3d;->decomposeProjectionMatrix_1(JJJJJJJ)V

    .line 9247
    return-void
.end method

.method public static decomposeProjectionMatrix(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 21
    .param p0, "projMatrix"    # Lorg/opencv/core/Mat;
    .param p1, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p2, "rotMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "transVect"    # Lorg/opencv/core/Mat;
    .param p4, "rotMatrixX"    # Lorg/opencv/core/Mat;
    .param p5, "rotMatrixY"    # Lorg/opencv/core/Mat;
    .param p6, "rotMatrixZ"    # Lorg/opencv/core/Mat;
    .param p7, "eulerAngles"    # Lorg/opencv/core/Mat;

    .line 9220
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v3, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v5, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v7, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v11, p4

    iget-wide v9, v11, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p5

    iget-wide v13, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    move-wide/from16 v19, v11

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v17, v19

    move-wide/from16 v19, v11

    move-wide v11, v13

    move-wide/from16 v13, v17

    move-wide/from16 v15, v19

    invoke-static/range {v1 .. v16}, Lorg/opencv/calib3d/Calib3d;->decomposeProjectionMatrix_0(JJJJJJJJ)V

    .line 9221
    return-void
.end method

.method private static native decomposeProjectionMatrix_0(JJJJJJJJ)V
.end method

.method private static native decomposeProjectionMatrix_1(JJJJJJJ)V
.end method

.method private static native decomposeProjectionMatrix_2(JJJJJJ)V
.end method

.method private static native decomposeProjectionMatrix_3(JJJJJ)V
.end method

.method private static native decomposeProjectionMatrix_4(JJJJ)V
.end method

.method public static drawChessboardCorners(Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/MatOfPoint2f;Z)V
    .locals 10
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "patternSize"    # Lorg/opencv/core/Size;
    .param p2, "corners"    # Lorg/opencv/core/MatOfPoint2f;
    .param p3, "patternWasFound"    # Z

    .line 9340
    move-object v0, p2

    .line 9341
    .local v0, "corners_mat":Lorg/opencv/core/Mat;
    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Size;->width:D

    iget-wide v5, p1, Lorg/opencv/core/Size;->height:D

    iget-wide v7, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move v9, p3

    invoke-static/range {v1 .. v9}, Lorg/opencv/calib3d/Calib3d;->drawChessboardCorners_0(JDDJZ)V

    .line 9342
    return-void
.end method

.method private static native drawChessboardCorners_0(JDDJZ)V
.end method

.method public static drawFrameAxes(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;F)V
    .locals 16
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p2, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p3, "rvec"    # Lorg/opencv/core/Mat;
    .param p4, "tvec"    # Lorg/opencv/core/Mat;
    .param p5, "length"    # F

    .line 9389
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p1

    iget-wide v3, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v5, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v7, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p4

    iget-wide v9, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v11, p5

    invoke-static/range {v1 .. v11}, Lorg/opencv/calib3d/Calib3d;->drawFrameAxes_1(JJJJJF)V

    .line 9390
    return-void
.end method

.method public static drawFrameAxes(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;FI)V
    .locals 16
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p2, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p3, "rvec"    # Lorg/opencv/core/Mat;
    .param p4, "tvec"    # Lorg/opencv/core/Mat;
    .param p5, "length"    # F
    .param p6, "thickness"    # I

    .line 9368
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p1

    iget-wide v3, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v5, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p3

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p4

    iget-wide v9, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-static/range {v1 .. v12}, Lorg/opencv/calib3d/Calib3d;->drawFrameAxes_0(JJJJJFI)V

    .line 9369
    return-void
.end method

.method private static native drawFrameAxes_0(JJJJJFI)V
.end method

.method private static native drawFrameAxes_1(JJJJJF)V
.end method

.method public static estimateAffine2D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 5
    .param p0, "from"    # Lorg/opencv/core/Mat;
    .param p1, "to"    # Lorg/opencv/core/Mat;

    .line 612
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v1, v2, v3, v4}, Lorg/opencv/calib3d/Calib3d;->estimateAffine2D_6(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public static estimateAffine2D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 7
    .param p0, "from"    # Lorg/opencv/core/Mat;
    .param p1, "to"    # Lorg/opencv/core/Mat;
    .param p2, "inliers"    # Lorg/opencv/core/Mat;

    .line 545
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v1 .. v6}, Lorg/opencv/calib3d/Calib3d;->estimateAffine2D_5(JJJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public static estimateAffine2D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)Lorg/opencv/core/Mat;
    .locals 8
    .param p0, "from"    # Lorg/opencv/core/Mat;
    .param p1, "to"    # Lorg/opencv/core/Mat;
    .param p2, "inliers"    # Lorg/opencv/core/Mat;
    .param p3, "method"    # I

    .line 477
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v7, p3

    invoke-static/range {v1 .. v7}, Lorg/opencv/calib3d/Calib3d;->estimateAffine2D_4(JJJI)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public static estimateAffine2D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ID)Lorg/opencv/core/Mat;
    .locals 10
    .param p0, "from"    # Lorg/opencv/core/Mat;
    .param p1, "to"    # Lorg/opencv/core/Mat;
    .param p2, "inliers"    # Lorg/opencv/core/Mat;
    .param p3, "method"    # I
    .param p4, "ransacReprojThreshold"    # D

    .line 408
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v7, p3

    move-wide v8, p4

    invoke-static/range {v1 .. v9}, Lorg/opencv/calib3d/Calib3d;->estimateAffine2D_3(JJJID)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public static estimateAffine2D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;IDJ)Lorg/opencv/core/Mat;
    .locals 15
    .param p0, "from"    # Lorg/opencv/core/Mat;
    .param p1, "to"    # Lorg/opencv/core/Mat;
    .param p2, "inliers"    # Lorg/opencv/core/Mat;
    .param p3, "method"    # I
    .param p4, "ransacReprojThreshold"    # D
    .param p6, "maxIters"    # J

    .line 338
    new-instance v0, Lorg/opencv/core/Mat;

    move-object v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p1

    iget-wide v4, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v6, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v8, p3

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    invoke-static/range {v2 .. v12}, Lorg/opencv/calib3d/Calib3d;->estimateAffine2D_2(JJJIDJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public static estimateAffine2D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;IDJD)Lorg/opencv/core/Mat;
    .locals 16
    .param p0, "from"    # Lorg/opencv/core/Mat;
    .param p1, "to"    # Lorg/opencv/core/Mat;
    .param p2, "inliers"    # Lorg/opencv/core/Mat;
    .param p3, "method"    # I
    .param p4, "ransacReprojThreshold"    # D
    .param p6, "maxIters"    # J
    .param p8, "confidence"    # D

    .line 267
    new-instance v0, Lorg/opencv/core/Mat;

    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v4, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v6, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v8, p3

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    move-wide/from16 v13, p8

    invoke-static/range {v2 .. v14}, Lorg/opencv/calib3d/Calib3d;->estimateAffine2D_1(JJJIDJD)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public static estimateAffine2D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;IDJDJ)Lorg/opencv/core/Mat;
    .locals 17
    .param p0, "from"    # Lorg/opencv/core/Mat;
    .param p1, "to"    # Lorg/opencv/core/Mat;
    .param p2, "inliers"    # Lorg/opencv/core/Mat;
    .param p3, "method"    # I
    .param p4, "ransacReprojThreshold"    # D
    .param p6, "maxIters"    # J
    .param p8, "confidence"    # D
    .param p10, "refineIters"    # J

    .line 195
    new-instance v0, Lorg/opencv/core/Mat;

    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v4, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v6, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v8, p3

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    move-wide/from16 v13, p8

    move-wide/from16 v15, p10

    invoke-static/range {v2 .. v16}, Lorg/opencv/calib3d/Calib3d;->estimateAffine2D_0(JJJIDJDJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method private static native estimateAffine2D_0(JJJIDJDJ)J
.end method

.method private static native estimateAffine2D_1(JJJIDJD)J
.end method

.method private static native estimateAffine2D_2(JJJIDJ)J
.end method

.method private static native estimateAffine2D_3(JJJID)J
.end method

.method private static native estimateAffine2D_4(JJJI)J
.end method

.method private static native estimateAffine2D_5(JJJ)J
.end method

.method private static native estimateAffine2D_6(JJ)J
.end method

.method public static estimateAffine3D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)I
    .locals 8
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "out"    # Lorg/opencv/core/Mat;
    .param p3, "inliers"    # Lorg/opencv/core/Mat;

    .line 6102
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/calib3d/Calib3d;->estimateAffine3D_2(JJJJ)I

    move-result v0

    return v0
.end method

.method public static estimateAffine3D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;D)I
    .locals 10
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "out"    # Lorg/opencv/core/Mat;
    .param p3, "inliers"    # Lorg/opencv/core/Mat;
    .param p4, "ransacThreshold"    # D

    .line 6050
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v8, p4

    invoke-static/range {v0 .. v9}, Lorg/opencv/calib3d/Calib3d;->estimateAffine3D_1(JJJJD)I

    move-result v0

    return v0
.end method

.method public static estimateAffine3D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DD)I
    .locals 16
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "out"    # Lorg/opencv/core/Mat;
    .param p3, "inliers"    # Lorg/opencv/core/Mat;
    .param p4, "ransacThreshold"    # D
    .param p6, "confidence"    # D

    .line 5997
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p1

    iget-wide v3, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v5, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p3

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    invoke-static/range {v1 .. v12}, Lorg/opencv/calib3d/Calib3d;->estimateAffine3D_0(JJJJDD)I

    move-result v1

    return v1
.end method

.method private static native estimateAffine3D_0(JJJJDD)I
.end method

.method private static native estimateAffine3D_1(JJJJD)I
.end method

.method private static native estimateAffine3D_2(JJJJ)I
.end method

.method public static estimateAffinePartial2D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 5
    .param p0, "from"    # Lorg/opencv/core/Mat;
    .param p1, "to"    # Lorg/opencv/core/Mat;

    .line 974
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v1, v2, v3, v4}, Lorg/opencv/calib3d/Calib3d;->estimateAffinePartial2D_6(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public static estimateAffinePartial2D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 7
    .param p0, "from"    # Lorg/opencv/core/Mat;
    .param p1, "to"    # Lorg/opencv/core/Mat;
    .param p2, "inliers"    # Lorg/opencv/core/Mat;

    .line 926
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v1 .. v6}, Lorg/opencv/calib3d/Calib3d;->estimateAffinePartial2D_5(JJJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public static estimateAffinePartial2D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)Lorg/opencv/core/Mat;
    .locals 8
    .param p0, "from"    # Lorg/opencv/core/Mat;
    .param p1, "to"    # Lorg/opencv/core/Mat;
    .param p2, "inliers"    # Lorg/opencv/core/Mat;
    .param p3, "method"    # I

    .line 877
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v7, p3

    invoke-static/range {v1 .. v7}, Lorg/opencv/calib3d/Calib3d;->estimateAffinePartial2D_4(JJJI)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public static estimateAffinePartial2D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ID)Lorg/opencv/core/Mat;
    .locals 10
    .param p0, "from"    # Lorg/opencv/core/Mat;
    .param p1, "to"    # Lorg/opencv/core/Mat;
    .param p2, "inliers"    # Lorg/opencv/core/Mat;
    .param p3, "method"    # I
    .param p4, "ransacReprojThreshold"    # D

    .line 827
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v7, p3

    move-wide v8, p4

    invoke-static/range {v1 .. v9}, Lorg/opencv/calib3d/Calib3d;->estimateAffinePartial2D_3(JJJID)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public static estimateAffinePartial2D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;IDJ)Lorg/opencv/core/Mat;
    .locals 15
    .param p0, "from"    # Lorg/opencv/core/Mat;
    .param p1, "to"    # Lorg/opencv/core/Mat;
    .param p2, "inliers"    # Lorg/opencv/core/Mat;
    .param p3, "method"    # I
    .param p4, "ransacReprojThreshold"    # D
    .param p6, "maxIters"    # J

    .line 776
    new-instance v0, Lorg/opencv/core/Mat;

    move-object v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p1

    iget-wide v4, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v6, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v8, p3

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    invoke-static/range {v2 .. v12}, Lorg/opencv/calib3d/Calib3d;->estimateAffinePartial2D_2(JJJIDJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public static estimateAffinePartial2D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;IDJD)Lorg/opencv/core/Mat;
    .locals 16
    .param p0, "from"    # Lorg/opencv/core/Mat;
    .param p1, "to"    # Lorg/opencv/core/Mat;
    .param p2, "inliers"    # Lorg/opencv/core/Mat;
    .param p3, "method"    # I
    .param p4, "ransacReprojThreshold"    # D
    .param p6, "maxIters"    # J
    .param p8, "confidence"    # D

    .line 724
    new-instance v0, Lorg/opencv/core/Mat;

    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v4, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v6, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v8, p3

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    move-wide/from16 v13, p8

    invoke-static/range {v2 .. v14}, Lorg/opencv/calib3d/Calib3d;->estimateAffinePartial2D_1(JJJIDJD)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public static estimateAffinePartial2D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;IDJDJ)Lorg/opencv/core/Mat;
    .locals 17
    .param p0, "from"    # Lorg/opencv/core/Mat;
    .param p1, "to"    # Lorg/opencv/core/Mat;
    .param p2, "inliers"    # Lorg/opencv/core/Mat;
    .param p3, "method"    # I
    .param p4, "ransacReprojThreshold"    # D
    .param p6, "maxIters"    # J
    .param p8, "confidence"    # D
    .param p10, "refineIters"    # J

    .line 671
    new-instance v0, Lorg/opencv/core/Mat;

    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v4, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v6, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v8, p3

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    move-wide/from16 v13, p8

    move-wide/from16 v15, p10

    invoke-static/range {v2 .. v16}, Lorg/opencv/calib3d/Calib3d;->estimateAffinePartial2D_0(JJJIDJDJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method private static native estimateAffinePartial2D_0(JJJIDJDJ)J
.end method

.method private static native estimateAffinePartial2D_1(JJJIDJD)J
.end method

.method private static native estimateAffinePartial2D_2(JJJIDJ)J
.end method

.method private static native estimateAffinePartial2D_3(JJJID)J
.end method

.method private static native estimateAffinePartial2D_4(JJJI)J
.end method

.method private static native estimateAffinePartial2D_5(JJJ)J
.end method

.method private static native estimateAffinePartial2D_6(JJ)J
.end method

.method public static estimateChessboardSharpness(Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;)Lorg/opencv/core/Scalar;
    .locals 9
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "patternSize"    # Lorg/opencv/core/Size;
    .param p2, "corners"    # Lorg/opencv/core/Mat;

    .line 2498
    new-instance v0, Lorg/opencv/core/Scalar;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Size;->width:D

    iget-wide v5, p1, Lorg/opencv/core/Size;->height:D

    iget-wide v7, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v1 .. v8}, Lorg/opencv/calib3d/Calib3d;->estimateChessboardSharpness_3(JDDJ)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Scalar;-><init>([D)V

    return-object v0
.end method

.method public static estimateChessboardSharpness(Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;F)Lorg/opencv/core/Scalar;
    .locals 10
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "patternSize"    # Lorg/opencv/core/Size;
    .param p2, "corners"    # Lorg/opencv/core/Mat;
    .param p3, "rise_distance"    # F

    .line 2469
    new-instance v0, Lorg/opencv/core/Scalar;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Size;->width:D

    iget-wide v5, p1, Lorg/opencv/core/Size;->height:D

    iget-wide v7, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v9, p3

    invoke-static/range {v1 .. v9}, Lorg/opencv/calib3d/Calib3d;->estimateChessboardSharpness_2(JDDJF)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Scalar;-><init>([D)V

    return-object v0
.end method

.method public static estimateChessboardSharpness(Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;FZ)Lorg/opencv/core/Scalar;
    .locals 11
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "patternSize"    # Lorg/opencv/core/Size;
    .param p2, "corners"    # Lorg/opencv/core/Mat;
    .param p3, "rise_distance"    # F
    .param p4, "vertical"    # Z

    .line 2439
    new-instance v0, Lorg/opencv/core/Scalar;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Size;->width:D

    iget-wide v5, p1, Lorg/opencv/core/Size;->height:D

    iget-wide v7, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v9, p3

    move v10, p4

    invoke-static/range {v1 .. v10}, Lorg/opencv/calib3d/Calib3d;->estimateChessboardSharpness_1(JDDJFZ)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Scalar;-><init>([D)V

    return-object v0
.end method

.method public static estimateChessboardSharpness(Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;FZLorg/opencv/core/Mat;)Lorg/opencv/core/Scalar;
    .locals 18
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "patternSize"    # Lorg/opencv/core/Size;
    .param p2, "corners"    # Lorg/opencv/core/Mat;
    .param p3, "rise_distance"    # F
    .param p4, "vertical"    # Z
    .param p5, "sharpness"    # Lorg/opencv/core/Mat;

    move-object/from16 v0, p1

    .line 2408
    new-instance v1, Lorg/opencv/core/Scalar;

    move-object/from16 v2, p0

    iget-wide v3, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v7, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v15, p2

    iget-wide v9, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p5

    iget-wide v11, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, v11

    move/from16 v11, p3

    move/from16 v12, p4

    move-wide/from16 v13, v16

    invoke-static/range {v3 .. v14}, Lorg/opencv/calib3d/Calib3d;->estimateChessboardSharpness_0(JDDJFZJ)[D

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/opencv/core/Scalar;-><init>([D)V

    return-object v1
.end method

.method private static native estimateChessboardSharpness_0(JDDJFZJ)[D
.end method

.method private static native estimateChessboardSharpness_1(JDDJFZ)[D
.end method

.method private static native estimateChessboardSharpness_2(JDDJF)[D
.end method

.method private static native estimateChessboardSharpness_3(JDDJ)[D
.end method

.method public static estimateTranslation3D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)I
    .locals 8
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "out"    # Lorg/opencv/core/Mat;
    .param p3, "inliers"    # Lorg/opencv/core/Mat;

    .line 6254
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/calib3d/Calib3d;->estimateTranslation3D_2(JJJJ)I

    move-result v0

    return v0
.end method

.method public static estimateTranslation3D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;D)I
    .locals 10
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "out"    # Lorg/opencv/core/Mat;
    .param p3, "inliers"    # Lorg/opencv/core/Mat;
    .param p4, "ransacThreshold"    # D

    .line 6206
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v8, p4

    invoke-static/range {v0 .. v9}, Lorg/opencv/calib3d/Calib3d;->estimateTranslation3D_1(JJJJD)I

    move-result v0

    return v0
.end method

.method public static estimateTranslation3D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DD)I
    .locals 16
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "out"    # Lorg/opencv/core/Mat;
    .param p3, "inliers"    # Lorg/opencv/core/Mat;
    .param p4, "ransacThreshold"    # D
    .param p6, "confidence"    # D

    .line 6157
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p1

    iget-wide v3, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v5, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p3

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    invoke-static/range {v1 .. v12}, Lorg/opencv/calib3d/Calib3d;->estimateTranslation3D_0(JJJJDD)I

    move-result v1

    return v1
.end method

.method private static native estimateTranslation3D_0(JJJJDD)I
.end method

.method private static native estimateTranslation3D_1(JJJJD)I
.end method

.method private static native estimateTranslation3D_2(JJJJ)I
.end method

.method public static filterHomographyDecompByVisibleRefpoints(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 15
    .param p2, "beforePoints"    # Lorg/opencv/core/Mat;
    .param p3, "afterPoints"    # Lorg/opencv/core/Mat;
    .param p4, "possibleSolutions"    # Lorg/opencv/core/Mat;
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
            "Lorg/opencv/core/Mat;",
            ")V"
        }
    .end annotation

    .line 9439
    .local p0, "rotations":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "normals":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 9440
    .local v0, "rotations_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 9441
    .local v1, "normals_mat":Lorg/opencv/core/Mat;
    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p2

    iget-wide v6, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p3

    iget-wide v8, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p4

    iget-wide v10, v14, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v11}, Lorg/opencv/calib3d/Calib3d;->filterHomographyDecompByVisibleRefpoints_1(JJJJJ)V

    .line 9442
    return-void
.end method

.method public static filterHomographyDecompByVisibleRefpoints(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 18
    .param p2, "beforePoints"    # Lorg/opencv/core/Mat;
    .param p3, "afterPoints"    # Lorg/opencv/core/Mat;
    .param p4, "possibleSolutions"    # Lorg/opencv/core/Mat;
    .param p5, "pointsMask"    # Lorg/opencv/core/Mat;
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
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            ")V"
        }
    .end annotation

    .line 9416
    .local p0, "rotations":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "normals":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 9417
    .local v0, "rotations_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 9418
    .local v1, "normals_mat":Lorg/opencv/core/Mat;
    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v6, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p3

    iget-wide v8, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p4

    iget-wide v10, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p5

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    iget-wide v0, v13, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v0    # "rotations_mat":Lorg/opencv/core/Mat;
    .end local v1    # "normals_mat":Lorg/opencv/core/Mat;
    .local v16, "rotations_mat":Lorg/opencv/core/Mat;
    .local v17, "normals_mat":Lorg/opencv/core/Mat;
    move-wide v12, v0

    invoke-static/range {v2 .. v13}, Lorg/opencv/calib3d/Calib3d;->filterHomographyDecompByVisibleRefpoints_0(JJJJJJ)V

    .line 9419
    return-void
.end method

.method private static native filterHomographyDecompByVisibleRefpoints_0(JJJJJJ)V
.end method

.method private static native filterHomographyDecompByVisibleRefpoints_1(JJJJJ)V
.end method

.method public static filterSpeckles(Lorg/opencv/core/Mat;DID)V
    .locals 7
    .param p0, "img"    # Lorg/opencv/core/Mat;
    .param p1, "newVal"    # D
    .param p3, "maxSpeckleSize"    # I
    .param p4, "maxDiff"    # D

    .line 9479
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lorg/opencv/calib3d/Calib3d;->filterSpeckles_1(JDID)V

    .line 9480
    return-void
.end method

.method public static filterSpeckles(Lorg/opencv/core/Mat;DIDLorg/opencv/core/Mat;)V
    .locals 9
    .param p0, "img"    # Lorg/opencv/core/Mat;
    .param p1, "newVal"    # D
    .param p3, "maxSpeckleSize"    # I
    .param p4, "maxDiff"    # D
    .param p6, "buf"    # Lorg/opencv/core/Mat;

    .line 9463
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, p6, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v8}, Lorg/opencv/calib3d/Calib3d;->filterSpeckles_0(JDIDJ)V

    .line 9464
    return-void
.end method

.method private static native filterSpeckles_0(JDIDJ)V
.end method

.method private static native filterSpeckles_1(JDID)V
.end method

.method public static find4QuadCornerSubpix(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;)Z
    .locals 8
    .param p0, "img"    # Lorg/opencv/core/Mat;
    .param p1, "corners"    # Lorg/opencv/core/Mat;
    .param p2, "region_size"    # Lorg/opencv/core/Size;

    .line 2615
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Size;->width:D

    iget-wide v6, p2, Lorg/opencv/core/Size;->height:D

    invoke-static/range {v0 .. v7}, Lorg/opencv/calib3d/Calib3d;->find4QuadCornerSubpix_0(JJDD)Z

    move-result v0

    return v0
.end method

.method private static native find4QuadCornerSubpix_0(JJDD)Z
.end method

.method public static findChessboardCorners(Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/MatOfPoint2f;)Z
    .locals 9
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "patternSize"    # Lorg/opencv/core/Size;
    .param p2, "corners"    # Lorg/opencv/core/MatOfPoint2f;

    .line 2750
    move-object v0, p2

    .line 2751
    .local v0, "corners_mat":Lorg/opencv/core/Mat;
    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Size;->width:D

    iget-wide v5, p1, Lorg/opencv/core/Size;->height:D

    iget-wide v7, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v1 .. v8}, Lorg/opencv/calib3d/Calib3d;->findChessboardCorners_1(JDDJ)Z

    move-result v1

    return v1
.end method

.method public static findChessboardCorners(Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/MatOfPoint2f;I)Z
    .locals 10
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "patternSize"    # Lorg/opencv/core/Size;
    .param p2, "corners"    # Lorg/opencv/core/MatOfPoint2f;
    .param p3, "flags"    # I

    .line 2685
    move-object v0, p2

    .line 2686
    .local v0, "corners_mat":Lorg/opencv/core/Mat;
    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Size;->width:D

    iget-wide v5, p1, Lorg/opencv/core/Size;->height:D

    iget-wide v7, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move v9, p3

    invoke-static/range {v1 .. v9}, Lorg/opencv/calib3d/Calib3d;->findChessboardCorners_0(JDDJI)Z

    move-result v1

    return v1
.end method

.method public static findChessboardCornersSB(Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;)Z
    .locals 8
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "patternSize"    # Lorg/opencv/core/Size;
    .param p2, "corners"    # Lorg/opencv/core/Mat;

    .line 2845
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Size;->width:D

    iget-wide v4, p1, Lorg/opencv/core/Size;->height:D

    iget-wide v6, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/calib3d/Calib3d;->findChessboardCornersSB_1(JDDJ)Z

    move-result v0

    return v0
.end method

.method public static findChessboardCornersSB(Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;I)Z
    .locals 9
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "patternSize"    # Lorg/opencv/core/Size;
    .param p2, "corners"    # Lorg/opencv/core/Mat;
    .param p3, "flags"    # I

    .line 2841
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Size;->width:D

    iget-wide v4, p1, Lorg/opencv/core/Size;->height:D

    iget-wide v6, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v8, p3

    invoke-static/range {v0 .. v8}, Lorg/opencv/calib3d/Calib3d;->findChessboardCornersSB_0(JDDJI)Z

    move-result v0

    return v0
.end method

.method public static findChessboardCornersSBWithMeta(Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;ILorg/opencv/core/Mat;)Z
    .locals 11
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "patternSize"    # Lorg/opencv/core/Size;
    .param p2, "corners"    # Lorg/opencv/core/Mat;
    .param p3, "flags"    # I
    .param p4, "meta"    # Lorg/opencv/core/Mat;

    .line 2832
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Size;->width:D

    iget-wide v4, p1, Lorg/opencv/core/Size;->height:D

    iget-wide v6, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, p4, Lorg/opencv/core/Mat;->nativeObj:J

    move v8, p3

    invoke-static/range {v0 .. v10}, Lorg/opencv/calib3d/Calib3d;->findChessboardCornersSBWithMeta_0(JDDJIJ)Z

    move-result v0

    return v0
.end method

.method private static native findChessboardCornersSBWithMeta_0(JDDJIJ)Z
.end method

.method private static native findChessboardCornersSB_0(JDDJI)Z
.end method

.method private static native findChessboardCornersSB_1(JDDJ)Z
.end method

.method private static native findChessboardCorners_0(JDDJI)Z
.end method

.method private static native findChessboardCorners_1(JDDJ)Z
.end method

.method public static findCirclesGrid(Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;)Z
    .locals 8
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "patternSize"    # Lorg/opencv/core/Size;
    .param p2, "centers"    # Lorg/opencv/core/Mat;

    .line 2865
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Size;->width:D

    iget-wide v4, p1, Lorg/opencv/core/Size;->height:D

    iget-wide v6, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/calib3d/Calib3d;->findCirclesGrid_2(JDDJ)Z

    move-result v0

    return v0
.end method

.method public static findCirclesGrid(Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;I)Z
    .locals 9
    .param p0, "image"    # Lorg/opencv/core/Mat;
    .param p1, "patternSize"    # Lorg/opencv/core/Size;
    .param p2, "centers"    # Lorg/opencv/core/Mat;
    .param p3, "flags"    # I

    .line 2861
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Size;->width:D

    iget-wide v4, p1, Lorg/opencv/core/Size;->height:D

    iget-wide v6, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v8, p3

    invoke-static/range {v0 .. v8}, Lorg/opencv/calib3d/Calib3d;->findCirclesGrid_0(JDDJI)Z

    move-result v0

    return v0
.end method

.method private static native findCirclesGrid_0(JDDJI)Z
.end method

.method private static native findCirclesGrid_2(JDDJ)Z
.end method

.method public static findEssentialMat(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 5
    .param p0, "points1"    # Lorg/opencv/core/Mat;
    .param p1, "points2"    # Lorg/opencv/core/Mat;

    .line 1460
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v1, v2, v3, v4}, Lorg/opencv/calib3d/Calib3d;->findEssentialMat_11(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public static findEssentialMat(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;D)Lorg/opencv/core/Mat;
    .locals 7
    .param p0, "points1"    # Lorg/opencv/core/Mat;
    .param p1, "points2"    # Lorg/opencv/core/Mat;
    .param p2, "focal"    # D

    .line 1425
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lorg/opencv/calib3d/Calib3d;->findEssentialMat_10(JJD)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public static findEssentialMat(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DLorg/opencv/core/Point;)Lorg/opencv/core/Mat;
    .locals 11
    .param p0, "points1"    # Lorg/opencv/core/Mat;
    .param p1, "points2"    # Lorg/opencv/core/Mat;
    .param p2, "focal"    # D
    .param p4, "pp"    # Lorg/opencv/core/Point;

    .line 1389
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, p4, Lorg/opencv/core/Point;->x:D

    iget-wide v9, p4, Lorg/opencv/core/Point;->y:D

    move-wide v5, p2

    invoke-static/range {v1 .. v10}, Lorg/opencv/calib3d/Calib3d;->findEssentialMat_9(JJDDD)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public static findEssentialMat(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DLorg/opencv/core/Point;I)Lorg/opencv/core/Mat;
    .locals 15
    .param p0, "points1"    # Lorg/opencv/core/Mat;
    .param p1, "points2"    # Lorg/opencv/core/Mat;
    .param p2, "focal"    # D
    .param p4, "pp"    # Lorg/opencv/core/Point;
    .param p5, "method"    # I

    move-object/from16 v0, p4

    .line 1352
    new-instance v1, Lorg/opencv/core/Mat;

    move-object v2, p0

    iget-wide v3, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v5, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v0, Lorg/opencv/core/Point;->x:D

    iget-wide v11, v0, Lorg/opencv/core/Point;->y:D

    move-wide/from16 v7, p2

    move/from16 v13, p5

    invoke-static/range {v3 .. v13}, Lorg/opencv/calib3d/Calib3d;->findEssentialMat_8(JJDDDI)J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v1
.end method

.method public static findEssentialMat(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DLorg/opencv/core/Point;ID)Lorg/opencv/core/Mat;
    .locals 16
    .param p0, "points1"    # Lorg/opencv/core/Mat;
    .param p1, "points2"    # Lorg/opencv/core/Mat;
    .param p2, "focal"    # D
    .param p4, "pp"    # Lorg/opencv/core/Point;
    .param p5, "method"    # I
    .param p6, "prob"    # D

    move-object/from16 v0, p4

    .line 1314
    new-instance v1, Lorg/opencv/core/Mat;

    move-object/from16 v2, p0

    iget-wide v3, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v5, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v0, Lorg/opencv/core/Point;->x:D

    iget-wide v11, v0, Lorg/opencv/core/Point;->y:D

    move-wide/from16 v7, p2

    move/from16 v13, p5

    move-wide/from16 v14, p6

    invoke-static/range {v3 .. v15}, Lorg/opencv/calib3d/Calib3d;->findEssentialMat_7(JJDDDID)J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v1
.end method

.method public static findEssentialMat(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DLorg/opencv/core/Point;IDD)Lorg/opencv/core/Mat;
    .locals 18
    .param p0, "points1"    # Lorg/opencv/core/Mat;
    .param p1, "points2"    # Lorg/opencv/core/Mat;
    .param p2, "focal"    # D
    .param p4, "pp"    # Lorg/opencv/core/Point;
    .param p5, "method"    # I
    .param p6, "prob"    # D
    .param p8, "threshold"    # D

    move-object/from16 v0, p4

    .line 1275
    new-instance v1, Lorg/opencv/core/Mat;

    move-object/from16 v2, p0

    iget-wide v3, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v5, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v0, Lorg/opencv/core/Point;->x:D

    iget-wide v11, v0, Lorg/opencv/core/Point;->y:D

    move-wide/from16 v7, p2

    move/from16 v13, p5

    move-wide/from16 v14, p6

    move-wide/from16 v16, p8

    invoke-static/range {v3 .. v17}, Lorg/opencv/calib3d/Calib3d;->findEssentialMat_6(JJDDDIDD)J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v1
.end method

.method public static findEssentialMat(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DLorg/opencv/core/Point;IDDLorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 20
    .param p0, "points1"    # Lorg/opencv/core/Mat;
    .param p1, "points2"    # Lorg/opencv/core/Mat;
    .param p2, "focal"    # D
    .param p4, "pp"    # Lorg/opencv/core/Point;
    .param p5, "method"    # I
    .param p6, "prob"    # D
    .param p8, "threshold"    # D
    .param p10, "mask"    # Lorg/opencv/core/Mat;

    move-object/from16 v0, p4

    .line 1235
    new-instance v1, Lorg/opencv/core/Mat;

    move-object/from16 v2, p0

    iget-wide v3, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v5, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v0, Lorg/opencv/core/Point;->x:D

    iget-wide v11, v0, Lorg/opencv/core/Point;->y:D

    move-object/from16 v15, p10

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v18, v7

    move-wide/from16 v7, p2

    move/from16 v13, p5

    move-wide/from16 v14, p6

    move-wide/from16 v16, p8

    invoke-static/range {v3 .. v19}, Lorg/opencv/calib3d/Calib3d;->findEssentialMat_5(JJDDDIDDJ)J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v1
.end method

.method public static findEssentialMat(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 7
    .param p0, "points1"    # Lorg/opencv/core/Mat;
    .param p1, "points2"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;

    .line 1189
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v1 .. v6}, Lorg/opencv/calib3d/Calib3d;->findEssentialMat_4(JJJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public static findEssentialMat(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)Lorg/opencv/core/Mat;
    .locals 8
    .param p0, "points1"    # Lorg/opencv/core/Mat;
    .param p1, "points2"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "method"    # I

    .line 1149
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v7, p3

    invoke-static/range {v1 .. v7}, Lorg/opencv/calib3d/Calib3d;->findEssentialMat_3(JJJI)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public static findEssentialMat(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ID)Lorg/opencv/core/Mat;
    .locals 10
    .param p0, "points1"    # Lorg/opencv/core/Mat;
    .param p1, "points2"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "method"    # I
    .param p4, "prob"    # D

    .line 1108
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v7, p3

    move-wide v8, p4

    invoke-static/range {v1 .. v9}, Lorg/opencv/calib3d/Calib3d;->findEssentialMat_2(JJJID)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public static findEssentialMat(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;IDD)Lorg/opencv/core/Mat;
    .locals 15
    .param p0, "points1"    # Lorg/opencv/core/Mat;
    .param p1, "points2"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "method"    # I
    .param p4, "prob"    # D
    .param p6, "threshold"    # D

    .line 1066
    new-instance v0, Lorg/opencv/core/Mat;

    move-object v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p1

    iget-wide v4, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v6, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v8, p3

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    invoke-static/range {v2 .. v12}, Lorg/opencv/calib3d/Calib3d;->findEssentialMat_1(JJJIDD)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public static findEssentialMat(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;IDDLorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 18
    .param p0, "points1"    # Lorg/opencv/core/Mat;
    .param p1, "points2"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "method"    # I
    .param p4, "prob"    # D
    .param p6, "threshold"    # D
    .param p8, "mask"    # Lorg/opencv/core/Mat;

    .line 1023
    new-instance v0, Lorg/opencv/core/Mat;

    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v4, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v6, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p8

    iget-wide v11, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v8, p3

    move-wide/from16 v9, p4

    move-wide/from16 v16, v11

    move-wide/from16 v11, p6

    move-wide/from16 v13, v16

    invoke-static/range {v2 .. v14}, Lorg/opencv/calib3d/Calib3d;->findEssentialMat_0(JJJIDDJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method private static native findEssentialMat_0(JJJIDDJ)J
.end method

.method private static native findEssentialMat_1(JJJIDD)J
.end method

.method private static native findEssentialMat_10(JJD)J
.end method

.method private static native findEssentialMat_11(JJ)J
.end method

.method private static native findEssentialMat_2(JJJID)J
.end method

.method private static native findEssentialMat_3(JJJI)J
.end method

.method private static native findEssentialMat_4(JJJ)J
.end method

.method private static native findEssentialMat_5(JJDDDIDDJ)J
.end method

.method private static native findEssentialMat_6(JJDDDIDD)J
.end method

.method private static native findEssentialMat_7(JJDDDID)J
.end method

.method private static native findEssentialMat_8(JJDDDI)J
.end method

.method private static native findEssentialMat_9(JJDDD)J
.end method

.method public static findFundamentalMat(Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;)Lorg/opencv/core/Mat;
    .locals 7
    .param p0, "points1"    # Lorg/opencv/core/MatOfPoint2f;
    .param p1, "points2"    # Lorg/opencv/core/MatOfPoint2f;

    .line 1635
    move-object v0, p0

    .line 1636
    .local v0, "points1_mat":Lorg/opencv/core/Mat;
    move-object v1, p1

    .line 1637
    .local v1, "points2_mat":Lorg/opencv/core/Mat;
    new-instance v2, Lorg/opencv/core/Mat;

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v3, v4, v5, v6}, Lorg/opencv/calib3d/Calib3d;->findFundamentalMat_6(JJ)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v2
.end method

.method public static findFundamentalMat(Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;I)Lorg/opencv/core/Mat;
    .locals 7
    .param p0, "points1"    # Lorg/opencv/core/MatOfPoint2f;
    .param p1, "points2"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "method"    # I

    .line 1629
    move-object v0, p0

    .line 1630
    .local v0, "points1_mat":Lorg/opencv/core/Mat;
    move-object v1, p1

    .line 1631
    .local v1, "points2_mat":Lorg/opencv/core/Mat;
    new-instance v2, Lorg/opencv/core/Mat;

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v3, v4, v5, v6, p2}, Lorg/opencv/calib3d/Calib3d;->findFundamentalMat_5(JJI)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v2
.end method

.method public static findFundamentalMat(Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;ID)Lorg/opencv/core/Mat;
    .locals 10
    .param p0, "points1"    # Lorg/opencv/core/MatOfPoint2f;
    .param p1, "points2"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "method"    # I
    .param p3, "ransacReprojThreshold"    # D

    .line 1623
    move-object v0, p0

    .line 1624
    .local v0, "points1_mat":Lorg/opencv/core/Mat;
    move-object v1, p1

    .line 1625
    .local v1, "points2_mat":Lorg/opencv/core/Mat;
    new-instance v2, Lorg/opencv/core/Mat;

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move v7, p2

    move-wide v8, p3

    invoke-static/range {v3 .. v9}, Lorg/opencv/calib3d/Calib3d;->findFundamentalMat_4(JJID)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v2
.end method

.method public static findFundamentalMat(Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;IDD)Lorg/opencv/core/Mat;
    .locals 12
    .param p0, "points1"    # Lorg/opencv/core/MatOfPoint2f;
    .param p1, "points2"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "method"    # I
    .param p3, "ransacReprojThreshold"    # D
    .param p5, "confidence"    # D

    .line 1617
    move-object v0, p0

    .line 1618
    .local v0, "points1_mat":Lorg/opencv/core/Mat;
    move-object v1, p1

    .line 1619
    .local v1, "points2_mat":Lorg/opencv/core/Mat;
    new-instance v2, Lorg/opencv/core/Mat;

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move v7, p2

    move-wide v8, p3

    move-wide/from16 v10, p5

    invoke-static/range {v3 .. v11}, Lorg/opencv/calib3d/Calib3d;->findFundamentalMat_3(JJIDD)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v2
.end method

.method public static findFundamentalMat(Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;IDDI)Lorg/opencv/core/Mat;
    .locals 13
    .param p0, "points1"    # Lorg/opencv/core/MatOfPoint2f;
    .param p1, "points2"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "method"    # I
    .param p3, "ransacReprojThreshold"    # D
    .param p5, "confidence"    # D
    .param p7, "maxIters"    # I

    .line 1600
    move-object v0, p0

    .line 1601
    .local v0, "points1_mat":Lorg/opencv/core/Mat;
    move-object v1, p1

    .line 1602
    .local v1, "points2_mat":Lorg/opencv/core/Mat;
    new-instance v2, Lorg/opencv/core/Mat;

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move v7, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move/from16 v12, p7

    invoke-static/range {v3 .. v12}, Lorg/opencv/calib3d/Calib3d;->findFundamentalMat_1(JJIDDI)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v2
.end method

.method public static findFundamentalMat(Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;IDDILorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 16
    .param p0, "points1"    # Lorg/opencv/core/MatOfPoint2f;
    .param p1, "points2"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "method"    # I
    .param p3, "ransacReprojThreshold"    # D
    .param p5, "confidence"    # D
    .param p7, "maxIters"    # I
    .param p8, "mask"    # Lorg/opencv/core/Mat;

    .line 1532
    move-object/from16 v0, p0

    .line 1533
    .local v0, "points1_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p1

    .line 1534
    .local v1, "points2_mat":Lorg/opencv/core/Mat;
    new-instance v2, Lorg/opencv/core/Mat;

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p8

    iget-wide v13, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v7, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move/from16 v12, p7

    invoke-static/range {v3 .. v14}, Lorg/opencv/calib3d/Calib3d;->findFundamentalMat_0(JJIDDIJ)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v2
.end method

.method public static findFundamentalMat(Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;IDDLorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 15
    .param p0, "points1"    # Lorg/opencv/core/MatOfPoint2f;
    .param p1, "points2"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "method"    # I
    .param p3, "ransacReprojThreshold"    # D
    .param p5, "confidence"    # D
    .param p7, "mask"    # Lorg/opencv/core/Mat;

    .line 1611
    move-object v0, p0

    .line 1612
    .local v0, "points1_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p1

    .line 1613
    .local v1, "points2_mat":Lorg/opencv/core/Mat;
    new-instance v2, Lorg/opencv/core/Mat;

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p7

    iget-wide v12, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v7, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-static/range {v3 .. v13}, Lorg/opencv/calib3d/Calib3d;->findFundamentalMat_2(JJIDDJ)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v2
.end method

.method private static native findFundamentalMat_0(JJIDDIJ)J
.end method

.method private static native findFundamentalMat_1(JJIDDI)J
.end method

.method private static native findFundamentalMat_2(JJIDDJ)J
.end method

.method private static native findFundamentalMat_3(JJIDD)J
.end method

.method private static native findFundamentalMat_4(JJID)J
.end method

.method private static native findFundamentalMat_5(JJI)J
.end method

.method private static native findFundamentalMat_6(JJ)J
.end method

.method public static findHomography(Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;)Lorg/opencv/core/Mat;
    .locals 7
    .param p0, "srcPoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p1, "dstPoints"    # Lorg/opencv/core/MatOfPoint2f;

    .line 2087
    move-object v0, p0

    .line 2088
    .local v0, "srcPoints_mat":Lorg/opencv/core/Mat;
    move-object v1, p1

    .line 2089
    .local v1, "dstPoints_mat":Lorg/opencv/core/Mat;
    new-instance v2, Lorg/opencv/core/Mat;

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v3, v4, v5, v6}, Lorg/opencv/calib3d/Calib3d;->findHomography_5(JJ)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v2
.end method

.method public static findHomography(Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;I)Lorg/opencv/core/Mat;
    .locals 7
    .param p0, "srcPoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p1, "dstPoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "method"    # I

    .line 2015
    move-object v0, p0

    .line 2016
    .local v0, "srcPoints_mat":Lorg/opencv/core/Mat;
    move-object v1, p1

    .line 2017
    .local v1, "dstPoints_mat":Lorg/opencv/core/Mat;
    new-instance v2, Lorg/opencv/core/Mat;

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v3, v4, v5, v6, p2}, Lorg/opencv/calib3d/Calib3d;->findHomography_4(JJI)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v2
.end method

.method public static findHomography(Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;ID)Lorg/opencv/core/Mat;
    .locals 10
    .param p0, "srcPoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p1, "dstPoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "method"    # I
    .param p3, "ransacReprojThreshold"    # D

    .line 1942
    move-object v0, p0

    .line 1943
    .local v0, "srcPoints_mat":Lorg/opencv/core/Mat;
    move-object v1, p1

    .line 1944
    .local v1, "dstPoints_mat":Lorg/opencv/core/Mat;
    new-instance v2, Lorg/opencv/core/Mat;

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move v7, p2

    move-wide v8, p3

    invoke-static/range {v3 .. v9}, Lorg/opencv/calib3d/Calib3d;->findHomography_3(JJID)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v2
.end method

.method public static findHomography(Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;IDLorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 13
    .param p0, "srcPoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p1, "dstPoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "method"    # I
    .param p3, "ransacReprojThreshold"    # D
    .param p5, "mask"    # Lorg/opencv/core/Mat;

    .line 1868
    move-object v0, p0

    .line 1869
    .local v0, "srcPoints_mat":Lorg/opencv/core/Mat;
    move-object v1, p1

    .line 1870
    .local v1, "dstPoints_mat":Lorg/opencv/core/Mat;
    new-instance v2, Lorg/opencv/core/Mat;

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p5

    iget-wide v10, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move v7, p2

    move-wide/from16 v8, p3

    invoke-static/range {v3 .. v11}, Lorg/opencv/calib3d/Calib3d;->findHomography_2(JJIDJ)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v2
.end method

.method public static findHomography(Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;IDLorg/opencv/core/Mat;I)Lorg/opencv/core/Mat;
    .locals 14
    .param p0, "srcPoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p1, "dstPoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "method"    # I
    .param p3, "ransacReprojThreshold"    # D
    .param p5, "mask"    # Lorg/opencv/core/Mat;
    .param p6, "maxIters"    # I

    .line 1793
    move-object v0, p0

    .line 1794
    .local v0, "srcPoints_mat":Lorg/opencv/core/Mat;
    move-object v1, p1

    .line 1795
    .local v1, "dstPoints_mat":Lorg/opencv/core/Mat;
    new-instance v2, Lorg/opencv/core/Mat;

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p5

    iget-wide v10, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v7, p2

    move-wide/from16 v8, p3

    move/from16 v12, p6

    invoke-static/range {v3 .. v12}, Lorg/opencv/calib3d/Calib3d;->findHomography_1(JJIDJI)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v2
.end method

.method public static findHomography(Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;IDLorg/opencv/core/Mat;ID)Lorg/opencv/core/Mat;
    .locals 16
    .param p0, "srcPoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p1, "dstPoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "method"    # I
    .param p3, "ransacReprojThreshold"    # D
    .param p5, "mask"    # Lorg/opencv/core/Mat;
    .param p6, "maxIters"    # I
    .param p7, "confidence"    # D

    .line 1717
    move-object/from16 v0, p0

    .line 1718
    .local v0, "srcPoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p1

    .line 1719
    .local v1, "dstPoints_mat":Lorg/opencv/core/Mat;
    new-instance v2, Lorg/opencv/core/Mat;

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p5

    iget-wide v10, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v7, p2

    move-wide/from16 v8, p3

    move/from16 v12, p6

    move-wide/from16 v13, p7

    invoke-static/range {v3 .. v14}, Lorg/opencv/calib3d/Calib3d;->findHomography_0(JJIDJID)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v2
.end method

.method private static native findHomography_0(JJIDJID)J
.end method

.method private static native findHomography_1(JJIDJI)J
.end method

.method private static native findHomography_2(JJIDJ)J
.end method

.method private static native findHomography_3(JJID)J
.end method

.method private static native findHomography_4(JJI)J
.end method

.method private static native findHomography_5(JJ)J
.end method

.method public static fisheye_calibrate(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;)D
    .locals 26
    .param p2, "image_size"    # Lorg/opencv/core/Size;
    .param p3, "K"    # Lorg/opencv/core/Mat;
    .param p4, "D"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;)D"
        }
    .end annotation

    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p5, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p6, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p2

    .line 5703
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 5704
    .local v1, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 5705
    .local v2, "imagePoints_mat":Lorg/opencv/core/Mat;
    new-instance v3, Lorg/opencv/core/Mat;

    invoke-direct {v3}, Lorg/opencv/core/Mat;-><init>()V

    .line 5706
    .local v3, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v4, Lorg/opencv/core/Mat;

    invoke-direct {v4}, Lorg/opencv/core/Mat;-><init>()V

    .line 5707
    .local v4, "tvecs_mat":Lorg/opencv/core/Mat;
    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v11, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v15, p3

    iget-wide v13, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v1    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v2    # "imagePoints_mat":Lorg/opencv/core/Mat;
    .local v21, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v22, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v23, v1

    iget-wide v0, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v25, v3

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v3    # "rvecs_mat":Lorg/opencv/core/Mat;
    .local v25, "rvecs_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v15, v23

    move-wide/from16 v17, v0

    move-wide/from16 v19, v2

    invoke-static/range {v5 .. v20}, Lorg/opencv/calib3d/Calib3d;->fisheye_calibrate_2(JJDDJJJJ)D

    move-result-wide v0

    .line 5708
    .local v0, "retVal":D
    move-object/from16 v2, p5

    move-object/from16 v3, v25

    invoke-static {v3, v2}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 5709
    .end local v25    # "rvecs_mat":Lorg/opencv/core/Mat;
    .restart local v3    # "rvecs_mat":Lorg/opencv/core/Mat;
    invoke-virtual {v3}, Lorg/opencv/core/Mat;->release()V

    .line 5710
    move-object/from16 v5, p6

    invoke-static {v4, v5}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 5711
    invoke-virtual {v4}, Lorg/opencv/core/Mat;->release()V

    .line 5712
    return-wide v0
.end method

.method public static fisheye_calibrate(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;I)D
    .locals 27
    .param p2, "image_size"    # Lorg/opencv/core/Size;
    .param p3, "K"    # Lorg/opencv/core/Mat;
    .param p4, "D"    # Lorg/opencv/core/Mat;
    .param p7, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;I)D"
        }
    .end annotation

    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p5, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p6, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p2

    .line 5643
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 5644
    .local v1, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 5645
    .local v2, "imagePoints_mat":Lorg/opencv/core/Mat;
    new-instance v3, Lorg/opencv/core/Mat;

    invoke-direct {v3}, Lorg/opencv/core/Mat;-><init>()V

    .line 5646
    .local v3, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v4, Lorg/opencv/core/Mat;

    invoke-direct {v4}, Lorg/opencv/core/Mat;-><init>()V

    .line 5647
    .local v4, "tvecs_mat":Lorg/opencv/core/Mat;
    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v11, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v15, p3

    iget-wide v13, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p4

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v1    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v2    # "imagePoints_mat":Lorg/opencv/core/Mat;
    .local v22, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v23, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v24, v1

    iget-wide v0, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v26, v3

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v3    # "rvecs_mat":Lorg/opencv/core/Mat;
    .local v26, "rvecs_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v15, v24

    move-wide/from16 v17, v0

    move-wide/from16 v19, v2

    move/from16 v21, p7

    invoke-static/range {v5 .. v21}, Lorg/opencv/calib3d/Calib3d;->fisheye_calibrate_1(JJDDJJJJI)D

    move-result-wide v0

    .line 5648
    .local v0, "retVal":D
    move-object/from16 v2, p5

    move-object/from16 v3, v26

    invoke-static {v3, v2}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 5649
    .end local v26    # "rvecs_mat":Lorg/opencv/core/Mat;
    .restart local v3    # "rvecs_mat":Lorg/opencv/core/Mat;
    invoke-virtual {v3}, Lorg/opencv/core/Mat;->release()V

    .line 5650
    move-object/from16 v5, p6

    invoke-static {v4, v5}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 5651
    invoke-virtual {v4}, Lorg/opencv/core/Mat;->release()V

    .line 5652
    return-wide v0
.end method

.method public static fisheye_calibrate(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;ILorg/opencv/core/TermCriteria;)D
    .locals 38
    .param p2, "image_size"    # Lorg/opencv/core/Size;
    .param p3, "K"    # Lorg/opencv/core/Mat;
    .param p4, "D"    # Lorg/opencv/core/Mat;
    .param p7, "flags"    # I
    .param p8, "criteria"    # Lorg/opencv/core/TermCriteria;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;I",
            "Lorg/opencv/core/TermCriteria;",
            ")D"
        }
    .end annotation

    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p5, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p6, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p2

    .line 5582
    move-object/from16 v1, p8

    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 5583
    .local v2, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v3

    .line 5584
    .local v3, "imagePoints_mat":Lorg/opencv/core/Mat;
    new-instance v4, Lorg/opencv/core/Mat;

    invoke-direct {v4}, Lorg/opencv/core/Mat;-><init>()V

    .line 5585
    .local v4, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v5, Lorg/opencv/core/Mat;

    invoke-direct {v5}, Lorg/opencv/core/Mat;-><init>()V

    .line 5586
    .local v5, "tvecs_mat":Lorg/opencv/core/Mat;
    iget-wide v6, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v12, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v14, p3

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    iget-wide v2, v14, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v2    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v3    # "imagePoints_mat":Lorg/opencv/core/Mat;
    .local v27, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v28, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v15, p4

    move-wide/from16 v29, v2

    iget-wide v2, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v31, v2

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v33, v2

    iget-wide v2, v5, Lorg/opencv/core/Mat;->nativeObj:J

    iget v0, v1, Lorg/opencv/core/TermCriteria;->type:I

    move-object/from16 v35, v5

    iget v5, v1, Lorg/opencv/core/TermCriteria;->maxCount:I

    .end local v5    # "tvecs_mat":Lorg/opencv/core/Mat;
    .local v35, "tvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v36, v4

    move/from16 v37, v5

    iget-wide v4, v1, Lorg/opencv/core/TermCriteria;->epsilon:D

    .end local v4    # "rvecs_mat":Lorg/opencv/core/Mat;
    .local v36, "rvecs_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v14, v29

    move-wide/from16 v16, v31

    move-wide/from16 v18, v33

    move-wide/from16 v20, v2

    move/from16 v22, p7

    move/from16 v23, v0

    move/from16 v24, v37

    move-wide/from16 v25, v4

    invoke-static/range {v6 .. v26}, Lorg/opencv/calib3d/Calib3d;->fisheye_calibrate_0(JJDDJJJJIIID)D

    move-result-wide v2

    .line 5587
    .local v2, "retVal":D
    move-object/from16 v0, p5

    move-object/from16 v4, v36

    invoke-static {v4, v0}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 5588
    .end local v36    # "rvecs_mat":Lorg/opencv/core/Mat;
    .restart local v4    # "rvecs_mat":Lorg/opencv/core/Mat;
    invoke-virtual {v4}, Lorg/opencv/core/Mat;->release()V

    .line 5589
    move-object/from16 v5, p6

    move-object/from16 v6, v35

    invoke-static {v6, v5}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 5590
    .end local v35    # "tvecs_mat":Lorg/opencv/core/Mat;
    .local v6, "tvecs_mat":Lorg/opencv/core/Mat;
    invoke-virtual {v6}, Lorg/opencv/core/Mat;->release()V

    .line 5591
    return-wide v2
.end method

.method private static native fisheye_calibrate_0(JJDDJJJJIIID)D
.end method

.method private static native fisheye_calibrate_1(JJDDJJJJI)D
.end method

.method private static native fisheye_calibrate_2(JJDDJJJJ)D
.end method

.method public static fisheye_distortPoints(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "undistorted"    # Lorg/opencv/core/Mat;
    .param p1, "distorted"    # Lorg/opencv/core/Mat;
    .param p2, "K"    # Lorg/opencv/core/Mat;
    .param p3, "D"    # Lorg/opencv/core/Mat;

    .line 11014
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/calib3d/Calib3d;->fisheye_distortPoints_1(JJJJ)V

    .line 11015
    return-void
.end method

.method public static fisheye_distortPoints(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;D)V
    .locals 10
    .param p0, "undistorted"    # Lorg/opencv/core/Mat;
    .param p1, "distorted"    # Lorg/opencv/core/Mat;
    .param p2, "K"    # Lorg/opencv/core/Mat;
    .param p3, "D"    # Lorg/opencv/core/Mat;
    .param p4, "alpha"    # D

    .line 10997
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v8, p4

    invoke-static/range {v0 .. v9}, Lorg/opencv/calib3d/Calib3d;->fisheye_distortPoints_0(JJJJD)V

    .line 10998
    return-void
.end method

.method private static native fisheye_distortPoints_0(JJJJD)V
.end method

.method private static native fisheye_distortPoints_1(JJJJ)V
.end method

.method public static fisheye_estimateNewCameraMatrixForUndistortRectify(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 17
    .param p0, "K"    # Lorg/opencv/core/Mat;
    .param p1, "D"    # Lorg/opencv/core/Mat;
    .param p2, "image_size"    # Lorg/opencv/core/Size;
    .param p3, "R"    # Lorg/opencv/core/Mat;
    .param p4, "P"    # Lorg/opencv/core/Mat;

    move-object/from16 v0, p2

    .line 11085
    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v4, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v8, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v15, p3

    iget-wide v10, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p4

    iget-wide v0, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v12, v0

    invoke-static/range {v2 .. v13}, Lorg/opencv/calib3d/Calib3d;->fisheye_estimateNewCameraMatrixForUndistortRectify_3(JJDDJJ)V

    .line 11086
    return-void
.end method

.method public static fisheye_estimateNewCameraMatrixForUndistortRectify(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;D)V
    .locals 17
    .param p0, "K"    # Lorg/opencv/core/Mat;
    .param p1, "D"    # Lorg/opencv/core/Mat;
    .param p2, "image_size"    # Lorg/opencv/core/Size;
    .param p3, "R"    # Lorg/opencv/core/Mat;
    .param p4, "P"    # Lorg/opencv/core/Mat;
    .param p5, "balance"    # D

    move-object/from16 v0, p2

    .line 11070
    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v4, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v8, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v15, p3

    iget-wide v10, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p4

    iget-wide v0, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v12, v0

    move-wide/from16 v14, p5

    invoke-static/range {v2 .. v15}, Lorg/opencv/calib3d/Calib3d;->fisheye_estimateNewCameraMatrixForUndistortRectify_2(JJDDJJD)V

    .line 11071
    return-void
.end method

.method public static fisheye_estimateNewCameraMatrixForUndistortRectify(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DLorg/opencv/core/Size;)V
    .locals 25
    .param p0, "K"    # Lorg/opencv/core/Mat;
    .param p1, "D"    # Lorg/opencv/core/Mat;
    .param p2, "image_size"    # Lorg/opencv/core/Size;
    .param p3, "R"    # Lorg/opencv/core/Mat;
    .param p4, "P"    # Lorg/opencv/core/Mat;
    .param p5, "balance"    # D
    .param p7, "new_size"    # Lorg/opencv/core/Size;

    move-object/from16 v0, p2

    .line 11054
    move-object/from16 v1, p7

    move-object/from16 v2, p0

    iget-wide v3, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v5, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v9, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v13, p3

    iget-wide v11, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p4

    move-wide/from16 v21, v11

    iget-wide v11, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v13, v1, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v23, v13

    iget-wide v13, v1, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v16, v11

    move-wide/from16 v11, v21

    move-wide/from16 v20, v13

    move-wide/from16 v18, v23

    move-wide/from16 v13, v16

    move-wide/from16 v15, p5

    move-wide/from16 v17, v18

    move-wide/from16 v19, v20

    invoke-static/range {v3 .. v20}, Lorg/opencv/calib3d/Calib3d;->fisheye_estimateNewCameraMatrixForUndistortRectify_1(JJDDJJDDD)V

    .line 11055
    return-void
.end method

.method public static fisheye_estimateNewCameraMatrixForUndistortRectify(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DLorg/opencv/core/Size;D)V
    .locals 27
    .param p0, "K"    # Lorg/opencv/core/Mat;
    .param p1, "D"    # Lorg/opencv/core/Mat;
    .param p2, "image_size"    # Lorg/opencv/core/Size;
    .param p3, "R"    # Lorg/opencv/core/Mat;
    .param p4, "P"    # Lorg/opencv/core/Mat;
    .param p5, "balance"    # D
    .param p7, "new_size"    # Lorg/opencv/core/Size;
    .param p8, "fov_scale"    # D

    move-object/from16 v0, p2

    move-object/from16 v1, p7

    .line 11037
    move-object/from16 v2, p0

    iget-wide v3, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v5, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v9, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v13, p3

    iget-wide v11, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p4

    move-wide/from16 v23, v11

    iget-wide v11, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v13, v1, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v25, v13

    iget-wide v13, v1, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v16, v11

    move-wide/from16 v11, v23

    move-wide/from16 v20, v13

    move-wide/from16 v18, v25

    move-wide/from16 v13, v16

    move-wide/from16 v15, p5

    move-wide/from16 v17, v18

    move-wide/from16 v19, v20

    move-wide/from16 v21, p8

    invoke-static/range {v3 .. v22}, Lorg/opencv/calib3d/Calib3d;->fisheye_estimateNewCameraMatrixForUndistortRectify_0(JJDDJJDDDD)V

    .line 11038
    return-void
.end method

.method private static native fisheye_estimateNewCameraMatrixForUndistortRectify_0(JJDDJJDDDD)V
.end method

.method private static native fisheye_estimateNewCameraMatrixForUndistortRectify_1(JJDDJJDDD)V
.end method

.method private static native fisheye_estimateNewCameraMatrixForUndistortRectify_2(JJDDJJD)V
.end method

.method private static native fisheye_estimateNewCameraMatrixForUndistortRectify_3(JJDDJJ)V
.end method

.method public static fisheye_initUndistortRectifyMap(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;ILorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 21
    .param p0, "K"    # Lorg/opencv/core/Mat;
    .param p1, "D"    # Lorg/opencv/core/Mat;
    .param p2, "R"    # Lorg/opencv/core/Mat;
    .param p3, "P"    # Lorg/opencv/core/Mat;
    .param p4, "size"    # Lorg/opencv/core/Size;
    .param p5, "m1type"    # I
    .param p6, "map1"    # Lorg/opencv/core/Mat;
    .param p7, "map2"    # Lorg/opencv/core/Mat;

    move-object/from16 v0, p4

    .line 11109
    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v4, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v6, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p3

    iget-wide v8, v12, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v12, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p6

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    move-wide/from16 v19, v14

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v17, v14

    move-wide/from16 v15, v19

    move/from16 v14, p5

    invoke-static/range {v2 .. v18}, Lorg/opencv/calib3d/Calib3d;->fisheye_initUndistortRectifyMap_0(JJJJDDIJJ)V

    .line 11110
    return-void
.end method

.method private static native fisheye_initUndistortRectifyMap_0(JJJJDDIJJ)V
.end method

.method public static fisheye_projectPoints(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 17
    .param p0, "objectPoints"    # Lorg/opencv/core/Mat;
    .param p1, "imagePoints"    # Lorg/opencv/core/Mat;
    .param p2, "rvec"    # Lorg/opencv/core/Mat;
    .param p3, "tvec"    # Lorg/opencv/core/Mat;
    .param p4, "K"    # Lorg/opencv/core/Mat;
    .param p5, "D"    # Lorg/opencv/core/Mat;

    .line 11126
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p1

    iget-wide v3, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v5, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p3

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v11, p4

    iget-wide v9, v11, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p5

    iget-wide v13, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v11, v13

    invoke-static/range {v1 .. v12}, Lorg/opencv/calib3d/Calib3d;->fisheye_projectPoints_2(JJJJJJ)V

    .line 11127
    return-void
.end method

.method public static fisheye_projectPoints(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;D)V
    .locals 17
    .param p0, "objectPoints"    # Lorg/opencv/core/Mat;
    .param p1, "imagePoints"    # Lorg/opencv/core/Mat;
    .param p2, "rvec"    # Lorg/opencv/core/Mat;
    .param p3, "tvec"    # Lorg/opencv/core/Mat;
    .param p4, "K"    # Lorg/opencv/core/Mat;
    .param p5, "D"    # Lorg/opencv/core/Mat;
    .param p6, "alpha"    # D

    .line 11122
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v3, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v5, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v7, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v11, p4

    iget-wide v9, v11, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p5

    iget-wide v13, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v11, v13

    move-wide/from16 v13, p6

    invoke-static/range {v1 .. v14}, Lorg/opencv/calib3d/Calib3d;->fisheye_projectPoints_1(JJJJJJD)V

    .line 11123
    return-void
.end method

.method public static fisheye_projectPoints(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DLorg/opencv/core/Mat;)V
    .locals 19
    .param p0, "objectPoints"    # Lorg/opencv/core/Mat;
    .param p1, "imagePoints"    # Lorg/opencv/core/Mat;
    .param p2, "rvec"    # Lorg/opencv/core/Mat;
    .param p3, "tvec"    # Lorg/opencv/core/Mat;
    .param p4, "K"    # Lorg/opencv/core/Mat;
    .param p5, "D"    # Lorg/opencv/core/Mat;
    .param p6, "alpha"    # D
    .param p8, "jacobian"    # Lorg/opencv/core/Mat;

    .line 11118
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v3, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v5, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v7, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v11, p4

    iget-wide v9, v11, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p5

    iget-wide v13, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p8

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v17, v11

    move-wide v11, v13

    move-wide/from16 v13, p6

    move-wide/from16 v15, v17

    invoke-static/range {v1 .. v16}, Lorg/opencv/calib3d/Calib3d;->fisheye_projectPoints_0(JJJJJJDJ)V

    .line 11119
    return-void
.end method

.method private static native fisheye_projectPoints_0(JJJJJJDJ)V
.end method

.method private static native fisheye_projectPoints_1(JJJJJJD)V
.end method

.method private static native fisheye_projectPoints_2(JJJJJJ)V
.end method

.method public static fisheye_stereoCalibrate(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)D
    .locals 39
    .param p3, "K1"    # Lorg/opencv/core/Mat;
    .param p4, "D1"    # Lorg/opencv/core/Mat;
    .param p5, "K2"    # Lorg/opencv/core/Mat;
    .param p6, "D2"    # Lorg/opencv/core/Mat;
    .param p7, "imageSize"    # Lorg/opencv/core/Size;
    .param p8, "R"    # Lorg/opencv/core/Mat;
    .param p9, "T"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            ")D"
        }
    .end annotation

    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints1":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p2, "imagePoints2":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p7

    .line 5876
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 5877
    .local v1, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 5878
    .local v2, "imagePoints1_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p2 .. p2}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v3

    .line 5879
    .local v3, "imagePoints2_mat":Lorg/opencv/core/Mat;
    iget-wide v4, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v10, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p4

    iget-wide v12, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v26, v1

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v1, p5

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v1    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v2    # "imagePoints1_mat":Lorg/opencv/core/Mat;
    .end local v3    # "imagePoints2_mat":Lorg/opencv/core/Mat;
    .local v26, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v27, "imagePoints1_mat":Lorg/opencv/core/Mat;
    .local v28, "imagePoints2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p6

    move-wide/from16 v29, v2

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v31, v2

    iget-wide v1, v0, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v33, v1

    iget-wide v1, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v3, p8

    move-wide/from16 v35, v1

    iget-wide v0, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v2, p9

    move-wide/from16 v37, v0

    iget-wide v0, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v14, v29

    move-wide/from16 v16, v31

    move-wide/from16 v18, v33

    move-wide/from16 v20, v35

    move-wide/from16 v22, v37

    move-wide/from16 v24, v0

    invoke-static/range {v4 .. v25}, Lorg/opencv/calib3d/Calib3d;->fisheye_stereoCalibrate_2(JJJJJJJDDJJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public static fisheye_stereoCalibrate(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)D
    .locals 40
    .param p3, "K1"    # Lorg/opencv/core/Mat;
    .param p4, "D1"    # Lorg/opencv/core/Mat;
    .param p5, "K2"    # Lorg/opencv/core/Mat;
    .param p6, "D2"    # Lorg/opencv/core/Mat;
    .param p7, "imageSize"    # Lorg/opencv/core/Size;
    .param p8, "R"    # Lorg/opencv/core/Mat;
    .param p9, "T"    # Lorg/opencv/core/Mat;
    .param p10, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "I)D"
        }
    .end annotation

    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints1":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p2, "imagePoints2":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p7

    .line 5823
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 5824
    .local v1, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 5825
    .local v2, "imagePoints1_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p2 .. p2}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v3

    .line 5826
    .local v3, "imagePoints2_mat":Lorg/opencv/core/Mat;
    iget-wide v4, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v10, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p4

    iget-wide v12, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v27, v1

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v1, p5

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v1    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v2    # "imagePoints1_mat":Lorg/opencv/core/Mat;
    .end local v3    # "imagePoints2_mat":Lorg/opencv/core/Mat;
    .local v27, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v28, "imagePoints1_mat":Lorg/opencv/core/Mat;
    .local v29, "imagePoints2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p6

    move-wide/from16 v30, v2

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v32, v2

    iget-wide v1, v0, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v34, v1

    iget-wide v1, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v3, p8

    move-wide/from16 v36, v1

    iget-wide v0, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v2, p9

    move-wide/from16 v38, v0

    iget-wide v0, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v14, v30

    move-wide/from16 v16, v32

    move-wide/from16 v18, v34

    move-wide/from16 v20, v36

    move-wide/from16 v22, v38

    move-wide/from16 v24, v0

    move/from16 v26, p10

    invoke-static/range {v4 .. v26}, Lorg/opencv/calib3d/Calib3d;->fisheye_stereoCalibrate_1(JJJJJJJDDJJI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static fisheye_stereoCalibrate(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ILorg/opencv/core/TermCriteria;)D
    .locals 49
    .param p3, "K1"    # Lorg/opencv/core/Mat;
    .param p4, "D1"    # Lorg/opencv/core/Mat;
    .param p5, "K2"    # Lorg/opencv/core/Mat;
    .param p6, "D2"    # Lorg/opencv/core/Mat;
    .param p7, "imageSize"    # Lorg/opencv/core/Size;
    .param p8, "R"    # Lorg/opencv/core/Mat;
    .param p9, "T"    # Lorg/opencv/core/Mat;
    .param p10, "flags"    # I
    .param p11, "criteria"    # Lorg/opencv/core/TermCriteria;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "I",
            "Lorg/opencv/core/TermCriteria;",
            ")D"
        }
    .end annotation

    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints1":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p2, "imagePoints2":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p7

    .line 5769
    move-object/from16 v1, p11

    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 5770
    .local v2, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v3

    .line 5771
    .local v3, "imagePoints1_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p2 .. p2}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v4

    .line 5772
    .local v4, "imagePoints2_mat":Lorg/opencv/core/Mat;
    iget-wide v5, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v4, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p3

    iget-wide v11, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p4

    move-object/from16 v32, v2

    move-object/from16 v33, v3

    iget-wide v2, v13, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v2    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v3    # "imagePoints1_mat":Lorg/opencv/core/Mat;
    .local v32, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v33, "imagePoints1_mat":Lorg/opencv/core/Mat;
    move-object/from16 v14, p5

    move-wide/from16 v34, v2

    iget-wide v2, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v37, v2

    move-object/from16 v36, v4

    move-object/from16 v4, p6

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v4    # "imagePoints2_mat":Lorg/opencv/core/Mat;
    .local v36, "imagePoints2_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v39, v2

    iget-wide v2, v0, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v41, v2

    iget-wide v2, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p8

    move-wide/from16 v43, v2

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p9

    move-wide/from16 v45, v2

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget v0, v1, Lorg/opencv/core/TermCriteria;->type:I

    iget v4, v1, Lorg/opencv/core/TermCriteria;->maxCount:I

    move-wide/from16 v47, v2

    iget-wide v2, v1, Lorg/opencv/core/TermCriteria;->epsilon:D

    move-wide/from16 v13, v34

    move-wide/from16 v15, v37

    move-wide/from16 v17, v39

    move-wide/from16 v19, v41

    move-wide/from16 v21, v43

    move-wide/from16 v23, v45

    move-wide/from16 v25, v47

    move/from16 v27, p10

    move/from16 v28, v0

    move/from16 v29, v4

    move-wide/from16 v30, v2

    invoke-static/range {v5 .. v31}, Lorg/opencv/calib3d/Calib3d;->fisheye_stereoCalibrate_0(JJJJJJJDDJJIIID)D

    move-result-wide v2

    return-wide v2
.end method

.method private static native fisheye_stereoCalibrate_0(JJJJJJJDDJJIIID)D
.end method

.method private static native fisheye_stereoCalibrate_1(JJJJJJJDDJJI)D
.end method

.method private static native fisheye_stereoCalibrate_2(JJJJJJJDDJJ)D
.end method

.method public static fisheye_stereoRectify(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 41
    .param p0, "K1"    # Lorg/opencv/core/Mat;
    .param p1, "D1"    # Lorg/opencv/core/Mat;
    .param p2, "K2"    # Lorg/opencv/core/Mat;
    .param p3, "D2"    # Lorg/opencv/core/Mat;
    .param p4, "imageSize"    # Lorg/opencv/core/Size;
    .param p5, "R"    # Lorg/opencv/core/Mat;
    .param p6, "tvec"    # Lorg/opencv/core/Mat;
    .param p7, "R1"    # Lorg/opencv/core/Mat;
    .param p8, "R2"    # Lorg/opencv/core/Mat;
    .param p9, "P1"    # Lorg/opencv/core/Mat;
    .param p10, "P2"    # Lorg/opencv/core/Mat;
    .param p11, "Q"    # Lorg/opencv/core/Mat;
    .param p12, "flags"    # I

    move-object/from16 v0, p4

    .line 11265
    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v4, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p2

    iget-wide v6, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p3

    iget-wide v8, v12, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v12, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p5

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    move-wide/from16 v29, v14

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    move-wide/from16 v31, v14

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p8

    move-wide/from16 v33, v14

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p9

    move-wide/from16 v35, v14

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p10

    move-wide/from16 v37, v14

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p11

    move-wide/from16 v39, v14

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v26, v14

    move-wide/from16 v16, v31

    move-wide/from16 v18, v33

    move-wide/from16 v20, v35

    move-wide/from16 v22, v37

    move-wide/from16 v24, v39

    move-wide/from16 v14, v29

    move/from16 v28, p12

    invoke-static/range {v2 .. v28}, Lorg/opencv/calib3d/Calib3d;->fisheye_stereoRectify_3(JJJJDDJJJJJJJI)V

    .line 11266
    return-void
.end method

.method public static fisheye_stereoRectify(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ILorg/opencv/core/Size;)V
    .locals 52
    .param p0, "K1"    # Lorg/opencv/core/Mat;
    .param p1, "D1"    # Lorg/opencv/core/Mat;
    .param p2, "K2"    # Lorg/opencv/core/Mat;
    .param p3, "D2"    # Lorg/opencv/core/Mat;
    .param p4, "imageSize"    # Lorg/opencv/core/Size;
    .param p5, "R"    # Lorg/opencv/core/Mat;
    .param p6, "tvec"    # Lorg/opencv/core/Mat;
    .param p7, "R1"    # Lorg/opencv/core/Mat;
    .param p8, "R2"    # Lorg/opencv/core/Mat;
    .param p9, "P1"    # Lorg/opencv/core/Mat;
    .param p10, "P2"    # Lorg/opencv/core/Mat;
    .param p11, "Q"    # Lorg/opencv/core/Mat;
    .param p12, "flags"    # I
    .param p13, "newImageSize"    # Lorg/opencv/core/Size;

    move-object/from16 v0, p4

    .line 11233
    move-object/from16 v1, p13

    move-object/from16 v2, p0

    iget-wide v3, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v5, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v7, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v9, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v11, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v13, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p5

    move-wide/from16 v34, v13

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    move-wide/from16 v36, v13

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    move-wide/from16 v38, v13

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p8

    move-wide/from16 v40, v13

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p9

    move-wide/from16 v42, v13

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p10

    move-wide/from16 v44, v13

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p11

    move-wide/from16 v46, v13

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v48, v13

    iget-wide v13, v1, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v50, v13

    iget-wide v13, v1, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v32, v13

    move-wide/from16 v16, v36

    move-wide/from16 v18, v38

    move-wide/from16 v20, v40

    move-wide/from16 v22, v42

    move-wide/from16 v24, v44

    move-wide/from16 v26, v46

    move-wide/from16 v28, v48

    move-wide/from16 v30, v50

    move-wide/from16 v13, v34

    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    move-wide/from16 v19, v20

    move-wide/from16 v21, v22

    move-wide/from16 v23, v24

    move-wide/from16 v25, v26

    move-wide/from16 v27, v28

    move/from16 v29, p12

    invoke-static/range {v3 .. v33}, Lorg/opencv/calib3d/Calib3d;->fisheye_stereoRectify_2(JJJJDDJJJJJJJIDD)V

    .line 11234
    return-void
.end method

.method public static fisheye_stereoRectify(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ILorg/opencv/core/Size;D)V
    .locals 54
    .param p0, "K1"    # Lorg/opencv/core/Mat;
    .param p1, "D1"    # Lorg/opencv/core/Mat;
    .param p2, "K2"    # Lorg/opencv/core/Mat;
    .param p3, "D2"    # Lorg/opencv/core/Mat;
    .param p4, "imageSize"    # Lorg/opencv/core/Size;
    .param p5, "R"    # Lorg/opencv/core/Mat;
    .param p6, "tvec"    # Lorg/opencv/core/Mat;
    .param p7, "R1"    # Lorg/opencv/core/Mat;
    .param p8, "R2"    # Lorg/opencv/core/Mat;
    .param p9, "P1"    # Lorg/opencv/core/Mat;
    .param p10, "P2"    # Lorg/opencv/core/Mat;
    .param p11, "Q"    # Lorg/opencv/core/Mat;
    .param p12, "flags"    # I
    .param p13, "newImageSize"    # Lorg/opencv/core/Size;
    .param p14, "balance"    # D

    move-object/from16 v0, p4

    move-object/from16 v1, p13

    .line 11200
    move-object/from16 v2, p0

    iget-wide v3, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v5, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v7, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v9, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v11, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v13, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p5

    move-wide/from16 v36, v13

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    move-wide/from16 v38, v13

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    move-wide/from16 v40, v13

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p8

    move-wide/from16 v42, v13

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p9

    move-wide/from16 v44, v13

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p10

    move-wide/from16 v46, v13

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p11

    move-wide/from16 v48, v13

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v50, v13

    iget-wide v13, v1, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v52, v13

    iget-wide v13, v1, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v32, v13

    move-wide/from16 v16, v38

    move-wide/from16 v18, v40

    move-wide/from16 v20, v42

    move-wide/from16 v22, v44

    move-wide/from16 v24, v46

    move-wide/from16 v26, v48

    move-wide/from16 v28, v50

    move-wide/from16 v30, v52

    move-wide/from16 v13, v36

    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    move-wide/from16 v19, v20

    move-wide/from16 v21, v22

    move-wide/from16 v23, v24

    move-wide/from16 v25, v26

    move-wide/from16 v27, v28

    move/from16 v29, p12

    move-wide/from16 v34, p14

    invoke-static/range {v3 .. v35}, Lorg/opencv/calib3d/Calib3d;->fisheye_stereoRectify_1(JJJJDDJJJJJJJIDDD)V

    .line 11201
    return-void
.end method

.method public static fisheye_stereoRectify(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ILorg/opencv/core/Size;DD)V
    .locals 56
    .param p0, "K1"    # Lorg/opencv/core/Mat;
    .param p1, "D1"    # Lorg/opencv/core/Mat;
    .param p2, "K2"    # Lorg/opencv/core/Mat;
    .param p3, "D2"    # Lorg/opencv/core/Mat;
    .param p4, "imageSize"    # Lorg/opencv/core/Size;
    .param p5, "R"    # Lorg/opencv/core/Mat;
    .param p6, "tvec"    # Lorg/opencv/core/Mat;
    .param p7, "R1"    # Lorg/opencv/core/Mat;
    .param p8, "R2"    # Lorg/opencv/core/Mat;
    .param p9, "P1"    # Lorg/opencv/core/Mat;
    .param p10, "P2"    # Lorg/opencv/core/Mat;
    .param p11, "Q"    # Lorg/opencv/core/Mat;
    .param p12, "flags"    # I
    .param p13, "newImageSize"    # Lorg/opencv/core/Size;
    .param p14, "balance"    # D
    .param p16, "fov_scale"    # D

    move-object/from16 v0, p4

    move-object/from16 v1, p13

    .line 11166
    move-object/from16 v2, p0

    iget-wide v3, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v5, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v7, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v9, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v11, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v13, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p5

    move-wide/from16 v38, v13

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    move-wide/from16 v40, v13

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    move-wide/from16 v42, v13

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p8

    move-wide/from16 v44, v13

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p9

    move-wide/from16 v46, v13

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p10

    move-wide/from16 v48, v13

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p11

    move-wide/from16 v50, v13

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v52, v13

    iget-wide v13, v1, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v54, v13

    iget-wide v13, v1, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v32, v13

    move-wide/from16 v16, v40

    move-wide/from16 v18, v42

    move-wide/from16 v20, v44

    move-wide/from16 v22, v46

    move-wide/from16 v24, v48

    move-wide/from16 v26, v50

    move-wide/from16 v28, v52

    move-wide/from16 v30, v54

    move-wide/from16 v13, v38

    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    move-wide/from16 v19, v20

    move-wide/from16 v21, v22

    move-wide/from16 v23, v24

    move-wide/from16 v25, v26

    move-wide/from16 v27, v28

    move/from16 v29, p12

    move-wide/from16 v34, p14

    move-wide/from16 v36, p16

    invoke-static/range {v3 .. v37}, Lorg/opencv/calib3d/Calib3d;->fisheye_stereoRectify_0(JJJJDDJJJJJJJIDDDD)V

    .line 11167
    return-void
.end method

.method private static native fisheye_stereoRectify_0(JJJJDDJJJJJJJIDDDD)V
.end method

.method private static native fisheye_stereoRectify_1(JJJJDDJJJJJJJIDDD)V
.end method

.method private static native fisheye_stereoRectify_2(JJJJDDJJJJJJJIDD)V
.end method

.method private static native fisheye_stereoRectify_3(JJJJDDJJJJJJJI)V
.end method

.method public static fisheye_undistortImage(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "distorted"    # Lorg/opencv/core/Mat;
    .param p1, "undistorted"    # Lorg/opencv/core/Mat;
    .param p2, "K"    # Lorg/opencv/core/Mat;
    .param p3, "D"    # Lorg/opencv/core/Mat;

    .line 11396
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/calib3d/Calib3d;->fisheye_undistortImage_2(JJJJ)V

    .line 11397
    return-void
.end method

.method public static fisheye_undistortImage(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 10
    .param p0, "distorted"    # Lorg/opencv/core/Mat;
    .param p1, "undistorted"    # Lorg/opencv/core/Mat;
    .param p2, "K"    # Lorg/opencv/core/Mat;
    .param p3, "D"    # Lorg/opencv/core/Mat;
    .param p4, "Knew"    # Lorg/opencv/core/Mat;

    .line 11355
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, p4, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v9}, Lorg/opencv/calib3d/Calib3d;->fisheye_undistortImage_1(JJJJJ)V

    .line 11356
    return-void
.end method

.method public static fisheye_undistortImage(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;)V
    .locals 17
    .param p0, "distorted"    # Lorg/opencv/core/Mat;
    .param p1, "undistorted"    # Lorg/opencv/core/Mat;
    .param p2, "K"    # Lorg/opencv/core/Mat;
    .param p3, "D"    # Lorg/opencv/core/Mat;
    .param p4, "Knew"    # Lorg/opencv/core/Mat;
    .param p5, "new_size"    # Lorg/opencv/core/Size;

    .line 11313
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v4, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p2

    iget-wide v6, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p3

    iget-wide v8, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p4

    iget-wide v10, v13, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v12, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v14, v0, Lorg/opencv/core/Size;->height:D

    invoke-static/range {v2 .. v15}, Lorg/opencv/calib3d/Calib3d;->fisheye_undistortImage_0(JJJJJDD)V

    .line 11314
    return-void
.end method

.method private static native fisheye_undistortImage_0(JJJJJDD)V
.end method

.method private static native fisheye_undistortImage_1(JJJJJ)V
.end method

.method private static native fisheye_undistortImage_2(JJJJ)V
.end method

.method public static fisheye_undistortPoints(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "distorted"    # Lorg/opencv/core/Mat;
    .param p1, "undistorted"    # Lorg/opencv/core/Mat;
    .param p2, "K"    # Lorg/opencv/core/Mat;
    .param p3, "D"    # Lorg/opencv/core/Mat;

    .line 11446
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/calib3d/Calib3d;->fisheye_undistortPoints_2(JJJJ)V

    .line 11447
    return-void
.end method

.method public static fisheye_undistortPoints(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 10
    .param p0, "distorted"    # Lorg/opencv/core/Mat;
    .param p1, "undistorted"    # Lorg/opencv/core/Mat;
    .param p2, "K"    # Lorg/opencv/core/Mat;
    .param p3, "D"    # Lorg/opencv/core/Mat;
    .param p4, "R"    # Lorg/opencv/core/Mat;

    .line 11432
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, p4, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v9}, Lorg/opencv/calib3d/Calib3d;->fisheye_undistortPoints_1(JJJJJ)V

    .line 11433
    return-void
.end method

.method public static fisheye_undistortPoints(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 17
    .param p0, "distorted"    # Lorg/opencv/core/Mat;
    .param p1, "undistorted"    # Lorg/opencv/core/Mat;
    .param p2, "K"    # Lorg/opencv/core/Mat;
    .param p3, "D"    # Lorg/opencv/core/Mat;
    .param p4, "R"    # Lorg/opencv/core/Mat;
    .param p5, "P"    # Lorg/opencv/core/Mat;

    .line 11417
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p1

    iget-wide v3, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v5, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p3

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v11, p4

    iget-wide v9, v11, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p5

    iget-wide v13, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v11, v13

    invoke-static/range {v1 .. v12}, Lorg/opencv/calib3d/Calib3d;->fisheye_undistortPoints_0(JJJJJJ)V

    .line 11418
    return-void
.end method

.method private static native fisheye_undistortPoints_0(JJJJJJ)V
.end method

.method private static native fisheye_undistortPoints_1(JJJJJ)V
.end method

.method private static native fisheye_undistortPoints_2(JJJJ)V
.end method

.method public static getDefaultNewCameraMatrix(Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 3
    .param p0, "cameraMatrix"    # Lorg/opencv/core/Mat;

    .line 2175
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v1, v2}, Lorg/opencv/calib3d/Calib3d;->getDefaultNewCameraMatrix_2(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public static getDefaultNewCameraMatrix(Lorg/opencv/core/Mat;Lorg/opencv/core/Size;)Lorg/opencv/core/Mat;
    .locals 7
    .param p0, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p1, "imgsize"    # Lorg/opencv/core/Size;

    .line 2149
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Size;->width:D

    iget-wide v5, p1, Lorg/opencv/core/Size;->height:D

    invoke-static/range {v1 .. v6}, Lorg/opencv/calib3d/Calib3d;->getDefaultNewCameraMatrix_1(JDD)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public static getDefaultNewCameraMatrix(Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Z)Lorg/opencv/core/Mat;
    .locals 8
    .param p0, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p1, "imgsize"    # Lorg/opencv/core/Size;
    .param p2, "centerPrincipalPoint"    # Z

    .line 2122
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Size;->width:D

    iget-wide v5, p1, Lorg/opencv/core/Size;->height:D

    move v7, p2

    invoke-static/range {v1 .. v7}, Lorg/opencv/calib3d/Calib3d;->getDefaultNewCameraMatrix_0(JDDZ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method private static native getDefaultNewCameraMatrix_0(JDDZ)J
.end method

.method private static native getDefaultNewCameraMatrix_1(JDD)J
.end method

.method private static native getDefaultNewCameraMatrix_2(J)J
.end method

.method public static getOptimalNewCameraMatrix(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;D)Lorg/opencv/core/Mat;
    .locals 11
    .param p0, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p1, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p2, "imageSize"    # Lorg/opencv/core/Size;
    .param p3, "alpha"    # D

    .line 2308
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p2, Lorg/opencv/core/Size;->width:D

    iget-wide v7, p2, Lorg/opencv/core/Size;->height:D

    move-wide v9, p3

    invoke-static/range {v1 .. v10}, Lorg/opencv/calib3d/Calib3d;->getOptimalNewCameraMatrix_3(JJDDD)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public static getOptimalNewCameraMatrix(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;DLorg/opencv/core/Size;)Lorg/opencv/core/Mat;
    .locals 20
    .param p0, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p1, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p2, "imageSize"    # Lorg/opencv/core/Size;
    .param p3, "alpha"    # D
    .param p5, "newImgSize"    # Lorg/opencv/core/Size;

    move-object/from16 v0, p2

    .line 2279
    move-object/from16 v1, p5

    new-instance v2, Lorg/opencv/core/Mat;

    move-object/from16 v3, p0

    iget-wide v4, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v6, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v10, v0, Lorg/opencv/core/Size;->height:D

    iget-wide v12, v1, Lorg/opencv/core/Size;->width:D

    move-object/from16 v18, v2

    iget-wide v2, v1, Lorg/opencv/core/Size;->height:D

    move-wide v15, v12

    move-wide/from16 v12, p3

    move-wide v14, v15

    move-wide/from16 v16, v2

    invoke-static/range {v4 .. v17}, Lorg/opencv/calib3d/Calib3d;->getOptimalNewCameraMatrix_2(JJDDDDD)J

    move-result-wide v2

    move-object/from16 v4, v18

    invoke-direct {v4, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v4
.end method

.method public static getOptimalNewCameraMatrix(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;DLorg/opencv/core/Size;Lorg/opencv/core/Rect;)Lorg/opencv/core/Mat;
    .locals 22
    .param p0, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p1, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p2, "imageSize"    # Lorg/opencv/core/Size;
    .param p3, "alpha"    # D
    .param p5, "newImgSize"    # Lorg/opencv/core/Size;
    .param p6, "validPixROI"    # Lorg/opencv/core/Rect;

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    .line 2246
    move-object/from16 v2, p6

    const/4 v3, 0x4

    new-array v3, v3, [D

    .line 2247
    .local v3, "validPixROI_out":[D
    new-instance v14, Lorg/opencv/core/Mat;

    move-object/from16 v15, p0

    iget-wide v4, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p1

    iget-wide v6, v12, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v10, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v19, v14

    iget-wide v14, v1, Lorg/opencv/core/Size;->width:D

    move-object/from16 v20, v3

    iget-wide v2, v1, Lorg/opencv/core/Size;->height:D

    .end local v3    # "validPixROI_out":[D
    .local v20, "validPixROI_out":[D
    move-wide/from16 v12, p3

    move-object/from16 v0, v19

    move-wide/from16 v16, v2

    move-object/from16 v18, v20

    invoke-static/range {v4 .. v18}, Lorg/opencv/calib3d/Calib3d;->getOptimalNewCameraMatrix_1(JJDDDDD[D)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 2248
    .local v0, "retVal":Lorg/opencv/core/Mat;
    move-object/from16 v2, p6

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    aget-wide v3, v20, v3

    double-to-int v3, v3

    iput v3, v2, Lorg/opencv/core/Rect;->x:I

    const/4 v3, 0x1

    aget-wide v3, v20, v3

    double-to-int v3, v3

    iput v3, v2, Lorg/opencv/core/Rect;->y:I

    const/4 v3, 0x2

    aget-wide v3, v20, v3

    double-to-int v3, v3

    iput v3, v2, Lorg/opencv/core/Rect;->width:I

    const/4 v3, 0x3

    aget-wide v3, v20, v3

    double-to-int v3, v3

    iput v3, v2, Lorg/opencv/core/Rect;->height:I

    .line 2249
    :cond_0
    return-object v0
.end method

.method public static getOptimalNewCameraMatrix(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;DLorg/opencv/core/Size;Lorg/opencv/core/Rect;Z)Lorg/opencv/core/Mat;
    .locals 23
    .param p0, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p1, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p2, "imageSize"    # Lorg/opencv/core/Size;
    .param p3, "alpha"    # D
    .param p5, "newImgSize"    # Lorg/opencv/core/Size;
    .param p6, "validPixROI"    # Lorg/opencv/core/Rect;
    .param p7, "centerPrincipalPoint"    # Z

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 2212
    const/4 v3, 0x4

    new-array v3, v3, [D

    .line 2213
    .local v3, "validPixROI_out":[D
    new-instance v14, Lorg/opencv/core/Mat;

    move-object/from16 v15, p0

    iget-wide v4, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p1

    iget-wide v6, v12, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v10, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v20, v14

    iget-wide v14, v1, Lorg/opencv/core/Size;->width:D

    move-object/from16 v21, v3

    iget-wide v2, v1, Lorg/opencv/core/Size;->height:D

    .end local v3    # "validPixROI_out":[D
    .local v21, "validPixROI_out":[D
    move-wide/from16 v12, p3

    move-object/from16 v0, v20

    move-wide/from16 v16, v2

    move-object/from16 v18, v21

    move/from16 v19, p7

    invoke-static/range {v4 .. v19}, Lorg/opencv/calib3d/Calib3d;->getOptimalNewCameraMatrix_0(JJDDDDD[DZ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 2214
    .local v0, "retVal":Lorg/opencv/core/Mat;
    move-object/from16 v2, p6

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    aget-wide v3, v21, v3

    double-to-int v3, v3

    iput v3, v2, Lorg/opencv/core/Rect;->x:I

    const/4 v3, 0x1

    aget-wide v3, v21, v3

    double-to-int v3, v3

    iput v3, v2, Lorg/opencv/core/Rect;->y:I

    const/4 v3, 0x2

    aget-wide v3, v21, v3

    double-to-int v3, v3

    iput v3, v2, Lorg/opencv/core/Rect;->width:I

    const/4 v3, 0x3

    aget-wide v3, v21, v3

    double-to-int v3, v3

    iput v3, v2, Lorg/opencv/core/Rect;->height:I

    .line 2215
    :cond_0
    return-object v0
.end method

.method private static native getOptimalNewCameraMatrix_0(JJDDDDD[DZ)J
.end method

.method private static native getOptimalNewCameraMatrix_1(JJDDDDD[D)J
.end method

.method private static native getOptimalNewCameraMatrix_2(JJDDDDD)J
.end method

.method private static native getOptimalNewCameraMatrix_3(JJDDD)J
.end method

.method public static getValidDisparityROI(Lorg/opencv/core/Rect;Lorg/opencv/core/Rect;III)Lorg/opencv/core/Rect;
    .locals 14
    .param p0, "roi1"    # Lorg/opencv/core/Rect;
    .param p1, "roi2"    # Lorg/opencv/core/Rect;
    .param p2, "minDisparity"    # I
    .param p3, "numberOfDisparities"    # I
    .param p4, "blockSize"    # I

    move-object v0, p0

    move-object v1, p1

    .line 2371
    new-instance v2, Lorg/opencv/core/Rect;

    iget v3, v0, Lorg/opencv/core/Rect;->x:I

    iget v4, v0, Lorg/opencv/core/Rect;->y:I

    iget v5, v0, Lorg/opencv/core/Rect;->width:I

    iget v6, v0, Lorg/opencv/core/Rect;->height:I

    iget v7, v1, Lorg/opencv/core/Rect;->x:I

    iget v8, v1, Lorg/opencv/core/Rect;->y:I

    iget v9, v1, Lorg/opencv/core/Rect;->width:I

    iget v10, v1, Lorg/opencv/core/Rect;->height:I

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    invoke-static/range {v3 .. v13}, Lorg/opencv/calib3d/Calib3d;->getValidDisparityROI_0(IIIIIIIIIII)[D

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/opencv/core/Rect;-><init>([D)V

    return-object v2
.end method

.method private static native getValidDisparityROI_0(IIIIIIIIIII)[D
.end method

.method public static initCameraMatrix2D(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Size;)Lorg/opencv/core/Mat;
    .locals 13
    .param p2, "imageSize"    # Lorg/opencv/core/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/MatOfPoint3f;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/MatOfPoint2f;",
            ">;",
            "Lorg/opencv/core/Size;",
            ")",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .line 2358
    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfPoint3f;>;"
    .local p1, "imagePoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfPoint2f;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2359
    .local v0, "objectPoints_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p0, v0}, Lorg/opencv/utils/Converters;->vector_vector_Point3f_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 2360
    .local v2, "objectPoints_mat":Lorg/opencv/core/Mat;
    new-instance v3, Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    nop

    :cond_1
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v3

    .line 2361
    .local v1, "imagePoints_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p1, v1}, Lorg/opencv/utils/Converters;->vector_vector_Point2f_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v3

    .line 2362
    .local v3, "imagePoints_mat":Lorg/opencv/core/Mat;
    new-instance v4, Lorg/opencv/core/Mat;

    iget-wide v5, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, p2, Lorg/opencv/core/Size;->width:D

    iget-wide v11, p2, Lorg/opencv/core/Size;->height:D

    invoke-static/range {v5 .. v12}, Lorg/opencv/calib3d/Calib3d;->initCameraMatrix2D_1(JJDD)J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v4
.end method

.method public static initCameraMatrix2D(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Size;D)Lorg/opencv/core/Mat;
    .locals 18
    .param p2, "imageSize"    # Lorg/opencv/core/Size;
    .param p3, "aspectRatio"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/MatOfPoint3f;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/MatOfPoint2f;",
            ">;",
            "Lorg/opencv/core/Size;",
            "D)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfPoint3f;>;"
    .local p1, "imagePoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfPoint2f;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2334
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 2335
    .local v3, "objectPoints_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {v0, v3}, Lorg/opencv/utils/Converters;->vector_vector_Point3f_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v5

    .line 2336
    .local v5, "objectPoints_mat":Lorg/opencv/core/Mat;
    new-instance v6, Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    nop

    :cond_1
    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v6

    .line 2337
    .local v4, "imagePoints_tmplm":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {v1, v4}, Lorg/opencv/utils/Converters;->vector_vector_Point2f_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v6

    .line 2338
    .local v6, "imagePoints_mat":Lorg/opencv/core/Mat;
    new-instance v7, Lorg/opencv/core/Mat;

    iget-wide v8, v5, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v6, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v12, v2, Lorg/opencv/core/Size;->width:D

    iget-wide v14, v2, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v16, p3

    invoke-static/range {v8 .. v17}, Lorg/opencv/calib3d/Calib3d;->initCameraMatrix2D_0(JJDDD)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v7
.end method

.method private static native initCameraMatrix2D_0(JJDDD)J
.end method

.method private static native initCameraMatrix2D_1(JJDD)J
.end method

.method public static initUndistortRectifyMap(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;ILorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 21
    .param p0, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p1, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p2, "R"    # Lorg/opencv/core/Mat;
    .param p3, "newCameraMatrix"    # Lorg/opencv/core/Mat;
    .param p4, "size"    # Lorg/opencv/core/Size;
    .param p5, "m1type"    # I
    .param p6, "map1"    # Lorg/opencv/core/Mat;
    .param p7, "map2"    # Lorg/opencv/core/Mat;

    move-object/from16 v0, p4

    .line 9551
    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v4, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v6, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p3

    iget-wide v8, v12, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v12, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p6

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    move-wide/from16 v19, v14

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v17, v14

    move-wide/from16 v15, v19

    move/from16 v14, p5

    invoke-static/range {v2 .. v18}, Lorg/opencv/calib3d/Calib3d;->initUndistortRectifyMap_0(JJJJDDIJJ)V

    .line 9552
    return-void
.end method

.method private static native initUndistortRectifyMap_0(JJJJDDIJJ)V
.end method

.method public static matMulDeriv(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "A"    # Lorg/opencv/core/Mat;
    .param p1, "B"    # Lorg/opencv/core/Mat;
    .param p2, "dABdA"    # Lorg/opencv/core/Mat;
    .param p3, "dABdB"    # Lorg/opencv/core/Mat;

    .line 9574
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/calib3d/Calib3d;->matMulDeriv_0(JJJJ)V

    .line 9575
    return-void
.end method

.method private static native matMulDeriv_0(JJJJ)V
.end method

.method public static projectPoints(Lorg/opencv/core/MatOfPoint3f;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDouble;Lorg/opencv/core/MatOfPoint2f;)V
    .locals 18
    .param p0, "objectPoints"    # Lorg/opencv/core/MatOfPoint3f;
    .param p1, "rvec"    # Lorg/opencv/core/Mat;
    .param p2, "tvec"    # Lorg/opencv/core/Mat;
    .param p3, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p4, "distCoeffs"    # Lorg/opencv/core/MatOfDouble;
    .param p5, "imagePoints"    # Lorg/opencv/core/MatOfPoint2f;

    .line 9699
    move-object/from16 v0, p0

    .line 9700
    .local v0, "objectPoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p4

    .line 9701
    .local v1, "distCoeffs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p5

    .line 9702
    .local v2, "imagePoints_mat":Lorg/opencv/core/Mat;
    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v5, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v7, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v9, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v11, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    iget-wide v0, v2, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v0    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v1    # "distCoeffs_mat":Lorg/opencv/core/Mat;
    .local v16, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v17, "distCoeffs_mat":Lorg/opencv/core/Mat;
    move-wide v13, v0

    invoke-static/range {v3 .. v14}, Lorg/opencv/calib3d/Calib3d;->projectPoints_2(JJJJJJ)V

    .line 9703
    return-void
.end method

.method public static projectPoints(Lorg/opencv/core/MatOfPoint3f;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDouble;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/Mat;)V
    .locals 22
    .param p0, "objectPoints"    # Lorg/opencv/core/MatOfPoint3f;
    .param p1, "rvec"    # Lorg/opencv/core/Mat;
    .param p2, "tvec"    # Lorg/opencv/core/Mat;
    .param p3, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p4, "distCoeffs"    # Lorg/opencv/core/MatOfDouble;
    .param p5, "imagePoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p6, "jacobian"    # Lorg/opencv/core/Mat;

    .line 9659
    move-object/from16 v0, p0

    .line 9660
    .local v0, "objectPoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p4

    .line 9661
    .local v1, "distCoeffs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p5

    .line 9662
    .local v2, "imagePoints_mat":Lorg/opencv/core/Mat;
    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v5, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v7, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v9, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v11, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    iget-wide v0, v2, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v0    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v1    # "distCoeffs_mat":Lorg/opencv/core/Mat;
    .local v17, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v18, "distCoeffs_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v20, v0

    move-object/from16 v19, v2

    move-object/from16 v2, p6

    iget-wide v0, v2, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v2    # "imagePoints_mat":Lorg/opencv/core/Mat;
    .local v19, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v13, v20

    move-wide v15, v0

    invoke-static/range {v3 .. v16}, Lorg/opencv/calib3d/Calib3d;->projectPoints_1(JJJJJJJ)V

    .line 9663
    return-void
.end method

.method public static projectPoints(Lorg/opencv/core/MatOfPoint3f;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDouble;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/Mat;D)V
    .locals 24
    .param p0, "objectPoints"    # Lorg/opencv/core/MatOfPoint3f;
    .param p1, "rvec"    # Lorg/opencv/core/Mat;
    .param p2, "tvec"    # Lorg/opencv/core/Mat;
    .param p3, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p4, "distCoeffs"    # Lorg/opencv/core/MatOfDouble;
    .param p5, "imagePoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p6, "jacobian"    # Lorg/opencv/core/Mat;
    .param p7, "aspectRatio"    # D

    .line 9618
    move-object/from16 v0, p0

    .line 9619
    .local v0, "objectPoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p4

    .line 9620
    .local v1, "distCoeffs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p5

    .line 9621
    .local v2, "imagePoints_mat":Lorg/opencv/core/Mat;
    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v5, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v7, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v9, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v11, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    iget-wide v0, v2, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v0    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v1    # "distCoeffs_mat":Lorg/opencv/core/Mat;
    .local v19, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v20, "distCoeffs_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v22, v0

    move-object/from16 v21, v2

    move-object/from16 v2, p6

    iget-wide v0, v2, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v2    # "imagePoints_mat":Lorg/opencv/core/Mat;
    .local v21, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v13, v22

    move-wide v15, v0

    move-wide/from16 v17, p7

    invoke-static/range {v3 .. v18}, Lorg/opencv/calib3d/Calib3d;->projectPoints_0(JJJJJJJD)V

    .line 9622
    return-void
.end method

.method private static native projectPoints_0(JJJJJJJD)V
.end method

.method private static native projectPoints_1(JJJJJJJ)V
.end method

.method private static native projectPoints_2(JJJJJJ)V
.end method

.method public static recoverPose(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)I
    .locals 10
    .param p0, "E"    # Lorg/opencv/core/Mat;
    .param p1, "points1"    # Lorg/opencv/core/Mat;
    .param p2, "points2"    # Lorg/opencv/core/Mat;
    .param p3, "R"    # Lorg/opencv/core/Mat;
    .param p4, "t"    # Lorg/opencv/core/Mat;

    .line 6393
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, p4, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v9}, Lorg/opencv/calib3d/Calib3d;->recoverPose_3(JJJJJ)I

    move-result v0

    return v0
.end method

.method public static recoverPose(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;D)I
    .locals 16
    .param p0, "E"    # Lorg/opencv/core/Mat;
    .param p1, "points1"    # Lorg/opencv/core/Mat;
    .param p2, "points2"    # Lorg/opencv/core/Mat;
    .param p3, "R"    # Lorg/opencv/core/Mat;
    .param p4, "t"    # Lorg/opencv/core/Mat;
    .param p5, "focal"    # D

    .line 6361
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p1

    iget-wide v3, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v5, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p3

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v11, p4

    iget-wide v9, v11, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v11, p5

    invoke-static/range {v1 .. v12}, Lorg/opencv/calib3d/Calib3d;->recoverPose_2(JJJJJD)I

    move-result v1

    return v1
.end method

.method public static recoverPose(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DLorg/opencv/core/Point;)I
    .locals 20
    .param p0, "E"    # Lorg/opencv/core/Mat;
    .param p1, "points1"    # Lorg/opencv/core/Mat;
    .param p2, "points2"    # Lorg/opencv/core/Mat;
    .param p3, "R"    # Lorg/opencv/core/Mat;
    .param p4, "t"    # Lorg/opencv/core/Mat;
    .param p5, "focal"    # D
    .param p7, "pp"    # Lorg/opencv/core/Point;

    .line 6328
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v4, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p2

    iget-wide v6, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p3

    iget-wide v8, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p4

    iget-wide v10, v13, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v14, v0, Lorg/opencv/core/Point;->x:D

    move-wide/from16 v18, v14

    iget-wide v14, v0, Lorg/opencv/core/Point;->y:D

    move-wide/from16 v12, p5

    move-wide/from16 v16, v14

    move-wide/from16 v14, v18

    invoke-static/range {v2 .. v17}, Lorg/opencv/calib3d/Calib3d;->recoverPose_1(JJJJJDDD)I

    move-result v2

    return v2
.end method

.method public static recoverPose(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DLorg/opencv/core/Point;Lorg/opencv/core/Mat;)I
    .locals 24
    .param p0, "E"    # Lorg/opencv/core/Mat;
    .param p1, "points1"    # Lorg/opencv/core/Mat;
    .param p2, "points2"    # Lorg/opencv/core/Mat;
    .param p3, "R"    # Lorg/opencv/core/Mat;
    .param p4, "t"    # Lorg/opencv/core/Mat;
    .param p5, "focal"    # D
    .param p7, "pp"    # Lorg/opencv/core/Point;
    .param p8, "mask"    # Lorg/opencv/core/Mat;

    move-object/from16 v0, p7

    .line 6294
    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v4, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p2

    iget-wide v6, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p3

    iget-wide v8, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p4

    iget-wide v10, v13, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v14, v0, Lorg/opencv/core/Point;->x:D

    move-wide/from16 v20, v14

    iget-wide v14, v0, Lorg/opencv/core/Point;->y:D

    move-object/from16 v0, p8

    move-wide/from16 v22, v14

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v12, p5

    move-wide/from16 v18, v14

    move-wide/from16 v16, v22

    move-wide/from16 v14, v20

    invoke-static/range {v2 .. v19}, Lorg/opencv/calib3d/Calib3d;->recoverPose_0(JJJJJDDDJ)I

    move-result v2

    return v2
.end method

.method public static recoverPose(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)I
    .locals 17
    .param p0, "E"    # Lorg/opencv/core/Mat;
    .param p1, "points1"    # Lorg/opencv/core/Mat;
    .param p2, "points2"    # Lorg/opencv/core/Mat;
    .param p3, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p4, "R"    # Lorg/opencv/core/Mat;
    .param p5, "t"    # Lorg/opencv/core/Mat;

    .line 6509
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p1

    iget-wide v3, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v5, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p3

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v11, p4

    iget-wide v9, v11, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p5

    iget-wide v13, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v11, v13

    invoke-static/range {v1 .. v12}, Lorg/opencv/calib3d/Calib3d;->recoverPose_5(JJJJJJ)I

    move-result v1

    return v1
.end method

.method public static recoverPose(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;D)I
    .locals 17
    .param p0, "E"    # Lorg/opencv/core/Mat;
    .param p1, "points1"    # Lorg/opencv/core/Mat;
    .param p2, "points2"    # Lorg/opencv/core/Mat;
    .param p3, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p4, "R"    # Lorg/opencv/core/Mat;
    .param p5, "t"    # Lorg/opencv/core/Mat;
    .param p6, "distanceThresh"    # D

    .line 6604
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v3, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v5, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v7, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v11, p4

    iget-wide v9, v11, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p5

    iget-wide v13, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v11, v13

    move-wide/from16 v13, p6

    invoke-static/range {v1 .. v14}, Lorg/opencv/calib3d/Calib3d;->recoverPose_8(JJJJJJD)I

    move-result v1

    return v1
.end method

.method public static recoverPose(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DLorg/opencv/core/Mat;)I
    .locals 19
    .param p0, "E"    # Lorg/opencv/core/Mat;
    .param p1, "points1"    # Lorg/opencv/core/Mat;
    .param p2, "points2"    # Lorg/opencv/core/Mat;
    .param p3, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p4, "R"    # Lorg/opencv/core/Mat;
    .param p5, "t"    # Lorg/opencv/core/Mat;
    .param p6, "distanceThresh"    # D
    .param p8, "mask"    # Lorg/opencv/core/Mat;

    .line 6575
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v3, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v5, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v7, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v11, p4

    iget-wide v9, v11, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p5

    iget-wide v13, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p8

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v17, v11

    move-wide v11, v13

    move-wide/from16 v13, p6

    move-wide/from16 v15, v17

    invoke-static/range {v1 .. v16}, Lorg/opencv/calib3d/Calib3d;->recoverPose_7(JJJJJJDJ)I

    move-result v1

    return v1
.end method

.method public static recoverPose(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DLorg/opencv/core/Mat;Lorg/opencv/core/Mat;)I
    .locals 23
    .param p0, "E"    # Lorg/opencv/core/Mat;
    .param p1, "points1"    # Lorg/opencv/core/Mat;
    .param p2, "points2"    # Lorg/opencv/core/Mat;
    .param p3, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p4, "R"    # Lorg/opencv/core/Mat;
    .param p5, "t"    # Lorg/opencv/core/Mat;
    .param p6, "distanceThresh"    # D
    .param p8, "mask"    # Lorg/opencv/core/Mat;
    .param p9, "triangulatedPoints"    # Lorg/opencv/core/Mat;

    .line 6545
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v3, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v5, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v7, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v11, p4

    iget-wide v9, v11, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p5

    iget-wide v13, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p8

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p9

    move-wide/from16 v21, v11

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v19, v11

    move-wide/from16 v16, v21

    move-wide v11, v13

    move-wide/from16 v13, p6

    move-wide/from16 v15, v16

    move-wide/from16 v17, v19

    invoke-static/range {v1 .. v18}, Lorg/opencv/calib3d/Calib3d;->recoverPose_6(JJJJJJDJJ)I

    move-result v1

    return v1
.end method

.method public static recoverPose(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)I
    .locals 18
    .param p0, "E"    # Lorg/opencv/core/Mat;
    .param p1, "points1"    # Lorg/opencv/core/Mat;
    .param p2, "points2"    # Lorg/opencv/core/Mat;
    .param p3, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p4, "R"    # Lorg/opencv/core/Mat;
    .param p5, "t"    # Lorg/opencv/core/Mat;
    .param p6, "mask"    # Lorg/opencv/core/Mat;

    .line 6454
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v3, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v5, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v7, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v11, p4

    iget-wide v9, v11, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p5

    iget-wide v13, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v16, v11

    move-wide v11, v13

    move-wide/from16 v13, v16

    invoke-static/range {v1 .. v14}, Lorg/opencv/calib3d/Calib3d;->recoverPose_4(JJJJJJJ)I

    move-result v1

    return v1
.end method

.method private static native recoverPose_0(JJJJJDDDJ)I
.end method

.method private static native recoverPose_1(JJJJJDDD)I
.end method

.method private static native recoverPose_2(JJJJJD)I
.end method

.method private static native recoverPose_3(JJJJJ)I
.end method

.method private static native recoverPose_4(JJJJJJJ)I
.end method

.method private static native recoverPose_5(JJJJJJ)I
.end method

.method private static native recoverPose_6(JJJJJJDJJ)I
.end method

.method private static native recoverPose_7(JJJJJJDJ)I
.end method

.method private static native recoverPose_8(JJJJJJD)I
.end method

.method public static rectify3Collinear(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DLorg/opencv/core/Size;Lorg/opencv/core/Rect;Lorg/opencv/core/Rect;I)F
    .locals 96
    .param p0, "cameraMatrix1"    # Lorg/opencv/core/Mat;
    .param p1, "distCoeffs1"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix2"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs2"    # Lorg/opencv/core/Mat;
    .param p4, "cameraMatrix3"    # Lorg/opencv/core/Mat;
    .param p5, "distCoeffs3"    # Lorg/opencv/core/Mat;
    .param p8, "imageSize"    # Lorg/opencv/core/Size;
    .param p9, "R12"    # Lorg/opencv/core/Mat;
    .param p10, "T12"    # Lorg/opencv/core/Mat;
    .param p11, "R13"    # Lorg/opencv/core/Mat;
    .param p12, "T13"    # Lorg/opencv/core/Mat;
    .param p13, "R1"    # Lorg/opencv/core/Mat;
    .param p14, "R2"    # Lorg/opencv/core/Mat;
    .param p15, "R3"    # Lorg/opencv/core/Mat;
    .param p16, "P1"    # Lorg/opencv/core/Mat;
    .param p17, "P2"    # Lorg/opencv/core/Mat;
    .param p18, "P3"    # Lorg/opencv/core/Mat;
    .param p19, "Q"    # Lorg/opencv/core/Mat;
    .param p20, "alpha"    # D
    .param p22, "newImgSize"    # Lorg/opencv/core/Size;
    .param p23, "roi1"    # Lorg/opencv/core/Rect;
    .param p24, "roi2"    # Lorg/opencv/core/Rect;
    .param p25, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "D",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Rect;",
            "Lorg/opencv/core/Rect;",
            "I)F"
        }
    .end annotation

    .local p6, "imgpt1":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p7, "imgpt3":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p8

    move-object/from16 v1, p22

    move-object/from16 v2, p23

    move-object/from16 v3, p24

    .line 5888
    invoke-static/range {p6 .. p6}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v4

    .line 5889
    .local v4, "imgpt1_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p7 .. p7}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v5

    .line 5890
    .local v5, "imgpt3_mat":Lorg/opencv/core/Mat;
    const/4 v6, 0x4

    new-array v15, v6, [D

    .line 5891
    .local v15, "roi1_out":[D
    new-array v6, v6, [D

    .line 5892
    .local v6, "roi2_out":[D
    move-object/from16 v13, p0

    iget-wide v7, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v9, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v11, p2

    iget-wide v12, v11, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v3, p3

    move-object/from16 v59, v15

    iget-wide v14, v3, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v15    # "roi1_out":[D
    .local v59, "roi1_out":[D
    move-object/from16 v3, p4

    move-wide/from16 v60, v14

    iget-wide v14, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v3, p5

    move-wide/from16 v62, v14

    iget-wide v14, v3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v64, v2

    iget-wide v2, v5, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v66, v4

    move-object/from16 v67, v5

    iget-wide v4, v0, Lorg/opencv/core/Size;->width:D

    .end local v4    # "imgpt1_mat":Lorg/opencv/core/Mat;
    .end local v5    # "imgpt3_mat":Lorg/opencv/core/Mat;
    .local v66, "imgpt1_mat":Lorg/opencv/core/Mat;
    .local v67, "imgpt3_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v68, v4

    iget-wide v4, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p9

    move-wide/from16 v70, v4

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p10

    move-wide/from16 v72, v4

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p11

    move-wide/from16 v74, v4

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p12

    move-wide/from16 v76, v4

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p13

    move-wide/from16 v78, v4

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p14

    move-wide/from16 v80, v4

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p15

    move-wide/from16 v82, v4

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p16

    move-wide/from16 v84, v4

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p17

    move-wide/from16 v86, v4

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p18

    move-wide/from16 v88, v4

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p19

    move-wide/from16 v90, v4

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v92, v4

    iget-wide v4, v1, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v94, v4

    iget-wide v4, v1, Lorg/opencv/core/Size;->height:D

    move-wide v11, v12

    move-wide/from16 v17, v14

    move-wide/from16 v15, v62

    move-wide/from16 v13, v60

    move-object/from16 v58, v59

    .end local v59    # "roi1_out":[D
    .local v58, "roi1_out":[D
    move-wide/from16 v19, v64

    move-wide/from16 v21, v2

    move-wide/from16 v23, v68

    move-wide/from16 v25, v70

    move-wide/from16 v27, v72

    move-wide/from16 v29, v74

    move-wide/from16 v31, v76

    move-wide/from16 v33, v78

    move-wide/from16 v35, v80

    move-wide/from16 v37, v82

    move-wide/from16 v39, v84

    move-wide/from16 v41, v86

    move-wide/from16 v43, v88

    move-wide/from16 v45, v90

    move-wide/from16 v47, v92

    move-wide/from16 v49, p20

    move-wide/from16 v51, v94

    move-wide/from16 v53, v4

    move-object/from16 v55, v58

    move-object/from16 v56, v6

    move/from16 v57, p25

    invoke-static/range {v7 .. v57}, Lorg/opencv/calib3d/Calib3d;->rectify3Collinear_0(JJJJJJJJDDJJJJJJJJJJJDDD[D[DI)F

    move-result v2

    .line 5893
    .local v2, "retVal":F
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object/from16 v8, p23

    if-eqz v8, :cond_0

    aget-wide v9, v58, v7

    double-to-int v9, v9

    iput v9, v8, Lorg/opencv/core/Rect;->x:I

    aget-wide v9, v58, v5

    double-to-int v9, v9

    iput v9, v8, Lorg/opencv/core/Rect;->y:I

    aget-wide v9, v58, v4

    double-to-int v9, v9

    iput v9, v8, Lorg/opencv/core/Rect;->width:I

    aget-wide v9, v58, v3

    double-to-int v9, v9

    iput v9, v8, Lorg/opencv/core/Rect;->height:I

    .line 5894
    :cond_0
    move-object/from16 v9, p24

    if-eqz v9, :cond_1

    aget-wide v10, v6, v7

    double-to-int v7, v10

    iput v7, v9, Lorg/opencv/core/Rect;->x:I

    aget-wide v10, v6, v5

    double-to-int v5, v10

    iput v5, v9, Lorg/opencv/core/Rect;->y:I

    aget-wide v4, v6, v4

    double-to-int v4, v4

    iput v4, v9, Lorg/opencv/core/Rect;->width:I

    aget-wide v3, v6, v3

    double-to-int v3, v3

    iput v3, v9, Lorg/opencv/core/Rect;->height:I

    .line 5895
    :cond_1
    return v2
.end method

.method private static native rectify3Collinear_0(JJJJJJJJDDJJJJJJJJJJJDDD[D[DI)F
.end method

.method public static reprojectImageTo3D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "disparity"    # Lorg/opencv/core/Mat;
    .param p1, "_3dImage"    # Lorg/opencv/core/Mat;
    .param p2, "Q"    # Lorg/opencv/core/Mat;

    .line 9836
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/calib3d/Calib3d;->reprojectImageTo3D_2(JJJ)V

    .line 9837
    return-void
.end method

.method public static reprojectImageTo3D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Z)V
    .locals 7
    .param p0, "disparity"    # Lorg/opencv/core/Mat;
    .param p1, "_3dImage"    # Lorg/opencv/core/Mat;
    .param p2, "Q"    # Lorg/opencv/core/Mat;
    .param p3, "handleMissingValues"    # Z

    .line 9794
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/opencv/calib3d/Calib3d;->reprojectImageTo3D_1(JJJZ)V

    .line 9795
    return-void
.end method

.method public static reprojectImageTo3D(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ZI)V
    .locals 8
    .param p0, "disparity"    # Lorg/opencv/core/Mat;
    .param p1, "_3dImage"    # Lorg/opencv/core/Mat;
    .param p2, "Q"    # Lorg/opencv/core/Mat;
    .param p3, "handleMissingValues"    # Z
    .param p4, "ddepth"    # I

    .line 9751
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lorg/opencv/calib3d/Calib3d;->reprojectImageTo3D_0(JJJZI)V

    .line 9752
    return-void
.end method

.method private static native reprojectImageTo3D_0(JJJZI)V
.end method

.method private static native reprojectImageTo3D_1(JJJZ)V
.end method

.method private static native reprojectImageTo3D_2(JJJ)V
.end method

.method public static sampsonDistance(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)D
    .locals 6
    .param p0, "pt1"    # Lorg/opencv/core/Mat;
    .param p1, "pt2"    # Lorg/opencv/core/Mat;
    .param p2, "F"    # Lorg/opencv/core/Mat;

    .line 5013
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/calib3d/Calib3d;->sampsonDistance_0(JJJ)D

    move-result-wide v0

    return-wide v0
.end method

.method private static native sampsonDistance_0(JJJ)D
.end method

.method public static solveP3P(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;I)I
    .locals 17
    .param p0, "objectPoints"    # Lorg/opencv/core/Mat;
    .param p1, "imagePoints"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;I)I"
        }
    .end annotation

    .line 6647
    .local p4, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p5, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 6648
    .local v0, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    .line 6649
    .local v1, "tvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p0

    iget-wide v3, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v5, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v7, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v9, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v13, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v15, p6

    invoke-static/range {v3 .. v15}, Lorg/opencv/calib3d/Calib3d;->solveP3P_0(JJJJJJI)I

    move-result v3

    .line 6650
    .local v3, "retVal":I
    move-object/from16 v4, p4

    invoke-static {v0, v4}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 6651
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 6652
    move-object/from16 v5, p5

    invoke-static {v1, v5}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 6653
    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    .line 6654
    return v3
.end method

.method private static native solveP3P_0(JJJJJJI)I
.end method

.method public static solvePnP(Lorg/opencv/core/MatOfPoint3f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDouble;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Z
    .locals 18
    .param p0, "objectPoints"    # Lorg/opencv/core/MatOfPoint3f;
    .param p1, "imagePoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/MatOfDouble;
    .param p4, "rvec"    # Lorg/opencv/core/Mat;
    .param p5, "tvec"    # Lorg/opencv/core/Mat;

    .line 3674
    move-object/from16 v0, p0

    .line 3675
    .local v0, "objectPoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p1

    .line 3676
    .local v1, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p3

    .line 3677
    .local v2, "distCoeffs_mat":Lorg/opencv/core/Mat;
    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p2

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p4

    iget-wide v11, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p5

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    iget-wide v0, v14, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v0    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v1    # "imagePoints_mat":Lorg/opencv/core/Mat;
    .local v16, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v17, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-wide v13, v0

    invoke-static/range {v3 .. v14}, Lorg/opencv/calib3d/Calib3d;->solvePnP_2(JJJJJJ)Z

    move-result v0

    return v0
.end method

.method public static solvePnP(Lorg/opencv/core/MatOfPoint3f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDouble;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Z)Z
    .locals 18
    .param p0, "objectPoints"    # Lorg/opencv/core/MatOfPoint3f;
    .param p1, "imagePoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/MatOfDouble;
    .param p4, "rvec"    # Lorg/opencv/core/Mat;
    .param p5, "tvec"    # Lorg/opencv/core/Mat;
    .param p6, "useExtrinsicGuess"    # Z

    .line 3406
    move-object/from16 v0, p0

    .line 3407
    .local v0, "objectPoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p1

    .line 3408
    .local v1, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p3

    .line 3409
    .local v2, "distCoeffs_mat":Lorg/opencv/core/Mat;
    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p2

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p4

    iget-wide v11, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p5

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    iget-wide v0, v14, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v0    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v1    # "imagePoints_mat":Lorg/opencv/core/Mat;
    .local v16, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v17, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-wide v13, v0

    move/from16 v15, p6

    invoke-static/range {v3 .. v15}, Lorg/opencv/calib3d/Calib3d;->solvePnP_1(JJJJJJZ)Z

    move-result v0

    return v0
.end method

.method public static solvePnP(Lorg/opencv/core/MatOfPoint3f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDouble;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ZI)Z
    .locals 19
    .param p0, "objectPoints"    # Lorg/opencv/core/MatOfPoint3f;
    .param p1, "imagePoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/MatOfDouble;
    .param p4, "rvec"    # Lorg/opencv/core/Mat;
    .param p5, "tvec"    # Lorg/opencv/core/Mat;
    .param p6, "useExtrinsicGuess"    # Z
    .param p7, "flags"    # I

    .line 3137
    move-object/from16 v0, p0

    .line 3138
    .local v0, "objectPoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p1

    .line 3139
    .local v1, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p3

    .line 3140
    .local v2, "distCoeffs_mat":Lorg/opencv/core/Mat;
    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p2

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p4

    iget-wide v11, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p5

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    iget-wide v0, v14, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v0    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v1    # "imagePoints_mat":Lorg/opencv/core/Mat;
    .local v17, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v18, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-wide v13, v0

    move/from16 v15, p6

    move/from16 v16, p7

    invoke-static/range {v3 .. v16}, Lorg/opencv/calib3d/Calib3d;->solvePnP_0(JJJJJJZI)Z

    move-result v0

    return v0
.end method

.method public static solvePnPGeneric(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;)I
    .locals 17
    .param p0, "objectPoints"    # Lorg/opencv/core/Mat;
    .param p1, "imagePoints"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;)I"
        }
    .end annotation

    .line 8329
    .local p4, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p5, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 8330
    .local v0, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    .line 8331
    .local v1, "tvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p0

    iget-wide v3, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v5, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v7, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v9, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v13, v1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v3 .. v14}, Lorg/opencv/calib3d/Calib3d;->solvePnPGeneric_5(JJJJJJ)I

    move-result v3

    .line 8332
    .local v3, "retVal":I
    move-object/from16 v4, p4

    invoke-static {v0, v4}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 8333
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 8334
    move-object/from16 v5, p5

    invoke-static {v1, v5}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 8335
    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    .line 8336
    return v3
.end method

.method public static solvePnPGeneric(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;Z)I
    .locals 17
    .param p0, "objectPoints"    # Lorg/opencv/core/Mat;
    .param p1, "imagePoints"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p6, "useExtrinsicGuess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;Z)I"
        }
    .end annotation

    .line 8052
    .local p4, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p5, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 8053
    .local v0, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    .line 8054
    .local v1, "tvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p0

    iget-wide v3, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v5, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v7, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v9, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v13, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v15, p6

    invoke-static/range {v3 .. v15}, Lorg/opencv/calib3d/Calib3d;->solvePnPGeneric_4(JJJJJJZ)I

    move-result v3

    .line 8055
    .local v3, "retVal":I
    move-object/from16 v4, p4

    invoke-static {v0, v4}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 8056
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 8057
    move-object/from16 v5, p5

    invoke-static {v1, v5}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 8058
    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    .line 8059
    return v3
.end method

.method public static solvePnPGeneric(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;ZI)I
    .locals 18
    .param p0, "objectPoints"    # Lorg/opencv/core/Mat;
    .param p1, "imagePoints"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p6, "useExtrinsicGuess"    # Z
    .param p7, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;ZI)I"
        }
    .end annotation

    .line 7774
    .local p4, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p5, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 7775
    .local v0, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    .line 7776
    .local v1, "tvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p0

    iget-wide v3, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v5, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v7, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v9, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v13, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v15, p6

    move/from16 v16, p7

    invoke-static/range {v3 .. v16}, Lorg/opencv/calib3d/Calib3d;->solvePnPGeneric_3(JJJJJJZI)I

    move-result v3

    .line 7777
    .local v3, "retVal":I
    move-object/from16 v4, p4

    invoke-static {v0, v4}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 7778
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 7779
    move-object/from16 v5, p5

    invoke-static {v1, v5}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 7780
    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    .line 7781
    return v3
.end method

.method public static solvePnPGeneric(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;ZILorg/opencv/core/Mat;)I
    .locals 21
    .param p0, "objectPoints"    # Lorg/opencv/core/Mat;
    .param p1, "imagePoints"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p6, "useExtrinsicGuess"    # Z
    .param p7, "flags"    # I
    .param p8, "rvec"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;ZI",
            "Lorg/opencv/core/Mat;",
            ")I"
        }
    .end annotation

    .line 7495
    .local p4, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p5, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 7496
    .local v0, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    .line 7497
    .local v1, "tvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p0

    iget-wide v3, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v5, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v7, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v9, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v13, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v2, p8

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    iget-wide v0, v2, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v0    # "rvecs_mat":Lorg/opencv/core/Mat;
    .end local v1    # "tvecs_mat":Lorg/opencv/core/Mat;
    .local v19, "rvecs_mat":Lorg/opencv/core/Mat;
    .local v20, "tvecs_mat":Lorg/opencv/core/Mat;
    move/from16 v15, p6

    move/from16 v16, p7

    move-wide/from16 v17, v0

    invoke-static/range {v3 .. v18}, Lorg/opencv/calib3d/Calib3d;->solvePnPGeneric_2(JJJJJJZIJ)I

    move-result v0

    .line 7498
    .local v0, "retVal":I
    move-object/from16 v1, p4

    move-object/from16 v3, v19

    invoke-static {v3, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 7499
    .end local v19    # "rvecs_mat":Lorg/opencv/core/Mat;
    .local v3, "rvecs_mat":Lorg/opencv/core/Mat;
    invoke-virtual {v3}, Lorg/opencv/core/Mat;->release()V

    .line 7500
    move-object/from16 v4, p5

    move-object/from16 v5, v20

    invoke-static {v5, v4}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 7501
    .end local v20    # "tvecs_mat":Lorg/opencv/core/Mat;
    .local v5, "tvecs_mat":Lorg/opencv/core/Mat;
    invoke-virtual {v5}, Lorg/opencv/core/Mat;->release()V

    .line 7502
    return v0
.end method

.method public static solvePnPGeneric(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;ZILorg/opencv/core/Mat;Lorg/opencv/core/Mat;)I
    .locals 25
    .param p0, "objectPoints"    # Lorg/opencv/core/Mat;
    .param p1, "imagePoints"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p6, "useExtrinsicGuess"    # Z
    .param p7, "flags"    # I
    .param p8, "rvec"    # Lorg/opencv/core/Mat;
    .param p9, "tvec"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;ZI",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            ")I"
        }
    .end annotation

    .line 7215
    .local p4, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p5, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 7216
    .local v0, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    .line 7217
    .local v1, "tvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p0

    iget-wide v3, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v5, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v7, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v9, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v13, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v2, p8

    move-object/from16 v21, v0

    move-object/from16 v22, v1

    iget-wide v0, v2, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v0    # "rvecs_mat":Lorg/opencv/core/Mat;
    .end local v1    # "tvecs_mat":Lorg/opencv/core/Mat;
    .local v21, "rvecs_mat":Lorg/opencv/core/Mat;
    .local v22, "tvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p9

    move-wide/from16 v23, v0

    iget-wide v0, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v15, p6

    move/from16 v16, p7

    move-wide/from16 v17, v23

    move-wide/from16 v19, v0

    invoke-static/range {v3 .. v20}, Lorg/opencv/calib3d/Calib3d;->solvePnPGeneric_1(JJJJJJZIJJ)I

    move-result v0

    .line 7218
    .local v0, "retVal":I
    move-object/from16 v1, p4

    move-object/from16 v3, v21

    invoke-static {v3, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 7219
    .end local v21    # "rvecs_mat":Lorg/opencv/core/Mat;
    .local v3, "rvecs_mat":Lorg/opencv/core/Mat;
    invoke-virtual {v3}, Lorg/opencv/core/Mat;->release()V

    .line 7220
    move-object/from16 v4, p5

    move-object/from16 v5, v22

    invoke-static {v5, v4}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 7221
    .end local v22    # "tvecs_mat":Lorg/opencv/core/Mat;
    .local v5, "tvecs_mat":Lorg/opencv/core/Mat;
    invoke-virtual {v5}, Lorg/opencv/core/Mat;->release()V

    .line 7222
    return v0
.end method

.method public static solvePnPGeneric(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;ZILorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)I
    .locals 29
    .param p0, "objectPoints"    # Lorg/opencv/core/Mat;
    .param p1, "imagePoints"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p6, "useExtrinsicGuess"    # Z
    .param p7, "flags"    # I
    .param p8, "rvec"    # Lorg/opencv/core/Mat;
    .param p9, "tvec"    # Lorg/opencv/core/Mat;
    .param p10, "reprojectionError"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;ZI",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            ")I"
        }
    .end annotation

    .line 6934
    .local p4, "rvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p5, "tvecs":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 6935
    .local v0, "rvecs_mat":Lorg/opencv/core/Mat;
    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    .line 6936
    .local v1, "tvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p0

    iget-wide v3, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v5, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v7, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v9, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v11, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v13, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v2, p8

    move-object/from16 v23, v0

    move-object/from16 v24, v1

    iget-wide v0, v2, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v0    # "rvecs_mat":Lorg/opencv/core/Mat;
    .end local v1    # "tvecs_mat":Lorg/opencv/core/Mat;
    .local v23, "rvecs_mat":Lorg/opencv/core/Mat;
    .local v24, "tvecs_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p9

    move-wide/from16 v25, v0

    iget-wide v0, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v2, p10

    move-wide/from16 v27, v0

    iget-wide v0, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v15, p6

    move/from16 v16, p7

    move-wide/from16 v17, v25

    move-wide/from16 v19, v27

    move-wide/from16 v21, v0

    invoke-static/range {v3 .. v22}, Lorg/opencv/calib3d/Calib3d;->solvePnPGeneric_0(JJJJJJZIJJJ)I

    move-result v0

    .line 6937
    .local v0, "retVal":I
    move-object/from16 v1, p4

    move-object/from16 v3, v23

    invoke-static {v3, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 6938
    .end local v23    # "rvecs_mat":Lorg/opencv/core/Mat;
    .local v3, "rvecs_mat":Lorg/opencv/core/Mat;
    invoke-virtual {v3}, Lorg/opencv/core/Mat;->release()V

    .line 6939
    move-object/from16 v4, p5

    move-object/from16 v5, v24

    invoke-static {v5, v4}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 6940
    .end local v24    # "tvecs_mat":Lorg/opencv/core/Mat;
    .local v5, "tvecs_mat":Lorg/opencv/core/Mat;
    invoke-virtual {v5}, Lorg/opencv/core/Mat;->release()V

    .line 6941
    return v0
.end method

.method private static native solvePnPGeneric_0(JJJJJJZIJJJ)I
.end method

.method private static native solvePnPGeneric_1(JJJJJJZIJJ)I
.end method

.method private static native solvePnPGeneric_2(JJJJJJZIJ)I
.end method

.method private static native solvePnPGeneric_3(JJJJJJZI)I
.end method

.method private static native solvePnPGeneric_4(JJJJJJZ)I
.end method

.method private static native solvePnPGeneric_5(JJJJJJ)I
.end method

.method public static solvePnPRansac(Lorg/opencv/core/MatOfPoint3f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDouble;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Z
    .locals 18
    .param p0, "objectPoints"    # Lorg/opencv/core/MatOfPoint3f;
    .param p1, "imagePoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/MatOfDouble;
    .param p4, "rvec"    # Lorg/opencv/core/Mat;
    .param p5, "tvec"    # Lorg/opencv/core/Mat;

    .line 4106
    move-object/from16 v0, p0

    .line 4107
    .local v0, "objectPoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p1

    .line 4108
    .local v1, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p3

    .line 4109
    .local v2, "distCoeffs_mat":Lorg/opencv/core/Mat;
    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p2

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p4

    iget-wide v11, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p5

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    iget-wide v0, v14, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v0    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v1    # "imagePoints_mat":Lorg/opencv/core/Mat;
    .local v16, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v17, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-wide v13, v0

    invoke-static/range {v3 .. v14}, Lorg/opencv/calib3d/Calib3d;->solvePnPRansac_6(JJJJJJ)Z

    move-result v0

    return v0
.end method

.method public static solvePnPRansac(Lorg/opencv/core/MatOfPoint3f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDouble;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Z)Z
    .locals 18
    .param p0, "objectPoints"    # Lorg/opencv/core/MatOfPoint3f;
    .param p1, "imagePoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/MatOfDouble;
    .param p4, "rvec"    # Lorg/opencv/core/Mat;
    .param p5, "tvec"    # Lorg/opencv/core/Mat;
    .param p6, "useExtrinsicGuess"    # Z

    .line 4048
    move-object/from16 v0, p0

    .line 4049
    .local v0, "objectPoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p1

    .line 4050
    .local v1, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p3

    .line 4051
    .local v2, "distCoeffs_mat":Lorg/opencv/core/Mat;
    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p2

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p4

    iget-wide v11, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p5

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    iget-wide v0, v14, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v0    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v1    # "imagePoints_mat":Lorg/opencv/core/Mat;
    .local v16, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v17, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-wide v13, v0

    move/from16 v15, p6

    invoke-static/range {v3 .. v15}, Lorg/opencv/calib3d/Calib3d;->solvePnPRansac_5(JJJJJJZ)Z

    move-result v0

    return v0
.end method

.method public static solvePnPRansac(Lorg/opencv/core/MatOfPoint3f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDouble;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ZI)Z
    .locals 19
    .param p0, "objectPoints"    # Lorg/opencv/core/MatOfPoint3f;
    .param p1, "imagePoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/MatOfDouble;
    .param p4, "rvec"    # Lorg/opencv/core/Mat;
    .param p5, "tvec"    # Lorg/opencv/core/Mat;
    .param p6, "useExtrinsicGuess"    # Z
    .param p7, "iterationsCount"    # I

    .line 3989
    move-object/from16 v0, p0

    .line 3990
    .local v0, "objectPoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p1

    .line 3991
    .local v1, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p3

    .line 3992
    .local v2, "distCoeffs_mat":Lorg/opencv/core/Mat;
    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p2

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p4

    iget-wide v11, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p5

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    iget-wide v0, v14, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v0    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v1    # "imagePoints_mat":Lorg/opencv/core/Mat;
    .local v17, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v18, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-wide v13, v0

    move/from16 v15, p6

    move/from16 v16, p7

    invoke-static/range {v3 .. v16}, Lorg/opencv/calib3d/Calib3d;->solvePnPRansac_4(JJJJJJZI)Z

    move-result v0

    return v0
.end method

.method public static solvePnPRansac(Lorg/opencv/core/MatOfPoint3f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDouble;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ZIF)Z
    .locals 20
    .param p0, "objectPoints"    # Lorg/opencv/core/MatOfPoint3f;
    .param p1, "imagePoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/MatOfDouble;
    .param p4, "rvec"    # Lorg/opencv/core/Mat;
    .param p5, "tvec"    # Lorg/opencv/core/Mat;
    .param p6, "useExtrinsicGuess"    # Z
    .param p7, "iterationsCount"    # I
    .param p8, "reprojectionError"    # F

    .line 3929
    move-object/from16 v0, p0

    .line 3930
    .local v0, "objectPoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p1

    .line 3931
    .local v1, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p3

    .line 3932
    .local v2, "distCoeffs_mat":Lorg/opencv/core/Mat;
    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p2

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p4

    iget-wide v11, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p5

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    iget-wide v0, v14, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v0    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v1    # "imagePoints_mat":Lorg/opencv/core/Mat;
    .local v18, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v19, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-wide v13, v0

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p8

    invoke-static/range {v3 .. v17}, Lorg/opencv/calib3d/Calib3d;->solvePnPRansac_3(JJJJJJZIF)Z

    move-result v0

    return v0
.end method

.method public static solvePnPRansac(Lorg/opencv/core/MatOfPoint3f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDouble;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ZIFD)Z
    .locals 22
    .param p0, "objectPoints"    # Lorg/opencv/core/MatOfPoint3f;
    .param p1, "imagePoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/MatOfDouble;
    .param p4, "rvec"    # Lorg/opencv/core/Mat;
    .param p5, "tvec"    # Lorg/opencv/core/Mat;
    .param p6, "useExtrinsicGuess"    # Z
    .param p7, "iterationsCount"    # I
    .param p8, "reprojectionError"    # F
    .param p9, "confidence"    # D

    .line 3868
    move-object/from16 v0, p0

    .line 3869
    .local v0, "objectPoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p1

    .line 3870
    .local v1, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p3

    .line 3871
    .local v2, "distCoeffs_mat":Lorg/opencv/core/Mat;
    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p2

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p4

    iget-wide v11, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p5

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    iget-wide v0, v14, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v0    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v1    # "imagePoints_mat":Lorg/opencv/core/Mat;
    .local v20, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v21, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-wide v13, v0

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p8

    move-wide/from16 v18, p9

    invoke-static/range {v3 .. v19}, Lorg/opencv/calib3d/Calib3d;->solvePnPRansac_2(JJJJJJZIFD)Z

    move-result v0

    return v0
.end method

.method public static solvePnPRansac(Lorg/opencv/core/MatOfPoint3f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDouble;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ZIFDLorg/opencv/core/Mat;)Z
    .locals 27
    .param p0, "objectPoints"    # Lorg/opencv/core/MatOfPoint3f;
    .param p1, "imagePoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/MatOfDouble;
    .param p4, "rvec"    # Lorg/opencv/core/Mat;
    .param p5, "tvec"    # Lorg/opencv/core/Mat;
    .param p6, "useExtrinsicGuess"    # Z
    .param p7, "iterationsCount"    # I
    .param p8, "reprojectionError"    # F
    .param p9, "confidence"    # D
    .param p11, "inliers"    # Lorg/opencv/core/Mat;

    .line 3806
    move-object/from16 v0, p0

    .line 3807
    .local v0, "objectPoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p1

    .line 3808
    .local v1, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p3

    .line 3809
    .local v2, "distCoeffs_mat":Lorg/opencv/core/Mat;
    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p2

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p4

    iget-wide v11, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p5

    move-object/from16 v22, v0

    move-object/from16 v23, v1

    iget-wide v0, v14, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v0    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v1    # "imagePoints_mat":Lorg/opencv/core/Mat;
    .local v22, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v23, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v25, v0

    move-object/from16 v24, v2

    move-object/from16 v2, p11

    iget-wide v0, v2, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v2    # "distCoeffs_mat":Lorg/opencv/core/Mat;
    .local v24, "distCoeffs_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v13, v25

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p8

    move-wide/from16 v18, p9

    move-wide/from16 v20, v0

    invoke-static/range {v3 .. v21}, Lorg/opencv/calib3d/Calib3d;->solvePnPRansac_1(JJJJJJZIFDJ)Z

    move-result v0

    return v0
.end method

.method public static solvePnPRansac(Lorg/opencv/core/MatOfPoint3f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDouble;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ZIFDLorg/opencv/core/Mat;I)Z
    .locals 28
    .param p0, "objectPoints"    # Lorg/opencv/core/MatOfPoint3f;
    .param p1, "imagePoints"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/MatOfDouble;
    .param p4, "rvec"    # Lorg/opencv/core/Mat;
    .param p5, "tvec"    # Lorg/opencv/core/Mat;
    .param p6, "useExtrinsicGuess"    # Z
    .param p7, "iterationsCount"    # I
    .param p8, "reprojectionError"    # F
    .param p9, "confidence"    # D
    .param p11, "inliers"    # Lorg/opencv/core/Mat;
    .param p12, "flags"    # I

    .line 3743
    move-object/from16 v0, p0

    .line 3744
    .local v0, "objectPoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p1

    .line 3745
    .local v1, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p3

    .line 3746
    .local v2, "distCoeffs_mat":Lorg/opencv/core/Mat;
    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p2

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p4

    iget-wide v11, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p5

    move-object/from16 v23, v0

    move-object/from16 v24, v1

    iget-wide v0, v14, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v0    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v1    # "imagePoints_mat":Lorg/opencv/core/Mat;
    .local v23, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v24, "imagePoints_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v26, v0

    move-object/from16 v25, v2

    move-object/from16 v2, p11

    iget-wide v0, v2, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v2    # "distCoeffs_mat":Lorg/opencv/core/Mat;
    .local v25, "distCoeffs_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v13, v26

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p8

    move-wide/from16 v18, p9

    move-wide/from16 v20, v0

    move/from16 v22, p12

    invoke-static/range {v3 .. v22}, Lorg/opencv/calib3d/Calib3d;->solvePnPRansac_0(JJJJJJZIFDJI)Z

    move-result v0

    return v0
.end method

.method private static native solvePnPRansac_0(JJJJJJZIFDJI)Z
.end method

.method private static native solvePnPRansac_1(JJJJJJZIFDJ)Z
.end method

.method private static native solvePnPRansac_2(JJJJJJZIFD)Z
.end method

.method private static native solvePnPRansac_3(JJJJJJZIF)Z
.end method

.method private static native solvePnPRansac_4(JJJJJJZI)Z
.end method

.method private static native solvePnPRansac_5(JJJJJJZ)Z
.end method

.method private static native solvePnPRansac_6(JJJJJJ)Z
.end method

.method public static solvePnPRefineLM(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 17
    .param p0, "objectPoints"    # Lorg/opencv/core/Mat;
    .param p1, "imagePoints"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p4, "rvec"    # Lorg/opencv/core/Mat;
    .param p5, "tvec"    # Lorg/opencv/core/Mat;

    .line 9896
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p1

    iget-wide v3, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v5, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p3

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v11, p4

    iget-wide v9, v11, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p5

    iget-wide v13, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v11, v13

    invoke-static/range {v1 .. v12}, Lorg/opencv/calib3d/Calib3d;->solvePnPRefineLM_1(JJJJJJ)V

    .line 9897
    return-void
.end method

.method public static solvePnPRefineLM(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/TermCriteria;)V
    .locals 19
    .param p0, "objectPoints"    # Lorg/opencv/core/Mat;
    .param p1, "imagePoints"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p4, "rvec"    # Lorg/opencv/core/Mat;
    .param p5, "tvec"    # Lorg/opencv/core/Mat;
    .param p6, "criteria"    # Lorg/opencv/core/TermCriteria;

    .line 9869
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v4, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v6, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p3

    iget-wide v8, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p4

    iget-wide v10, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v1, p5

    iget-wide v12, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget v1, v0, Lorg/opencv/core/TermCriteria;->type:I

    iget v15, v0, Lorg/opencv/core/TermCriteria;->maxCount:I

    move/from16 v18, v15

    iget-wide v14, v0, Lorg/opencv/core/TermCriteria;->epsilon:D

    move-wide/from16 v16, v14

    move v14, v1

    move/from16 v15, v18

    invoke-static/range {v2 .. v17}, Lorg/opencv/calib3d/Calib3d;->solvePnPRefineLM_0(JJJJJJIID)V

    .line 9870
    return-void
.end method

.method private static native solvePnPRefineLM_0(JJJJJJIID)V
.end method

.method private static native solvePnPRefineLM_1(JJJJJJ)V
.end method

.method public static solvePnPRefineVVS(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 17
    .param p0, "objectPoints"    # Lorg/opencv/core/Mat;
    .param p1, "imagePoints"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p4, "rvec"    # Lorg/opencv/core/Mat;
    .param p5, "tvec"    # Lorg/opencv/core/Mat;

    .line 9988
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p1

    iget-wide v3, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v5, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p3

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v11, p4

    iget-wide v9, v11, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p5

    iget-wide v13, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v11, v13

    invoke-static/range {v1 .. v12}, Lorg/opencv/calib3d/Calib3d;->solvePnPRefineVVS_2(JJJJJJ)V

    .line 9989
    return-void
.end method

.method public static solvePnPRefineVVS(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/TermCriteria;)V
    .locals 19
    .param p0, "objectPoints"    # Lorg/opencv/core/Mat;
    .param p1, "imagePoints"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p4, "rvec"    # Lorg/opencv/core/Mat;
    .param p5, "tvec"    # Lorg/opencv/core/Mat;
    .param p6, "criteria"    # Lorg/opencv/core/TermCriteria;

    .line 9960
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v4, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v6, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p3

    iget-wide v8, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p4

    iget-wide v10, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v1, p5

    iget-wide v12, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget v1, v0, Lorg/opencv/core/TermCriteria;->type:I

    iget v15, v0, Lorg/opencv/core/TermCriteria;->maxCount:I

    move/from16 v18, v15

    iget-wide v14, v0, Lorg/opencv/core/TermCriteria;->epsilon:D

    move-wide/from16 v16, v14

    move v14, v1

    move/from16 v15, v18

    invoke-static/range {v2 .. v17}, Lorg/opencv/calib3d/Calib3d;->solvePnPRefineVVS_1(JJJJJJIID)V

    .line 9961
    return-void
.end method

.method public static solvePnPRefineVVS(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/TermCriteria;D)V
    .locals 21
    .param p0, "objectPoints"    # Lorg/opencv/core/Mat;
    .param p1, "imagePoints"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p4, "rvec"    # Lorg/opencv/core/Mat;
    .param p5, "tvec"    # Lorg/opencv/core/Mat;
    .param p6, "criteria"    # Lorg/opencv/core/TermCriteria;
    .param p7, "VVSlambda"    # D

    move-object/from16 v0, p6

    .line 9931
    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v4, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v6, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p3

    iget-wide v8, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p4

    iget-wide v10, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v1, p5

    iget-wide v12, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget v1, v0, Lorg/opencv/core/TermCriteria;->type:I

    iget v15, v0, Lorg/opencv/core/TermCriteria;->maxCount:I

    move/from16 v20, v15

    iget-wide v14, v0, Lorg/opencv/core/TermCriteria;->epsilon:D

    move-wide/from16 v16, v14

    move v14, v1

    move/from16 v15, v20

    move-wide/from16 v18, p7

    invoke-static/range {v2 .. v19}, Lorg/opencv/calib3d/Calib3d;->solvePnPRefineVVS_0(JJJJJJIIDD)V

    .line 9932
    return-void
.end method

.method private static native solvePnPRefineVVS_0(JJJJJJIIDD)V
.end method

.method private static native solvePnPRefineVVS_1(JJJJJJIID)V
.end method

.method private static native solvePnPRefineVVS_2(JJJJJJ)V
.end method

.method private static native solvePnP_0(JJJJJJZI)Z
.end method

.method private static native solvePnP_1(JJJJJJZ)Z
.end method

.method private static native solvePnP_2(JJJJJJ)Z
.end method

.method public static stereoCalibrate(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)D
    .locals 47
    .param p3, "cameraMatrix1"    # Lorg/opencv/core/Mat;
    .param p4, "distCoeffs1"    # Lorg/opencv/core/Mat;
    .param p5, "cameraMatrix2"    # Lorg/opencv/core/Mat;
    .param p6, "distCoeffs2"    # Lorg/opencv/core/Mat;
    .param p7, "imageSize"    # Lorg/opencv/core/Size;
    .param p8, "R"    # Lorg/opencv/core/Mat;
    .param p9, "T"    # Lorg/opencv/core/Mat;
    .param p10, "E"    # Lorg/opencv/core/Mat;
    .param p11, "F"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            ")D"
        }
    .end annotation

    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints1":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p2, "imagePoints2":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p7

    .line 5521
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 5522
    .local v1, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 5523
    .local v2, "imagePoints1_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p2 .. p2}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v3

    .line 5524
    .local v3, "imagePoints2_mat":Lorg/opencv/core/Mat;
    iget-wide v4, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v10, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p4

    iget-wide v12, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v30, v1

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v1, p5

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v1    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v2    # "imagePoints1_mat":Lorg/opencv/core/Mat;
    .end local v3    # "imagePoints2_mat":Lorg/opencv/core/Mat;
    .local v30, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v31, "imagePoints1_mat":Lorg/opencv/core/Mat;
    .local v32, "imagePoints2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p6

    move-wide/from16 v33, v2

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v35, v2

    iget-wide v1, v0, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v37, v1

    iget-wide v1, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v3, p8

    move-wide/from16 v39, v1

    iget-wide v0, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v2, p9

    move-wide/from16 v41, v0

    iget-wide v0, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v2, p10

    move-wide/from16 v43, v0

    iget-wide v0, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v2, p11

    move-wide/from16 v45, v0

    iget-wide v0, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v14, v33

    move-wide/from16 v16, v35

    move-wide/from16 v18, v37

    move-wide/from16 v20, v39

    move-wide/from16 v22, v41

    move-wide/from16 v24, v43

    move-wide/from16 v26, v45

    move-wide/from16 v28, v0

    invoke-static/range {v4 .. v29}, Lorg/opencv/calib3d/Calib3d;->stereoCalibrate_2(JJJJJJJDDJJJJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public static stereoCalibrate(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)D
    .locals 48
    .param p3, "cameraMatrix1"    # Lorg/opencv/core/Mat;
    .param p4, "distCoeffs1"    # Lorg/opencv/core/Mat;
    .param p5, "cameraMatrix2"    # Lorg/opencv/core/Mat;
    .param p6, "distCoeffs2"    # Lorg/opencv/core/Mat;
    .param p7, "imageSize"    # Lorg/opencv/core/Size;
    .param p8, "R"    # Lorg/opencv/core/Mat;
    .param p9, "T"    # Lorg/opencv/core/Mat;
    .param p10, "E"    # Lorg/opencv/core/Mat;
    .param p11, "F"    # Lorg/opencv/core/Mat;
    .param p12, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "I)D"
        }
    .end annotation

    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints1":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p2, "imagePoints2":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p7

    .line 5514
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 5515
    .local v1, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 5516
    .local v2, "imagePoints1_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p2 .. p2}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v3

    .line 5517
    .local v3, "imagePoints2_mat":Lorg/opencv/core/Mat;
    iget-wide v4, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v10, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p4

    iget-wide v12, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v31, v1

    move-object/from16 v32, v2

    move-object/from16 v33, v3

    move-object/from16 v1, p5

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v1    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v2    # "imagePoints1_mat":Lorg/opencv/core/Mat;
    .end local v3    # "imagePoints2_mat":Lorg/opencv/core/Mat;
    .local v31, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v32, "imagePoints1_mat":Lorg/opencv/core/Mat;
    .local v33, "imagePoints2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p6

    move-wide/from16 v34, v2

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v36, v2

    iget-wide v1, v0, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v38, v1

    iget-wide v1, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v3, p8

    move-wide/from16 v40, v1

    iget-wide v0, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v2, p9

    move-wide/from16 v42, v0

    iget-wide v0, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v2, p10

    move-wide/from16 v44, v0

    iget-wide v0, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v2, p11

    move-wide/from16 v46, v0

    iget-wide v0, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v14, v34

    move-wide/from16 v16, v36

    move-wide/from16 v18, v38

    move-wide/from16 v20, v40

    move-wide/from16 v22, v42

    move-wide/from16 v24, v44

    move-wide/from16 v26, v46

    move-wide/from16 v28, v0

    move/from16 v30, p12

    invoke-static/range {v4 .. v30}, Lorg/opencv/calib3d/Calib3d;->stereoCalibrate_1(JJJJJJJDDJJJJI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static stereoCalibrate(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ILorg/opencv/core/TermCriteria;)D
    .locals 57
    .param p3, "cameraMatrix1"    # Lorg/opencv/core/Mat;
    .param p4, "distCoeffs1"    # Lorg/opencv/core/Mat;
    .param p5, "cameraMatrix2"    # Lorg/opencv/core/Mat;
    .param p6, "distCoeffs2"    # Lorg/opencv/core/Mat;
    .param p7, "imageSize"    # Lorg/opencv/core/Size;
    .param p8, "R"    # Lorg/opencv/core/Mat;
    .param p9, "T"    # Lorg/opencv/core/Mat;
    .param p10, "E"    # Lorg/opencv/core/Mat;
    .param p11, "F"    # Lorg/opencv/core/Mat;
    .param p12, "flags"    # I
    .param p13, "criteria"    # Lorg/opencv/core/TermCriteria;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "I",
            "Lorg/opencv/core/TermCriteria;",
            ")D"
        }
    .end annotation

    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints1":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p2, "imagePoints2":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p7

    .line 5507
    move-object/from16 v1, p13

    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 5508
    .local v2, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v3

    .line 5509
    .local v3, "imagePoints1_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p2 .. p2}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v4

    .line 5510
    .local v4, "imagePoints2_mat":Lorg/opencv/core/Mat;
    iget-wide v5, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v4, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p3

    iget-wide v11, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p4

    move-object/from16 v36, v2

    move-object/from16 v37, v3

    iget-wide v2, v13, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v2    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v3    # "imagePoints1_mat":Lorg/opencv/core/Mat;
    .local v36, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v37, "imagePoints1_mat":Lorg/opencv/core/Mat;
    move-object/from16 v14, p5

    move-wide/from16 v38, v2

    iget-wide v2, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v41, v2

    move-object/from16 v40, v4

    move-object/from16 v4, p6

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v4    # "imagePoints2_mat":Lorg/opencv/core/Mat;
    .local v40, "imagePoints2_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v43, v2

    iget-wide v2, v0, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v45, v2

    iget-wide v2, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p8

    move-wide/from16 v47, v2

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p9

    move-wide/from16 v49, v2

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p10

    move-wide/from16 v51, v2

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p11

    move-wide/from16 v53, v2

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget v0, v1, Lorg/opencv/core/TermCriteria;->type:I

    iget v4, v1, Lorg/opencv/core/TermCriteria;->maxCount:I

    move-wide/from16 v55, v2

    iget-wide v2, v1, Lorg/opencv/core/TermCriteria;->epsilon:D

    move-wide/from16 v13, v38

    move-wide/from16 v15, v41

    move-wide/from16 v17, v43

    move-wide/from16 v19, v45

    move-wide/from16 v21, v47

    move-wide/from16 v23, v49

    move-wide/from16 v25, v51

    move-wide/from16 v27, v53

    move-wide/from16 v29, v55

    move/from16 v31, p12

    move/from16 v32, v0

    move/from16 v33, v4

    move-wide/from16 v34, v2

    invoke-static/range {v5 .. v35}, Lorg/opencv/calib3d/Calib3d;->stereoCalibrate_0(JJJJJJJDDJJJJIIID)D

    move-result-wide v2

    return-wide v2
.end method

.method public static stereoCalibrateExtended(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)D
    .locals 51
    .param p3, "cameraMatrix1"    # Lorg/opencv/core/Mat;
    .param p4, "distCoeffs1"    # Lorg/opencv/core/Mat;
    .param p5, "cameraMatrix2"    # Lorg/opencv/core/Mat;
    .param p6, "distCoeffs2"    # Lorg/opencv/core/Mat;
    .param p7, "imageSize"    # Lorg/opencv/core/Size;
    .param p8, "R"    # Lorg/opencv/core/Mat;
    .param p9, "T"    # Lorg/opencv/core/Mat;
    .param p10, "E"    # Lorg/opencv/core/Mat;
    .param p11, "F"    # Lorg/opencv/core/Mat;
    .param p12, "perViewErrors"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            ")D"
        }
    .end annotation

    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints1":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p2, "imagePoints2":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p7

    .line 5495
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 5496
    .local v1, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 5497
    .local v2, "imagePoints1_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p2 .. p2}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v3

    .line 5498
    .local v3, "imagePoints2_mat":Lorg/opencv/core/Mat;
    iget-wide v4, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v10, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p4

    iget-wide v12, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v32, v1

    move-object/from16 v33, v2

    move-object/from16 v34, v3

    move-object/from16 v1, p5

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v1    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v2    # "imagePoints1_mat":Lorg/opencv/core/Mat;
    .end local v3    # "imagePoints2_mat":Lorg/opencv/core/Mat;
    .local v32, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v33, "imagePoints1_mat":Lorg/opencv/core/Mat;
    .local v34, "imagePoints2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p6

    move-wide/from16 v35, v2

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v37, v2

    iget-wide v1, v0, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v39, v1

    iget-wide v1, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v3, p8

    move-wide/from16 v41, v1

    iget-wide v0, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v2, p9

    move-wide/from16 v43, v0

    iget-wide v0, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v2, p10

    move-wide/from16 v45, v0

    iget-wide v0, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v2, p11

    move-wide/from16 v47, v0

    iget-wide v0, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v2, p12

    move-wide/from16 v49, v0

    iget-wide v0, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v14, v35

    move-wide/from16 v16, v37

    move-wide/from16 v18, v39

    move-wide/from16 v20, v41

    move-wide/from16 v22, v43

    move-wide/from16 v24, v45

    move-wide/from16 v26, v47

    move-wide/from16 v28, v49

    move-wide/from16 v30, v0

    invoke-static/range {v4 .. v31}, Lorg/opencv/calib3d/Calib3d;->stereoCalibrateExtended_2(JJJJJJJDDJJJJJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public static stereoCalibrateExtended(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)D
    .locals 52
    .param p3, "cameraMatrix1"    # Lorg/opencv/core/Mat;
    .param p4, "distCoeffs1"    # Lorg/opencv/core/Mat;
    .param p5, "cameraMatrix2"    # Lorg/opencv/core/Mat;
    .param p6, "distCoeffs2"    # Lorg/opencv/core/Mat;
    .param p7, "imageSize"    # Lorg/opencv/core/Size;
    .param p8, "R"    # Lorg/opencv/core/Mat;
    .param p9, "T"    # Lorg/opencv/core/Mat;
    .param p10, "E"    # Lorg/opencv/core/Mat;
    .param p11, "F"    # Lorg/opencv/core/Mat;
    .param p12, "perViewErrors"    # Lorg/opencv/core/Mat;
    .param p13, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "I)D"
        }
    .end annotation

    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints1":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p2, "imagePoints2":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p7

    .line 5336
    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 5337
    .local v1, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 5338
    .local v2, "imagePoints1_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p2 .. p2}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v3

    .line 5339
    .local v3, "imagePoints2_mat":Lorg/opencv/core/Mat;
    iget-wide v4, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v10, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p4

    iget-wide v12, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v33, v1

    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move-object/from16 v1, p5

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v1    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v2    # "imagePoints1_mat":Lorg/opencv/core/Mat;
    .end local v3    # "imagePoints2_mat":Lorg/opencv/core/Mat;
    .local v33, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v34, "imagePoints1_mat":Lorg/opencv/core/Mat;
    .local v35, "imagePoints2_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p6

    move-wide/from16 v36, v2

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v38, v2

    iget-wide v1, v0, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v40, v1

    iget-wide v1, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v3, p8

    move-wide/from16 v42, v1

    iget-wide v0, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v2, p9

    move-wide/from16 v44, v0

    iget-wide v0, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v2, p10

    move-wide/from16 v46, v0

    iget-wide v0, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v2, p11

    move-wide/from16 v48, v0

    iget-wide v0, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v2, p12

    move-wide/from16 v50, v0

    iget-wide v0, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v14, v36

    move-wide/from16 v16, v38

    move-wide/from16 v18, v40

    move-wide/from16 v20, v42

    move-wide/from16 v22, v44

    move-wide/from16 v24, v46

    move-wide/from16 v26, v48

    move-wide/from16 v28, v50

    move-wide/from16 v30, v0

    move/from16 v32, p13

    invoke-static/range {v4 .. v32}, Lorg/opencv/calib3d/Calib3d;->stereoCalibrateExtended_1(JJJJJJJDDJJJJJI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static stereoCalibrateExtended(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ILorg/opencv/core/TermCriteria;)D
    .locals 61
    .param p3, "cameraMatrix1"    # Lorg/opencv/core/Mat;
    .param p4, "distCoeffs1"    # Lorg/opencv/core/Mat;
    .param p5, "cameraMatrix2"    # Lorg/opencv/core/Mat;
    .param p6, "distCoeffs2"    # Lorg/opencv/core/Mat;
    .param p7, "imageSize"    # Lorg/opencv/core/Size;
    .param p8, "R"    # Lorg/opencv/core/Mat;
    .param p9, "T"    # Lorg/opencv/core/Mat;
    .param p10, "E"    # Lorg/opencv/core/Mat;
    .param p11, "F"    # Lorg/opencv/core/Mat;
    .param p12, "perViewErrors"    # Lorg/opencv/core/Mat;
    .param p13, "flags"    # I
    .param p14, "criteria"    # Lorg/opencv/core/TermCriteria;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Size;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "I",
            "Lorg/opencv/core/TermCriteria;",
            ")D"
        }
    .end annotation

    .local p0, "objectPoints":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "imagePoints1":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p2, "imagePoints2":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object/from16 v0, p7

    .line 5176
    move-object/from16 v1, p14

    invoke-static/range {p0 .. p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v2

    .line 5177
    .local v2, "objectPoints_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p1 .. p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v3

    .line 5178
    .local v3, "imagePoints1_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p2 .. p2}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v4

    .line 5179
    .local v4, "imagePoints2_mat":Lorg/opencv/core/Mat;
    iget-wide v5, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v4, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p3

    iget-wide v11, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p4

    move-object/from16 v38, v2

    move-object/from16 v39, v3

    iget-wide v2, v13, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v2    # "objectPoints_mat":Lorg/opencv/core/Mat;
    .end local v3    # "imagePoints1_mat":Lorg/opencv/core/Mat;
    .local v38, "objectPoints_mat":Lorg/opencv/core/Mat;
    .local v39, "imagePoints1_mat":Lorg/opencv/core/Mat;
    move-object/from16 v14, p5

    move-wide/from16 v40, v2

    iget-wide v2, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v43, v2

    move-object/from16 v42, v4

    move-object/from16 v4, p6

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v4    # "imagePoints2_mat":Lorg/opencv/core/Mat;
    .local v42, "imagePoints2_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v45, v2

    iget-wide v2, v0, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v47, v2

    iget-wide v2, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p8

    move-wide/from16 v49, v2

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p9

    move-wide/from16 v51, v2

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p10

    move-wide/from16 v53, v2

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p11

    move-wide/from16 v55, v2

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p12

    move-wide/from16 v57, v2

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget v0, v1, Lorg/opencv/core/TermCriteria;->type:I

    iget v4, v1, Lorg/opencv/core/TermCriteria;->maxCount:I

    move-wide/from16 v59, v2

    iget-wide v2, v1, Lorg/opencv/core/TermCriteria;->epsilon:D

    move-wide/from16 v13, v40

    move-wide/from16 v15, v43

    move-wide/from16 v17, v45

    move-wide/from16 v19, v47

    move-wide/from16 v21, v49

    move-wide/from16 v23, v51

    move-wide/from16 v25, v53

    move-wide/from16 v27, v55

    move-wide/from16 v29, v57

    move-wide/from16 v31, v59

    move/from16 v33, p13

    move/from16 v34, v0

    move/from16 v35, v4

    move-wide/from16 v36, v2

    invoke-static/range {v5 .. v37}, Lorg/opencv/calib3d/Calib3d;->stereoCalibrateExtended_0(JJJJJJJDDJJJJJIIID)D

    move-result-wide v2

    return-wide v2
.end method

.method private static native stereoCalibrateExtended_0(JJJJJJJDDJJJJJIIID)D
.end method

.method private static native stereoCalibrateExtended_1(JJJJJJJDDJJJJJI)D
.end method

.method private static native stereoCalibrateExtended_2(JJJJJJJDDJJJJJ)D
.end method

.method private static native stereoCalibrate_0(JJJJJJJDDJJJJIIID)D
.end method

.method private static native stereoCalibrate_1(JJJJJJJDDJJJJI)D
.end method

.method private static native stereoCalibrate_2(JJJJJJJDDJJJJ)D
.end method

.method public static stereoRectify(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 40
    .param p0, "cameraMatrix1"    # Lorg/opencv/core/Mat;
    .param p1, "distCoeffs1"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix2"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs2"    # Lorg/opencv/core/Mat;
    .param p4, "imageSize"    # Lorg/opencv/core/Size;
    .param p5, "R"    # Lorg/opencv/core/Mat;
    .param p6, "T"    # Lorg/opencv/core/Mat;
    .param p7, "R1"    # Lorg/opencv/core/Mat;
    .param p8, "R2"    # Lorg/opencv/core/Mat;
    .param p9, "P1"    # Lorg/opencv/core/Mat;
    .param p10, "P2"    # Lorg/opencv/core/Mat;
    .param p11, "Q"    # Lorg/opencv/core/Mat;

    move-object/from16 v0, p4

    .line 10692
    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v4, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p2

    iget-wide v6, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p3

    iget-wide v8, v12, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v12, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p5

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    move-wide/from16 v28, v14

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    move-wide/from16 v30, v14

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p8

    move-wide/from16 v32, v14

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p9

    move-wide/from16 v34, v14

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p10

    move-wide/from16 v36, v14

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p11

    move-wide/from16 v38, v14

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v26, v14

    move-wide/from16 v16, v30

    move-wide/from16 v18, v32

    move-wide/from16 v20, v34

    move-wide/from16 v22, v36

    move-wide/from16 v24, v38

    move-wide/from16 v14, v28

    invoke-static/range {v2 .. v27}, Lorg/opencv/calib3d/Calib3d;->stereoRectify_5(JJJJDDJJJJJJJ)V

    .line 10693
    return-void
.end method

.method public static stereoRectify(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 41
    .param p0, "cameraMatrix1"    # Lorg/opencv/core/Mat;
    .param p1, "distCoeffs1"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix2"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs2"    # Lorg/opencv/core/Mat;
    .param p4, "imageSize"    # Lorg/opencv/core/Size;
    .param p5, "R"    # Lorg/opencv/core/Mat;
    .param p6, "T"    # Lorg/opencv/core/Mat;
    .param p7, "R1"    # Lorg/opencv/core/Mat;
    .param p8, "R2"    # Lorg/opencv/core/Mat;
    .param p9, "P1"    # Lorg/opencv/core/Mat;
    .param p10, "P2"    # Lorg/opencv/core/Mat;
    .param p11, "Q"    # Lorg/opencv/core/Mat;
    .param p12, "flags"    # I

    move-object/from16 v0, p4

    .line 10579
    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v4, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p2

    iget-wide v6, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p3

    iget-wide v8, v12, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v12, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p5

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    move-wide/from16 v29, v14

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    move-wide/from16 v31, v14

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p8

    move-wide/from16 v33, v14

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p9

    move-wide/from16 v35, v14

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p10

    move-wide/from16 v37, v14

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p11

    move-wide/from16 v39, v14

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v26, v14

    move-wide/from16 v16, v31

    move-wide/from16 v18, v33

    move-wide/from16 v20, v35

    move-wide/from16 v22, v37

    move-wide/from16 v24, v39

    move-wide/from16 v14, v29

    move/from16 v28, p12

    invoke-static/range {v2 .. v28}, Lorg/opencv/calib3d/Calib3d;->stereoRectify_4(JJJJDDJJJJJJJI)V

    .line 10580
    return-void
.end method

.method public static stereoRectify(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ID)V
    .locals 43
    .param p0, "cameraMatrix1"    # Lorg/opencv/core/Mat;
    .param p1, "distCoeffs1"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix2"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs2"    # Lorg/opencv/core/Mat;
    .param p4, "imageSize"    # Lorg/opencv/core/Size;
    .param p5, "R"    # Lorg/opencv/core/Mat;
    .param p6, "T"    # Lorg/opencv/core/Mat;
    .param p7, "R1"    # Lorg/opencv/core/Mat;
    .param p8, "R2"    # Lorg/opencv/core/Mat;
    .param p9, "P1"    # Lorg/opencv/core/Mat;
    .param p10, "P2"    # Lorg/opencv/core/Mat;
    .param p11, "Q"    # Lorg/opencv/core/Mat;
    .param p12, "flags"    # I
    .param p13, "alpha"    # D

    move-object/from16 v0, p4

    .line 10465
    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v4, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p2

    iget-wide v6, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p3

    iget-wide v8, v12, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v12, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p5

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    move-wide/from16 v31, v14

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    move-wide/from16 v33, v14

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p8

    move-wide/from16 v35, v14

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p9

    move-wide/from16 v37, v14

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p10

    move-wide/from16 v39, v14

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p11

    move-wide/from16 v41, v14

    iget-wide v14, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v26, v14

    move-wide/from16 v16, v33

    move-wide/from16 v18, v35

    move-wide/from16 v20, v37

    move-wide/from16 v22, v39

    move-wide/from16 v24, v41

    move-wide/from16 v14, v31

    move/from16 v28, p12

    move-wide/from16 v29, p13

    invoke-static/range {v2 .. v30}, Lorg/opencv/calib3d/Calib3d;->stereoRectify_3(JJJJDDJJJJJJJID)V

    .line 10466
    return-void
.end method

.method public static stereoRectify(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;IDLorg/opencv/core/Size;)V
    .locals 54
    .param p0, "cameraMatrix1"    # Lorg/opencv/core/Mat;
    .param p1, "distCoeffs1"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix2"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs2"    # Lorg/opencv/core/Mat;
    .param p4, "imageSize"    # Lorg/opencv/core/Size;
    .param p5, "R"    # Lorg/opencv/core/Mat;
    .param p6, "T"    # Lorg/opencv/core/Mat;
    .param p7, "R1"    # Lorg/opencv/core/Mat;
    .param p8, "R2"    # Lorg/opencv/core/Mat;
    .param p9, "P1"    # Lorg/opencv/core/Mat;
    .param p10, "P2"    # Lorg/opencv/core/Mat;
    .param p11, "Q"    # Lorg/opencv/core/Mat;
    .param p12, "flags"    # I
    .param p13, "alpha"    # D
    .param p15, "newImageSize"    # Lorg/opencv/core/Size;

    move-object/from16 v0, p4

    .line 10350
    move-object/from16 v1, p15

    move-object/from16 v2, p0

    iget-wide v3, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v5, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v7, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v9, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v11, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v13, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p5

    move-wide/from16 v36, v13

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    move-wide/from16 v38, v13

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    move-wide/from16 v40, v13

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p8

    move-wide/from16 v42, v13

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p9

    move-wide/from16 v44, v13

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p10

    move-wide/from16 v46, v13

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p11

    move-wide/from16 v48, v13

    iget-wide v13, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v50, v13

    iget-wide v13, v1, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v52, v13

    iget-wide v13, v1, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v34, v13

    move-wide/from16 v16, v38

    move-wide/from16 v18, v40

    move-wide/from16 v20, v42

    move-wide/from16 v22, v44

    move-wide/from16 v24, v46

    move-wide/from16 v26, v48

    move-wide/from16 v28, v50

    move-wide/from16 v32, v52

    move-wide/from16 v13, v36

    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    move-wide/from16 v19, v20

    move-wide/from16 v21, v22

    move-wide/from16 v23, v24

    move-wide/from16 v25, v26

    move-wide/from16 v27, v28

    move/from16 v29, p12

    move-wide/from16 v30, p13

    invoke-static/range {v3 .. v35}, Lorg/opencv/calib3d/Calib3d;->stereoRectify_2(JJJJDDJJJJJJJIDDD)V

    .line 10351
    return-void
.end method

.method public static stereoRectify(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;IDLorg/opencv/core/Size;Lorg/opencv/core/Rect;)V
    .locals 55
    .param p0, "cameraMatrix1"    # Lorg/opencv/core/Mat;
    .param p1, "distCoeffs1"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix2"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs2"    # Lorg/opencv/core/Mat;
    .param p4, "imageSize"    # Lorg/opencv/core/Size;
    .param p5, "R"    # Lorg/opencv/core/Mat;
    .param p6, "T"    # Lorg/opencv/core/Mat;
    .param p7, "R1"    # Lorg/opencv/core/Mat;
    .param p8, "R2"    # Lorg/opencv/core/Mat;
    .param p9, "P1"    # Lorg/opencv/core/Mat;
    .param p10, "P2"    # Lorg/opencv/core/Mat;
    .param p11, "Q"    # Lorg/opencv/core/Mat;
    .param p12, "flags"    # I
    .param p13, "alpha"    # D
    .param p15, "newImageSize"    # Lorg/opencv/core/Size;
    .param p16, "validPixROI1"    # Lorg/opencv/core/Rect;

    move-object/from16 v0, p4

    move-object/from16 v1, p15

    .line 10232
    move-object/from16 v2, p16

    const/4 v3, 0x4

    new-array v3, v3, [D

    .line 10233
    .local v3, "validPixROI1_out":[D
    move-object/from16 v14, p0

    iget-wide v4, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v6, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p2

    iget-wide v8, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p3

    iget-wide v10, v13, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v12, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v14, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p5

    move-object/from16 v38, v3

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v3    # "validPixROI1_out":[D
    .local v38, "validPixROI1_out":[D
    move-object/from16 v0, p6

    move-wide/from16 v39, v2

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    move-wide/from16 v41, v2

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p8

    move-wide/from16 v43, v2

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p9

    move-wide/from16 v45, v2

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p10

    move-wide/from16 v47, v2

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p11

    move-wide/from16 v49, v2

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v51, v2

    iget-wide v2, v1, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v53, v2

    iget-wide v2, v1, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v16, v39

    move-wide/from16 v18, v41

    move-wide/from16 v20, v43

    move-wide/from16 v22, v45

    move-wide/from16 v24, v47

    move-wide/from16 v26, v49

    move-wide/from16 v28, v51

    move/from16 v30, p12

    move-wide/from16 v31, p13

    move-wide/from16 v33, v53

    move-wide/from16 v35, v2

    move-object/from16 v37, v38

    invoke-static/range {v4 .. v37}, Lorg/opencv/calib3d/Calib3d;->stereoRectify_1(JJJJDDJJJJJJJIDDD[D)V

    .line 10234
    move-object/from16 v2, p16

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    aget-wide v3, v38, v3

    double-to-int v3, v3

    iput v3, v2, Lorg/opencv/core/Rect;->x:I

    const/4 v3, 0x1

    aget-wide v3, v38, v3

    double-to-int v3, v3

    iput v3, v2, Lorg/opencv/core/Rect;->y:I

    const/4 v3, 0x2

    aget-wide v3, v38, v3

    double-to-int v3, v3

    iput v3, v2, Lorg/opencv/core/Rect;->width:I

    const/4 v3, 0x3

    aget-wide v3, v38, v3

    double-to-int v3, v3

    iput v3, v2, Lorg/opencv/core/Rect;->height:I

    .line 10235
    :cond_0
    return-void
.end method

.method public static stereoRectify(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;IDLorg/opencv/core/Size;Lorg/opencv/core/Rect;Lorg/opencv/core/Rect;)V
    .locals 61
    .param p0, "cameraMatrix1"    # Lorg/opencv/core/Mat;
    .param p1, "distCoeffs1"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix2"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs2"    # Lorg/opencv/core/Mat;
    .param p4, "imageSize"    # Lorg/opencv/core/Size;
    .param p5, "R"    # Lorg/opencv/core/Mat;
    .param p6, "T"    # Lorg/opencv/core/Mat;
    .param p7, "R1"    # Lorg/opencv/core/Mat;
    .param p8, "R2"    # Lorg/opencv/core/Mat;
    .param p9, "P1"    # Lorg/opencv/core/Mat;
    .param p10, "P2"    # Lorg/opencv/core/Mat;
    .param p11, "Q"    # Lorg/opencv/core/Mat;
    .param p12, "flags"    # I
    .param p13, "alpha"    # D
    .param p15, "newImageSize"    # Lorg/opencv/core/Size;
    .param p16, "validPixROI1"    # Lorg/opencv/core/Rect;
    .param p17, "validPixROI2"    # Lorg/opencv/core/Rect;

    move-object/from16 v0, p4

    move-object/from16 v1, p15

    move-object/from16 v2, p16

    .line 10111
    move-object/from16 v3, p17

    const/4 v4, 0x4

    new-array v15, v4, [D

    .line 10112
    .local v15, "validPixROI1_out":[D
    new-array v4, v4, [D

    .line 10113
    .local v4, "validPixROI2_out":[D
    move-object/from16 v13, p0

    iget-wide v5, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v7, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v11, p2

    iget-wide v9, v11, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p3

    iget-wide v13, v12, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, v0, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v41, v2

    iget-wide v2, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p5

    move-wide/from16 v43, v2

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p6

    move-wide/from16 v45, v2

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p7

    move-wide/from16 v47, v2

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p8

    move-wide/from16 v49, v2

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p9

    move-wide/from16 v51, v2

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p10

    move-wide/from16 v53, v2

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v0, p11

    move-wide/from16 v55, v2

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v57, v2

    iget-wide v2, v1, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v59, v2

    iget-wide v2, v1, Lorg/opencv/core/Size;->height:D

    move-wide v11, v13

    move-wide/from16 v13, v41

    move-object/from16 v40, v15

    move-wide/from16 v15, v43

    .end local v15    # "validPixROI1_out":[D
    .local v40, "validPixROI1_out":[D
    move-wide/from16 v17, v45

    move-wide/from16 v19, v47

    move-wide/from16 v21, v49

    move-wide/from16 v23, v51

    move-wide/from16 v25, v53

    move-wide/from16 v27, v55

    move-wide/from16 v29, v57

    move/from16 v31, p12

    move-wide/from16 v32, p13

    move-wide/from16 v34, v59

    move-wide/from16 v36, v2

    move-object/from16 v38, v40

    move-object/from16 v39, v4

    invoke-static/range {v5 .. v39}, Lorg/opencv/calib3d/Calib3d;->stereoRectify_0(JJJJDDJJJJJJJIDDD[D[D)V

    .line 10114
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v7, p16

    if-eqz v7, :cond_0

    aget-wide v8, v40, v6

    double-to-int v8, v8

    iput v8, v7, Lorg/opencv/core/Rect;->x:I

    aget-wide v8, v40, v5

    double-to-int v8, v8

    iput v8, v7, Lorg/opencv/core/Rect;->y:I

    aget-wide v8, v40, v3

    double-to-int v8, v8

    iput v8, v7, Lorg/opencv/core/Rect;->width:I

    aget-wide v8, v40, v2

    double-to-int v8, v8

    iput v8, v7, Lorg/opencv/core/Rect;->height:I

    .line 10115
    :cond_0
    move-object/from16 v8, p17

    if-eqz v8, :cond_1

    aget-wide v9, v4, v6

    double-to-int v6, v9

    iput v6, v8, Lorg/opencv/core/Rect;->x:I

    aget-wide v5, v4, v5

    double-to-int v5, v5

    iput v5, v8, Lorg/opencv/core/Rect;->y:I

    aget-wide v5, v4, v3

    double-to-int v3, v5

    iput v3, v8, Lorg/opencv/core/Rect;->width:I

    aget-wide v2, v4, v2

    double-to-int v2, v2

    iput v2, v8, Lorg/opencv/core/Rect;->height:I

    .line 10116
    :cond_1
    return-void
.end method

.method public static stereoRectifyUncalibrated(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Z
    .locals 17
    .param p0, "points1"    # Lorg/opencv/core/Mat;
    .param p1, "points2"    # Lorg/opencv/core/Mat;
    .param p2, "F"    # Lorg/opencv/core/Mat;
    .param p3, "imgSize"    # Lorg/opencv/core/Size;
    .param p4, "H1"    # Lorg/opencv/core/Mat;
    .param p5, "H2"    # Lorg/opencv/core/Mat;

    move-object/from16 v0, p3

    .line 4183
    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v4, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p2

    iget-wide v6, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v10, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v12, p4

    iget-wide v0, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p5

    iget-wide v14, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v12, v0

    invoke-static/range {v2 .. v15}, Lorg/opencv/calib3d/Calib3d;->stereoRectifyUncalibrated_1(JJJDDJJ)Z

    move-result v0

    return v0
.end method

.method public static stereoRectifyUncalibrated(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;D)Z
    .locals 19
    .param p0, "points1"    # Lorg/opencv/core/Mat;
    .param p1, "points2"    # Lorg/opencv/core/Mat;
    .param p2, "F"    # Lorg/opencv/core/Mat;
    .param p3, "imgSize"    # Lorg/opencv/core/Size;
    .param p4, "H1"    # Lorg/opencv/core/Mat;
    .param p5, "H2"    # Lorg/opencv/core/Mat;
    .param p6, "threshold"    # D

    move-object/from16 v0, p3

    .line 4149
    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v4, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p2

    iget-wide v6, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v10, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v12, p4

    iget-wide v0, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p5

    iget-wide v14, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v12, v0

    move-wide/from16 v16, p6

    invoke-static/range {v2 .. v17}, Lorg/opencv/calib3d/Calib3d;->stereoRectifyUncalibrated_0(JJJDDJJD)Z

    move-result v0

    return v0
.end method

.method private static native stereoRectifyUncalibrated_0(JJJDDJJD)Z
.end method

.method private static native stereoRectifyUncalibrated_1(JJJDDJJ)Z
.end method

.method private static native stereoRectify_0(JJJJDDJJJJJJJIDDD[D[D)V
.end method

.method private static native stereoRectify_1(JJJJDDJJJJJJJIDDD[D)V
.end method

.method private static native stereoRectify_2(JJJJDDJJJJJJJIDDD)V
.end method

.method private static native stereoRectify_3(JJJJDDJJJJJJJID)V
.end method

.method private static native stereoRectify_4(JJJJDDJJJJJJJI)V
.end method

.method private static native stereoRectify_5(JJJJDDJJJJJJJ)V
.end method

.method public static triangulatePoints(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 10
    .param p0, "projMatr1"    # Lorg/opencv/core/Mat;
    .param p1, "projMatr2"    # Lorg/opencv/core/Mat;
    .param p2, "projPoints1"    # Lorg/opencv/core/Mat;
    .param p3, "projPoints2"    # Lorg/opencv/core/Mat;
    .param p4, "points4D"    # Lorg/opencv/core/Mat;

    .line 10726
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, p4, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v9}, Lorg/opencv/calib3d/Calib3d;->triangulatePoints_0(JJJJJ)V

    .line 10727
    return-void
.end method

.method private static native triangulatePoints_0(JJJJJ)V
.end method

.method public static undistort(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/Mat;

    .line 10798
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/calib3d/Calib3d;->undistort_1(JJJJ)V

    .line 10799
    return-void
.end method

.method public static undistort(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 10
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p4, "newCameraMatrix"    # Lorg/opencv/core/Mat;

    .line 10765
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, p4, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v9}, Lorg/opencv/calib3d/Calib3d;->undistort_0(JJJJJ)V

    .line 10766
    return-void
.end method

.method public static undistortPoints(Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 10
    .param p0, "src"    # Lorg/opencv/core/MatOfPoint2f;
    .param p1, "dst"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/Mat;

    .line 10959
    move-object v0, p0

    .line 10960
    .local v0, "src_mat":Lorg/opencv/core/Mat;
    move-object v1, p1

    .line 10961
    .local v1, "dst_mat":Lorg/opencv/core/Mat;
    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v9}, Lorg/opencv/calib3d/Calib3d;->undistortPoints_2(JJJJ)V

    .line 10962
    return-void
.end method

.method public static undistortPoints(Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 15
    .param p0, "src"    # Lorg/opencv/core/MatOfPoint2f;
    .param p1, "dst"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p4, "R"    # Lorg/opencv/core/Mat;

    .line 10914
    move-object v0, p0

    .line 10915
    .local v0, "src_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p1

    .line 10916
    .local v1, "dst_mat":Lorg/opencv/core/Mat;
    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p2

    iget-wide v6, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p3

    iget-wide v8, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p4

    iget-wide v10, v14, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v11}, Lorg/opencv/calib3d/Calib3d;->undistortPoints_1(JJJJJ)V

    .line 10917
    return-void
.end method

.method public static undistortPoints(Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/MatOfPoint2f;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 18
    .param p0, "src"    # Lorg/opencv/core/MatOfPoint2f;
    .param p1, "dst"    # Lorg/opencv/core/MatOfPoint2f;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p4, "R"    # Lorg/opencv/core/Mat;
    .param p5, "P"    # Lorg/opencv/core/Mat;

    .line 10868
    move-object/from16 v0, p0

    .line 10869
    .local v0, "src_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p1

    .line 10870
    .local v1, "dst_mat":Lorg/opencv/core/Mat;
    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v6, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p3

    iget-wide v8, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p4

    iget-wide v10, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p5

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    iget-wide v0, v13, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v0    # "src_mat":Lorg/opencv/core/Mat;
    .end local v1    # "dst_mat":Lorg/opencv/core/Mat;
    .local v16, "src_mat":Lorg/opencv/core/Mat;
    .local v17, "dst_mat":Lorg/opencv/core/Mat;
    move-wide v12, v0

    invoke-static/range {v2 .. v13}, Lorg/opencv/calib3d/Calib3d;->undistortPoints_0(JJJJJJ)V

    .line 10871
    return-void
.end method

.method public static undistortPointsIter(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/TermCriteria;)V
    .locals 19
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "cameraMatrix"    # Lorg/opencv/core/Mat;
    .param p3, "distCoeffs"    # Lorg/opencv/core/Mat;
    .param p4, "R"    # Lorg/opencv/core/Mat;
    .param p5, "P"    # Lorg/opencv/core/Mat;
    .param p6, "criteria"    # Lorg/opencv/core/TermCriteria;

    .line 10818
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v4, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v6, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p3

    iget-wide v8, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p4

    iget-wide v10, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v1, p5

    iget-wide v12, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget v1, v0, Lorg/opencv/core/TermCriteria;->type:I

    iget v15, v0, Lorg/opencv/core/TermCriteria;->maxCount:I

    move/from16 v18, v15

    iget-wide v14, v0, Lorg/opencv/core/TermCriteria;->epsilon:D

    move-wide/from16 v16, v14

    move v14, v1

    move/from16 v15, v18

    invoke-static/range {v2 .. v17}, Lorg/opencv/calib3d/Calib3d;->undistortPointsIter_0(JJJJJJIID)V

    .line 10819
    return-void
.end method

.method private static native undistortPointsIter_0(JJJJJJIID)V
.end method

.method private static native undistortPoints_0(JJJJJJ)V
.end method

.method private static native undistortPoints_1(JJJJJ)V
.end method

.method private static native undistortPoints_2(JJJJ)V
.end method

.method private static native undistort_0(JJJJJ)V
.end method

.method private static native undistort_1(JJJJ)V
.end method

.method public static validateDisparity(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;II)V
    .locals 6
    .param p0, "disparity"    # Lorg/opencv/core/Mat;
    .param p1, "cost"    # Lorg/opencv/core/Mat;
    .param p2, "minDisparity"    # I
    .param p3, "numberOfDisparities"    # I

    .line 10974
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/calib3d/Calib3d;->validateDisparity_1(JJII)V

    .line 10975
    return-void
.end method

.method public static validateDisparity(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;III)V
    .locals 7
    .param p0, "disparity"    # Lorg/opencv/core/Mat;
    .param p1, "cost"    # Lorg/opencv/core/Mat;
    .param p2, "minDisparity"    # I
    .param p3, "numberOfDisparities"    # I
    .param p4, "disp12MaxDisp"    # I

    .line 10970
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lorg/opencv/calib3d/Calib3d;->validateDisparity_0(JJIII)V

    .line 10971
    return-void
.end method

.method private static native validateDisparity_0(JJIII)V
.end method

.method private static native validateDisparity_1(JJII)V
.end method
