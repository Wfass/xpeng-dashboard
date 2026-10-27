.class public Lorg/opencv/core/Core;
.super Ljava/lang/Object;
.source "Core.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/opencv/core/Core$MinMaxLocResult;
    }
.end annotation


# static fields
.field public static final BORDER_CONSTANT:I = 0x0

.field public static final BORDER_DEFAULT:I = 0x4

.field public static final BORDER_ISOLATED:I = 0x10

.field public static final BORDER_REFLECT:I = 0x2

.field public static final BORDER_REFLECT101:I = 0x4

.field public static final BORDER_REFLECT_101:I = 0x4

.field public static final BORDER_REPLICATE:I = 0x1

.field public static final BORDER_TRANSPARENT:I = 0x5

.field public static final BORDER_WRAP:I = 0x3

.field public static final BadAlign:I = -0x15

.field public static final BadAlphaChannel:I = -0x12

.field public static final BadCOI:I = -0x18

.field public static final BadCallBack:I = -0x16

.field public static final BadDataPtr:I = -0xc

.field public static final BadDepth:I = -0x11

.field public static final BadImageSize:I = -0xa

.field public static final BadModelOrChSeq:I = -0xe

.field public static final BadNumChannel1U:I = -0x10

.field public static final BadNumChannels:I = -0xf

.field public static final BadOffset:I = -0xb

.field public static final BadOrder:I = -0x13

.field public static final BadOrigin:I = -0x14

.field public static final BadROISize:I = -0x19

.field public static final BadStep:I = -0xd

.field public static final BadTileSize:I = -0x17

.field public static final CMP_EQ:I = 0x0

.field public static final CMP_GE:I = 0x2

.field public static final CMP_GT:I = 0x1

.field public static final CMP_LE:I = 0x4

.field public static final CMP_LT:I = 0x3

.field public static final CMP_NE:I = 0x5

.field public static final COVAR_COLS:I = 0x10

.field public static final COVAR_NORMAL:I = 0x1

.field public static final COVAR_ROWS:I = 0x8

.field public static final COVAR_SCALE:I = 0x4

.field public static final COVAR_SCRAMBLED:I = 0x0

.field public static final COVAR_USE_AVG:I = 0x2

.field private static final CV_16S:I = 0x3

.field private static final CV_16U:I = 0x2

.field private static final CV_32F:I = 0x5

.field private static final CV_32S:I = 0x4

.field private static final CV_64F:I = 0x6

.field private static final CV_8S:I = 0x1

.field private static final CV_8U:I = 0x0

.field private static final CV_USRTYPE1:I = 0x7

.field public static final DCT_INVERSE:I = 0x1

.field public static final DCT_ROWS:I = 0x4

.field public static final DECOMP_CHOLESKY:I = 0x3

.field public static final DECOMP_EIG:I = 0x2

.field public static final DECOMP_LU:I = 0x0

.field public static final DECOMP_NORMAL:I = 0x10

.field public static final DECOMP_QR:I = 0x4

.field public static final DECOMP_SVD:I = 0x1

.field public static final DFT_COMPLEX_INPUT:I = 0x40

.field public static final DFT_COMPLEX_OUTPUT:I = 0x10

.field public static final DFT_INVERSE:I = 0x1

.field public static final DFT_REAL_OUTPUT:I = 0x20

.field public static final DFT_ROWS:I = 0x4

.field public static final DFT_SCALE:I = 0x2

.field public static final FILLED:I = -0x1

.field public static final Formatter_FMT_C:I = 0x5

.field public static final Formatter_FMT_CSV:I = 0x2

.field public static final Formatter_FMT_DEFAULT:I = 0x0

.field public static final Formatter_FMT_MATLAB:I = 0x1

.field public static final Formatter_FMT_NUMPY:I = 0x4

.field public static final Formatter_FMT_PYTHON:I = 0x3

.field public static final GEMM_1_T:I = 0x1

.field public static final GEMM_2_T:I = 0x2

.field public static final GEMM_3_T:I = 0x4

.field public static final GpuApiCallError:I = -0xd9

.field public static final GpuNotSupported:I = -0xd8

.field public static final HeaderIsNull:I = -0x9

.field public static final KMEANS_PP_CENTERS:I = 0x2

.field public static final KMEANS_RANDOM_CENTERS:I = 0x0

.field public static final KMEANS_USE_INITIAL_LABELS:I = 0x1

.field public static final MaskIsTiled:I = -0x1a

.field public static final NATIVE_LIBRARY_NAME:Ljava/lang/String;

.field public static final NORM_HAMMING:I = 0x6

.field public static final NORM_HAMMING2:I = 0x7

.field public static final NORM_INF:I = 0x1

.field public static final NORM_L1:I = 0x2

.field public static final NORM_L2:I = 0x4

.field public static final NORM_L2SQR:I = 0x5

.field public static final NORM_MINMAX:I = 0x20

.field public static final NORM_RELATIVE:I = 0x8

.field public static final NORM_TYPE_MASK:I = 0x7

.field public static final OpenCLApiCallError:I = -0xdc

.field public static final OpenCLDoubleNotSupported:I = -0xdd

.field public static final OpenCLInitError:I = -0xde

.field public static final OpenCLNoAMDBlasFft:I = -0xdf

.field public static final OpenGlApiCallError:I = -0xdb

.field public static final OpenGlNotSupported:I = -0xda

.field public static final PCA_DATA_AS_COL:I = 0x1

.field public static final PCA_DATA_AS_ROW:I = 0x0

.field public static final PCA_USE_AVG:I = 0x2

.field public static final Param_ALGORITHM:I = 0x6

.field public static final Param_BOOLEAN:I = 0x1

.field public static final Param_FLOAT:I = 0x7

.field public static final Param_INT:I = 0x0

.field public static final Param_MAT:I = 0x4

.field public static final Param_MAT_VECTOR:I = 0x5

.field public static final Param_REAL:I = 0x2

.field public static final Param_SCALAR:I = 0xc

.field public static final Param_STRING:I = 0x3

.field public static final Param_UCHAR:I = 0xb

.field public static final Param_UINT64:I = 0x9

.field public static final Param_UNSIGNED_INT:I = 0x8

.field public static final REDUCE_AVG:I = 0x1

.field public static final REDUCE_MAX:I = 0x2

.field public static final REDUCE_MIN:I = 0x3

.field public static final REDUCE_SUM:I = 0x0

.field public static final RNG_NORMAL:I = 0x1

.field public static final RNG_UNIFORM:I = 0x0

.field public static final ROTATE_180:I = 0x1

.field public static final ROTATE_90_CLOCKWISE:I = 0x0

.field public static final ROTATE_90_COUNTERCLOCKWISE:I = 0x2

.field public static final SORT_ASCENDING:I = 0x0

.field public static final SORT_DESCENDING:I = 0x10

.field public static final SORT_EVERY_COLUMN:I = 0x1

.field public static final SORT_EVERY_ROW:I = 0x0

.field public static final SVD_FULL_UV:I = 0x4

.field public static final SVD_MODIFY_A:I = 0x1

.field public static final SVD_NO_UV:I = 0x2

.field public static final StsAssert:I = -0xd7

.field public static final StsAutoTrace:I = -0x8

.field public static final StsBackTrace:I = -0x1

.field public static final StsBadArg:I = -0x5

.field public static final StsBadFlag:I = -0xce

.field public static final StsBadFunc:I = -0x6

.field public static final StsBadMask:I = -0xd0

.field public static final StsBadMemBlock:I = -0xd6

.field public static final StsBadPoint:I = -0xcf

.field public static final StsBadSize:I = -0xc9

.field public static final StsDivByZero:I = -0xca

.field public static final StsError:I = -0x2

.field public static final StsFilterOffsetErr:I = -0x1f

.field public static final StsFilterStructContentErr:I = -0x1d

.field public static final StsInplaceNotSupported:I = -0xcb

.field public static final StsInternal:I = -0x3

.field public static final StsKernelStructContentErr:I = -0x1e

.field public static final StsNoConv:I = -0x7

.field public static final StsNoMem:I = -0x4

.field public static final StsNotImplemented:I = -0xd5

.field public static final StsNullPtr:I = -0x1b

.field public static final StsObjectNotFound:I = -0xcc

.field public static final StsOk:I = 0x0

.field public static final StsOutOfRange:I = -0xd3

.field public static final StsParseError:I = -0xd4

.field public static final StsUnmatchedFormats:I = -0xcd

.field public static final StsUnmatchedSizes:I = -0xd1

.field public static final StsUnsupportedFormat:I = -0xd2

.field public static final StsVecLengthErr:I = -0x1c

.field public static final VERSION:Ljava/lang/String;

.field public static final VERSION_MAJOR:I

.field public static final VERSION_MINOR:I

.field public static final VERSION_REVISION:I

