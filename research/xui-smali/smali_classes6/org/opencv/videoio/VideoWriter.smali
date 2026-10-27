.class public Lorg/opencv/videoio/VideoWriter;
.super Ljava/lang/Object;
.source "VideoWriter.java"


# instance fields
.field protected final nativeObj:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    invoke-static {}, Lorg/opencv/videoio/VideoWriter;->VideoWriter_6()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    .line 191
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 0
    .param p1, "addr"    # J

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IDLorg/opencv/core/Size;)V
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "fourcc"    # I
    .param p3, "fps"    # D
    .param p5, "frameSize"    # Lorg/opencv/core/Size;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iget-wide v4, p5, Lorg/opencv/core/Size;->width:D

    iget-wide v6, p5, Lorg/opencv/core/Size;->height:D

    move-object v0, p1

    move v1, p2

    move-wide v2, p3

    invoke-static/range {v0 .. v7}, Lorg/opencv/videoio/VideoWriter;->VideoWriter_4(Ljava/lang/String;IDDD)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IDLorg/opencv/core/Size;Lorg/opencv/core/MatOfInt;)V
    .locals 12
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "fourcc"    # I
    .param p3, "fps"    # D
    .param p5, "frameSize"    # Lorg/opencv/core/Size;
    .param p6, "params"    # Lorg/opencv/core/MatOfInt;

    move-object/from16 v0, p5

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    move-object/from16 v1, p6

    .line 165
    .local v1, "params_mat":Lorg/opencv/core/Mat;
    iget-wide v6, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v8, v0, Lorg/opencv/core/Size;->height:D

    iget-wide v10, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v2 .. v11}, Lorg/opencv/videoio/VideoWriter;->VideoWriter_5(Ljava/lang/String;IDDDJ)J

    move-result-wide v2

    move-object v4, p0

    iput-wide v2, v4, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IDLorg/opencv/core/Size;Z)V
    .locals 9
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "fourcc"    # I
    .param p3, "fps"    # D
    .param p5, "frameSize"    # Lorg/opencv/core/Size;
    .param p6, "isColor"    # Z

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iget-wide v4, p5, Lorg/opencv/core/Size;->width:D

    iget-wide v6, p5, Lorg/opencv/core/Size;->height:D

    move-object v0, p1

    move v1, p2

    move-wide v2, p3

    move v8, p6

    invoke-static/range {v0 .. v8}, Lorg/opencv/videoio/VideoWriter;->VideoWriter_3(Ljava/lang/String;IDDDZ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIDLorg/opencv/core/Size;)V
    .locals 9
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "apiPreference"    # I
    .param p3, "fourcc"    # I
    .param p4, "fps"    # D
    .param p6, "frameSize"    # Lorg/opencv/core/Size;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iget-wide v5, p6, Lorg/opencv/core/Size;->width:D

    iget-wide v7, p6, Lorg/opencv/core/Size;->height:D

    move-object v0, p1

    move v1, p2

    move v2, p3

    move-wide v3, p4

    invoke-static/range {v0 .. v8}, Lorg/opencv/videoio/VideoWriter;->VideoWriter_1(Ljava/lang/String;IIDDD)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIDLorg/opencv/core/Size;Lorg/opencv/core/MatOfInt;)V
    .locals 13
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "apiPreference"    # I
    .param p3, "fourcc"    # I
    .param p4, "fps"    # D
    .param p6, "frameSize"    # Lorg/opencv/core/Size;
    .param p7, "params"    # Lorg/opencv/core/MatOfInt;

    move-object/from16 v0, p6

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    move-object/from16 v1, p7

    .line 69
    .local v1, "params_mat":Lorg/opencv/core/Mat;
    iget-wide v7, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v9, v0, Lorg/opencv/core/Size;->height:D

    iget-wide v11, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    invoke-static/range {v2 .. v12}, Lorg/opencv/videoio/VideoWriter;->VideoWriter_2(Ljava/lang/String;IIDDDJ)J

    move-result-wide v2

    move-object v4, p0

    iput-wide v2, v4, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIDLorg/opencv/core/Size;Z)V
    .locals 11
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "apiPreference"    # I
    .param p3, "fourcc"    # I
    .param p4, "fps"    # D
    .param p6, "frameSize"    # Lorg/opencv/core/Size;
    .param p7, "isColor"    # Z

    move-object/from16 v0, p6

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iget-wide v6, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v8, v0, Lorg/opencv/core/Size;->height:D

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move/from16 v10, p7

    invoke-static/range {v1 .. v10}, Lorg/opencv/videoio/VideoWriter;->VideoWriter_0(Ljava/lang/String;IIDDDZ)J

    move-result-wide v1

    move-object v3, p0

    iput-wide v1, v3, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    .line 46
    return-void
