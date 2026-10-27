.class public Lorg/opencv/imgcodecs/Imgcodecs;
.super Ljava/lang/Object;
.source "Imgcodecs.java"


# static fields
.field public static final IMREAD_ANYCOLOR:I = 0x4

.field public static final IMREAD_ANYDEPTH:I = 0x2

.field public static final IMREAD_COLOR:I = 0x1

.field public static final IMREAD_GRAYSCALE:I = 0x0

.field public static final IMREAD_IGNORE_ORIENTATION:I = 0x80

.field public static final IMREAD_LOAD_GDAL:I = 0x8

.field public static final IMREAD_REDUCED_COLOR_2:I = 0x11

.field public static final IMREAD_REDUCED_COLOR_4:I = 0x21

.field public static final IMREAD_REDUCED_COLOR_8:I = 0x41

.field public static final IMREAD_REDUCED_GRAYSCALE_2:I = 0x10

.field public static final IMREAD_REDUCED_GRAYSCALE_4:I = 0x20

.field public static final IMREAD_REDUCED_GRAYSCALE_8:I = 0x40

.field public static final IMREAD_UNCHANGED:I = -0x1

.field public static final IMWRITE_EXR_TYPE:I = 0x30

.field public static final IMWRITE_EXR_TYPE_FLOAT:I = 0x2

.field public static final IMWRITE_EXR_TYPE_HALF:I = 0x1

.field public static final IMWRITE_JPEG2000_COMPRESSION_X1000:I = 0x110

.field public static final IMWRITE_JPEG_CHROMA_QUALITY:I = 0x6

.field public static final IMWRITE_JPEG_LUMA_QUALITY:I = 0x5

.field public static final IMWRITE_JPEG_OPTIMIZE:I = 0x3

.field public static final IMWRITE_JPEG_PROGRESSIVE:I = 0x2

.field public static final IMWRITE_JPEG_QUALITY:I = 0x1

.field public static final IMWRITE_JPEG_RST_INTERVAL:I = 0x4

.field public static final IMWRITE_PAM_FORMAT_BLACKANDWHITE:I = 0x1

.field public static final IMWRITE_PAM_FORMAT_GRAYSCALE:I = 0x2

.field public static final IMWRITE_PAM_FORMAT_GRAYSCALE_ALPHA:I = 0x3

.field public static final IMWRITE_PAM_FORMAT_NULL:I = 0x0

.field public static final IMWRITE_PAM_FORMAT_RGB:I = 0x4

.field public static final IMWRITE_PAM_FORMAT_RGB_ALPHA:I = 0x5

.field public static final IMWRITE_PAM_TUPLETYPE:I = 0x80

.field public static final IMWRITE_PNG_BILEVEL:I = 0x12

.field public static final IMWRITE_PNG_COMPRESSION:I = 0x10

.field public static final IMWRITE_PNG_STRATEGY:I = 0x11

.field public static final IMWRITE_PNG_STRATEGY_DEFAULT:I = 0x0

.field public static final IMWRITE_PNG_STRATEGY_FILTERED:I = 0x1

.field public static final IMWRITE_PNG_STRATEGY_FIXED:I = 0x4

.field public static final IMWRITE_PNG_STRATEGY_HUFFMAN_ONLY:I = 0x2

.field public static final IMWRITE_PNG_STRATEGY_RLE:I = 0x3

.field public static final IMWRITE_PXM_BINARY:I = 0x20

.field public static final IMWRITE_TIFF_COMPRESSION:I = 0x103

.field public static final IMWRITE_TIFF_RESUNIT:I = 0x100

.field public static final IMWRITE_TIFF_XDPI:I = 0x101

.field public static final IMWRITE_TIFF_YDPI:I = 0x102

