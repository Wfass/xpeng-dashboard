.class public Lorg/opencv/objdetect/CascadeClassifier;
.super Ljava/lang/Object;
.source "CascadeClassifier.java"


# instance fields
.field protected final nativeObj:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Lorg/opencv/objdetect/CascadeClassifier;->CascadeClassifier_1()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    .line 49
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 0
    .param p1, "addr"    # J

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lorg/opencv/objdetect/CascadeClassifier;->CascadeClassifier_0(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    .line 40
    return-void
.end method

.method private static native CascadeClassifier_0(Ljava/lang/String;)J
.end method

.method private static native CascadeClassifier_1()J
.end method

.method public static __fromPtr__(J)Lorg/opencv/objdetect/CascadeClassifier;
    .locals 1
    .param p0, "addr"    # J

    .line 27
    new-instance v0, Lorg/opencv/objdetect/CascadeClassifier;

    invoke-direct {v0, p0, p1}, Lorg/opencv/objdetect/CascadeClassifier;-><init>(J)V

    return-object v0
.end method

.method public static convert(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "oldcascade"    # Ljava/lang/String;
    .param p1, "newcascade"    # Ljava/lang/String;

    .line 66
    invoke-static {p0, p1}, Lorg/opencv/objdetect/CascadeClassifier;->convert_0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static native convert_0(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native delete(J)V
.end method

.method private static native detectMultiScale2_0(JJJJDIIDDDD)V
.end method

.method private static native detectMultiScale2_1(JJJJDIIDD)V
.end method

.method private static native detectMultiScale2_2(JJJJDII)V
.end method

.method private static native detectMultiScale2_3(JJJJDI)V
.end method

.method private static native detectMultiScale2_4(JJJJD)V
.end method

.method private static native detectMultiScale2_5(JJJJ)V
.end method

.method private static native detectMultiScale3_0(JJJJJDIIDDDDZ)V
.end method

.method private static native detectMultiScale3_1(JJJJJDIIDDDD)V
.end method

.method private static native detectMultiScale3_2(JJJJJDIIDD)V
.end method

.method private static native detectMultiScale3_3(JJJJJDII)V
.end method

.method private static native detectMultiScale3_4(JJJJJDI)V
.end method

.method private static native detectMultiScale3_5(JJJJJD)V
.end method

.method private static native detectMultiScale3_6(JJJJJ)V
.end method

.method private static native detectMultiScale_0(JJJDIIDDDD)V
.end method

.method private static native detectMultiScale_1(JJJDIIDD)V
.end method

.method private static native detectMultiScale_2(JJJDII)V
.end method

.method private static native detectMultiScale_3(JJJDI)V
.end method

.method private static native detectMultiScale_4(JJJD)V
.end method

.method private static native detectMultiScale_5(JJJ)V
.end method

.method private static native empty_0(J)Z
.end method

.method private static native getFeatureType_0(J)I
.end method

.method private static native getOriginalWindowSize_0(J)[D
.end method

.method private static native isOldFormatCascade_0(J)Z
.end method

.method private static native load_0(JLjava/lang/String;)Z
.end method


# virtual methods
.method public detectMultiScale(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;)V
    .locals 7
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "objects"    # Lorg/opencv/core/MatOfRect;

    .line 290
    move-object v0, p2

    .line 291
    .local v0, "objects_mat":Lorg/opencv/core/Mat;
    iget-wide v1, p0, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v1 .. v6}, Lorg/opencv/objdetect/CascadeClassifier;->detectMultiScale_5(JJJ)V

    .line 292
    return-void
.end method

.method public detectMultiScale(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;D)V
    .locals 9
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "objects"    # Lorg/opencv/core/MatOfRect;
    .param p3, "scaleFactor"    # D

    .line 265
    move-object v0, p2

    .line 266
    .local v0, "objects_mat":Lorg/opencv/core/Mat;
    iget-wide v1, p0, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v7, p3

    invoke-static/range {v1 .. v8}, Lorg/opencv/objdetect/CascadeClassifier;->detectMultiScale_4(JJJD)V

    .line 267
    return-void
.end method

.method public detectMultiScale(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;DI)V
    .locals 10
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "objects"    # Lorg/opencv/core/MatOfRect;
    .param p3, "scaleFactor"    # D
    .param p5, "minNeighbors"    # I

    .line 239
    move-object v0, p2

    .line 240
    .local v0, "objects_mat":Lorg/opencv/core/Mat;
    iget-wide v1, p0, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide v7, p3

    move v9, p5

    invoke-static/range {v1 .. v9}, Lorg/opencv/objdetect/CascadeClassifier;->detectMultiScale_3(JJJDI)V

    .line 241
    return-void
.end method

.method public detectMultiScale(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;DII)V
    .locals 13
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "objects"    # Lorg/opencv/core/MatOfRect;
    .param p3, "scaleFactor"    # D
    .param p5, "minNeighbors"    # I
    .param p6, "flags"    # I

    .line 212
    move-object v0, p2

    .line 213
    .local v0, "objects_mat":Lorg/opencv/core/Mat;
    move-object v1, p0

    iget-wide v2, v1, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    move-object v12, p1

    iget-wide v4, v12, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v8, p3

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-static/range {v2 .. v11}, Lorg/opencv/objdetect/CascadeClassifier;->detectMultiScale_2(JJJDII)V

    .line 214
    return-void
.end method

.method public detectMultiScale(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;DIILorg/opencv/core/Size;)V
    .locals 18
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "objects"    # Lorg/opencv/core/MatOfRect;
    .param p3, "scaleFactor"    # D
    .param p5, "minNeighbors"    # I
    .param p6, "flags"    # I
    .param p7, "minSize"    # Lorg/opencv/core/Size;

    .line 184
    move-object/from16 v0, p7

    move-object/from16 v1, p2

    .line 185
    .local v1, "objects_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p0

    iget-wide v3, v2, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v5, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v13, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v11, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v9, p3

    move-wide/from16 v16, v11

    move/from16 v11, p5

    move/from16 v12, p6

    move-wide/from16 v15, v16

    invoke-static/range {v3 .. v16}, Lorg/opencv/objdetect/CascadeClassifier;->detectMultiScale_1(JJJDIIDD)V

    .line 186
    return-void
.end method

.method public detectMultiScale(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;DIILorg/opencv/core/Size;Lorg/opencv/core/Size;)V
    .locals 25
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "objects"    # Lorg/opencv/core/MatOfRect;
    .param p3, "scaleFactor"    # D
    .param p5, "minNeighbors"    # I
    .param p6, "flags"    # I
    .param p7, "minSize"    # Lorg/opencv/core/Size;
    .param p8, "maxSize"    # Lorg/opencv/core/Size;

    move-object/from16 v0, p7

    .line 155
    move-object/from16 v1, p8

    move-object/from16 v2, p2

    .line 156
    .local v2, "objects_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p0

    iget-wide v4, v3, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v6, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v12, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v10, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v22, v2

    iget-wide v2, v1, Lorg/opencv/core/Size;->width:D

    .end local v2    # "objects_mat":Lorg/opencv/core/Mat;
    .local v22, "objects_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v23, v2

    iget-wide v2, v1, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v16, v10

    move-wide/from16 v10, p3

    move-wide/from16 v18, v12

    move/from16 v12, p5

    move/from16 v13, p6

    move-wide/from16 v14, v18

    move-wide/from16 v18, v23

    move-wide/from16 v20, v2

    invoke-static/range {v4 .. v21}, Lorg/opencv/objdetect/CascadeClassifier;->detectMultiScale_0(JJJDIIDDDD)V

    .line 157
    return-void
.end method

.method public detectMultiScale2(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;Lorg/opencv/core/MatOfInt;)V
    .locals 10
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "objects"    # Lorg/opencv/core/MatOfRect;
    .param p3, "numDetections"    # Lorg/opencv/core/MatOfInt;

    .line 411
    move-object v0, p2

    .line 412
    .local v0, "objects_mat":Lorg/opencv/core/Mat;
    move-object v1, p3

    .line 413
    .local v1, "numDetections_mat":Lorg/opencv/core/Mat;
    iget-wide v2, p0, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v9}, Lorg/opencv/objdetect/CascadeClassifier;->detectMultiScale2_5(JJJJ)V

    .line 414
    return-void
.end method

.method public detectMultiScale2(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;Lorg/opencv/core/MatOfInt;D)V
    .locals 14
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "objects"    # Lorg/opencv/core/MatOfRect;
    .param p3, "numDetections"    # Lorg/opencv/core/MatOfInt;
    .param p4, "scaleFactor"    # D

    .line 394
    move-object/from16 v0, p2

    .line 395
    .local v0, "objects_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p3

    .line 396
    .local v1, "numDetections_mat":Lorg/opencv/core/Mat;
    move-object v2, p0

    iget-wide v3, v2, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    move-object v13, p1

    iget-wide v5, v13, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v11, p4

    invoke-static/range {v3 .. v12}, Lorg/opencv/objdetect/CascadeClassifier;->detectMultiScale2_4(JJJJD)V

    .line 397
    return-void
.end method

.method public detectMultiScale2(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;Lorg/opencv/core/MatOfInt;DI)V
    .locals 15
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "objects"    # Lorg/opencv/core/MatOfRect;
    .param p3, "numDetections"    # Lorg/opencv/core/MatOfInt;
    .param p4, "scaleFactor"    # D
    .param p6, "minNeighbors"    # I

    .line 376
    move-object/from16 v0, p2

    .line 377
    .local v0, "objects_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p3

    .line 378
    .local v1, "numDetections_mat":Lorg/opencv/core/Mat;
    move-object v2, p0

    iget-wide v3, v2, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v5, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v11, p4

    move/from16 v13, p6

    invoke-static/range {v3 .. v13}, Lorg/opencv/objdetect/CascadeClassifier;->detectMultiScale2_3(JJJJDI)V

    .line 379
    return-void
.end method

.method public detectMultiScale2(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;Lorg/opencv/core/MatOfInt;DII)V
    .locals 16
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "objects"    # Lorg/opencv/core/MatOfRect;
    .param p3, "numDetections"    # Lorg/opencv/core/MatOfInt;
    .param p4, "scaleFactor"    # D
    .param p6, "minNeighbors"    # I
    .param p7, "flags"    # I

    .line 357
    move-object/from16 v0, p2

    .line 358
    .local v0, "objects_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p3

    .line 359
    .local v1, "numDetections_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p0

    iget-wide v3, v2, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v5, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v11, p4

    move/from16 v13, p6

    move/from16 v14, p7

    invoke-static/range {v3 .. v14}, Lorg/opencv/objdetect/CascadeClassifier;->detectMultiScale2_2(JJJJDII)V

    .line 360
    return-void
.end method

.method public detectMultiScale2(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;Lorg/opencv/core/MatOfInt;DIILorg/opencv/core/Size;)V
    .locals 22
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "objects"    # Lorg/opencv/core/MatOfRect;
    .param p3, "numDetections"    # Lorg/opencv/core/MatOfInt;
    .param p4, "scaleFactor"    # D
    .param p6, "minNeighbors"    # I
    .param p7, "flags"    # I
    .param p8, "minSize"    # Lorg/opencv/core/Size;

    .line 337
    move-object/from16 v0, p8

    move-object/from16 v1, p2

    .line 338
    .local v1, "objects_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p3

    .line 339
    .local v2, "numDetections_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p0

    iget-wide v4, v3, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v6, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v12, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    iget-wide v1, v0, Lorg/opencv/core/Size;->height:D

    .end local v1    # "objects_mat":Lorg/opencv/core/Mat;
    .end local v2    # "numDetections_mat":Lorg/opencv/core/Mat;
    .local v20, "objects_mat":Lorg/opencv/core/Mat;
    .local v21, "numDetections_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v16, v12

    move-wide/from16 v12, p4

    move/from16 v14, p6

    move/from16 v15, p7

    move-wide/from16 v18, v1

    invoke-static/range {v4 .. v19}, Lorg/opencv/objdetect/CascadeClassifier;->detectMultiScale2_1(JJJJDIIDD)V

    .line 340
    return-void
.end method

.method public detectMultiScale2(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;Lorg/opencv/core/MatOfInt;DIILorg/opencv/core/Size;Lorg/opencv/core/Size;)V
    .locals 31
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "objects"    # Lorg/opencv/core/MatOfRect;
    .param p3, "numDetections"    # Lorg/opencv/core/MatOfInt;
    .param p4, "scaleFactor"    # D
    .param p6, "minNeighbors"    # I
    .param p7, "flags"    # I
    .param p8, "minSize"    # Lorg/opencv/core/Size;
    .param p9, "maxSize"    # Lorg/opencv/core/Size;

    move-object/from16 v0, p8

    .line 316
    move-object/from16 v1, p9

    move-object/from16 v2, p2

    .line 317
    .local v2, "objects_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p3

    .line 318
    .local v3, "numDetections_mat":Lorg/opencv/core/Mat;
    move-object/from16 v4, p0

    iget-wide v5, v4, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v11, v3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v13, v0, Lorg/opencv/core/Size;->width:D

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    iget-wide v2, v0, Lorg/opencv/core/Size;->height:D

    .end local v2    # "objects_mat":Lorg/opencv/core/Mat;
    .end local v3    # "numDetections_mat":Lorg/opencv/core/Mat;
    .local v25, "objects_mat":Lorg/opencv/core/Mat;
    .local v26, "numDetections_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v27, v2

    iget-wide v2, v1, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v29, v2

    iget-wide v2, v1, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v17, v13

    move-wide/from16 v13, p4

    move/from16 v15, p6

    move/from16 v16, p7

    move-wide/from16 v19, v27

    move-wide/from16 v21, v29

    move-wide/from16 v23, v2

    invoke-static/range {v5 .. v24}, Lorg/opencv/objdetect/CascadeClassifier;->detectMultiScale2_0(JJJJDIIDDDD)V

    .line 319
    return-void
.end method

.method public detectMultiScale3(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;Lorg/opencv/core/MatOfInt;Lorg/opencv/core/MatOfDouble;)V
    .locals 15
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "objects"    # Lorg/opencv/core/MatOfRect;
    .param p3, "rejectLevels"    # Lorg/opencv/core/MatOfInt;
    .param p4, "levelWeights"    # Lorg/opencv/core/MatOfDouble;

    .line 639
    move-object/from16 v0, p2

    .line 640
    .local v0, "objects_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p3

    .line 641
    .local v1, "rejectLevels_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p4

    .line 642
    .local v2, "levelWeights_mat":Lorg/opencv/core/Mat;
    move-object v3, p0

    iget-wide v4, v3, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v6, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v12, v2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v4 .. v13}, Lorg/opencv/objdetect/CascadeClassifier;->detectMultiScale3_6(JJJJJ)V

    .line 643
    return-void
.end method

.method public detectMultiScale3(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;Lorg/opencv/core/MatOfInt;Lorg/opencv/core/MatOfDouble;D)V
    .locals 16
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "objects"    # Lorg/opencv/core/MatOfRect;
    .param p3, "rejectLevels"    # Lorg/opencv/core/MatOfInt;
    .param p4, "levelWeights"    # Lorg/opencv/core/MatOfDouble;
    .param p5, "scaleFactor"    # D

    .line 610
    move-object/from16 v0, p2

    .line 611
    .local v0, "objects_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p3

    .line 612
    .local v1, "rejectLevels_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p4

    .line 613
    .local v2, "levelWeights_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p0

    iget-wide v4, v3, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v6, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v12, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v14, p5

    invoke-static/range {v4 .. v15}, Lorg/opencv/objdetect/CascadeClassifier;->detectMultiScale3_5(JJJJJD)V

    .line 614
    return-void
.end method

.method public detectMultiScale3(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;Lorg/opencv/core/MatOfInt;Lorg/opencv/core/MatOfDouble;DI)V
    .locals 17
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "objects"    # Lorg/opencv/core/MatOfRect;
    .param p3, "rejectLevels"    # Lorg/opencv/core/MatOfInt;
    .param p4, "levelWeights"    # Lorg/opencv/core/MatOfDouble;
    .param p5, "scaleFactor"    # D
    .param p7, "minNeighbors"    # I

    .line 580
    move-object/from16 v0, p2

    .line 581
    .local v0, "objects_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p3

    .line 582
    .local v1, "rejectLevels_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p4

    .line 583
    .local v2, "levelWeights_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p0

    iget-wide v4, v3, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v6, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v12, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v14, p5

    move/from16 v16, p7

    invoke-static/range {v4 .. v16}, Lorg/opencv/objdetect/CascadeClassifier;->detectMultiScale3_4(JJJJJDI)V

    .line 584
    return-void
.end method

.method public detectMultiScale3(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;Lorg/opencv/core/MatOfInt;Lorg/opencv/core/MatOfDouble;DII)V
    .locals 18
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "objects"    # Lorg/opencv/core/MatOfRect;
    .param p3, "rejectLevels"    # Lorg/opencv/core/MatOfInt;
    .param p4, "levelWeights"    # Lorg/opencv/core/MatOfDouble;
    .param p5, "scaleFactor"    # D
    .param p7, "minNeighbors"    # I
    .param p8, "flags"    # I

    .line 549
    move-object/from16 v0, p2

    .line 550
    .local v0, "objects_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p3

    .line 551
    .local v1, "rejectLevels_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p4

    .line 552
    .local v2, "levelWeights_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p0

    iget-wide v4, v3, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v6, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v12, v2, Lorg/opencv/core/Mat;->nativeObj:J

    move-wide/from16 v14, p5

    move/from16 v16, p7

    move/from16 v17, p8

    invoke-static/range {v4 .. v17}, Lorg/opencv/objdetect/CascadeClassifier;->detectMultiScale3_3(JJJJJDII)V

    .line 553
    return-void
.end method

.method public detectMultiScale3(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;Lorg/opencv/core/MatOfInt;Lorg/opencv/core/MatOfDouble;DIILorg/opencv/core/Size;)V
    .locals 27
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "objects"    # Lorg/opencv/core/MatOfRect;
    .param p3, "rejectLevels"    # Lorg/opencv/core/MatOfInt;
    .param p4, "levelWeights"    # Lorg/opencv/core/MatOfDouble;
    .param p5, "scaleFactor"    # D
    .param p7, "minNeighbors"    # I
    .param p8, "flags"    # I
    .param p9, "minSize"    # Lorg/opencv/core/Size;

    .line 517
    move-object/from16 v0, p9

    move-object/from16 v1, p2

    .line 518
    .local v1, "objects_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p3

    .line 519
    .local v2, "rejectLevels_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p4

    .line 520
    .local v3, "levelWeights_mat":Lorg/opencv/core/Mat;
    move-object/from16 v4, p0

    iget-wide v5, v4, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    move-object/from16 v15, p1

    iget-wide v7, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v11, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v13, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v23, v1

    move-object/from16 v24, v2

    iget-wide v1, v0, Lorg/opencv/core/Size;->width:D

    .end local v1    # "objects_mat":Lorg/opencv/core/Mat;
    .end local v2    # "rejectLevels_mat":Lorg/opencv/core/Mat;
    .local v23, "objects_mat":Lorg/opencv/core/Mat;
    .local v24, "rejectLevels_mat":Lorg/opencv/core/Mat;
    move-object/from16 v25, v3

    iget-wide v3, v0, Lorg/opencv/core/Size;->height:D

    .end local v3    # "levelWeights_mat":Lorg/opencv/core/Mat;
    .local v25, "levelWeights_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v15, p5

    move/from16 v17, p7

    move/from16 v18, p8

    move-wide/from16 v19, v1

    move-wide/from16 v21, v3

    invoke-static/range {v5 .. v22}, Lorg/opencv/objdetect/CascadeClassifier;->detectMultiScale3_2(JJJJJDIIDD)V

    .line 521
    return-void
.end method

.method public detectMultiScale3(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;Lorg/opencv/core/MatOfInt;Lorg/opencv/core/MatOfDouble;DIILorg/opencv/core/Size;Lorg/opencv/core/Size;)V
    .locals 37
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "objects"    # Lorg/opencv/core/MatOfRect;
    .param p3, "rejectLevels"    # Lorg/opencv/core/MatOfInt;
    .param p4, "levelWeights"    # Lorg/opencv/core/MatOfDouble;
    .param p5, "scaleFactor"    # D
    .param p7, "minNeighbors"    # I
    .param p8, "flags"    # I
    .param p9, "minSize"    # Lorg/opencv/core/Size;
    .param p10, "maxSize"    # Lorg/opencv/core/Size;

    move-object/from16 v0, p9

    .line 484
    move-object/from16 v1, p10

    move-object/from16 v2, p2

    .line 485
    .local v2, "objects_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p3

    .line 486
    .local v3, "rejectLevels_mat":Lorg/opencv/core/Mat;
    move-object/from16 v4, p4

    .line 487
    .local v4, "levelWeights_mat":Lorg/opencv/core/Mat;
    move-object/from16 v5, p0

    iget-wide v6, v5, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v8, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v12, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v2    # "objects_mat":Lorg/opencv/core/Mat;
    .end local v3    # "rejectLevels_mat":Lorg/opencv/core/Mat;
    .local v28, "objects_mat":Lorg/opencv/core/Mat;
    .local v29, "rejectLevels_mat":Lorg/opencv/core/Mat;
    move-object/from16 v30, v4

    iget-wide v4, v0, Lorg/opencv/core/Size;->width:D

    .end local v4    # "levelWeights_mat":Lorg/opencv/core/Mat;
    .local v30, "levelWeights_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v31, v4

    iget-wide v4, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v33, v4

    iget-wide v4, v1, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v35, v4

    iget-wide v4, v1, Lorg/opencv/core/Size;->height:D

    move-wide v14, v2

    move-wide/from16 v16, p5

    move/from16 v18, p7

    move/from16 v19, p8

    move-wide/from16 v20, v31

    move-wide/from16 v22, v33

    move-wide/from16 v24, v35

    move-wide/from16 v26, v4

    invoke-static/range {v6 .. v27}, Lorg/opencv/objdetect/CascadeClassifier;->detectMultiScale3_1(JJJJJDIIDDDD)V

    .line 488
    return-void
.end method

.method public detectMultiScale3(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfRect;Lorg/opencv/core/MatOfInt;Lorg/opencv/core/MatOfDouble;DIILorg/opencv/core/Size;Lorg/opencv/core/Size;Z)V
    .locals 38
    .param p1, "image"    # Lorg/opencv/core/Mat;
    .param p2, "objects"    # Lorg/opencv/core/MatOfRect;
    .param p3, "rejectLevels"    # Lorg/opencv/core/MatOfInt;
    .param p4, "levelWeights"    # Lorg/opencv/core/MatOfDouble;
    .param p5, "scaleFactor"    # D
    .param p7, "minNeighbors"    # I
    .param p8, "flags"    # I
    .param p9, "minSize"    # Lorg/opencv/core/Size;
    .param p10, "maxSize"    # Lorg/opencv/core/Size;
    .param p11, "outputRejectLevels"    # Z

    move-object/from16 v0, p9

    move-object/from16 v1, p10

    .line 450
    move-object/from16 v2, p2

    .line 451
    .local v2, "objects_mat":Lorg/opencv/core/Mat;
    move-object/from16 v3, p3

    .line 452
    .local v3, "rejectLevels_mat":Lorg/opencv/core/Mat;
    move-object/from16 v4, p4

    .line 453
    .local v4, "levelWeights_mat":Lorg/opencv/core/Mat;
    move-object/from16 v5, p0

    iget-wide v6, v5, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v8, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v12, v3, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    iget-wide v2, v4, Lorg/opencv/core/Mat;->nativeObj:J

    .end local v2    # "objects_mat":Lorg/opencv/core/Mat;
    .end local v3    # "rejectLevels_mat":Lorg/opencv/core/Mat;
    .local v29, "objects_mat":Lorg/opencv/core/Mat;
    .local v30, "rejectLevels_mat":Lorg/opencv/core/Mat;
    move-object/from16 v31, v4

    iget-wide v4, v0, Lorg/opencv/core/Size;->width:D

    .end local v4    # "levelWeights_mat":Lorg/opencv/core/Mat;
    .local v31, "levelWeights_mat":Lorg/opencv/core/Mat;
    move-wide/from16 v32, v4

    iget-wide v4, v0, Lorg/opencv/core/Size;->height:D

    move-wide/from16 v34, v4

    iget-wide v4, v1, Lorg/opencv/core/Size;->width:D

    move-wide/from16 v36, v4

    iget-wide v4, v1, Lorg/opencv/core/Size;->height:D

    move-wide v14, v2

    move-wide/from16 v16, p5

    move/from16 v18, p7

    move/from16 v19, p8

    move-wide/from16 v20, v32

    move-wide/from16 v22, v34

    move-wide/from16 v24, v36

    move-wide/from16 v26, v4

    move/from16 v28, p11

    invoke-static/range {v6 .. v28}, Lorg/opencv/objdetect/CascadeClassifier;->detectMultiScale3_0(JJJJJDIIDDDDZ)V

    .line 454
    return-void
.end method

.method public empty()Z
    .locals 2

    .line 79
    iget-wide v0, p0, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/CascadeClassifier;->empty_0(J)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 648
    iget-wide v0, p0, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/CascadeClassifier;->delete(J)V

    .line 649
    return-void
.end method

.method public getFeatureType()I
    .locals 2

    .line 121
    iget-wide v0, p0, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/CascadeClassifier;->getFeatureType_0(J)I

    move-result v0

    return v0
.end method

.method public getNativeObjAddr()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    return-wide v0
.end method

.method public getOriginalWindowSize()Lorg/opencv/core/Size;
    .locals 3

    .line 57
    new-instance v0, Lorg/opencv/core/Size;

    iget-wide v1, p0, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    invoke-static {v1, v2}, Lorg/opencv/objdetect/CascadeClassifier;->getOriginalWindowSize_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Size;-><init>([D)V

    return-object v0
.end method

.method public isOldFormatCascade()Z
    .locals 2

    .line 88
    iget-wide v0, p0, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/CascadeClassifier;->isOldFormatCascade_0(J)Z

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .line 105
    iget-wide v0, p0, Lorg/opencv/objdetect/CascadeClassifier;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/objdetect/CascadeClassifier;->load_0(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method
