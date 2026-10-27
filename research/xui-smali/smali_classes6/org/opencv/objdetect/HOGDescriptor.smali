.class public Lorg/opencv/objdetect/HOGDescriptor;
.super Ljava/lang/Object;
.source "HOGDescriptor.java"


# static fields
.field public static final DEFAULT_NLEVELS:I = 0x40

.field public static final DESCR_FORMAT_COL_BY_COL:I = 0x0

.field public static final DESCR_FORMAT_ROW_BY_ROW:I = 0x1

.field public static final L2Hys:I


# instance fields
.field protected final nativeObj:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    invoke-static {}, Lorg/opencv/objdetect/HOGDescriptor;->HOGDescriptor_9()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    .line 213
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 0
    .param p1, "addr"    # J

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    invoke-static {p1}, Lorg/opencv/objdetect/HOGDescriptor;->HOGDescriptor_8(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    .line 199
    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Size;Lorg/opencv/core/Size;Lorg/opencv/core/Size;Lorg/opencv/core/Size;I)V
    .locals 23
    .param p1, "_winSize"    # Lorg/opencv/core/Size;
    .param p2, "_blockSize"    # Lorg/opencv/core/Size;
    .param p3, "_blockStride"    # Lorg/opencv/core/Size;
    .param p4, "_cellSize"    # Lorg/opencv/core/Size;
    .param p5, "_nbins"    # I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 184
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iget-wide v4, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v6, v0, Lorg/opencv/core/Size;->height:D

    iget-wide v8, v1, Lorg/opencv/core/Size;->width:D

    iget-wide v10, v1, Lorg/opencv/core/Size;->height:D

    iget-wide v12, v2, Lorg/opencv/core/Size;->width:D

    iget-wide v14, v2, Lorg/opencv/core/Size;->height:D

    iget-wide v0, v3, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v21, v0

    iget-wide v0, v3, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v16, v21

    move-wide/from16 v18, v0

    move/from16 v20, p5

    invoke-static/range {v4 .. v20}, Lorg/opencv/objdetect/HOGDescriptor;->HOGDescriptor_7(DDDDDDDDI)J

    move-result-wide v0

    move-object/from16 v4, p0

    iput-wide v0, v4, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    .line 186
    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Size;Lorg/opencv/core/Size;Lorg/opencv/core/Size;Lorg/opencv/core/Size;II)V
    .locals 24
    .param p1, "_winSize"    # Lorg/opencv/core/Size;
    .param p2, "_blockSize"    # Lorg/opencv/core/Size;
    .param p3, "_blockStride"    # Lorg/opencv/core/Size;
    .param p4, "_cellSize"    # Lorg/opencv/core/Size;
    .param p5, "_nbins"    # I
    .param p6, "_derivAperture"    # I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 172
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iget-wide v4, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v6, v0, Lorg/opencv/core/Size;->height:D

    iget-wide v8, v1, Lorg/opencv/core/Size;->width:D

    iget-wide v10, v1, Lorg/opencv/core/Size;->height:D

    iget-wide v12, v2, Lorg/opencv/core/Size;->width:D

    iget-wide v14, v2, Lorg/opencv/core/Size;->height:D

    iget-wide v0, v3, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v22, v0

    iget-wide v0, v3, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v16, v22

    move-wide/from16 v18, v0

    move/from16 v20, p5

    move/from16 v21, p6

    invoke-static/range {v4 .. v21}, Lorg/opencv/objdetect/HOGDescriptor;->HOGDescriptor_6(DDDDDDDDII)J

    move-result-wide v0

    move-object/from16 v4, p0

    iput-wide v0, v4, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    .line 174
    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Size;Lorg/opencv/core/Size;Lorg/opencv/core/Size;Lorg/opencv/core/Size;IID)V
    .locals 26
    .param p1, "_winSize"    # Lorg/opencv/core/Size;
    .param p2, "_blockSize"    # Lorg/opencv/core/Size;
    .param p3, "_blockStride"    # Lorg/opencv/core/Size;
    .param p4, "_cellSize"    # Lorg/opencv/core/Size;
    .param p5, "_nbins"    # I
    .param p6, "_derivAperture"    # I
    .param p7, "_winSigma"    # D

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 159
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iget-wide v4, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v6, v0, Lorg/opencv/core/Size;->height:D

    iget-wide v8, v1, Lorg/opencv/core/Size;->width:D

    iget-wide v10, v1, Lorg/opencv/core/Size;->height:D

    iget-wide v12, v2, Lorg/opencv/core/Size;->width:D

    iget-wide v14, v2, Lorg/opencv/core/Size;->height:D

    iget-wide v0, v3, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v24, v0

    iget-wide v0, v3, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v16, v24

    move-wide/from16 v18, v0

    move/from16 v20, p5

    move/from16 v21, p6

    move-wide/from16 v22, p7

    invoke-static/range {v4 .. v23}, Lorg/opencv/objdetect/HOGDescriptor;->HOGDescriptor_5(DDDDDDDDIID)J

    move-result-wide v0

    move-object/from16 v4, p0

    iput-wide v0, v4, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    .line 161
    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Size;Lorg/opencv/core/Size;Lorg/opencv/core/Size;Lorg/opencv/core/Size;IIDI)V
    .locals 27
    .param p1, "_winSize"    # Lorg/opencv/core/Size;
    .param p2, "_blockSize"    # Lorg/opencv/core/Size;
    .param p3, "_blockStride"    # Lorg/opencv/core/Size;
    .param p4, "_cellSize"    # Lorg/opencv/core/Size;
    .param p5, "_nbins"    # I
    .param p6, "_derivAperture"    # I
    .param p7, "_winSigma"    # D
    .param p9, "_histogramNormType"    # I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 145
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iget-wide v4, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v6, v0, Lorg/opencv/core/Size;->height:D

    iget-wide v8, v1, Lorg/opencv/core/Size;->width:D

    iget-wide v10, v1, Lorg/opencv/core/Size;->height:D

    iget-wide v12, v2, Lorg/opencv/core/Size;->width:D

    iget-wide v14, v2, Lorg/opencv/core/Size;->height:D

    iget-wide v0, v3, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v25, v0

    iget-wide v0, v3, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v16, v25

    move-wide/from16 v18, v0

    move/from16 v20, p5

    move/from16 v21, p6

    move-wide/from16 v22, p7

    move/from16 v24, p9

    invoke-static/range {v4 .. v24}, Lorg/opencv/objdetect/HOGDescriptor;->HOGDescriptor_4(DDDDDDDDIIDI)J

    move-result-wide v0

    move-object/from16 v4, p0

    iput-wide v0, v4, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    .line 147
    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Size;Lorg/opencv/core/Size;Lorg/opencv/core/Size;Lorg/opencv/core/Size;IIDID)V
    .locals 29
    .param p1, "_winSize"    # Lorg/opencv/core/Size;
    .param p2, "_blockSize"    # Lorg/opencv/core/Size;
    .param p3, "_blockStride"    # Lorg/opencv/core/Size;
    .param p4, "_cellSize"    # Lorg/opencv/core/Size;
    .param p5, "_nbins"    # I
    .param p6, "_derivAperture"    # I
    .param p7, "_winSigma"    # D
    .param p9, "_histogramNormType"    # I
    .param p10, "_L2HysThreshold"    # D

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iget-wide v4, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v6, v0, Lorg/opencv/core/Size;->height:D

    iget-wide v8, v1, Lorg/opencv/core/Size;->width:D

    iget-wide v10, v1, Lorg/opencv/core/Size;->height:D

    iget-wide v12, v2, Lorg/opencv/core/Size;->width:D

    iget-wide v14, v2, Lorg/opencv/core/Size;->height:D

    iget-wide v0, v3, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v27, v0

    iget-wide v0, v3, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v16, v27

    move-wide/from16 v18, v0

    move/from16 v20, p5

    move/from16 v21, p6

    move-wide/from16 v22, p7

    move/from16 v24, p9

    move-wide/from16 v25, p10

    invoke-static/range {v4 .. v26}, Lorg/opencv/objdetect/HOGDescriptor;->HOGDescriptor_3(DDDDDDDDIIDID)J

    move-result-wide v0

    move-object/from16 v4, p0

    iput-wide v0, v4, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    .line 132
    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Size;Lorg/opencv/core/Size;Lorg/opencv/core/Size;Lorg/opencv/core/Size;IIDIDZ)V
    .locals 30
    .param p1, "_winSize"    # Lorg/opencv/core/Size;
    .param p2, "_blockSize"    # Lorg/opencv/core/Size;
    .param p3, "_blockStride"    # Lorg/opencv/core/Size;
    .param p4, "_cellSize"    # Lorg/opencv/core/Size;
    .param p5, "_nbins"    # I
    .param p6, "_derivAperture"    # I
    .param p7, "_winSigma"    # D
    .param p9, "_histogramNormType"    # I
    .param p10, "_L2HysThreshold"    # D
    .param p12, "_gammaCorrection"    # Z

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 114
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iget-wide v4, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v6, v0, Lorg/opencv/core/Size;->height:D

    iget-wide v8, v1, Lorg/opencv/core/Size;->width:D

    iget-wide v10, v1, Lorg/opencv/core/Size;->height:D

    iget-wide v12, v2, Lorg/opencv/core/Size;->width:D

    iget-wide v14, v2, Lorg/opencv/core/Size;->height:D

    iget-wide v0, v3, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v28, v0

    iget-wide v0, v3, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v16, v28

    move-wide/from16 v18, v0

    move/from16 v20, p5

    move/from16 v21, p6

    move-wide/from16 v22, p7

    move/from16 v24, p9

    move-wide/from16 v25, p10

    move/from16 v27, p12

    invoke-static/range {v4 .. v27}, Lorg/opencv/objdetect/HOGDescriptor;->HOGDescriptor_2(DDDDDDDDIIDIDZ)J

    move-result-wide v0

    move-object/from16 v4, p0

    iput-wide v0, v4, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    .line 116
    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Size;Lorg/opencv/core/Size;Lorg/opencv/core/Size;Lorg/opencv/core/Size;IIDIDZI)V
    .locals 31
    .param p1, "_winSize"    # Lorg/opencv/core/Size;
    .param p2, "_blockSize"    # Lorg/opencv/core/Size;
    .param p3, "_blockStride"    # Lorg/opencv/core/Size;
    .param p4, "_cellSize"    # Lorg/opencv/core/Size;
    .param p5, "_nbins"    # I
    .param p6, "_derivAperture"    # I
    .param p7, "_winSigma"    # D
    .param p9, "_histogramNormType"    # I
    .param p10, "_L2HysThreshold"    # D
    .param p12, "_gammaCorrection"    # Z
    .param p13, "_nlevels"    # I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iget-wide v4, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v6, v0, Lorg/opencv/core/Size;->height:D

    iget-wide v8, v1, Lorg/opencv/core/Size;->width:D

    iget-wide v10, v1, Lorg/opencv/core/Size;->height:D

    iget-wide v12, v2, Lorg/opencv/core/Size;->width:D

    iget-wide v14, v2, Lorg/opencv/core/Size;->height:D

    iget-wide v0, v3, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v29, v0

    iget-wide v0, v3, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v16, v29

    move-wide/from16 v18, v0

    move/from16 v20, p5

    move/from16 v21, p6

    move-wide/from16 v22, p7

    move/from16 v24, p9

    move-wide/from16 v25, p10

    move/from16 v27, p12

    move/from16 v28, p13

    invoke-static/range {v4 .. v28}, Lorg/opencv/objdetect/HOGDescriptor;->HOGDescriptor_1(DDDDDDDDIIDIDZI)J

    move-result-wide v0

    move-object/from16 v4, p0

    iput-wide v0, v4, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    .line 99
    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Size;Lorg/opencv/core/Size;Lorg/opencv/core/Size;Lorg/opencv/core/Size;IIDIDZIZ)V
    .locals 32
    .param p1, "_winSize"    # Lorg/opencv/core/Size;
    .param p2, "_blockSize"    # Lorg/opencv/core/Size;
    .param p3, "_blockStride"    # Lorg/opencv/core/Size;
    .param p4, "_cellSize"    # Lorg/opencv/core/Size;
    .param p5, "_nbins"    # I
    .param p6, "_derivAperture"    # I
    .param p7, "_winSigma"    # D
    .param p9, "_histogramNormType"    # I
    .param p10, "_L2HysThreshold"    # D
    .param p12, "_gammaCorrection"    # Z
    .param p13, "_nlevels"    # I
    .param p14, "_signedGradient"    # Z

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iget-wide v4, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v6, v0, Lorg/opencv/core/Size;->height:D

    iget-wide v8, v1, Lorg/opencv/core/Size;->width:D

    iget-wide v10, v1, Lorg/opencv/core/Size;->height:D

    iget-wide v12, v2, Lorg/opencv/core/Size;->width:D

    iget-wide v14, v2, Lorg/opencv/core/Size;->height:D

    iget-wide v0, v3, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v30, v0

    iget-wide v0, v3, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v16, v30

    move-wide/from16 v18, v0

    move/from16 v20, p5

    move/from16 v21, p6

    move-wide/from16 v22, p7

    move/from16 v24, p9

    move-wide/from16 v25, p10

    move/from16 v27, p12

    move/from16 v28, p13

    move/from16 v29, p14

    invoke-static/range {v4 .. v29}, Lorg/opencv/objdetect/HOGDescriptor;->HOGDescriptor_0(DDDDDDDDIIDIDZIZ)J

    move-result-wide v0

    move-object/from16 v4, p0

    iput-wide v0, v4, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    .line 81
    return-void