.end method

.method private static native VideoWriter_0(Ljava/lang/String;IIDDDZ)J
.end method

.method private static native VideoWriter_1(Ljava/lang/String;IIDDD)J
.end method

.method private static native VideoWriter_2(Ljava/lang/String;IIDDDJ)J
.end method

.method private static native VideoWriter_3(Ljava/lang/String;IDDDZ)J
.end method

.method private static native VideoWriter_4(Ljava/lang/String;IDDD)J
.end method

.method private static native VideoWriter_5(Ljava/lang/String;IDDDJ)J
.end method

.method private static native VideoWriter_6()J
.end method

.method public static __fromPtr__(J)Lorg/opencv/videoio/VideoWriter;
    .locals 1
    .param p0, "addr"    # J

    .line 27
    new-instance v0, Lorg/opencv/videoio/VideoWriter;

    invoke-direct {v0, p0, p1}, Lorg/opencv/videoio/VideoWriter;-><init>(J)V

    return-object v0
.end method

.method private static native delete(J)V
.end method

.method public static fourcc(CCCC)I
    .locals 1
    .param p0, "c1"    # C
    .param p1, "c2"    # C
    .param p2, "c3"    # C
    .param p3, "c4"    # C

    .line 348
    invoke-static {p0, p1, p2, p3}, Lorg/opencv/videoio/VideoWriter;->fourcc_0(CCCC)I

    move-result v0

    return v0
.end method

.method private static native fourcc_0(CCCC)I
.end method

.method private static native getBackendName_0(J)Ljava/lang/String;
.end method

.method private static native get_0(JI)D
.end method

.method private static native isOpened_0(J)Z
.end method

.method private static native open_0(JLjava/lang/String;IIDDDZ)Z
.end method

.method private static native open_1(JLjava/lang/String;IIDDD)Z
.end method

.method private static native open_2(JLjava/lang/String;IIDDDJ)Z
.end method

.method private static native open_3(JLjava/lang/String;IDDDZ)Z
.end method

.method private static native open_4(JLjava/lang/String;IDDD)Z
.end method

.method private static native open_5(JLjava/lang/String;IDDDJ)Z
.end method

.method private static native release_0(J)V
.end method

.method private static native set_0(JID)Z
.end method

.method private static native write_0(JJ)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 386
    iget-wide v0, p0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/videoio/VideoWriter;->delete(J)V

    .line 387
    return-void
.end method

.method public get(I)D
    .locals 2
    .param p1, "propId"    # I

    .line 327
    iget-wide v0, p0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/videoio/VideoWriter;->get_0(JI)D

    move-result-wide v0

    return-wide v0
.end method

.method public getBackendName()Ljava/lang/String;
    .locals 2

    .line 205
    iget-wide v0, p0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/videoio/VideoWriter;->getBackendName_0(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativeObjAddr()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    return-wide v0
.end method

.method public isOpened()Z
    .locals 2

    .line 218
    iget-wide v0, p0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/videoio/VideoWriter;->isOpened_0(J)Z

    move-result v0

    return v0
.end method

.method public open(Ljava/lang/String;IDLorg/opencv/core/Size;)Z
    .locals 10
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "fourcc"    # I
    .param p3, "fps"    # D
    .param p5, "frameSize"    # Lorg/opencv/core/Size;

    .line 281
    iget-wide v0, p0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    iget-wide v6, p5, Lorg/opencv/core/Size;->width:D

    iget-wide v8, p5, Lorg/opencv/core/Size;->height:D

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v9}, Lorg/opencv/videoio/VideoWriter;->open_4(JLjava/lang/String;IDDD)Z

    move-result v0

    return v0
.end method

.method public open(Ljava/lang/String;IDLorg/opencv/core/Size;Lorg/opencv/core/MatOfInt;)Z
    .locals 15
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "fourcc"    # I
    .param p3, "fps"    # D
    .param p5, "frameSize"    # Lorg/opencv/core/Size;
    .param p6, "params"    # Lorg/opencv/core/MatOfInt;

    move-object/from16 v0, p5

    .line 290
    move-object/from16 v1, p6

    .line 291
    .local v1, "params_mat":Lorg/opencv/core/Mat;
    move-object v2, p0

    iget-wide v3, v2, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    iget-wide v9, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v11, v0, Lorg/opencv/core/Size;->height:D

    iget-wide v13, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-wide/from16 v7, p3

    invoke-static/range {v3 .. v14}, Lorg/opencv/videoio/VideoWriter;->open_5(JLjava/lang/String;IDDDJ)Z

    move-result v3

    return v3