.field public static final IMWRITE_WEBP_QUALITY:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static haveImageReader(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .line 324
    invoke-static {p0}, Lorg/opencv/imgcodecs/Imgcodecs;->haveImageReader_0(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static native haveImageReader_0(Ljava/lang/String;)Z
.end method

.method public static haveImageWriter(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .line 339
    invoke-static {p0}, Lorg/opencv/imgcodecs/Imgcodecs;->haveImageWriter_0(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static native haveImageWriter_0(Ljava/lang/String;)Z
.end method

.method public static imdecode(Lorg/opencv/core/Mat;I)Lorg/opencv/core/Mat;
    .locals 3
    .param p0, "buf"    # Lorg/opencv/core/Mat;
    .param p1, "flags"    # I

    .line 99
    new-instance v0, Lorg/opencv/core/Mat;

    iget-wide v1, p0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v1, v2, p1}, Lorg/opencv/imgcodecs/Imgcodecs;->imdecode_0(JI)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method private static native imdecode_0(JI)J
.end method

.method public static imencode(Ljava/lang/String;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfByte;)Z
    .locals 5
    .param p0, "ext"    # Ljava/lang/String;
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "buf"    # Lorg/opencv/core/MatOfByte;

    .line 377
    move-object v0, p2

    .line 378
    .local v0, "buf_mat":Lorg/opencv/core/Mat;
    iget-wide v1, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {p0, v1, v2, v3, v4}, Lorg/opencv/imgcodecs/Imgcodecs;->imencode_1(Ljava/lang/String;JJ)Z

    move-result v1

    return v1
.end method

.method public static imencode(Ljava/lang/String;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfByte;Lorg/opencv/core/MatOfInt;)Z
    .locals 9
    .param p0, "ext"    # Ljava/lang/String;
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "buf"    # Lorg/opencv/core/MatOfByte;
    .param p3, "params"    # Lorg/opencv/core/MatOfInt;

    .line 360
    move-object v0, p2

    .line 361
    .local v0, "buf_mat":Lorg/opencv/core/Mat;
    move-object v1, p3

    .line 362
    .local v1, "params_mat":Lorg/opencv/core/Mat;
    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lorg/opencv/imgcodecs/Imgcodecs;->imencode_0(Ljava/lang/String;JJJ)Z

    move-result v2

    return v2
.end method

.method private static native imencode_0(Ljava/lang/String;JJJ)Z
.end method

.method private static native imencode_1(Ljava/lang/String;JJ)Z
.end method

.method public static imread(Ljava/lang/String;)Lorg/opencv/core/Mat;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .line 309
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-static {p0}, Lorg/opencv/imgcodecs/Imgcodecs;->imread_1(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method public static imread(Ljava/lang/String;I)Lorg/opencv/core/Mat;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .line 207
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-static {p0, p1}, Lorg/opencv/imgcodecs/Imgcodecs;->imread_0(Ljava/lang/String;I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Mat;-><init>(J)V

    return-object v0
.end method

.method private static native imread_0(Ljava/lang/String;I)J
.end method

.method private static native imread_1(Ljava/lang/String;)J
.end method

.method public static imreadmulti(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;)Z"
        }
    .end annotation

    .line 414
    .local p1, "mats":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 415
    .local v0, "mats_mat":Lorg/opencv/core/Mat;
    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {p0, v1, v2}, Lorg/opencv/imgcodecs/Imgcodecs;->imreadmulti_1(Ljava/lang/String;J)Z

    move-result v1

    .line 416
    .local v1, "retVal":Z
    invoke-static {v0, p1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 417
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 418
    return v1
.end method

.method public static imreadmulti(Ljava/lang/String;Ljava/util/List;I)Z
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;I)Z"
        }
    .end annotation

    .line 397
    .local p1, "mats":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 398
    .local v0, "mats_mat":Lorg/opencv/core/Mat;
    iget-wide v1, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {p0, v1, v2, p2}, Lorg/opencv/imgcodecs/Imgcodecs;->imreadmulti_0(Ljava/lang/String;JI)Z

    move-result v1

    .line 399
    .local v1, "retVal":Z
    invoke-static {v0, p1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 400
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 401
    return v1
.end method

.method private static native imreadmulti_0(Ljava/lang/String;JI)Z
.end method

.method private static native imreadmulti_1(Ljava/lang/String;J)Z
.end method

.method public static imwrite(Ljava/lang/String;Lorg/opencv/core/Mat;)Z
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "img"    # Lorg/opencv/core/Mat;

    .line 509
    iget-wide v0, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {p0, v0, v1}, Lorg/opencv/imgcodecs/Imgcodecs;->imwrite_1(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static imwrite(Ljava/lang/String;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfInt;)Z
    .locals 5
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "params"    # Lorg/opencv/core/MatOfInt;

    .line 466
    move-object v0, p2

    .line 467
    .local v0, "params_mat":Lorg/opencv/core/Mat;
    iget-wide v1, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {p0, v1, v2, v3, v4}, Lorg/opencv/imgcodecs/Imgcodecs;->imwrite_0(Ljava/lang/String;JJ)Z

    move-result v1

    return v1
.end method

.method private static native imwrite_0(Ljava/lang/String;JJ)Z
.end method

.method private static native imwrite_1(Ljava/lang/String;J)Z
.end method