.end method

.method private static native HOGDescriptor_0(DDDDDDDDIIDIDZIZ)J
.end method

.method private static native HOGDescriptor_1(DDDDDDDDIIDIDZI)J
.end method

.method private static native HOGDescriptor_2(DDDDDDDDIIDIDZ)J
.end method

.method private static native HOGDescriptor_3(DDDDDDDDIIDID)J
.end method

.method private static native HOGDescriptor_4(DDDDDDDDIIDI)J
.end method

.method private static native HOGDescriptor_5(DDDDDDDDIID)J
.end method

.method private static native HOGDescriptor_6(DDDDDDDDII)J
.end method

.method private static native HOGDescriptor_7(DDDDDDDDI)J
.end method

.method private static native HOGDescriptor_8(Ljava/lang/String;)J
.end method

.method private static native HOGDescriptor_9()J
.end method

.method public static __fromPtr__(J)Lorg/opencv/objdetect/HOGDescriptor;
    .locals 1
    .param p0, "addr"    # J

    .line 42
    new-instance v0, Lorg/opencv/objdetect/HOGDescriptor;

    invoke-direct {v0, p0, p1}, Lorg/opencv/objdetect/HOGDescriptor;-><init>(J)V

    return-object v0
.end method

.method private static native checkDetectorSize_0(J)Z
.end method