.end method

.method public open(Ljava/lang/String;IDLorg/opencv/core/Size;Z)Z
    .locals 13
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "fourcc"    # I
    .param p3, "fps"    # D
    .param p5, "frameSize"    # Lorg/opencv/core/Size;
    .param p6, "isColor"    # Z

    move-object/from16 v0, p5

    .line 264
    move-object v1, p0

    iget-wide v2, v1, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    iget-wide v8, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v10, v0, Lorg/opencv/core/Size;->height:D

    move-object v4, p1

    move v5, p2

    move-wide/from16 v6, p3

    move/from16 v12, p6

    invoke-static/range {v2 .. v12}, Lorg/opencv/videoio/VideoWriter;->open_3(JLjava/lang/String;IDDDZ)Z

    move-result v2

    return v2
.end method

.method public open(Ljava/lang/String;IIDLorg/opencv/core/Size;)Z
    .locals 13
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "apiPreference"    # I
    .param p3, "fourcc"    # I
    .param p4, "fps"    # D
    .param p6, "frameSize"    # Lorg/opencv/core/Size;

    .line 231
    move-object/from16 v0, p6

    move-object v1, p0

    iget-wide v2, v1, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    iget-wide v9, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v11, v0, Lorg/opencv/core/Size;->height:D

    move-object v4, p1

    move v5, p2

    move/from16 v6, p3

    move-wide/from16 v7, p4

    invoke-static/range {v2 .. v12}, Lorg/opencv/videoio/VideoWriter;->open_1(JLjava/lang/String;IIDDD)Z

    move-result v2

    return v2
.end method

.method public open(Ljava/lang/String;IIDLorg/opencv/core/Size;Lorg/opencv/core/MatOfInt;)Z
    .locals 16
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "apiPreference"    # I
    .param p3, "fourcc"    # I
    .param p4, "fps"    # D
    .param p6, "frameSize"    # Lorg/opencv/core/Size;
    .param p7, "params"    # Lorg/opencv/core/MatOfInt;

    move-object/from16 v0, p6

    .line 240
    move-object/from16 v1, p7

    .line 241
    .local v1, "params_mat":Lorg/opencv/core/Mat;
    move-object/from16 v2, p0

    iget-wide v3, v2, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    iget-wide v10, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v12, v0, Lorg/opencv/core/Size;->height:D

    iget-wide v14, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p4

    invoke-static/range {v3 .. v15}, Lorg/opencv/videoio/VideoWriter;->open_2(JLjava/lang/String;IIDDDJ)Z

    move-result v3

    return v3
.end method

.method public open(Ljava/lang/String;IIDLorg/opencv/core/Size;Z)Z
    .locals 14
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "apiPreference"    # I
    .param p3, "fourcc"    # I
    .param p4, "fps"    # D
    .param p6, "frameSize"    # Lorg/opencv/core/Size;
    .param p7, "isColor"    # Z

    move-object/from16 v0, p6

    .line 227
    move-object v1, p0

    iget-wide v2, v1, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    iget-wide v9, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v11, v0, Lorg/opencv/core/Size;->height:D

    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-wide/from16 v7, p4

    move/from16 v13, p7

    invoke-static/range {v2 .. v13}, Lorg/opencv/videoio/VideoWriter;->open_0(JLjava/lang/String;IIDDDZ)Z

    move-result v2

    return v2
.end method

.method public release()V
    .locals 2

    .line 363
    iget-wide v0, p0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/videoio/VideoWriter;->release_0(J)V

    .line 364
    return-void
.end method

.method public set(ID)Z
    .locals 2
    .param p1, "propId"    # I
    .param p2, "value"    # D

    .line 309
    iget-wide v0, p0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    invoke-static {v0, v1, p1, p2, p3}, Lorg/opencv/videoio/VideoWriter;->set_0(JID)Z

    move-result v0

    return v0
.end method

.method public write(Lorg/opencv/core/Mat;)V
    .locals 4
    .param p1, "image"    # Lorg/opencv/core/Mat;

    .line 380
    iget-wide v0, p0, Lorg/opencv/videoio/VideoWriter;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/videoio/VideoWriter;->write_0(JJ)V

    .line 381
    return-void
.end method