.field public static final VERSION_STATUS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    invoke-static {}, Lorg/opencv/core/Core;->getVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/opencv/core/Core;->VERSION:Ljava/lang/String;

    .line 27
    invoke-static {}, Lorg/opencv/core/Core;->getNativeLibraryName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/opencv/core/Core;->NATIVE_LIBRARY_NAME:Ljava/lang/String;

    .line 28
    invoke-static {}, Lorg/opencv/core/Core;->getVersionMajorJ()I

    move-result v0

    sput v0, Lorg/opencv/core/Core;->VERSION_MAJOR:I

    .line 29
    invoke-static {}, Lorg/opencv/core/Core;->getVersionMinorJ()I

    move-result v0

    sput v0, Lorg/opencv/core/Core;->VERSION_MINOR:I

    .line 30
    invoke-static {}, Lorg/opencv/core/Core;->getVersionRevisionJ()I

    move-result v0

    sput v0, Lorg/opencv/core/Core;->VERSION_REVISION:I

    .line 31
    invoke-static {}, Lorg/opencv/core/Core;->getVersionStatusJ()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/opencv/core/Core;->VERSION_STATUS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LUT(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "lut"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .line 1578
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->LUT_0(JJJ)V

    .line 1579
    return-void
.end method

.method private static native LUT_0(JJJ)V
.end method

.method public static Mahalanobis(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)D
    .locals 6
    .param p0, "v1"    # Lorg/opencv/core/Mat;
    .param p1, "v2"    # Lorg/opencv/core/Mat;
    .param p2, "icovar"    # Lorg/opencv/core/Mat;

    .line 727
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->Mahalanobis_0(JJJ)D

    move-result-wide v0

    return-wide v0
.end method

.method private static native Mahalanobis_0(JJJ)D
.end method

.method public static PCABackProject(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "data"    # Lorg/opencv/core/Mat;
    .param p1, "mean"    # Lorg/opencv/core/Mat;
    .param p2, "eigenvectors"    # Lorg/opencv/core/Mat;
    .param p3, "result"    # Lorg/opencv/core/Mat;

    .line 1594
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->PCABackProject_0(JJJJ)V

    .line 1595
    return-void
.end method

.method private static native PCABackProject_0(JJJJ)V
.end method

.method public static PCACompute(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "data"    # Lorg/opencv/core/Mat;
    .param p1, "mean"    # Lorg/opencv/core/Mat;
    .param p2, "eigenvectors"    # Lorg/opencv/core/Mat;

    .line 1681
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->PCACompute_2(JJJ)V

    .line 1682
    return-void
.end method

.method public static PCACompute(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;D)V
    .locals 8
    .param p0, "data"    # Lorg/opencv/core/Mat;
    .param p1, "mean"    # Lorg/opencv/core/Mat;
    .param p2, "eigenvectors"    # Lorg/opencv/core/Mat;
    .param p3, "retainedVariance"    # D

    .line 1655
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v6, p3

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->PCACompute_0(JJJD)V

    .line 1656
    return-void
.end method

.method public static PCACompute(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 7
    .param p0, "data"    # Lorg/opencv/core/Mat;
    .param p1, "mean"    # Lorg/opencv/core/Mat;
    .param p2, "eigenvectors"    # Lorg/opencv/core/Mat;
    .param p3, "maxComponents"    # I

    .line 1671
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/opencv/core/Core;->PCACompute_1(JJJI)V

    .line 1672
    return-void
.end method

.method public static PCACompute2(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "data"    # Lorg/opencv/core/Mat;
    .param p1, "mean"    # Lorg/opencv/core/Mat;
    .param p2, "eigenvectors"    # Lorg/opencv/core/Mat;
    .param p3, "eigenvalues"    # Lorg/opencv/core/Mat;

    .line 1639
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->PCACompute2_2(JJJJ)V

    .line 1640
    return-void
.end method

.method public static PCACompute2(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;D)V
    .locals 10
    .param p0, "data"    # Lorg/opencv/core/Mat;
    .param p1, "mean"    # Lorg/opencv/core/Mat;
    .param p2, "eigenvectors"    # Lorg/opencv/core/Mat;
    .param p3, "eigenvalues"    # Lorg/opencv/core/Mat;
    .param p4, "retainedVariance"    # D

    .line 1611
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v8, p4

    invoke-static/range {v0 .. v9}, Lorg/opencv/core/Core;->PCACompute2_0(JJJJD)V

    .line 1612
    return-void
.end method

.method public static PCACompute2(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 9
    .param p0, "data"    # Lorg/opencv/core/Mat;
    .param p1, "mean"    # Lorg/opencv/core/Mat;
    .param p2, "eigenvectors"    # Lorg/opencv/core/Mat;
    .param p3, "eigenvalues"    # Lorg/opencv/core/Mat;
    .param p4, "maxComponents"    # I

    .line 1628
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move v8, p4

    invoke-static/range {v0 .. v8}, Lorg/opencv/core/Core;->PCACompute2_1(JJJJI)V

    .line 1629
    return-void
.end method

.method private static native PCACompute2_0(JJJJD)V
.end method

.method private static native PCACompute2_1(JJJJI)V
.end method

.method private static native PCACompute2_2(JJJJ)V
.end method

.method private static native PCACompute_0(JJJD)V
.end method

.method private static native PCACompute_1(JJJI)V
.end method

.method private static native PCACompute_2(JJJ)V
.end method

.method public static PCAProject(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "data"    # Lorg/opencv/core/Mat;
    .param p1, "mean"    # Lorg/opencv/core/Mat;
    .param p2, "eigenvectors"    # Lorg/opencv/core/Mat;
    .param p3, "result"    # Lorg/opencv/core/Mat;

    .line 1697
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->PCAProject_0(JJJJ)V

    .line 1698
    return-void
.end method

.method private static native PCAProject_0(JJJJ)V
.end method

.method public static PSNR(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)D
    .locals 4
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;

    .line 779
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->PSNR_1(JJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public static PSNR(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;D)D
    .locals 6
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "R"    # D

    .line 756
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->PSNR_0(JJD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static native PSNR_0(JJD)D
.end method

.method private static native PSNR_1(JJ)D
.end method

.method public static SVBackSubst(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 10
    .param p0, "w"    # Lorg/opencv/core/Mat;
    .param p1, "u"    # Lorg/opencv/core/Mat;
    .param p2, "vt"    # Lorg/opencv/core/Mat;
    .param p3, "rhs"    # Lorg/opencv/core/Mat;
    .param p4, "dst"    # Lorg/opencv/core/Mat;

    .line 1714
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, p4, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v9}, Lorg/opencv/core/Core;->SVBackSubst_0(JJJJJ)V

    .line 1715
    return-void
.end method

.method private static native SVBackSubst_0(JJJJJ)V
.end method

.method public static SVDecomp(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "w"    # Lorg/opencv/core/Mat;
    .param p2, "u"    # Lorg/opencv/core/Mat;
    .param p3, "vt"    # Lorg/opencv/core/Mat;

    .line 1742
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->SVDecomp_1(JJJJ)V

    .line 1743
    return-void
.end method

.method public static SVDecomp(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 9
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "w"    # Lorg/opencv/core/Mat;
    .param p2, "u"    # Lorg/opencv/core/Mat;
    .param p3, "vt"    # Lorg/opencv/core/Mat;
    .param p4, "flags"    # I

    .line 1731
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move v8, p4

    invoke-static/range {v0 .. v8}, Lorg/opencv/core/Core;->SVDecomp_0(JJJJI)V

    .line 1732
    return-void
.end method

.method private static native SVDecomp_0(JJJJI)V
.end method

.method private static native SVDecomp_1(JJJJ)V
.end method

.method public static absdiff(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .line 1775
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->absdiff_0(JJJ)V

    .line 1776
    return-void
.end method

.method public static absdiff(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;)V
    .locals 12
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .line 1784
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v2, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    iget-object v6, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    iget-object v8, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x3

    aget-wide v8, v8, v9

    iget-wide v10, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v11}, Lorg/opencv/core/Core;->absdiff_1(JDDDDJ)V

    .line 1785
    return-void
.end method

.method private static native absdiff_0(JJJ)V
.end method

.method private static native absdiff_1(JDDDDJ)V
.end method

.method public static add(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .line 1933
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->add_2(JJJ)V

    .line 1934
    return-void
.end method

.method public static add(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "mask"    # Lorg/opencv/core/Mat;

    .line 1886
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->add_1(JJJJ)V

    .line 1887
    return-void
.end method

.method public static add(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 9
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "mask"    # Lorg/opencv/core/Mat;
    .param p4, "dtype"    # I

    .line 1838
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move v8, p4

    invoke-static/range {v0 .. v8}, Lorg/opencv/core/Core;->add_0(JJJJI)V

    .line 1839
    return-void
.end method

.method public static add(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;)V
    .locals 12
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .line 1950
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v2, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    iget-object v6, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    iget-object v8, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x3

    aget-wide v8, v8, v9

    iget-wide v10, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v11}, Lorg/opencv/core/Core;->add_5(JDDDDJ)V

    .line 1951
    return-void
.end method

.method public static add(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 17
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "mask"    # Lorg/opencv/core/Mat;

    move-object/from16 v0, p1

    .line 1946
    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    iget-object v6, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    iget-object v8, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    iget-object v10, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    move-object/from16 v14, p2

    iget-wide v12, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p3

    iget-wide v0, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v14, v0

    invoke-static/range {v2 .. v15}, Lorg/opencv/core/Core;->add_4(JDDDDJJ)V

    .line 1947
    return-void
.end method

.method public static add(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 18
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "mask"    # Lorg/opencv/core/Mat;
    .param p4, "dtype"    # I

    move-object/from16 v0, p1

    .line 1942
    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    iget-object v6, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    iget-object v8, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    iget-object v10, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    move-object/from16 v14, p2

    iget-wide v12, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p3

    iget-wide v0, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v14, v0

    move/from16 v16, p4

    invoke-static/range {v2 .. v16}, Lorg/opencv/core/Core;->add_3(JDDDDJJI)V

    .line 1943
    return-void
.end method

.method public static addSamplesDataSearchPath(Ljava/lang/String;)V
    .locals 0
    .param p0, "path"    # Ljava/lang/String;

    .line 5660
    invoke-static {p0}, Lorg/opencv/core/Core;->addSamplesDataSearchPath_0(Ljava/lang/String;)V

    .line 5661
    return-void
.end method

.method private static native addSamplesDataSearchPath_0(Ljava/lang/String;)V
.end method

.method public static addSamplesDataSearchSubDirectory(Ljava/lang/String;)V
    .locals 0
    .param p0, "subdir"    # Ljava/lang/String;

    .line 5677
    invoke-static {p0}, Lorg/opencv/core/Core;->addSamplesDataSearchSubDirectory_0(Ljava/lang/String;)V

    .line 5678
    return-void
.end method

.method private static native addSamplesDataSearchSubDirectory_0(Ljava/lang/String;)V
.end method

.method public static addWeighted(Lorg/opencv/core/Mat;DLorg/opencv/core/Mat;DDLorg/opencv/core/Mat;)V
    .locals 15
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "alpha"    # D
    .param p3, "src2"    # Lorg/opencv/core/Mat;
    .param p4, "beta"    # D
    .param p6, "gamma"    # D
    .param p8, "dst"    # Lorg/opencv/core/Mat;

    .line 2008
    move-object v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p3

    iget-wide v5, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p8

    iget-wide v11, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v3, p1

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    invoke-static/range {v1 .. v12}, Lorg/opencv/core/Core;->addWeighted_1(JDJDDJ)V

    .line 2009
    return-void
.end method

.method public static addWeighted(Lorg/opencv/core/Mat;DLorg/opencv/core/Mat;DDLorg/opencv/core/Mat;I)V
    .locals 16
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "alpha"    # D
    .param p3, "src2"    # Lorg/opencv/core/Mat;
    .param p4, "beta"    # D
    .param p6, "gamma"    # D
    .param p8, "dst"    # Lorg/opencv/core/Mat;
    .param p9, "dtype"    # I

    .line 1982
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v5, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p8

    iget-wide v11, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v3, p1

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move/from16 v13, p9

    invoke-static/range {v1 .. v13}, Lorg/opencv/core/Core;->addWeighted_0(JDJDDJI)V

    .line 1983
    return-void
.end method

.method private static native addWeighted_0(JDJDDJI)V
.end method

.method private static native addWeighted_1(JDJDDJ)V
.end method

.method private static native add_0(JJJJI)V
.end method

.method private static native add_1(JJJJ)V
.end method

.method private static native add_2(JJJ)V
.end method

.method private static native add_3(JDDDDJJI)V
.end method

.method private static native add_4(JDDDDJJ)V
.end method

.method private static native add_5(JDDDDJ)V
.end method

.method public static batchDistance(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ILorg/opencv/core/Mat;)V
    .locals 9
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dist"    # Lorg/opencv/core/Mat;
    .param p3, "dtype"    # I
    .param p4, "nidx"    # Lorg/opencv/core/Mat;

    .line 2118
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, p4, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    invoke-static/range {v0 .. v8}, Lorg/opencv/core/Core;->batchDistance_5(JJJIJ)V

    .line 2119
    return-void
.end method

.method public static batchDistance(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ILorg/opencv/core/Mat;I)V
    .locals 10
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dist"    # Lorg/opencv/core/Mat;
    .param p3, "dtype"    # I
    .param p4, "nidx"    # Lorg/opencv/core/Mat;
    .param p5, "normType"    # I

    .line 2103
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, p4, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    move v9, p5

    invoke-static/range {v0 .. v9}, Lorg/opencv/core/Core;->batchDistance_4(JJJIJI)V

    .line 2104
    return-void
.end method

.method public static batchDistance(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ILorg/opencv/core/Mat;II)V
    .locals 15
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dist"    # Lorg/opencv/core/Mat;
    .param p3, "dtype"    # I
    .param p4, "nidx"    # Lorg/opencv/core/Mat;
    .param p5, "normType"    # I
    .param p6, "K"    # I

    .line 2087
    move-object v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p1

    iget-wide v3, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v5, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p4

    iget-wide v8, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v7, p3

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-static/range {v1 .. v11}, Lorg/opencv/core/Core;->batchDistance_3(JJJIJII)V

    .line 2088
    return-void
.end method

.method public static batchDistance(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ILorg/opencv/core/Mat;IILorg/opencv/core/Mat;)V
    .locals 18
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dist"    # Lorg/opencv/core/Mat;
    .param p3, "dtype"    # I
    .param p4, "nidx"    # Lorg/opencv/core/Mat;
    .param p5, "normType"    # I
    .param p6, "K"    # I
    .param p7, "mask"    # Lorg/opencv/core/Mat;

    .line 2070
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v3, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p2

    iget-wide v5, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p4

    iget-wide v8, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p7

    iget-wide v10, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v7, p3

    move-wide/from16 v16, v10

    move/from16 v10, p5

    move/from16 v11, p6

    move-wide/from16 v12, v16

    invoke-static/range {v1 .. v13}, Lorg/opencv/core/Core;->batchDistance_2(JJJIJIIJ)V

    .line 2071
    return-void
.end method

.method public static batchDistance(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ILorg/opencv/core/Mat;IILorg/opencv/core/Mat;I)V
    .locals 18
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dist"    # Lorg/opencv/core/Mat;
    .param p3, "dtype"    # I
    .param p4, "nidx"    # Lorg/opencv/core/Mat;
    .param p5, "normType"    # I
    .param p6, "K"    # I
    .param p7, "mask"    # Lorg/opencv/core/Mat;
    .param p8, "update"    # I

    .line 2052
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v3, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v5, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p4

    iget-wide v8, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p7

    iget-wide v10, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v7, p3

    move-wide/from16 v16, v10

    move/from16 v10, p5

    move/from16 v11, p6

    move-wide/from16 v12, v16

    move/from16 v14, p8

    invoke-static/range {v1 .. v14}, Lorg/opencv/core/Core;->batchDistance_1(JJJIJIIJI)V

    .line 2053
    return-void
.end method

.method public static batchDistance(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ILorg/opencv/core/Mat;IILorg/opencv/core/Mat;IZ)V
    .locals 18
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dist"    # Lorg/opencv/core/Mat;
    .param p3, "dtype"    # I
    .param p4, "nidx"    # Lorg/opencv/core/Mat;
    .param p5, "normType"    # I
    .param p6, "K"    # I
    .param p7, "mask"    # Lorg/opencv/core/Mat;
    .param p8, "update"    # I
    .param p9, "crosscheck"    # Z

    .line 2033
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v3, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v5, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p4

    iget-wide v8, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p7

    iget-wide v10, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v7, p3

    move-wide/from16 v16, v10

    move/from16 v10, p5

    move/from16 v11, p6

    move-wide/from16 v12, v16

    move/from16 v14, p8

    move/from16 v15, p9

    invoke-static/range {v1 .. v15}, Lorg/opencv/core/Core;->batchDistance_0(JJJIJIIJIZ)V

    .line 2034
    return-void
.end method

.method private static native batchDistance_0(JJJIJIIJIZ)V
.end method

.method private static native batchDistance_1(JJJIJIIJI)V
.end method

.method private static native batchDistance_2(JJJIJIIJ)V
.end method

.method private static native batchDistance_3(JJJIJII)V
.end method

.method private static native batchDistance_4(JJJIJI)V
.end method

.method private static native batchDistance_5(JJJIJ)V
.end method

.method public static bitwise_and(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .line 2182
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->bitwise_and_1(JJJ)V

    .line 2183
    return-void
.end method

.method public static bitwise_and(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "mask"    # Lorg/opencv/core/Mat;

    .line 2153
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->bitwise_and_0(JJJJ)V

    .line 2154
    return-void
.end method

.method private static native bitwise_and_0(JJJJ)V
.end method

.method private static native bitwise_and_1(JJJ)V
.end method

.method public static bitwise_not(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .line 2224
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->bitwise_not_1(JJ)V

    .line 2225
    return-void
.end method

.method public static bitwise_not(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "mask"    # Lorg/opencv/core/Mat;

    .line 2206
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->bitwise_not_0(JJJ)V

    .line 2207
    return-void
.end method

.method private static native bitwise_not_0(JJJ)V
.end method

.method private static native bitwise_not_1(JJ)V
.end method

.method public static bitwise_or(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .line 2286
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->bitwise_or_1(JJJ)V

    .line 2287
    return-void
.end method

.method public static bitwise_or(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "mask"    # Lorg/opencv/core/Mat;

    .line 2258
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->bitwise_or_0(JJJJ)V

    .line 2259
    return-void
.end method

.method private static native bitwise_or_0(JJJJ)V
.end method

.method private static native bitwise_or_1(JJJ)V
.end method

.method public static bitwise_xor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .line 2350
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->bitwise_xor_1(JJJ)V

    .line 2351
    return-void
.end method

.method public static bitwise_xor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "mask"    # Lorg/opencv/core/Mat;

    .line 2321
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->bitwise_xor_0(JJJJ)V

    .line 2322
    return-void
.end method

.method private static native bitwise_xor_0(JJJJ)V
.end method

.method private static native bitwise_xor_1(JJJ)V
.end method

.method public static borderInterpolate(III)I
    .locals 1
    .param p0, "p"    # I
    .param p1, "len"    # I
    .param p2, "borderType"    # I

    .line 1276
    invoke-static {p0, p1, p2}, Lorg/opencv/core/Core;->borderInterpolate_0(III)I

    move-result v0

    return v0
.end method

.method private static native borderInterpolate_0(III)I
.end method

.method public static calcCovarMatrix(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 7
    .param p0, "samples"    # Lorg/opencv/core/Mat;
    .param p1, "covar"    # Lorg/opencv/core/Mat;
    .param p2, "mean"    # Lorg/opencv/core/Mat;
    .param p3, "flags"    # I

    .line 2380
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/opencv/core/Core;->calcCovarMatrix_1(JJJI)V

    .line 2381
    return-void
.end method

.method public static calcCovarMatrix(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;II)V
    .locals 8
    .param p0, "samples"    # Lorg/opencv/core/Mat;
    .param p1, "covar"    # Lorg/opencv/core/Mat;
    .param p2, "mean"    # Lorg/opencv/core/Mat;
    .param p3, "flags"    # I
    .param p4, "ctype"    # I

    .line 2368
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->calcCovarMatrix_0(JJJII)V

    .line 2369
    return-void
.end method

.method private static native calcCovarMatrix_0(JJJII)V
.end method

.method private static native calcCovarMatrix_1(JJJI)V
.end method

.method public static cartToPolar(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "x"    # Lorg/opencv/core/Mat;
    .param p1, "y"    # Lorg/opencv/core/Mat;
    .param p2, "magnitude"    # Lorg/opencv/core/Mat;
    .param p3, "angle"    # Lorg/opencv/core/Mat;

    .line 2430
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->cartToPolar_1(JJJJ)V

    .line 2431
    return-void
.end method

.method public static cartToPolar(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Z)V
    .locals 9
    .param p0, "x"    # Lorg/opencv/core/Mat;
    .param p1, "y"    # Lorg/opencv/core/Mat;
    .param p2, "magnitude"    # Lorg/opencv/core/Mat;
    .param p3, "angle"    # Lorg/opencv/core/Mat;
    .param p4, "angleInDegrees"    # Z

    .line 2408
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move v8, p4

    invoke-static/range {v0 .. v8}, Lorg/opencv/core/Core;->cartToPolar_0(JJJJZ)V

    .line 2409
    return-void
.end method

.method private static native cartToPolar_0(JJJJZ)V
.end method

.method private static native cartToPolar_1(JJJJ)V
.end method

.method public static checkRange(Lorg/opencv/core/Mat;)Z
    .locals 2
    .param p0, "a"    # Lorg/opencv/core/Mat;

    .line 570
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/core/Core;->checkRange_4(J)Z

    move-result v0

    return v0
.end method

.method public static checkRange(Lorg/opencv/core/Mat;Z)Z
    .locals 2
    .param p0, "a"    # Lorg/opencv/core/Mat;
    .param p1, "quiet"    # Z

    .line 549
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/core/Core;->checkRange_2(JZ)Z

    move-result v0

    return v0
.end method

.method public static checkRange(Lorg/opencv/core/Mat;ZD)Z
    .locals 2
    .param p0, "a"    # Lorg/opencv/core/Mat;
    .param p1, "quiet"    # Z
    .param p2, "minVal"    # D

    .line 527
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, p1, p2, p3}, Lorg/opencv/core/Core;->checkRange_1(JZD)Z

    move-result v0

    return v0
.end method

.method public static checkRange(Lorg/opencv/core/Mat;ZDD)Z
    .locals 7
    .param p0, "a"    # Lorg/opencv/core/Mat;
    .param p1, "quiet"    # Z
    .param p2, "minVal"    # D
    .param p4, "maxVal"    # D

    .line 504
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lorg/opencv/core/Core;->checkRange_0(JZDD)Z

    move-result v0

    return v0
.end method

.method private static native checkRange_0(JZDD)Z
.end method

.method private static native checkRange_1(JZD)Z
.end method

.method private static native checkRange_2(JZ)Z
.end method

.method private static native checkRange_4(J)Z
.end method

.method public static compare(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 7
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "cmpop"    # I

    .line 2466
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/opencv/core/Core;->compare_0(JJJI)V

    .line 2467
    return-void
.end method

.method public static compare(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;I)V
    .locals 16
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "cmpop"    # I

    move-object/from16 v0, p1

    .line 2475
    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    iget-object v6, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    iget-object v8, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    iget-object v10, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    move-object/from16 v15, p2

    iget-wide v12, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v14, p3

    invoke-static/range {v2 .. v14}, Lorg/opencv/core/Core;->compare_1(JDDDDJI)V

    .line 2476
    return-void
.end method

.method private static native compare_0(JJJI)V
.end method

.method private static native compare_1(JDDDDJI)V
.end method

.method public static completeSymm(Lorg/opencv/core/Mat;)V
    .locals 2
    .param p0, "m"    # Lorg/opencv/core/Mat;

    .line 2529
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/core/Core;->completeSymm_1(J)V

    .line 2530
    return-void
.end method

.method public static completeSymm(Lorg/opencv/core/Mat;Z)V
    .locals 2
    .param p0, "m"    # Lorg/opencv/core/Mat;
    .param p1, "lowerToUpper"    # Z

    .line 2505
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/core/Core;->completeSymm_0(JZ)V

    .line 2506
    return-void
.end method

.method private static native completeSymm_0(JZ)V
.end method

.method private static native completeSymm_1(J)V
.end method

.method public static convertFp16(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .line 2549
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->convertFp16_0(JJ)V

    .line 2550
    return-void
.end method

.method private static native convertFp16_0(JJ)V
.end method

.method public static convertScaleAbs(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .line 2641
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->convertScaleAbs_2(JJ)V

    .line 2642
    return-void
.end method

.method public static convertScaleAbs(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;D)V
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "alpha"    # D

    .line 2613
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->convertScaleAbs_1(JJD)V

    .line 2614
    return-void
.end method

.method public static convertScaleAbs(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DD)V
    .locals 8
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "alpha"    # D
    .param p4, "beta"    # D

    .line 2584
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->convertScaleAbs_0(JJDD)V

    .line 2585
    return-void
.end method

.method private static native convertScaleAbs_0(JJDD)V
.end method

.method private static native convertScaleAbs_1(JJD)V
.end method

.method private static native convertScaleAbs_2(JJ)V
.end method

.method public static copyMakeBorder(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;IIIII)V
    .locals 9
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "left"    # I
    .param p5, "right"    # I
    .param p6, "borderType"    # I

    .line 2741
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lorg/opencv/core/Core;->copyMakeBorder_1(JJIIIII)V

    .line 2742
    return-void
.end method

.method public static copyMakeBorder(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;IIIIILorg/opencv/core/Scalar;)V
    .locals 20
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "left"    # I
    .param p5, "right"    # I
    .param p6, "borderType"    # I
    .param p7, "value"    # Lorg/opencv/core/Scalar;

    .line 2694
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v4, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v6, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x0

    aget-wide v11, v6, v7

    iget-object v6, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x1

    aget-wide v13, v6, v7

    iget-object v6, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v16, v6, v7

    iget-object v6, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x3

    aget-wide v18, v6, v7

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    invoke-static/range {v2 .. v18}, Lorg/opencv/core/Core;->copyMakeBorder_0(JJIIIIIDDDD)V

    .line 2695
    return-void
.end method

.method private static native copyMakeBorder_0(JJIIIIIDDDD)V
.end method

.method private static native copyMakeBorder_1(JJIIIII)V
.end method

.method public static copyTo(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "mask"    # Lorg/opencv/core/Mat;

    .line 2760
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->copyTo_0(JJJ)V

    .line 2761
    return-void
.end method

.method private static native copyTo_0(JJJ)V
.end method

.method public static countNonZero(Lorg/opencv/core/Mat;)I
    .locals 2
    .param p0, "src"    # Lorg/opencv/core/Mat;

    .line 1294
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/core/Core;->countNonZero_0(J)I

    move-result v0

    return v0
.end method

.method private static native countNonZero_0(J)I
.end method

.method public static cubeRoot(F)F
    .locals 1
    .param p0, "val"    # F

    .line 1226
    invoke-static {p0}, Lorg/opencv/core/Core;->cubeRoot_0(F)F

    move-result v0

    return v0
.end method

.method private static native cubeRoot_0(F)F
.end method

.method public static dct(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .line 2892
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->dct_1(JJ)V

    .line 2893
    return-void
.end method

.method public static dct(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "flags"    # I

    .line 2829
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3, p2}, Lorg/opencv/core/Core;->dct_0(JJI)V

    .line 2830
    return-void
.end method

.method private static native dct_0(JJI)V
.end method

.method private static native dct_1(JJ)V
.end method

.method public static determinant(Lorg/opencv/core/Mat;)D
    .locals 2
    .param p0, "mtx"    # Lorg/opencv/core/Mat;

    .line 803
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/core/Core;->determinant_0(J)D

    move-result-wide v0

    return-wide v0
.end method

.method private static native determinant_0(J)D
.end method

.method public static dft(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .line 3428
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->dft_2(JJ)V

    .line 3429
    return-void
.end method

.method public static dft(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "flags"    # I

    .line 3252
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3, p2}, Lorg/opencv/core/Core;->dft_1(JJI)V

    .line 3253
    return-void
.end method

.method public static dft(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;II)V
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "flags"    # I
    .param p3, "nonzeroRows"    # I

    .line 3075
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->dft_0(JJII)V

    .line 3076
    return-void
.end method

.method private static native dft_0(JJII)V
.end method

.method private static native dft_1(JJI)V
.end method

.method private static native dft_2(JJ)V
.end method

.method public static divide(DLorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "scale"    # D
    .param p2, "src2"    # Lorg/opencv/core/Mat;
    .param p3, "dst"    # Lorg/opencv/core/Mat;

    .line 3550
    iget-wide v2, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->divide_7(DJJ)V

    .line 3551
    return-void
.end method

.method public static divide(DLorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 7
    .param p0, "scale"    # D
    .param p2, "src2"    # Lorg/opencv/core/Mat;
    .param p3, "dst"    # Lorg/opencv/core/Mat;
    .param p4, "dtype"    # I

    .line 3546
    iget-wide v2, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v0, p0

    move v6, p4

    invoke-static/range {v0 .. v6}, Lorg/opencv/core/Core;->divide_6(DJJI)V

    .line 3547
    return-void
.end method

.method public static divide(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .line 3520
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->divide_2(JJJ)V

    .line 3521
    return-void
.end method

.method public static divide(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;D)V
    .locals 8
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "scale"    # D

    .line 3492
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v6, p3

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->divide_1(JJJD)V

    .line 3493
    return-void
.end method

.method public static divide(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DI)V
    .locals 9
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "scale"    # D
    .param p5, "dtype"    # I

    .line 3463
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v6, p3

    move v8, p5

    invoke-static/range {v0 .. v8}, Lorg/opencv/core/Core;->divide_0(JJJDI)V

    .line 3464
    return-void
.end method

.method public static divide(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;)V
    .locals 12
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .line 3537
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v2, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    iget-object v6, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    iget-object v8, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x3

    aget-wide v8, v8, v9

    iget-wide v10, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v11}, Lorg/opencv/core/Core;->divide_5(JDDDDJ)V

    .line 3538
    return-void
.end method

.method public static divide(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;D)V
    .locals 16
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "scale"    # D

    move-object/from16 v0, p1

    .line 3533
    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    iget-object v6, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    iget-object v8, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    iget-object v10, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    move-object/from16 v14, p2

    iget-wide v12, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v14, p3

    invoke-static/range {v2 .. v15}, Lorg/opencv/core/Core;->divide_4(JDDDDJD)V

    .line 3534
    return-void
.end method

.method public static divide(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;DI)V
    .locals 17
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "scale"    # D
    .param p5, "dtype"    # I

    move-object/from16 v0, p1

    .line 3529
    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    iget-object v6, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    iget-object v8, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    iget-object v10, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    move-object/from16 v14, p2

    iget-wide v12, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v14, p3

    move/from16 v16, p5

    invoke-static/range {v2 .. v16}, Lorg/opencv/core/Core;->divide_3(JDDDDJDI)V

    .line 3530
    return-void
.end method

.method private static native divide_0(JJJDI)V
.end method

.method private static native divide_1(JJJD)V
.end method

.method private static native divide_2(JJJ)V
.end method

.method private static native divide_3(JDDDDJDI)V
.end method

.method private static native divide_4(JDDDDJD)V
.end method

.method private static native divide_5(JDDDDJ)V
.end method

.method private static native divide_6(DJJI)V
.end method

.method private static native divide_7(DJJ)V
.end method

.method public static eigen(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Z
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "eigenvalues"    # Lorg/opencv/core/Mat;

    .line 624
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->eigen_1(JJ)Z

    move-result v0

    return v0
.end method

.method public static eigen(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Z
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "eigenvalues"    # Lorg/opencv/core/Mat;
    .param p2, "eigenvectors"    # Lorg/opencv/core/Mat;

    .line 600
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->eigen_0(JJJ)Z

    move-result v0

    return v0
.end method

.method public static eigenNonSymmetric(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "eigenvalues"    # Lorg/opencv/core/Mat;
    .param p2, "eigenvectors"    # Lorg/opencv/core/Mat;

    .line 3574
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->eigenNonSymmetric_0(JJJ)V

    .line 3575
    return-void
.end method

.method private static native eigenNonSymmetric_0(JJJ)V
.end method

.method private static native eigen_0(JJJ)Z
.end method

.method private static native eigen_1(JJ)Z
.end method

.method public static exp(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .line 3598
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->exp_0(JJ)V

    .line 3599
    return-void
.end method

.method private static native exp_0(JJ)V
.end method

.method public static extractChannel(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "coi"    # I

    .line 3614
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3, p2}, Lorg/opencv/core/Core;->extractChannel_0(JJI)V

    .line 3615
    return-void
.end method

.method private static native extractChannel_0(JJI)V
.end method

.method public static fastAtan2(FF)F
    .locals 1
    .param p0, "y"    # F
    .param p1, "x"    # F

    .line 1244
    invoke-static {p0, p1}, Lorg/opencv/core/Core;->fastAtan2_0(FF)F

    move-result v0

    return v0
.end method

.method private static native fastAtan2_0(FF)F
.end method

.method public static findFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "relative_path"    # Ljava/lang/String;

    .line 462
    invoke-static {p0}, Lorg/opencv/core/Core;->findFile_2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findFile(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "relative_path"    # Ljava/lang/String;
    .param p1, "required"    # Z

    .line 436
    invoke-static {p0, p1}, Lorg/opencv/core/Core;->findFile_1(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findFile(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 1
    .param p0, "relative_path"    # Ljava/lang/String;
    .param p1, "required"    # Z
    .param p2, "silentMode"    # Z

    .line 409
    invoke-static {p0, p1, p2}, Lorg/opencv/core/Core;->findFile_0(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findFileOrKeep(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "relative_path"    # Ljava/lang/String;

    .line 475
    invoke-static {p0}, Lorg/opencv/core/Core;->findFileOrKeep_1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findFileOrKeep(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "relative_path"    # Ljava/lang/String;
    .param p1, "silentMode"    # Z

    .line 471
    invoke-static {p0, p1}, Lorg/opencv/core/Core;->findFileOrKeep_0(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native findFileOrKeep_0(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method private static native findFileOrKeep_1(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native findFile_0(Ljava/lang/String;ZZ)Ljava/lang/String;
.end method

.method private static native findFile_1(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method private static native findFile_2(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static findNonZero(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "idx"    # Lorg/opencv/core/Mat;

    .line 3650
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->findNonZero_0(JJ)V

    .line 3651
    return-void
.end method

.method private static native findNonZero_0(JJ)V
.end method

.method public static flip(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "flipCode"    # I

    .line 3692
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3, p2}, Lorg/opencv/core/Core;->flip_0(JJI)V

    .line 3693
    return-void
.end method

.method private static native flip_0(JJI)V
.end method

.method public static gemm(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DLorg/opencv/core/Mat;DLorg/opencv/core/Mat;)V
    .locals 16
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "alpha"    # D
    .param p4, "src3"    # Lorg/opencv/core/Mat;
    .param p5, "beta"    # D
    .param p7, "dst"    # Lorg/opencv/core/Mat;

    .line 3762
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p1

    iget-wide v3, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p4

    iget-wide v7, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p7

    iget-wide v11, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v5, p2

    move-wide/from16 v9, p5

    invoke-static/range {v1 .. v12}, Lorg/opencv/core/Core;->gemm_1(JJDJDJ)V

    .line 3763
    return-void
.end method

.method public static gemm(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DLorg/opencv/core/Mat;DLorg/opencv/core/Mat;I)V
    .locals 16
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "alpha"    # D
    .param p4, "src3"    # Lorg/opencv/core/Mat;
    .param p5, "beta"    # D
    .param p7, "dst"    # Lorg/opencv/core/Mat;
    .param p8, "flags"    # I

    .line 3730
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v3, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p4

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p7

    iget-wide v11, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v5, p2

    move-wide/from16 v9, p5

    move/from16 v13, p8

    invoke-static/range {v1 .. v13}, Lorg/opencv/core/Core;->gemm_0(JJDJDJI)V

    .line 3731
    return-void
.end method

.method private static native gemm_0(JJDJDJI)V
.end method

.method private static native gemm_1(JJDJDJ)V
.end method

.method public static getBuildInformation()Ljava/lang/String;
    .locals 1

    .line 334
    invoke-static {}, Lorg/opencv/core/Core;->getBuildInformation_0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native getBuildInformation_0()Ljava/lang/String;
.end method

.method public static getCPUFeaturesLine()Ljava/lang/String;
    .locals 1

    .line 1554
    invoke-static {}, Lorg/opencv/core/Core;->getCPUFeaturesLine_0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native getCPUFeaturesLine_0()Ljava/lang/String;
.end method

.method public static getCPUTickCount()J
    .locals 2

    .line 1507
    invoke-static {}, Lorg/opencv/core/Core;->getCPUTickCount_0()J

    move-result-wide v0

    return-wide v0
.end method

.method private static native getCPUTickCount_0()J
.end method

.method public static getHardwareFeatureName(I)Ljava/lang/String;
    .locals 1
    .param p0, "feature"    # I

    .line 350
    invoke-static {p0}, Lorg/opencv/core/Core;->getHardwareFeatureName_0(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native getHardwareFeatureName_0(I)Ljava/lang/String;
.end method

.method public static getIppVersion()Ljava/lang/String;
    .locals 1

    .line 376
    invoke-static {}, Lorg/opencv/core/Core;->getIppVersion_0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native getIppVersion_0()Ljava/lang/String;
.end method

.method private static getNativeLibraryName()Ljava/lang/String;
    .locals 1

    .line 20
    const-string v0, "opencv_java440"

    return-object v0
.end method

.method public static getNumThreads()I
    .locals 1

    .line 1333
    invoke-static {}, Lorg/opencv/core/Core;->getNumThreads_0()I

    move-result v0

    return v0
.end method

.method private static native getNumThreads_0()I
.end method

.method public static getNumberOfCPUs()I
    .locals 1

    .line 1346
    invoke-static {}, Lorg/opencv/core/Core;->getNumberOfCPUs_0()I

    move-result v0

    return v0
.end method

.method private static native getNumberOfCPUs_0()I
.end method

.method public static getOptimalDFTSize(I)I
    .locals 1
    .param p0, "vecsize"    # I

    .line 1378
    invoke-static {p0}, Lorg/opencv/core/Core;->getOptimalDFTSize_0(I)I

    move-result v0

    return v0
.end method

.method private static native getOptimalDFTSize_0(I)I
.end method

.method public static getThreadNum()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1416
    invoke-static {}, Lorg/opencv/core/Core;->getThreadNum_0()I

    move-result v0

    return v0
.end method

.method private static native getThreadNum_0()I
.end method

.method public static getTickCount()J
    .locals 2

    .line 1525
    invoke-static {}, Lorg/opencv/core/Core;->getTickCount_0()J

    move-result-wide v0

    return-wide v0
.end method

.method private static native getTickCount_0()J
.end method

.method public static getTickFrequency()D
    .locals 2

    .line 825
    invoke-static {}, Lorg/opencv/core/Core;->getTickFrequency_0()D

    move-result-wide v0

    return-wide v0
.end method

.method private static native getTickFrequency_0()D
.end method

.method private static getVersion()Ljava/lang/String;
    .locals 1

    .line 19
    const-string v0, "4.4.0"

    return-object v0
.end method

.method public static getVersionMajor()I
    .locals 1

    .line 1429
    invoke-static {}, Lorg/opencv/core/Core;->getVersionMajor_0()I

    move-result v0

    return v0
.end method

.method private static getVersionMajorJ()I
    .locals 1

    .line 21
    const/4 v0, 0x4

    return v0
.end method

.method private static native getVersionMajor_0()I
.end method

.method public static getVersionMinor()I
    .locals 1

    .line 1442
    invoke-static {}, Lorg/opencv/core/Core;->getVersionMinor_0()I

    move-result v0

    return v0
.end method

.method private static getVersionMinorJ()I
    .locals 1

    .line 22
    const/4 v0, 0x4

    return v0
.end method

.method private static native getVersionMinor_0()I
.end method

.method public static getVersionRevision()I
    .locals 1

    .line 1455
    invoke-static {}, Lorg/opencv/core/Core;->getVersionRevision_0()I

    move-result v0

    return v0
.end method

.method private static getVersionRevisionJ()I
    .locals 1

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method private static native getVersionRevision_0()I
.end method

.method private static getVersionStatusJ()Ljava/lang/String;
    .locals 1

    .line 24
    const-string v0, ""

    return-object v0
.end method

.method public static getVersionString()Ljava/lang/String;
    .locals 1

    .line 367
    invoke-static {}, Lorg/opencv/core/Core;->getVersionString_0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native getVersionString_0()Ljava/lang/String;
.end method

.method public static hconcat(Ljava/util/List;Lorg/opencv/core/Mat;)V
    .locals 5
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            ")V"
        }
    .end annotation

    .line 3790
    .local p0, "src":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 3791
    .local v0, "src_mat":Lorg/opencv/core/Mat;
    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v1, v2, v3, v4}, Lorg/opencv/core/Core;->hconcat_0(JJ)V

    .line 3792
    return-void
.end method

.method private static native hconcat_0(JJ)V
.end method

.method public static idct(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .line 3821
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->idct_1(JJ)V

    .line 3822
    return-void
.end method

.method public static idct(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "flags"    # I

    .line 3809
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3, p2}, Lorg/opencv/core/Core;->idct_0(JJI)V

    .line 3810
    return-void
.end method

.method private static native idct_0(JJI)V
.end method

.method private static native idct_1(JJ)V
.end method

.method public static idft(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .line 3874
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->idft_2(JJ)V

    .line 3875
    return-void
.end method

.method public static idft(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "flags"    # I

    .line 3859
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3, p2}, Lorg/opencv/core/Core;->idft_1(JJI)V

    .line 3860
    return-void
.end method

.method public static idft(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;II)V
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "flags"    # I
    .param p3, "nonzeroRows"    # I

    .line 3843
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->idft_0(JJII)V

    .line 3844
    return-void
.end method

.method private static native idft_0(JJII)V
.end method

.method private static native idft_1(JJI)V
.end method

.method private static native idft_2(JJ)V
.end method

.method public static inRange(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;)V
    .locals 28
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "lowerb"    # Lorg/opencv/core/Scalar;
    .param p2, "upperb"    # Lorg/opencv/core/Scalar;
    .param p3, "dst"    # Lorg/opencv/core/Mat;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 3911
    move-object/from16 v2, p0

    iget-wide v3, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v5, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v6, 0x0

    aget-wide v7, v5, v6

    iget-object v5, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x1

    aget-wide v10, v5, v9

    iget-object v5, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v12, 0x2

    aget-wide v13, v5, v12

    iget-object v5, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v15, 0x3

    aget-wide v16, v5, v15

    iget-object v5, v1, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v18, v5, v6

    iget-object v5, v1, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v20, v5, v9

    iget-object v5, v1, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v22, v5, v12

    iget-object v5, v1, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v24, v5, v15

    move-object/from16 v15, p3

    iget-wide v5, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v26, v5

    move-wide v5, v7

    move-wide v7, v10

    move-wide v9, v13

    move-wide/from16 v11, v16

    move-wide/from16 v13, v18

    move-wide/from16 v15, v20

    move-wide/from16 v17, v22

    move-wide/from16 v19, v24

    move-wide/from16 v21, v26

    invoke-static/range {v3 .. v22}, Lorg/opencv/core/Core;->inRange_0(JDDDDDDDDJ)V

    .line 3912
    return-void
.end method

.method private static native inRange_0(JDDDDDDDDJ)V
.end method

.method public static insertChannel(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "coi"    # I

    .line 3927
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3, p2}, Lorg/opencv/core/Core;->insertChannel_0(JJI)V

    .line 3928
    return-void
.end method

.method private static native insertChannel_0(JJI)V
.end method

.method public static invert(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)D
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .line 891
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->invert_1(JJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public static invert(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)D
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "flags"    # I

    .line 861
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3, p2}, Lorg/opencv/core/Core;->invert_0(JJI)D

    move-result-wide v0

    return-wide v0
.end method

.method private static native invert_0(JJI)D
.end method

.method private static native invert_1(JJ)D
.end method

.method public static kmeans(Lorg/opencv/core/Mat;ILorg/opencv/core/Mat;Lorg/opencv/core/TermCriteria;II)D
    .locals 14
    .param p0, "data"    # Lorg/opencv/core/Mat;
    .param p1, "K"    # I
    .param p2, "bestLabels"    # Lorg/opencv/core/Mat;
    .param p3, "criteria"    # Lorg/opencv/core/TermCriteria;
    .param p4, "attempts"    # I
    .param p5, "flags"    # I

    move-object/from16 v0, p3

    .line 995
    move-object v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v5, v13, Lorg/opencv/core/Mat;->nativeObj:J

    iget v7, v0, Lorg/opencv/core/TermCriteria;->type:I

    iget v8, v0, Lorg/opencv/core/TermCriteria;->maxCount:I

    iget-wide v9, v0, Lorg/opencv/core/TermCriteria;->epsilon:D

    move v4, p1

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-static/range {v2 .. v12}, Lorg/opencv/core/Core;->kmeans_1(JIJIIDII)D

    move-result-wide v2

    return-wide v2
.end method

.method public static kmeans(Lorg/opencv/core/Mat;ILorg/opencv/core/Mat;Lorg/opencv/core/TermCriteria;IILorg/opencv/core/Mat;)D
    .locals 18
    .param p0, "data"    # Lorg/opencv/core/Mat;
    .param p1, "K"    # I
    .param p2, "bestLabels"    # Lorg/opencv/core/Mat;
    .param p3, "criteria"    # Lorg/opencv/core/TermCriteria;
    .param p4, "attempts"    # I
    .param p5, "flags"    # I
    .param p6, "centers"    # Lorg/opencv/core/Mat;

    move-object/from16 v0, p3

    .line 946
    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p2

    iget-wide v5, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget v7, v0, Lorg/opencv/core/TermCriteria;->type:I

    iget v8, v0, Lorg/opencv/core/TermCriteria;->maxCount:I

    iget-wide v9, v0, Lorg/opencv/core/TermCriteria;->epsilon:D

    move-object/from16 v13, p6

    iget-wide v11, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v4, p1

    move-wide/from16 v16, v11

    move/from16 v11, p4

    move/from16 v12, p5

    move-wide/from16 v13, v16

    invoke-static/range {v2 .. v14}, Lorg/opencv/core/Core;->kmeans_0(JIJIIDIIJ)D

    move-result-wide v2

    return-wide v2
.end method

.method private static native kmeans_0(JIJIIDIIJ)D
.end method

.method private static native kmeans_1(JIJIIDII)D
.end method

.method public static log(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .line 3948
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->log_0(JJ)V

    .line 3949
    return-void
.end method

.method private static native log_0(JJ)V
.end method

.method public static magnitude(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "x"    # Lorg/opencv/core/Mat;
    .param p1, "y"    # Lorg/opencv/core/Mat;
    .param p2, "magnitude"    # Lorg/opencv/core/Mat;

    .line 3969
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->magnitude_0(JJJ)V

    .line 3970
    return-void
.end method

.method private static native magnitude_0(JJJ)V
.end method

.method public static max(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .line 3990
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->max_0(JJJ)V

    .line 3991
    return-void
.end method

.method public static max(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;)V
    .locals 12
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .line 3999
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v2, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    iget-object v6, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    iget-object v8, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x3

    aget-wide v8, v8, v9

    iget-wide v10, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v11}, Lorg/opencv/core/Core;->max_1(JDDDDJ)V

    .line 4000
    return-void
.end method

.method private static native max_0(JJJ)V
.end method

.method private static native max_1(JDDDDJ)V
.end method

.method public static mean(Lorg/opencv/core/Mat;)Lorg/opencv/core/Scalar;
    .locals 3
    .param p0, "src"    # Lorg/opencv/core/Mat;

    .line 281
    new-instance v0, Lorg/opencv/core/Scalar;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v1, v2}, Lorg/opencv/core/Core;->mean_1(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Scalar;-><init>([D)V

    return-object v0
.end method

.method public static mean(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Lorg/opencv/core/Scalar;
    .locals 5
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "mask"    # Lorg/opencv/core/Mat;

    .line 265
    new-instance v0, Lorg/opencv/core/Scalar;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v1, v2, v3, v4}, Lorg/opencv/core/Core;->mean_0(JJ)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Scalar;-><init>([D)V

    return-object v0
.end method

.method public static meanStdDev(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDouble;Lorg/opencv/core/MatOfDouble;)V
    .locals 8
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "mean"    # Lorg/opencv/core/MatOfDouble;
    .param p2, "stddev"    # Lorg/opencv/core/MatOfDouble;

    .line 4055
    move-object v0, p1

    .line 4056
    .local v0, "mean_mat":Lorg/opencv/core/Mat;
    move-object v1, p2

    .line 4057
    .local v1, "stddev_mat":Lorg/opencv/core/Mat;
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v7}, Lorg/opencv/core/Core;->meanStdDev_1(JJJ)V

    .line 4058
    return-void
.end method

.method public static meanStdDev(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDouble;Lorg/opencv/core/MatOfDouble;Lorg/opencv/core/Mat;)V
    .locals 10
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "mean"    # Lorg/opencv/core/MatOfDouble;
    .param p2, "stddev"    # Lorg/opencv/core/MatOfDouble;
    .param p3, "mask"    # Lorg/opencv/core/Mat;

    .line 4029
    move-object v0, p1

    .line 4030
    .local v0, "mean_mat":Lorg/opencv/core/Mat;
    move-object v1, p2

    .line 4031
    .local v1, "stddev_mat":Lorg/opencv/core/Mat;
    iget-wide v2, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v9}, Lorg/opencv/core/Core;->meanStdDev_0(JJJJ)V

    .line 4032
    return-void
.end method

.method private static native meanStdDev_0(JJJJ)V
.end method

.method private static native meanStdDev_1(JJJ)V
.end method

.method private static native mean_0(JJ)[D
.end method

.method private static native mean_1(J)[D
.end method

.method public static merge(Ljava/util/List;Lorg/opencv/core/Mat;)V
    .locals 5
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            ")V"
        }
    .end annotation

    .line 4073
    .local p0, "mv":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 4074
    .local v0, "mv_mat":Lorg/opencv/core/Mat;
    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v1, v2, v3, v4}, Lorg/opencv/core/Core;->merge_0(JJ)V

    .line 4075
    return-void
.end method

.method private static native merge_0(JJ)V
.end method

.method public static min(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .line 4095
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->min_0(JJJ)V

    .line 4096
    return-void
.end method

.method public static min(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;)V
    .locals 12
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .line 4104
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v2, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    iget-object v6, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    iget-object v8, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x3

    aget-wide v8, v8, v9

    iget-wide v10, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v11}, Lorg/opencv/core/Core;->min_1(JDDDDJ)V

    .line 4105
    return-void
.end method

.method public static minMaxLoc(Lorg/opencv/core/Mat;)Lorg/opencv/core/Core$MinMaxLocResult;
    .locals 1
    .param p0, "src"    # Lorg/opencv/core/Mat;

    .line 5719
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/opencv/core/Core;->minMaxLoc(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Lorg/opencv/core/Core$MinMaxLocResult;

    move-result-object v0

    return-object v0
.end method

.method public static minMaxLoc(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Lorg/opencv/core/Core$MinMaxLocResult;
    .locals 7
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "mask"    # Lorg/opencv/core/Mat;

    .line 5701
    new-instance v0, Lorg/opencv/core/Core$MinMaxLocResult;

    invoke-direct {v0}, Lorg/opencv/core/Core$MinMaxLocResult;-><init>()V

    .line 5702
    .local v0, "res":Lorg/opencv/core/Core$MinMaxLocResult;
    const-wide/16 v1, 0x0

    .line 5703
    .local v1, "maskNativeObj":J
    if-eqz p1, :cond_0

    .line 5704
    iget-wide v1, p1, Lorg/opencv/core/Mat;->nativeObj:J

    .line 5706
    :cond_0
    iget-wide v3, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v3, v4, v1, v2}, Lorg/opencv/core/Core;->n_minMaxLocManual(JJ)[D

    move-result-object v3

    .line 5707
    .local v3, "resarr":[D
    const/4 v4, 0x0

    aget-wide v4, v3, v4

    iput-wide v4, v0, Lorg/opencv/core/Core$MinMaxLocResult;->minVal:D

    .line 5708
    const/4 v4, 0x1

    aget-wide v4, v3, v4

    iput-wide v4, v0, Lorg/opencv/core/Core$MinMaxLocResult;->maxVal:D

    .line 5709
    iget-object v4, v0, Lorg/opencv/core/Core$MinMaxLocResult;->minLoc:Lorg/opencv/core/Point;

    const/4 v5, 0x2

    aget-wide v5, v3, v5

    iput-wide v5, v4, Lorg/opencv/core/Point;->x:D

    .line 5710
    iget-object v4, v0, Lorg/opencv/core/Core$MinMaxLocResult;->minLoc:Lorg/opencv/core/Point;

    const/4 v5, 0x3

    aget-wide v5, v3, v5

    iput-wide v5, v4, Lorg/opencv/core/Point;->y:D

    .line 5711
    iget-object v4, v0, Lorg/opencv/core/Core$MinMaxLocResult;->maxLoc:Lorg/opencv/core/Point;

    const/4 v5, 0x4

    aget-wide v5, v3, v5

    iput-wide v5, v4, Lorg/opencv/core/Point;->x:D

    .line 5712
    iget-object v4, v0, Lorg/opencv/core/Core$MinMaxLocResult;->maxLoc:Lorg/opencv/core/Point;

    const/4 v5, 0x5

    aget-wide v5, v3, v5

    iput-wide v5, v4, Lorg/opencv/core/Point;->y:D

    .line 5713
    return-object v0
.end method

.method private static native min_0(JJJ)V
.end method

.method private static native min_1(JDDDDJ)V
.end method

.method public static mixChannels(Ljava/util/List;Ljava/util/List;Lorg/opencv/core/MatOfInt;)V
    .locals 9
    .param p2, "fromTo"    # Lorg/opencv/core/MatOfInt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/MatOfInt;",
            ")V"
        }
    .end annotation

    .line 4127
    .local p0, "src":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    .local p1, "dst":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 4128
    .local v0, "src_mat":Lorg/opencv/core/Mat;
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 4129
    .local v1, "dst_mat":Lorg/opencv/core/Mat;
    move-object v2, p2

    .line 4130
    .local v2, "fromTo_mat":Lorg/opencv/core/Mat;
    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v3 .. v8}, Lorg/opencv/core/Core;->mixChannels_0(JJJ)V

    .line 4131
    return-void
.end method

.method private static native mixChannels_0(JJJ)V
.end method

.method public static mulSpectrums(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 7
    .param p0, "a"    # Lorg/opencv/core/Mat;
    .param p1, "b"    # Lorg/opencv/core/Mat;
    .param p2, "c"    # Lorg/opencv/core/Mat;
    .param p3, "flags"    # I

    .line 4178
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/opencv/core/Core;->mulSpectrums_1(JJJI)V

    .line 4179
    return-void
.end method

.method public static mulSpectrums(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;IZ)V
    .locals 8
    .param p0, "a"    # Lorg/opencv/core/Mat;
    .param p1, "b"    # Lorg/opencv/core/Mat;
    .param p2, "c"    # Lorg/opencv/core/Mat;
    .param p3, "flags"    # I
    .param p4, "conjB"    # Z

    .line 4157
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->mulSpectrums_0(JJJIZ)V

    .line 4158
    return-void
.end method

.method private static native mulSpectrums_0(JJJIZ)V
.end method

.method private static native mulSpectrums_1(JJJI)V
.end method

.method public static mulTransposed(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Z)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "aTa"    # Z

    .line 4309
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3, p2}, Lorg/opencv/core/Core;->mulTransposed_3(JJZ)V

    .line 4310
    return-void
.end method

.method public static mulTransposed(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ZLorg/opencv/core/Mat;)V
    .locals 7
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "aTa"    # Z
    .param p3, "delta"    # Lorg/opencv/core/Mat;

    .line 4279
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    invoke-static/range {v0 .. v6}, Lorg/opencv/core/Core;->mulTransposed_2(JJZJ)V

    .line 4280
    return-void
.end method

.method public static mulTransposed(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ZLorg/opencv/core/Mat;D)V
    .locals 9
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "aTa"    # Z
    .param p3, "delta"    # Lorg/opencv/core/Mat;
    .param p4, "scale"    # D

    .line 4248
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move-wide v7, p4

    invoke-static/range {v0 .. v8}, Lorg/opencv/core/Core;->mulTransposed_1(JJZJD)V

    .line 4249
    return-void
.end method

.method public static mulTransposed(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ZLorg/opencv/core/Mat;DI)V
    .locals 13
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "aTa"    # Z
    .param p3, "delta"    # Lorg/opencv/core/Mat;
    .param p4, "scale"    # D
    .param p6, "dtype"    # I

    .line 4216
    move-object v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object v11, p1

    iget-wide v3, v11, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p3

    iget-wide v6, v12, Lorg/opencv/core/Mat;->nativeObj:J

    move v5, p2

    move-wide/from16 v8, p4

    move/from16 v10, p6

    invoke-static/range {v1 .. v10}, Lorg/opencv/core/Core;->mulTransposed_0(JJZJDI)V

    .line 4217
    return-void
.end method

.method private static native mulTransposed_0(JJZJDI)V
.end method

.method private static native mulTransposed_1(JJZJD)V
.end method

.method private static native mulTransposed_2(JJZJ)V
.end method

.method private static native mulTransposed_3(JJZ)V
.end method

.method public static multiply(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .line 4389
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->multiply_2(JJJ)V

    .line 4390
    return-void
.end method

.method public static multiply(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;D)V
    .locals 8
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "scale"    # D

    .line 4365
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v6, p3

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->multiply_1(JJJD)V

    .line 4366
    return-void
.end method

.method public static multiply(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DI)V
    .locals 9
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "scale"    # D
    .param p5, "dtype"    # I

    .line 4340
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v6, p3

    move v8, p5

    invoke-static/range {v0 .. v8}, Lorg/opencv/core/Core;->multiply_0(JJJDI)V

    .line 4341
    return-void
.end method

.method public static multiply(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;)V
    .locals 12
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .line 4406
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v2, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    iget-object v6, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    iget-object v8, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x3

    aget-wide v8, v8, v9

    iget-wide v10, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v11}, Lorg/opencv/core/Core;->multiply_5(JDDDDJ)V

    .line 4407
    return-void
.end method

.method public static multiply(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;D)V
    .locals 16
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "scale"    # D

    move-object/from16 v0, p1

    .line 4402
    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    iget-object v6, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    iget-object v8, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    iget-object v10, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    move-object/from16 v14, p2

    iget-wide v12, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v14, p3

    invoke-static/range {v2 .. v15}, Lorg/opencv/core/Core;->multiply_4(JDDDDJD)V

    .line 4403
    return-void
.end method

.method public static multiply(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;DI)V
    .locals 17
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "scale"    # D
    .param p5, "dtype"    # I

    move-object/from16 v0, p1

    .line 4398
    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    iget-object v6, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    iget-object v8, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    iget-object v10, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    move-object/from16 v14, p2

    iget-wide v12, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v14, p3

    move/from16 v16, p5

    invoke-static/range {v2 .. v16}, Lorg/opencv/core/Core;->multiply_3(JDDDDJDI)V

    .line 4399
    return-void
.end method

.method private static native multiply_0(JJJDI)V
.end method

.method private static native multiply_1(JJJD)V
.end method

.method private static native multiply_2(JJJ)V
.end method

.method private static native multiply_3(JDDDDJDI)V
.end method

.method private static native multiply_4(JDDDDJD)V
.end method

.method private static native multiply_5(JDDDDJ)V
.end method

.method private static native n_minMaxLocManual(JJ)[D
.end method

.method public static norm(Lorg/opencv/core/Mat;)D
    .locals 2
    .param p0, "src1"    # Lorg/opencv/core/Mat;

    .line 1176
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/core/Core;->norm_5(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static norm(Lorg/opencv/core/Mat;I)D
    .locals 2
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "normType"    # I

    .line 1136
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/core/Core;->norm_4(JI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static norm(Lorg/opencv/core/Mat;ILorg/opencv/core/Mat;)D
    .locals 4
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "normType"    # I
    .param p2, "mask"    # Lorg/opencv/core/Mat;

    .line 1095
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, p1, v2, v3}, Lorg/opencv/core/Core;->norm_3(JIJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public static norm(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)D
    .locals 4
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;

    .line 1048
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->norm_2(JJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public static norm(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)D
    .locals 4
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "normType"    # I

    .line 1033
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3, p2}, Lorg/opencv/core/Core;->norm_1(JJI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static norm(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;ILorg/opencv/core/Mat;)D
    .locals 7
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "normType"    # I
    .param p3, "mask"    # Lorg/opencv/core/Mat;

    .line 1017
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    invoke-static/range {v0 .. v6}, Lorg/opencv/core/Core;->norm_0(JJIJ)D

    move-result-wide v0

    return-wide v0
.end method

.method private static native norm_0(JJIJ)D
.end method

.method private static native norm_1(JJI)D
.end method

.method private static native norm_2(JJ)D
.end method

.method private static native norm_3(JIJ)D
.end method

.method private static native norm_4(JI)D
.end method

.method private static native norm_5(J)D
.end method

.method public static normalize(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .line 4774
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->normalize_5(JJ)V

    .line 4775
    return-void
.end method

.method public static normalize(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;D)V
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "alpha"    # D

    .line 4716
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->normalize_4(JJD)V

    .line 4717
    return-void
.end method

.method public static normalize(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DD)V
    .locals 8
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "alpha"    # D
    .param p4, "beta"    # D

    .line 4657
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->normalize_3(JJDD)V

    .line 4658
    return-void
.end method

.method public static normalize(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DDI)V
    .locals 9
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "alpha"    # D
    .param p4, "beta"    # D
    .param p6, "norm_type"    # I

    .line 4597
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v4, p2

    move-wide v6, p4

    move v8, p6

    invoke-static/range {v0 .. v8}, Lorg/opencv/core/Core;->normalize_2(JJDDI)V

    .line 4598
    return-void
.end method

.method public static normalize(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DDII)V
    .locals 12
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "alpha"    # D
    .param p4, "beta"    # D
    .param p6, "norm_type"    # I
    .param p7, "dtype"    # I

    .line 4536
    move-object v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object v11, p1

    iget-wide v3, v11, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v5, p2

    move-wide/from16 v7, p4

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v1 .. v10}, Lorg/opencv/core/Core;->normalize_1(JJDDII)V

    .line 4537
    return-void
.end method

.method public static normalize(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DDIILorg/opencv/core/Mat;)V
    .locals 15
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "alpha"    # D
    .param p4, "beta"    # D
    .param p6, "norm_type"    # I
    .param p7, "dtype"    # I
    .param p8, "mask"    # Lorg/opencv/core/Mat;

    .line 4474
    move-object v0, p0

    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p1

    iget-wide v3, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p8

    iget-wide v11, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v1 .. v12}, Lorg/opencv/core/Core;->normalize_0(JJDDIIJ)V

    .line 4475
    return-void
.end method

.method private static native normalize_0(JJDDIIJ)V
.end method

.method private static native normalize_1(JJDDII)V
.end method

.method private static native normalize_2(JJDDI)V
.end method

.method private static native normalize_3(JJDD)V
.end method

.method private static native normalize_4(JJD)V
.end method

.method private static native normalize_5(JJ)V
.end method

.method public static patchNaNs(Lorg/opencv/core/Mat;)V
    .locals 2
    .param p0, "a"    # Lorg/opencv/core/Mat;

    .line 4796
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/core/Core;->patchNaNs_1(J)V

    .line 4797
    return-void
.end method

.method public static patchNaNs(Lorg/opencv/core/Mat;D)V
    .locals 2
    .param p0, "a"    # Lorg/opencv/core/Mat;
    .param p1, "val"    # D

    .line 4788
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/core/Core;->patchNaNs_0(JD)V

    .line 4789
    return-void
.end method

.method private static native patchNaNs_0(JD)V
.end method

.method private static native patchNaNs_1(J)V
.end method

.method public static perspectiveTransform(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "m"    # Lorg/opencv/core/Mat;

    .line 4831
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->perspectiveTransform_0(JJJ)V

    .line 4832
    return-void
.end method

.method private static native perspectiveTransform_0(JJJ)V
.end method

.method public static phase(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "x"    # Lorg/opencv/core/Mat;
    .param p1, "y"    # Lorg/opencv/core/Mat;
    .param p2, "angle"    # Lorg/opencv/core/Mat;

    .line 4877
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->phase_1(JJJ)V

    .line 4878
    return-void
.end method

.method public static phase(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Z)V
    .locals 7
    .param p0, "x"    # Lorg/opencv/core/Mat;
    .param p1, "y"    # Lorg/opencv/core/Mat;
    .param p2, "angle"    # Lorg/opencv/core/Mat;
    .param p3, "angleInDegrees"    # Z

    .line 4857
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/opencv/core/Core;->phase_0(JJJZ)V

    .line 4858
    return-void
.end method

.method private static native phase_0(JJJZ)V
.end method

.method private static native phase_1(JJJ)V
.end method

.method public static polarToCart(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "magnitude"    # Lorg/opencv/core/Mat;
    .param p1, "angle"    # Lorg/opencv/core/Mat;
    .param p2, "x"    # Lorg/opencv/core/Mat;
    .param p3, "y"    # Lorg/opencv/core/Mat;

    .line 4931
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->polarToCart_1(JJJJ)V

    .line 4932
    return-void
.end method

.method public static polarToCart(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Z)V
    .locals 9
    .param p0, "magnitude"    # Lorg/opencv/core/Mat;
    .param p1, "angle"    # Lorg/opencv/core/Mat;
    .param p2, "x"    # Lorg/opencv/core/Mat;
    .param p3, "y"    # Lorg/opencv/core/Mat;
    .param p4, "angleInDegrees"    # Z

    .line 4907
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move v8, p4

    invoke-static/range {v0 .. v8}, Lorg/opencv/core/Core;->polarToCart_0(JJJJZ)V

    .line 4908
    return-void
.end method

.method private static native polarToCart_0(JJJJZ)V
.end method

.method private static native polarToCart_1(JJJJ)V
.end method

.method public static pow(Lorg/opencv/core/Mat;DLorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "power"    # D
    .param p3, "dst"    # Lorg/opencv/core/Mat;

    .line 4964
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->pow_0(JDJ)V

    .line 4965
    return-void
.end method

.method private static native pow_0(JDJ)V
.end method

.method public static randShuffle(Lorg/opencv/core/Mat;)V
    .locals 2
    .param p0, "dst"    # Lorg/opencv/core/Mat;

    .line 4998
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/core/Core;->randShuffle_2(J)V

    .line 4999
    return-void
.end method

.method public static randShuffle(Lorg/opencv/core/Mat;D)V
    .locals 2
    .param p0, "dst"    # Lorg/opencv/core/Mat;
    .param p1, "iterFactor"    # D

    .line 4984
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/core/Core;->randShuffle_0(JD)V

    .line 4985
    return-void
.end method

.method private static native randShuffle_0(JD)V
.end method

.method private static native randShuffle_2(J)V
.end method

.method public static randn(Lorg/opencv/core/Mat;DD)V
    .locals 6
    .param p0, "dst"    # Lorg/opencv/core/Mat;
    .param p1, "mean"    # D
    .param p3, "stddev"    # D

    .line 5019
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->randn_0(JDD)V

    .line 5020
    return-void
.end method

.method private static native randn_0(JDD)V
.end method

.method public static randu(Lorg/opencv/core/Mat;DD)V
    .locals 6
    .param p0, "dst"    # Lorg/opencv/core/Mat;
    .param p1, "low"    # D
    .param p3, "high"    # D

    .line 5039
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->randu_0(JDD)V

    .line 5040
    return-void
.end method

.method private static native randu_0(JDD)V
.end method

.method public static reduce(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;II)V
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "dim"    # I
    .param p3, "rtype"    # I

    .line 5101
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->reduce_1(JJII)V

    .line 5102
    return-void
.end method

.method public static reduce(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;III)V
    .locals 7
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "dim"    # I
    .param p3, "rtype"    # I
    .param p4, "dtype"    # I

    .line 5073
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lorg/opencv/core/Core;->reduce_0(JJIII)V

    .line 5074
    return-void
.end method

.method private static native reduce_0(JJIII)V
.end method

.method private static native reduce_1(JJII)V
.end method

.method public static repeat(Lorg/opencv/core/Mat;IILorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "ny"    # I
    .param p2, "nx"    # I
    .param p3, "dst"    # Lorg/opencv/core/Mat;

    .line 5124
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->repeat_0(JIIJ)V

    .line 5125
    return-void
.end method

.method private static native repeat_0(JIIJ)V
.end method

.method public static rotate(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "rotateCode"    # I

    .line 5145
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3, p2}, Lorg/opencv/core/Core;->rotate_0(JJI)V

    .line 5146
    return-void
.end method

.method private static native rotate_0(JJI)V
.end method

.method public static scaleAdd(Lorg/opencv/core/Mat;DLorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "alpha"    # D
    .param p3, "src2"    # Lorg/opencv/core/Mat;
    .param p4, "dst"    # Lorg/opencv/core/Mat;

    .line 5173
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p4, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v2, p1

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->scaleAdd_0(JDJJ)V

    .line 5174
    return-void
.end method

.method private static native scaleAdd_0(JDJJ)V
.end method

.method public static setErrorVerbosity(Z)V
    .locals 0
    .param p0, "verbose"    # Z

    .line 5182
    invoke-static {p0}, Lorg/opencv/core/Core;->setErrorVerbosity_0(Z)V

    .line 5183
    return-void
.end method

.method private static native setErrorVerbosity_0(Z)V
.end method

.method public static setIdentity(Lorg/opencv/core/Mat;)V
    .locals 2
    .param p0, "mtx"    # Lorg/opencv/core/Mat;

    .line 5226
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/core/Core;->setIdentity_1(J)V

    .line 5227
    return-void
.end method

.method public static setIdentity(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;)V
    .locals 10
    .param p0, "mtx"    # Lorg/opencv/core/Mat;
    .param p1, "s"    # Lorg/opencv/core/Scalar;

    .line 5207
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v2, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    iget-object v6, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    iget-object v8, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x3

    aget-wide v8, v8, v9

    invoke-static/range {v0 .. v9}, Lorg/opencv/core/Core;->setIdentity_0(JDDDD)V

    .line 5208
    return-void
.end method

.method private static native setIdentity_0(JDDDD)V
.end method

.method private static native setIdentity_1(J)V
.end method

.method public static setNumThreads(I)V
    .locals 0
    .param p0, "nthreads"    # I

    .line 5266
    invoke-static {p0}, Lorg/opencv/core/Core;->setNumThreads_0(I)V

    .line 5267
    return-void
.end method

.method private static native setNumThreads_0(I)V
.end method

.method public static setRNGSeed(I)V
    .locals 0
    .param p0, "seed"    # I

    .line 5282
    invoke-static {p0}, Lorg/opencv/core/Core;->setRNGSeed_0(I)V

    .line 5283
    return-void
.end method

.method private static native setRNGSeed_0(I)V
.end method

.method public static setUseIPP(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .line 5634
    invoke-static {p0}, Lorg/opencv/core/Core;->setUseIPP_0(Z)V

    .line 5635
    return-void
.end method

.method private static native setUseIPP_0(Z)V
.end method

.method public static setUseIPP_NotExact(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .line 5643
    invoke-static {p0}, Lorg/opencv/core/Core;->setUseIPP_NotExact_0(Z)V

    .line 5644
    return-void
.end method

.method private static native setUseIPP_NotExact_0(Z)V
.end method

.method public static solve(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Z
    .locals 6
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .line 684
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->solve_1(JJJ)Z

    move-result v0

    return v0
.end method

.method public static solve(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)Z
    .locals 7
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "flags"    # I

    .line 657
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/opencv/core/Core;->solve_0(JJJI)Z

    move-result v0

    return v0
.end method

.method public static solveCubic(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)I
    .locals 4
    .param p0, "coeffs"    # Lorg/opencv/core/Mat;
    .param p1, "roots"    # Lorg/opencv/core/Mat;

    .line 1484
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->solveCubic_0(JJ)I

    move-result v0

    return v0
.end method

.method private static native solveCubic_0(JJ)I
.end method

.method public static solvePoly(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)D
    .locals 4
    .param p0, "coeffs"    # Lorg/opencv/core/Mat;
    .param p1, "roots"    # Lorg/opencv/core/Mat;

    .line 1208
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->solvePoly_1(JJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public static solvePoly(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)D
    .locals 4
    .param p0, "coeffs"    # Lorg/opencv/core/Mat;
    .param p1, "roots"    # Lorg/opencv/core/Mat;
    .param p2, "maxIters"    # I

    .line 1195
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3, p2}, Lorg/opencv/core/Core;->solvePoly_0(JJI)D

    move-result-wide v0

    return-wide v0
.end method

.method private static native solvePoly_0(JJI)D
.end method

.method private static native solvePoly_1(JJ)D
.end method

.method private static native solve_0(JJJI)Z
.end method

.method private static native solve_1(JJJ)Z
.end method

.method public static sort(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "flags"    # I

    .line 5305
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3, p2}, Lorg/opencv/core/Core;->sort_0(JJI)V

    .line 5306
    return-void
.end method

.method public static sortIdx(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "flags"    # I

    .line 5333
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3, p2}, Lorg/opencv/core/Core;->sortIdx_0(JJI)V

    .line 5334
    return-void
.end method

.method private static native sortIdx_0(JJI)V
.end method

.method private static native sort_0(JJI)V
.end method

.method public static split(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 5
    .param p0, "m"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;)V"
        }
    .end annotation

    .line 5347
    .local p1, "mv":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 5348
    .local v0, "mv_mat":Lorg/opencv/core/Mat;
    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v1, v2, v3, v4}, Lorg/opencv/core/Core;->split_0(JJ)V

    .line 5349
    invoke-static {v0, p1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 5350
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 5351
    return-void
.end method

.method private static native split_0(JJ)V
.end method

.method public static sqrt(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .line 5369
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->sqrt_0(JJ)V

    .line 5370
    return-void
.end method

.method private static native sqrt_0(JJ)V
.end method

.method public static subtract(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .line 5527
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->subtract_2(JJJ)V

    .line 5528
    return-void
.end method

.method public static subtract(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "mask"    # Lorg/opencv/core/Mat;

    .line 5477
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->subtract_1(JJJJ)V

    .line 5478
    return-void
.end method

.method public static subtract(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 9
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Mat;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "mask"    # Lorg/opencv/core/Mat;
    .param p4, "dtype"    # I

    .line 5426
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    move v8, p4

    invoke-static/range {v0 .. v8}, Lorg/opencv/core/Core;->subtract_0(JJJJI)V

    .line 5427
    return-void
.end method

.method public static subtract(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;)V
    .locals 12
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;

    .line 5544
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v2, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    iget-object v6, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    iget-object v8, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x3

    aget-wide v8, v8, v9

    iget-wide v10, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v11}, Lorg/opencv/core/Core;->subtract_5(JDDDDJ)V

    .line 5545
    return-void
.end method

.method public static subtract(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 17
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "mask"    # Lorg/opencv/core/Mat;

    move-object/from16 v0, p1

    .line 5540
    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    iget-object v6, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    iget-object v8, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    iget-object v10, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    move-object/from16 v14, p2

    iget-wide v12, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p3

    iget-wide v0, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v14, v0

    invoke-static/range {v2 .. v15}, Lorg/opencv/core/Core;->subtract_4(JDDDDJJ)V

    .line 5541
    return-void
.end method

.method public static subtract(Lorg/opencv/core/Mat;Lorg/opencv/core/Scalar;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V
    .locals 18
    .param p0, "src1"    # Lorg/opencv/core/Mat;
    .param p1, "src2"    # Lorg/opencv/core/Scalar;
    .param p2, "dst"    # Lorg/opencv/core/Mat;
    .param p3, "mask"    # Lorg/opencv/core/Mat;
    .param p4, "dtype"    # I

    move-object/from16 v0, p1

    .line 5536
    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-object v4, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    iget-object v6, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    iget-object v8, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    iget-object v10, v0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    move-object/from16 v14, p2

    iget-wide v12, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p3

    iget-wide v0, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v14, v0

    move/from16 v16, p4

    invoke-static/range {v2 .. v16}, Lorg/opencv/core/Core;->subtract_3(JDDDDJJI)V

    .line 5537
    return-void
.end method

.method private static native subtract_0(JJJJI)V
.end method

.method private static native subtract_1(JJJJ)V
.end method

.method private static native subtract_2(JJJ)V
.end method

.method private static native subtract_3(JDDDDJJI)V
.end method

.method private static native subtract_4(JDDDDJJ)V
.end method

.method private static native subtract_5(JDDDDJ)V
.end method

.method public static sumElems(Lorg/opencv/core/Mat;)Lorg/opencv/core/Scalar;
    .locals 3
    .param p0, "src"    # Lorg/opencv/core/Mat;

    .line 299
    new-instance v0, Lorg/opencv/core/Scalar;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v1, v2}, Lorg/opencv/core/Core;->sumElems_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Scalar;-><init>([D)V

    return-object v0
.end method

.method private static native sumElems_0(J)[D
.end method

.method public static trace(Lorg/opencv/core/Mat;)Lorg/opencv/core/Scalar;
    .locals 3
    .param p0, "mtx"    # Lorg/opencv/core/Mat;

    .line 317
    new-instance v0, Lorg/opencv/core/Scalar;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v1, v2}, Lorg/opencv/core/Core;->trace_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Scalar;-><init>([D)V

    return-object v0
.end method

.method private static native trace_0(J)[D
.end method

.method public static transform(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 6
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .param p2, "m"    # Lorg/opencv/core/Mat;

    .line 5578
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/core/Core;->transform_0(JJJ)V

    .line 5579
    return-void
.end method

.method private static native transform_0(JJJ)V
.end method

.method public static transpose(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 4
    .param p0, "src"    # Lorg/opencv/core/Mat;
    .param p1, "dst"    # Lorg/opencv/core/Mat;

    .line 5597
    iget-wide v0, p0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/core/Core;->transpose_0(JJ)V

    .line 5598
    return-void
.end method

.method private static native transpose_0(JJ)V
.end method

.method public static useIPP()Z
    .locals 1

    .line 697
    invoke-static {}, Lorg/opencv/core/Core;->useIPP_0()Z

    move-result v0

    return v0
.end method

.method private static native useIPP_0()Z
.end method

.method public static useIPP_NotExact()Z
    .locals 1

    .line 706
    invoke-static {}, Lorg/opencv/core/Core;->useIPP_NotExact_0()Z

    move-result v0

    return v0
.end method

.method private static native useIPP_NotExact_0()Z
.end method

.method public static vconcat(Ljava/util/List;Lorg/opencv/core/Mat;)V
    .locals 5
    .param p1, "dst"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;",
            "Lorg/opencv/core/Mat;",
            ")V"
        }
    .end annotation

    .line 5624
    .local p0, "src":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p0}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 5625
    .local v0, "src_mat":Lorg/opencv/core/Mat;
    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v1, v2, v3, v4}, Lorg/opencv/core/Core;->vconcat_0(JJ)V

    .line 5626
    return-void
.end method

.method private static native vconcat_0(JJ)V
.end method