.method private static native computeGradient_0(JJJJDDDD)V
.end method

.method private static native computeGradient_1(JJJJDD)V
.end method

.method private static native computeGradient_2(JJJJ)V
.end method

.method private static native compute_0(JJJDDDDJ)V
.end method

.method private static native compute_1(JJJDDDD)V
.end method

.method private static native compute_2(JJJDD)V
.end method

.method private static native compute_3(JJJ)V
.end method

.method private static native delete(J)V
.end method

.method private static native detectMultiScale_0(JJJJDDDDDDDZ)V
.end method

.method private static native detectMultiScale_1(JJJJDDDDDDD)V
.end method

.method private static native detectMultiScale_2(JJJJDDDDDD)V
.end method

.method private static native detectMultiScale_3(JJJJDDDDD)V
.end method

.method private static native detectMultiScale_4(JJJJDDD)V
.end method

.method private static native detectMultiScale_5(JJJJD)V
.end method

.method private static native detectMultiScale_6(JJJJ)V
.end method

.method private static native detect_0(JJJJDDDDDJ)V
.end method

.method private static native detect_1(JJJJDDDDD)V
.end method

.method private static native detect_2(JJJJDDD)V
.end method

.method private static native detect_3(JJJJD)V
.end method

.method private static native detect_4(JJJJ)V
.end method

.method public static getDaimlerPeopleDetector()Lorg/opencv/core/MatOfFloat;
    .locals 2

    .line 288
    invoke-static {}, Lorg/opencv/objdetect/HOGDescriptor;->getDaimlerPeopleDetector_0()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/core/MatOfFloat;->fromNativeAddr(J)Lorg/opencv/core/MatOfFloat;

    move-result-object v0

    return-object v0
.end method

.method private static native getDaimlerPeopleDetector_0()J
.end method

.method public static getDefaultPeopleDetector()Lorg/opencv/core/MatOfFloat;
    .locals 2

    .line 301
    invoke-static {}, Lorg/opencv/objdetect/HOGDescriptor;->getDefaultPeopleDetector_0()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/core/MatOfFloat;->fromNativeAddr(J)Lorg/opencv/core/MatOfFloat;

    move-result-object v0

    return-object v0
.end method

.method private static native getDefaultPeopleDetector_0()J
.end method

.method private static native getDescriptorSize_0(J)J
.end method

.method private static native getWinSigma_0(J)D
.end method

.method private static native get_L2HysThreshold_0(J)D
.end method

.method private static native get_blockSize_0(J)[D
.end method

.method private static native get_blockStride_0(J)[D
.end method

.method private static native get_cellSize_0(J)[D
.end method

.method private static native get_derivAperture_0(J)I
.end method

.method private static native get_gammaCorrection_0(J)Z
.end method

.method private static native get_histogramNormType_0(J)I
.end method

.method private static native get_nbins_0(J)I
.end method

.method private static native get_nlevels_0(J)I
.end method

.method private static native get_signedGradient_0(J)Z
.end method

.method private static native get_svmDetector_0(J)J
.end method

.method private static native get_winSigma_0(J)D
.end method

.method private static native get_winSize_0(J)[D
.end method

.method private static native load_0(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native load_1(JLjava/lang/String;)Z
.end method

.method private static native save_0(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native save_1(JLjava/lang/String;)V
.end method

.method private static native setSVMDetector_0(JJ)V
.end method


# virtual methods
.method public checkDetectorSize()Z
    .locals 2

    .line 225
    iget-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/HOGDescriptor;->checkDetectorSize_0(J)Z

    move-result v0

    return v0
.end method

.method public compute(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfFloat;)V
    .locals 7
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "descriptors"    # Lorg/opencv/core/MatOfFloat;

    .line 352
    move-object v0, p2

    .line 353
    .local v0, "descriptors_mat":Lorg/opencv/core/Mat;
    iget-wide v1, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v1 .. v6}, Lorg/opencv/objdetect/HOGDescriptor;->compute_3(JJJ)V

    .line 354
    return-void
.end method

.method public compute(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfFloat;Lorg/opencv/core/Size;)V
    .locals 11
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "descriptors"    # Lorg/opencv/core/MatOfFloat;
    .param p3, "winStride"    # Lorg/opencv/core/Size;

    .line 342
    move-object v0, p2

    .line 343
    .local v0, "descriptors_mat":Lorg/opencv/core/Mat;
    iget-wide v1, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, p3, Lorg/opencv/core/Size;->width:D

    iget-wide v9, p3, Lorg/opencv/core/Size;->height:D

    invoke-static/range {v1 .. v10}, Lorg/opencv/objdetect/HOGDescriptor;->compute_2(JJJDD)V

    .line 344
    return-void
.end method

.method public compute(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfFloat;Lorg/opencv/core/Size;Lorg/opencv/core/Size;)V
    .locals 21
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "descriptors"    # Lorg/opencv/core/MatOfFloat;
    .param p3, "winStride"    # Lorg/opencv/core/Size;
    .param p4, "padding"    # Lorg/opencv/core/Size;

    move-object/from16 v0, p3

    .line 331
    move-object/from16 v1, p4

    move-object/from16 v2, p2

    .line 332
    .local v2, "descriptors_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p0

    iget-wide v4, v3, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v6, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v12, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v18, v2

    iget-wide v2, v1, Lorg/opencv/core/Size;->width:D

    .end local v2    # "descriptors_mat":Lorg/opencv/core/Mat;
    .local v18, "descriptors_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v19, v2

    iget-wide v2, v1, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v14, v19

    move-wide/from16 v16, v2

    invoke-static/range {v4 .. v17}, Lorg/opencv/objdetect/HOGDescriptor;->compute_1(JJJDDDD)V

    .line 333
    return-void
.end method

.method public compute(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfFloat;Lorg/opencv/core/Size;Lorg/opencv/core/Size;Lorg/opencv/core/MatOfPoint;)V
    .locals 26
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "descriptors"    # Lorg/opencv/core/MatOfFloat;
    .param p3, "winStride"    # Lorg/opencv/core/Size;
    .param p4, "padding"    # Lorg/opencv/core/Size;
    .param p5, "locations"    # Lorg/opencv/core/MatOfPoint;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    .line 318
    move-object/from16 v2, p2

    .line 319
    .local v2, "descriptors_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p5

    .line 320
    .local v3, "locations_mat":Lorg/opencv/core/Mat;
    move-object/from16 v4, p0

    iget-wide v5, v4, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v11, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v13, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v21, v13

    iget-wide v13, v1, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v23, v13

    iget-wide v13, v1, Lorg/opencv/core/Size;->height:D

    iget-wide v0, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v18, v13

    move-wide/from16 v16, v23

    move-wide/from16 v13, v21

    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    move-wide/from16 v19, v0

    invoke-static/range {v5 .. v20}, Lorg/opencv/objdetect/HOGDescriptor;->compute_0(JJJDDDDJ)V

    .line 321
    return-void
.end method

.method public computeGradient(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V
    .locals 8
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "grad"    # Lorg/opencv/core/Mat;
    .param p3, "angleOfs"    # Lorg/opencv/core/Mat;

    .line 391
    iget-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/objdetect/HOGDescriptor;->computeGradient_2(JJJJ)V

    .line 392
    return-void
.end method

.method public computeGradient(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;)V
    .locals 17
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "grad"    # Lorg/opencv/core/Mat;
    .param p3, "angleOfs"    # Lorg/opencv/core/Mat;
    .param p4, "paddingTL"    # Lorg/opencv/core/Size;

    .line 381
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v4, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p2

    iget-wide v6, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v12, p3

    iget-wide v8, v12, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v12, v0, Lorg/opencv/core/Size;->height:D

    invoke-static/range {v2 .. v13}, Lorg/opencv/objdetect/HOGDescriptor;->computeGradient_1(JJJJDD)V

    .line 382
    return-void
.end method

.method public computeGradient(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;Lorg/opencv/core/Size;)V
    .locals 24
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "grad"    # Lorg/opencv/core/Mat;
    .param p3, "angleOfs"    # Lorg/opencv/core/Mat;
    .param p4, "paddingTL"    # Lorg/opencv/core/Size;
    .param p5, "paddingBR"    # Lorg/opencv/core/Size;

    move-object/from16 v0, p4

    .line 370
    move-object/from16 v1, p5

    move-object/from16 v2, p0

    iget-wide v3, v2, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v5, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p2

    iget-wide v7, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p3

    iget-wide v9, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v11, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v13, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v20, v13

    iget-wide v13, v1, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v22, v13

    iget-wide v13, v1, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v18, v13

    move-wide/from16 v16, v22

    move-wide/from16 v13, v20

    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    invoke-static/range {v3 .. v18}, Lorg/opencv/objdetect/HOGDescriptor;->computeGradient_0(JJJJDDDD)V

    .line 371
    return-void
.end method

.method public detect(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfPoint;Lorg/opencv/core/MatOfDouble;)V
    .locals 10
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "foundLocations"    # Lorg/opencv/core/MatOfPoint;
    .param p3, "weights"    # Lorg/opencv/core/MatOfDouble;

    .line 475
    move-object v0, p2

    .line 476
    .local v0, "foundLocations_mat":Lorg/opencv/core/Mat;
    move-object v1, p3

    .line 477
    .local v1, "weights_mat":Lorg/opencv/core/Mat;
    iget-wide v2, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v9}, Lorg/opencv/objdetect/HOGDescriptor;->detect_4(JJJJ)V

    .line 478
    return-void
.end method

.method public detect(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfPoint;Lorg/opencv/core/MatOfDouble;D)V
    .locals 14
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "foundLocations"    # Lorg/opencv/core/MatOfPoint;
    .param p3, "weights"    # Lorg/opencv/core/MatOfDouble;
    .param p4, "hitThreshold"    # D

    .line 461
    move-object/from16 v0, p2

    .line 462
    .local v0, "foundLocations_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p3

    .line 463
    .local v1, "weights_mat":Lorg/opencv/core/Mat;
    move-object v2, p0

    iget-wide v3, v2, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    move-object v13, p1

    iget-wide v5, v13, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v11, p4

    invoke-static/range {v3 .. v12}, Lorg/opencv/objdetect/HOGDescriptor;->detect_3(JJJJD)V

    .line 464
    return-void
.end method

.method public detect(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfPoint;Lorg/opencv/core/MatOfDouble;DLorg/opencv/core/Size;)V
    .locals 20
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "foundLocations"    # Lorg/opencv/core/MatOfPoint;
    .param p3, "weights"    # Lorg/opencv/core/MatOfDouble;
    .param p4, "hitThreshold"    # D
    .param p6, "winStride"    # Lorg/opencv/core/Size;

    .line 446
    move-object/from16 v0, p6

    move-object/from16 v1, p2

    .line 447
    .local v1, "foundLocations_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p3

    .line 448
    .local v2, "weights_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p0

    iget-wide v4, v3, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v6, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v12, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    iget-wide v1, v0, Lorg/opencv/core/Size;->height:D

    .end local v1    # "foundLocations_mat":Lorg/opencv/core/Mat;
    .end local v2    # "weights_mat":Lorg/opencv/core/Mat;
    .local v18, "foundLocations_mat":Lorg/opencv/core/Mat;
    .local v19, "weights_mat":Lorg/opencv/core/Mat;
    move-wide v15, v12

    move-wide/from16 v12, p4

    move-wide v14, v15

    move-wide/from16 v16, v1

    invoke-static/range {v4 .. v17}, Lorg/opencv/objdetect/HOGDescriptor;->detect_2(JJJJDDD)V

    .line 449
    return-void
.end method

.method public detect(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfPoint;Lorg/opencv/core/MatOfDouble;DLorg/opencv/core/Size;Lorg/opencv/core/Size;)V
    .locals 29
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "foundLocations"    # Lorg/opencv/core/MatOfPoint;
    .param p3, "weights"    # Lorg/opencv/core/MatOfDouble;
    .param p4, "hitThreshold"    # D
    .param p6, "winStride"    # Lorg/opencv/core/Size;
    .param p7, "padding"    # Lorg/opencv/core/Size;

    move-object/from16 v0, p6

    .line 430
    move-object/from16 v1, p7

    move-object/from16 v2, p2

    .line 431
    .local v2, "foundLocations_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p3

    .line 432
    .local v3, "weights_mat":Lorg/opencv/core/Mat;
    move-object/from16 v4, p0

    iget-wide v5, v4, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v11, v3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v13, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    iget-wide v2, v0, Lorg/opencv/core/Size;->height:D

    .end local v2    # "foundLocations_mat":Lorg/opencv/core/Mat;
    .end local v3    # "weights_mat":Lorg/opencv/core/Mat;
    .local v23, "foundLocations_mat":Lorg/opencv/core/Mat;
    .local v24, "weights_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v25, v2

    iget-wide v2, v1, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v27, v2

    iget-wide v2, v1, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v16, v13

    move-wide/from16 v13, p4

    move-wide/from16 v15, v16

    move-wide/from16 v17, v25

    move-wide/from16 v19, v27

    move-wide/from16 v21, v2

    invoke-static/range {v5 .. v22}, Lorg/opencv/objdetect/HOGDescriptor;->detect_1(JJJJDDDDD)V

    .line 433
    return-void
.end method

.method public detect(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfPoint;Lorg/opencv/core/MatOfDouble;DLorg/opencv/core/Size;Lorg/opencv/core/Size;Lorg/opencv/core/MatOfPoint;)V
    .locals 35
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "foundLocations"    # Lorg/opencv/core/MatOfPoint;
    .param p3, "weights"    # Lorg/opencv/core/MatOfDouble;
    .param p4, "hitThreshold"    # D
    .param p6, "winStride"    # Lorg/opencv/core/Size;
    .param p7, "padding"    # Lorg/opencv/core/Size;
    .param p8, "searchLocations"    # Lorg/opencv/core/MatOfPoint;

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    .line 412
    move-object/from16 v2, p2

    .line 413
    .local v2, "foundLocations_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p3

    .line 414
    .local v3, "weights_mat":Lorg/opencv/core/Mat;
    move-object/from16 v4, p8

    .line 415
    .local v4, "searchLocations_mat":Lorg/opencv/core/Mat;
    move-object/from16 v5, p0

    iget-wide v6, v5, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v8, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v12, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    iget-wide v2, v0, Lorg/opencv/core/Size;->width:D

    .end local v2    # "foundLocations_mat":Lorg/opencv/core/Mat;
    .end local v3    # "weights_mat":Lorg/opencv/core/Mat;
    .local v26, "foundLocations_mat":Lorg/opencv/core/Mat;
    .local v27, "weights_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v28, v2

    iget-wide v2, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v30, v2

    iget-wide v2, v1, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v32, v2

    iget-wide v2, v1, Lorg/opencv/core/Size;->height:D

    iget-wide v0, v4, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v14, p4

    move-wide/from16 v16, v28

    move-wide/from16 v18, v30

    move-wide/from16 v20, v32

    move-wide/from16 v22, v2

    move-wide/from16 v24, v0

    invoke-static/range {v6 .. v25}, Lorg/opencv/objdetect/HOGDescriptor;->detect_0(JJJJDDDDDJ)V

    .line 416
    return-void
.end method

.method public detectMultiScale(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;Lorg/opencv/core/MatOfDouble;)V
    .locals 10
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "foundLocations"    # Lorg/opencv/core/MatOfRect;
    .param p3, "foundWeights"    # Lorg/opencv/core/MatOfDouble;

    .line 606
    move-object v0, p2

    .line 607
    .local v0, "foundLocations_mat":Lorg/opencv/core/Mat;
    move-object v1, p3

    .line 608
    .local v1, "foundWeights_mat":Lorg/opencv/core/Mat;
    iget-wide v2, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v9}, Lorg/opencv/objdetect/HOGDescriptor;->detectMultiScale_6(JJJJ)V

    .line 609
    return-void
.end method

.method public detectMultiScale(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;Lorg/opencv/core/MatOfDouble;D)V
    .locals 14
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "foundLocations"    # Lorg/opencv/core/MatOfRect;
    .param p3, "foundWeights"    # Lorg/opencv/core/MatOfDouble;
    .param p4, "hitThreshold"    # D

    .line 591
    move-object/from16 v0, p2

    .line 592
    .local v0, "foundLocations_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p3

    .line 593
    .local v1, "foundWeights_mat":Lorg/opencv/core/Mat;
    move-object v2, p0

    iget-wide v3, v2, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    move-object v13, p1

    iget-wide v5, v13, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v11, p4

    invoke-static/range {v3 .. v12}, Lorg/opencv/objdetect/HOGDescriptor;->detectMultiScale_5(JJJJD)V

    .line 594
    return-void
.end method

.method public detectMultiScale(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;Lorg/opencv/core/MatOfDouble;DLorg/opencv/core/Size;)V
    .locals 20
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "foundLocations"    # Lorg/opencv/core/MatOfRect;
    .param p3, "foundWeights"    # Lorg/opencv/core/MatOfDouble;
    .param p4, "hitThreshold"    # D
    .param p6, "winStride"    # Lorg/opencv/core/Size;

    .line 575
    move-object/from16 v0, p6

    move-object/from16 v1, p2

    .line 576
    .local v1, "foundLocations_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p3

    .line 577
    .local v2, "foundWeights_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p0

    iget-wide v4, v3, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v6, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v12, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    iget-wide v1, v0, Lorg/opencv/core/Size;->height:D

    .end local v1    # "foundLocations_mat":Lorg/opencv/core/Mat;
    .end local v2    # "foundWeights_mat":Lorg/opencv/core/Mat;
    .local v18, "foundLocations_mat":Lorg/opencv/core/Mat;
    .local v19, "foundWeights_mat":Lorg/opencv/core/Mat;
    move-wide v15, v12

    move-wide/from16 v12, p4

    move-wide v14, v15

    move-wide/from16 v16, v1

    invoke-static/range {v4 .. v17}, Lorg/opencv/objdetect/HOGDescriptor;->detectMultiScale_4(JJJJDDD)V

    .line 578
    return-void
.end method

.method public detectMultiScale(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;Lorg/opencv/core/MatOfDouble;DLorg/opencv/core/Size;Lorg/opencv/core/Size;)V
    .locals 29
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "foundLocations"    # Lorg/opencv/core/MatOfRect;
    .param p3, "foundWeights"    # Lorg/opencv/core/MatOfDouble;
    .param p4, "hitThreshold"    # D
    .param p6, "winStride"    # Lorg/opencv/core/Size;
    .param p7, "padding"    # Lorg/opencv/core/Size;

    move-object/from16 v0, p6

    .line 558
    move-object/from16 v1, p7

    move-object/from16 v2, p2

    .line 559
    .local v2, "foundLocations_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p3

    .line 560
    .local v3, "foundWeights_mat":Lorg/opencv/core/Mat;
    move-object/from16 v4, p0

    iget-wide v5, v4, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v11, v3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v13, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    iget-wide v2, v0, Lorg/opencv/core/Size;->height:D

    .end local v2    # "foundLocations_mat":Lorg/opencv/core/Mat;
    .end local v3    # "foundWeights_mat":Lorg/opencv/core/Mat;
    .local v23, "foundLocations_mat":Lorg/opencv/core/Mat;
    .local v24, "foundWeights_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v25, v2

    iget-wide v2, v1, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v27, v2

    iget-wide v2, v1, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v16, v13

    move-wide/from16 v13, p4

    move-wide/from16 v15, v16

    move-wide/from16 v17, v25

    move-wide/from16 v19, v27

    move-wide/from16 v21, v2

    invoke-static/range {v5 .. v22}, Lorg/opencv/objdetect/HOGDescriptor;->detectMultiScale_3(JJJJDDDDD)V

    .line 561
    return-void
.end method

.method public detectMultiScale(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;Lorg/opencv/core/MatOfDouble;DLorg/opencv/core/Size;Lorg/opencv/core/Size;D)V
    .locals 31
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "foundLocations"    # Lorg/opencv/core/MatOfRect;
    .param p3, "foundWeights"    # Lorg/opencv/core/MatOfDouble;
    .param p4, "hitThreshold"    # D
    .param p6, "winStride"    # Lorg/opencv/core/Size;
    .param p7, "padding"    # Lorg/opencv/core/Size;
    .param p8, "scale"    # D

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    .line 540
    move-object/from16 v2, p2

    .line 541
    .local v2, "foundLocations_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p3

    .line 542
    .local v3, "foundWeights_mat":Lorg/opencv/core/Mat;
    move-object/from16 v4, p0

    iget-wide v5, v4, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v11, v3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v13, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    iget-wide v2, v0, Lorg/opencv/core/Size;->height:D

    .end local v2    # "foundLocations_mat":Lorg/opencv/core/Mat;
    .end local v3    # "foundWeights_mat":Lorg/opencv/core/Mat;
    .local v25, "foundLocations_mat":Lorg/opencv/core/Mat;
    .local v26, "foundWeights_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v27, v2

    iget-wide v2, v1, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v29, v2

    iget-wide v2, v1, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v16, v13

    move-wide/from16 v13, p4

    move-wide/from16 v15, v16

    move-wide/from16 v17, v27

    move-wide/from16 v19, v29

    move-wide/from16 v21, v2

    move-wide/from16 v23, p8

    invoke-static/range {v5 .. v24}, Lorg/opencv/objdetect/HOGDescriptor;->detectMultiScale_2(JJJJDDDDDD)V

    .line 543
    return-void
.end method

.method public detectMultiScale(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;Lorg/opencv/core/MatOfDouble;DLorg/opencv/core/Size;Lorg/opencv/core/Size;DD)V
    .locals 33
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "foundLocations"    # Lorg/opencv/core/MatOfRect;
    .param p3, "foundWeights"    # Lorg/opencv/core/MatOfDouble;
    .param p4, "hitThreshold"    # D
    .param p6, "winStride"    # Lorg/opencv/core/Size;
    .param p7, "padding"    # Lorg/opencv/core/Size;
    .param p8, "scale"    # D
    .param p10, "finalThreshold"    # D

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    .line 521
    move-object/from16 v2, p2

    .line 522
    .local v2, "foundLocations_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p3

    .line 523
    .local v3, "foundWeights_mat":Lorg/opencv/core/Mat;
    move-object/from16 v4, p0

    iget-wide v5, v4, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v11, v3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v13, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    iget-wide v2, v0, Lorg/opencv/core/Size;->height:D

    .end local v2    # "foundLocations_mat":Lorg/opencv/core/Mat;
    .end local v3    # "foundWeights_mat":Lorg/opencv/core/Mat;
    .local v27, "foundLocations_mat":Lorg/opencv/core/Mat;
    .local v28, "foundWeights_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v29, v2

    iget-wide v2, v1, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v31, v2

    iget-wide v2, v1, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v16, v13

    move-wide/from16 v13, p4

    move-wide/from16 v15, v16

    move-wide/from16 v17, v29

    move-wide/from16 v19, v31

    move-wide/from16 v21, v2

    move-wide/from16 v23, p8

    move-wide/from16 v25, p10

    invoke-static/range {v5 .. v26}, Lorg/opencv/objdetect/HOGDescriptor;->detectMultiScale_1(JJJJDDDDDDD)V

    .line 524
    return-void
.end method

.method public detectMultiScale(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;Lorg/opencv/core/MatOfDouble;DLorg/opencv/core/Size;Lorg/opencv/core/Size;DDZ)V
    .locals 34
    .param p1, "img"    # Lorg/opencv/core/Mat;
    .param p2, "foundLocations"    # Lorg/opencv/core/MatOfRect;
    .param p3, "foundWeights"    # Lorg/opencv/core/MatOfDouble;
    .param p4, "hitThreshold"    # D
    .param p6, "winStride"    # Lorg/opencv/core/Size;
    .param p7, "padding"    # Lorg/opencv/core/Size;
    .param p8, "scale"    # D
    .param p10, "finalThreshold"    # D
    .param p12, "useMeanshiftGrouping"    # Z

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    .line 501
    move-object/from16 v2, p2

    .line 502
    .local v2, "foundLocations_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p3

    .line 503
    .local v3, "foundWeights_mat":Lorg/opencv/core/Mat;
    move-object/from16 v4, p0

    iget-wide v5, v4, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v11, v3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v13, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    iget-wide v2, v0, Lorg/opencv/core/Size;->height:D

    .end local v2    # "foundLocations_mat":Lorg/opencv/core/Mat;
    .end local v3    # "foundWeights_mat":Lorg/opencv/core/Mat;
    .local v28, "foundLocations_mat":Lorg/opencv/core/Mat;
    .local v29, "foundWeights_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v30, v2

    iget-wide v2, v1, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v32, v2

    iget-wide v2, v1, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v16, v13

    move-wide/from16 v13, p4

    move-wide/from16 v15, v16

    move-wide/from16 v17, v30

    move-wide/from16 v19, v32

    move-wide/from16 v21, v2

    move-wide/from16 v23, p8

    move-wide/from16 v25, p10

    move/from16 v27, p12

    invoke-static/range {v5 .. v27}, Lorg/opencv/objdetect/HOGDescriptor;->detectMultiScale_0(JJJJDDDDDDDZ)V

    .line 504
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 766
    iget-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/HOGDescriptor;->delete(J)V

    .line 767
    return-void
.end method

.method public getDescriptorSize()J
    .locals 2

    .line 275
    iget-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/HOGDescriptor;->getDescriptorSize_0(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNativeObjAddr()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    return-wide v0
.end method

.method public getWinSigma()D
    .locals 2

    .line 262
    iget-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/HOGDescriptor;->getWinSigma_0(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public get_L2HysThreshold()D
    .locals 2

    .line 724
    iget-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/HOGDescriptor;->get_L2HysThreshold_0(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public get_blockSize()Lorg/opencv/core/Size;
    .locals 3

    .line 661
    new-instance v0, Lorg/opencv/core/Size;

    iget-wide v1, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v1, v2}, Lorg/opencv/objdetect/HOGDescriptor;->get_blockSize_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Size;-><init>([D)V

    return-object v0
.end method

.method public get_blockStride()Lorg/opencv/core/Size;
    .locals 3

    .line 670
    new-instance v0, Lorg/opencv/core/Size;

    iget-wide v1, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v1, v2}, Lorg/opencv/objdetect/HOGDescriptor;->get_blockStride_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Size;-><init>([D)V

    return-object v0
.end method

.method public get_cellSize()Lorg/opencv/core/Size;
    .locals 3

    .line 679
    new-instance v0, Lorg/opencv/core/Size;

    iget-wide v1, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v1, v2}, Lorg/opencv/objdetect/HOGDescriptor;->get_cellSize_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Size;-><init>([D)V

    return-object v0
.end method

.method public get_derivAperture()I
    .locals 2

    .line 697
    iget-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/HOGDescriptor;->get_derivAperture_0(J)I

    move-result v0

    return v0
.end method

.method public get_gammaCorrection()Z
    .locals 2

    .line 733
    iget-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/HOGDescriptor;->get_gammaCorrection_0(J)Z

    move-result v0

    return v0
.end method

.method public get_histogramNormType()I
    .locals 2

    .line 715
    iget-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/HOGDescriptor;->get_histogramNormType_0(J)I

    move-result v0

    return v0
.end method

.method public get_nbins()I
    .locals 2

    .line 688
    iget-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/HOGDescriptor;->get_nbins_0(J)I

    move-result v0

    return v0
.end method

.method public get_nlevels()I
    .locals 2

    .line 751
    iget-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/HOGDescriptor;->get_nlevels_0(J)I

    move-result v0

    return v0
.end method

.method public get_signedGradient()Z
    .locals 2

    .line 760
    iget-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/HOGDescriptor;->get_signedGradient_0(J)Z

    move-result v0

    return v0
.end method

.method public get_svmDetector()Lorg/opencv/core/MatOfFloat;
    .locals 2

    .line 742
    iget-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/HOGDescriptor;->get_svmDetector_0(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/core/MatOfFloat;->fromNativeAddr(J)Lorg/opencv/core/MatOfFloat;

    move-result-object v0

    return-object v0
.end method

.method public get_winSigma()D
    .locals 2

    .line 706
    iget-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/HOGDescriptor;->get_winSigma_0(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public get_winSize()Lorg/opencv/core/Size;
    .locals 3

    .line 652
    new-instance v0, Lorg/opencv/core/Size;

    iget-wide v1, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v1, v2}, Lorg/opencv/objdetect/HOGDescriptor;->get_winSize_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Size;-><init>([D)V

    return-object v0
.end method

.method public load(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .line 249
    iget-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/objdetect/HOGDescriptor;->load_1(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "objname"    # Ljava/lang/String;

    .line 240
    iget-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/objdetect/HOGDescriptor;->load_0(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public save(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .line 630
    iget-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/objdetect/HOGDescriptor;->save_1(JLjava/lang/String;)V

    .line 631
    return-void
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "objname"    # Ljava/lang/String;

    .line 622
    iget-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lorg/opencv/objdetect/HOGDescriptor;->save_0(JLjava/lang/String;Ljava/lang/String;)V

    .line 623
    return-void
.end method

.method public setSVMDetector(Lorg/opencv/core/Mat;)V
    .locals 4
    .param p1, "svmdetector"    # Lorg/opencv/core/Mat;

    .line 643
    iget-wide v0, p0, Lorg/opencv/objdetect/HOGDescriptor;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/objdetect/HOGDescriptor;->setSVMDetector_0(JJ)V

    .line 644
    return-void
.end method
