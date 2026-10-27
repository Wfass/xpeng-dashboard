.class public Lorg/opencv/features2d/DescriptorMatcher;
.super Lorg/opencv/core/Algorithm;
.source "DescriptorMatcher.java"


# static fields
.field public static final BRUTEFORCE:I = 0x2

.field public static final BRUTEFORCE_HAMMING:I = 0x4

.field public static final BRUTEFORCE_HAMMINGLUT:I = 0x5

.field public static final BRUTEFORCE_L1:I = 0x3

.field public static final BRUTEFORCE_SL2:I = 0x6

.field public static final FLANNBASED:I = 0x1


# direct methods
.method protected constructor <init>(J)V
    .locals 0
    .param p1, "addr"    # J

    .line 23
    invoke-direct {p0, p1, p2}, Lorg/opencv/core/Algorithm;-><init>(J)V

    return-void
.end method

.method public static __fromPtr__(J)Lorg/opencv/features2d/DescriptorMatcher;
    .locals 1
    .param p0, "addr"    # J

    .line 26
    new-instance v0, Lorg/opencv/features2d/DescriptorMatcher;

    invoke-direct {v0, p0, p1}, Lorg/opencv/features2d/DescriptorMatcher;-><init>(J)V

    return-object v0
.end method

.method private static native add_0(JJ)V
.end method

.method private static native clear_0(J)V
.end method

.method private static native clone_0(JZ)J
.end method

.method private static native clone_1(J)J
.end method

.method public static create(I)Lorg/opencv/features2d/DescriptorMatcher;
    .locals 2
    .param p0, "matcherType"    # I

    .line 71
    invoke-static {p0}, Lorg/opencv/features2d/DescriptorMatcher;->create_0(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/features2d/DescriptorMatcher;->__fromPtr__(J)Lorg/opencv/features2d/DescriptorMatcher;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lorg/opencv/features2d/DescriptorMatcher;
    .locals 2
    .param p0, "descriptorMatcherType"    # Ljava/lang/String;

    .line 105
    invoke-static {p0}, Lorg/opencv/features2d/DescriptorMatcher;->create_1(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/features2d/DescriptorMatcher;->__fromPtr__(J)Lorg/opencv/features2d/DescriptorMatcher;

    move-result-object v0

    return-object v0
.end method

.method private static native create_0(I)J
.end method

.method private static native create_1(Ljava/lang/String;)J
.end method

.method private static native delete(J)V
.end method

.method private static native empty_0(J)Z
.end method

.method private static native getTrainDescriptors_0(J)J
.end method

.method private static native isMaskSupported_0(J)Z
.end method

.method private static native knnMatch_0(JJJJIJZ)V
.end method

.method private static native knnMatch_1(JJJJIJ)V
.end method

.method private static native knnMatch_2(JJJJI)V
.end method

.method private static native knnMatch_3(JJJIJZ)V
.end method

.method private static native knnMatch_4(JJJIJ)V
.end method

.method private static native knnMatch_5(JJJI)V
.end method

.method private static native match_0(JJJJJ)V
.end method

.method private static native match_1(JJJJ)V
.end method

.method private static native match_2(JJJJ)V
.end method

.method private static native match_3(JJJ)V
.end method

.method private static native radiusMatch_0(JJJJFJZ)V
.end method

.method private static native radiusMatch_1(JJJJFJ)V
.end method

.method private static native radiusMatch_2(JJJJF)V
.end method

.method private static native radiusMatch_3(JJJFJZ)V
.end method

.method private static native radiusMatch_4(JJJFJ)V
.end method

.method private static native radiusMatch_5(JJJF)V
.end method

.method private static native read_0(JLjava/lang/String;)V
.end method

.method private static native train_0(J)V
.end method

.method private static native write_0(JLjava/lang/String;)V
.end method


# virtual methods
.method public add(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;)V"
        }
    .end annotation

    .line 165
    .local p1, "descriptors":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 166
    .local v0, "descriptors_mat":Lorg/opencv/core/Mat;
    iget-wide v1, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    iget-wide v3, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v1, v2, v3, v4}, Lorg/opencv/features2d/DescriptorMatcher;->add_0(JJ)V

    .line 167
    return-void
.end method

.method public clear()V
    .locals 2

    .line 178
    iget-wide v0, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/features2d/DescriptorMatcher;->clear_0(J)V

    .line 179
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lorg/opencv/features2d/DescriptorMatcher;->clone()Lorg/opencv/features2d/DescriptorMatcher;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/opencv/features2d/DescriptorMatcher;
    .locals 2

    .line 62
    iget-wide v0, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/features2d/DescriptorMatcher;->clone_1(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/features2d/DescriptorMatcher;->__fromPtr__(J)Lorg/opencv/features2d/DescriptorMatcher;

    move-result-object v0

    return-object v0
.end method

.method public clone(Z)Lorg/opencv/features2d/DescriptorMatcher;
    .locals 2
    .param p1, "emptyTrainData"    # Z

    .line 51
    iget-wide v0, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/DescriptorMatcher;->clone_0(JZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/features2d/DescriptorMatcher;->__fromPtr__(J)Lorg/opencv/features2d/DescriptorMatcher;

    move-result-object v0

    return-object v0
.end method

.method public empty()Z
    .locals 2

    .line 118
    iget-wide v0, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/features2d/DescriptorMatcher;->empty_0(J)Z

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

    .line 600
    iget-wide v0, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/features2d/DescriptorMatcher;->delete(J)V

    .line 601
    return-void
.end method

.method public getTrainDescriptors()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v0, "retVal":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v1, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/DescriptorMatcher;->getTrainDescriptors_0(J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    .line 146
    .local v1, "retValMat":Lorg/opencv/core/Mat;
    invoke-static {v1, v0}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 147
    return-object v0
.end method

.method public isMaskSupported()Z
    .locals 2

    .line 131
    iget-wide v0, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/features2d/DescriptorMatcher;->isMaskSupported_0(J)Z

    move-result v0

    return v0
.end method

.method public knnMatch(Lorg/opencv/core/Mat;Ljava/util/List;I)V
    .locals 8
    .param p1, "queryDescriptors"    # Lorg/opencv/core/Mat;
    .param p3, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;I)V"
        }
    .end annotation

    .line 316
    .local p2, "matches":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 317
    .local v0, "matches_mat":Lorg/opencv/core/Mat;
    iget-wide v1, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move v7, p3

    invoke-static/range {v1 .. v7}, Lorg/opencv/features2d/DescriptorMatcher;->knnMatch_5(JJJI)V

    .line 318
    invoke-static {v0, p2}, Lorg/opencv/utils/Converters;->Mat_to_vector_vector_DMatch(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 319
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 320
    return-void
.end method

.method public knnMatch(Lorg/opencv/core/Mat;Ljava/util/List;ILjava/util/List;)V
    .locals 11
    .param p1, "queryDescriptors"    # Lorg/opencv/core/Mat;
    .param p3, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;I",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;)V"
        }
    .end annotation

    .line 298
    .local p2, "matches":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    .local p4, "masks":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 299
    .local v0, "matches_mat":Lorg/opencv/core/Mat;
    invoke-static {p4}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 300
    .local v1, "masks_mat":Lorg/opencv/core/Mat;
    iget-wide v2, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move v8, p3

    invoke-static/range {v2 .. v10}, Lorg/opencv/features2d/DescriptorMatcher;->knnMatch_4(JJJIJ)V

    .line 301
    invoke-static {v0, p2}, Lorg/opencv/utils/Converters;->Mat_to_vector_vector_DMatch(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 302
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 303
    return-void
.end method

.method public knnMatch(Lorg/opencv/core/Mat;Ljava/util/List;ILjava/util/List;Z)V
    .locals 14
    .param p1, "queryDescriptors"    # Lorg/opencv/core/Mat;
    .param p3, "k"    # I
    .param p5, "compactResult"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;I",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;Z)V"
        }
    .end annotation

    .line 279
    .local p2, "matches":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    .local p4, "masks":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 280
    .local v0, "matches_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p4 .. p4}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 281
    .local v1, "masks_mat":Lorg/opencv/core/Mat;
    move-object v2, p0

    iget-wide v3, v2, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    move-object v13, p1

    iget-wide v5, v13, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v9, p3

    move/from16 v12, p5

    invoke-static/range {v3 .. v12}, Lorg/opencv/features2d/DescriptorMatcher;->knnMatch_3(JJJIJZ)V

    .line 282
    move-object/from16 v3, p2

    invoke-static {v0, v3}, Lorg/opencv/utils/Converters;->Mat_to_vector_vector_DMatch(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 283
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 284
    return-void
.end method

.method public knnMatch(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;I)V
    .locals 10
    .param p1, "queryDescriptors"    # Lorg/opencv/core/Mat;
    .param p2, "trainDescriptors"    # Lorg/opencv/core/Mat;
    .param p4, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;I)V"
        }
    .end annotation

    .line 255
    .local p3, "matches":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 256
    .local v0, "matches_mat":Lorg/opencv/core/Mat;
    iget-wide v1, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move v9, p4

    invoke-static/range {v1 .. v9}, Lorg/opencv/features2d/DescriptorMatcher;->knnMatch_2(JJJJI)V

    .line 257
    invoke-static {v0, p3}, Lorg/opencv/utils/Converters;->Mat_to_vector_vector_DMatch(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 258
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 259
    return-void
.end method

.method public knnMatch(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;ILorg/opencv/core/Mat;)V
    .locals 16
    .param p1, "queryDescriptors"    # Lorg/opencv/core/Mat;
    .param p2, "trainDescriptors"    # Lorg/opencv/core/Mat;
    .param p4, "k"    # I
    .param p5, "mask"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;I",
            "Lorg/opencv/core/Mat;",
            ")V"
        }
    .end annotation

    .line 231
    .local p3, "matches":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 232
    .local v0, "matches_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    move-object/from16 v13, p1

    iget-wide v4, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v6, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p5

    iget-wide v11, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v10, p4

    invoke-static/range {v2 .. v12}, Lorg/opencv/features2d/DescriptorMatcher;->knnMatch_1(JJJJIJ)V

    .line 233
    move-object/from16 v2, p3

    invoke-static {v0, v2}, Lorg/opencv/utils/Converters;->Mat_to_vector_vector_DMatch(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 234
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 235
    return-void
.end method

.method public knnMatch(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;ILorg/opencv/core/Mat;Z)V
    .locals 16
    .param p1, "queryDescriptors"    # Lorg/opencv/core/Mat;
    .param p2, "trainDescriptors"    # Lorg/opencv/core/Mat;
    .param p4, "k"    # I
    .param p5, "mask"    # Lorg/opencv/core/Mat;
    .param p6, "compactResult"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;I",
            "Lorg/opencv/core/Mat;",
            "Z)V"
        }
    .end annotation

    .line 206
    .local p3, "matches":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 207
    .local v0, "matches_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v4, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p2

    iget-wide v6, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p5

    iget-wide v11, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v10, p4

    move/from16 v13, p6

    invoke-static/range {v2 .. v13}, Lorg/opencv/features2d/DescriptorMatcher;->knnMatch_0(JJJJIJZ)V

    .line 208
    move-object/from16 v2, p3

    invoke-static {v0, v2}, Lorg/opencv/utils/Converters;->Mat_to_vector_vector_DMatch(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 209
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 210
    return-void
.end method

.method public match(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDMatch;)V
    .locals 9
    .param p1, "queryDescriptors"    # Lorg/opencv/core/Mat;
    .param p2, "trainDescriptors"    # Lorg/opencv/core/Mat;
    .param p3, "matches"    # Lorg/opencv/core/MatOfDMatch;

    .line 366
    move-object v0, p3

    .line 367
    .local v0, "matches_mat":Lorg/opencv/core/Mat;
    iget-wide v1, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v1 .. v8}, Lorg/opencv/features2d/DescriptorMatcher;->match_1(JJJJ)V

    .line 368
    return-void
.end method

.method public match(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDMatch;Lorg/opencv/core/Mat;)V
    .locals 11
    .param p1, "queryDescriptors"    # Lorg/opencv/core/Mat;
    .param p2, "trainDescriptors"    # Lorg/opencv/core/Mat;
    .param p3, "matches"    # Lorg/opencv/core/MatOfDMatch;
    .param p4, "mask"    # Lorg/opencv/core/Mat;

    .line 345
    move-object v0, p3

    .line 346
    .local v0, "matches_mat":Lorg/opencv/core/Mat;
    iget-wide v1, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, p4, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v1 .. v10}, Lorg/opencv/features2d/DescriptorMatcher;->match_0(JJJJJ)V

    .line 347
    return-void
.end method

.method public match(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDMatch;)V
    .locals 7
    .param p1, "queryDescriptors"    # Lorg/opencv/core/Mat;
    .param p2, "matches"    # Lorg/opencv/core/MatOfDMatch;

    .line 397
    move-object v0, p2

    .line 398
    .local v0, "matches_mat":Lorg/opencv/core/Mat;
    iget-wide v1, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v1 .. v6}, Lorg/opencv/features2d/DescriptorMatcher;->match_3(JJJ)V

    .line 399
    return-void
.end method

.method public match(Lorg/opencv/core/Mat;Lorg/opencv/core/MatOfDMatch;Ljava/util/List;)V
    .locals 10
    .param p1, "queryDescriptors"    # Lorg/opencv/core/Mat;
    .param p2, "matches"    # Lorg/opencv/core/MatOfDMatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/MatOfDMatch;",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;)V"
        }
    .end annotation

    .line 384
    .local p3, "masks":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    move-object v0, p2

    .line 385
    .local v0, "matches_mat":Lorg/opencv/core/Mat;
    invoke-static {p3}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 386
    .local v1, "masks_mat":Lorg/opencv/core/Mat;
    iget-wide v2, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v2 .. v9}, Lorg/opencv/features2d/DescriptorMatcher;->match_2(JJJJ)V

    .line 387
    return-void
.end method

.method public radiusMatch(Lorg/opencv/core/Mat;Ljava/util/List;F)V
    .locals 8
    .param p1, "queryDescriptors"    # Lorg/opencv/core/Mat;
    .param p3, "maxDistance"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;F)V"
        }
    .end annotation

    .line 542
    .local p2, "matches":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 543
    .local v0, "matches_mat":Lorg/opencv/core/Mat;
    iget-wide v1, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move v7, p3

    invoke-static/range {v1 .. v7}, Lorg/opencv/features2d/DescriptorMatcher;->radiusMatch_5(JJJF)V

    .line 544
    invoke-static {v0, p2}, Lorg/opencv/utils/Converters;->Mat_to_vector_vector_DMatch(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 545
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 546
    return-void
.end method

.method public radiusMatch(Lorg/opencv/core/Mat;Ljava/util/List;FLjava/util/List;)V
    .locals 11
    .param p1, "queryDescriptors"    # Lorg/opencv/core/Mat;
    .param p3, "maxDistance"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;F",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;)V"
        }
    .end annotation

    .line 523
    .local p2, "matches":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    .local p4, "masks":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 524
    .local v0, "matches_mat":Lorg/opencv/core/Mat;
    invoke-static {p4}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 525
    .local v1, "masks_mat":Lorg/opencv/core/Mat;
    iget-wide v2, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    iget-wide v4, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v9, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move v8, p3

    invoke-static/range {v2 .. v10}, Lorg/opencv/features2d/DescriptorMatcher;->radiusMatch_4(JJJFJ)V

    .line 526
    invoke-static {v0, p2}, Lorg/opencv/utils/Converters;->Mat_to_vector_vector_DMatch(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 527
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 528
    return-void
.end method

.method public radiusMatch(Lorg/opencv/core/Mat;Ljava/util/List;FLjava/util/List;Z)V
    .locals 14
    .param p1, "queryDescriptors"    # Lorg/opencv/core/Mat;
    .param p3, "maxDistance"    # F
    .param p5, "compactResult"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;F",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;Z)V"
        }
    .end annotation

    .line 503
    .local p2, "matches":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    .local p4, "masks":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/Mat;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 504
    .local v0, "matches_mat":Lorg/opencv/core/Mat;
    invoke-static/range {p4 .. p4}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    .line 505
    .local v1, "masks_mat":Lorg/opencv/core/Mat;
    move-object v2, p0

    iget-wide v3, v2, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    move-object v13, p1

    iget-wide v5, v13, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v0, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v10, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v9, p3

    move/from16 v12, p5

    invoke-static/range {v3 .. v12}, Lorg/opencv/features2d/DescriptorMatcher;->radiusMatch_3(JJJFJZ)V

    .line 506
    move-object/from16 v3, p2

    invoke-static {v0, v3}, Lorg/opencv/utils/Converters;->Mat_to_vector_vector_DMatch(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 507
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 508
    return-void
.end method

.method public radiusMatch(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;F)V
    .locals 10
    .param p1, "queryDescriptors"    # Lorg/opencv/core/Mat;
    .param p2, "trainDescriptors"    # Lorg/opencv/core/Mat;
    .param p4, "maxDistance"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;F)V"
        }
    .end annotation

    .line 478
    .local p3, "matches":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 479
    .local v0, "matches_mat":Lorg/opencv/core/Mat;
    iget-wide v1, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v7, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move v9, p4

    invoke-static/range {v1 .. v9}, Lorg/opencv/features2d/DescriptorMatcher;->radiusMatch_2(JJJJF)V

    .line 480
    invoke-static {v0, p3}, Lorg/opencv/utils/Converters;->Mat_to_vector_vector_DMatch(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 481
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 482
    return-void
.end method

.method public radiusMatch(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;FLorg/opencv/core/Mat;)V
    .locals 16
    .param p1, "queryDescriptors"    # Lorg/opencv/core/Mat;
    .param p2, "trainDescriptors"    # Lorg/opencv/core/Mat;
    .param p4, "maxDistance"    # F
    .param p5, "mask"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;F",
            "Lorg/opencv/core/Mat;",
            ")V"
        }
    .end annotation

    .line 453
    .local p3, "matches":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 454
    .local v0, "matches_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    move-object/from16 v13, p1

    iget-wide v4, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v14, p2

    iget-wide v6, v14, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p5

    iget-wide v11, v15, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v10, p4

    invoke-static/range {v2 .. v12}, Lorg/opencv/features2d/DescriptorMatcher;->radiusMatch_1(JJJJFJ)V

    .line 455
    move-object/from16 v2, p3

    invoke-static {v0, v2}, Lorg/opencv/utils/Converters;->Mat_to_vector_vector_DMatch(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 456
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 457
    return-void
.end method

.method public radiusMatch(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;FLorg/opencv/core/Mat;Z)V
    .locals 16
    .param p1, "queryDescriptors"    # Lorg/opencv/core/Mat;
    .param p2, "trainDescriptors"    # Lorg/opencv/core/Mat;
    .param p4, "maxDistance"    # F
    .param p5, "mask"    # Lorg/opencv/core/Mat;
    .param p6, "compactResult"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;F",
            "Lorg/opencv/core/Mat;",
            "Z)V"
        }
    .end annotation

    .line 427
    .local p3, "matches":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfDMatch;>;"
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 428
    .local v0, "matches_mat":Lorg/opencv/core/Mat;
    move-object/from16 v1, p0

    iget-wide v2, v1, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    move-object/from16 v14, p1

    iget-wide v4, v14, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v15, p2

    iget-wide v6, v15, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v8, v0, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v13, p5

    iget-wide v11, v13, Lorg/opencv/core/Mat;->nativeObj:J

    move/from16 v10, p4

    move/from16 v13, p6

    invoke-static/range {v2 .. v13}, Lorg/opencv/features2d/DescriptorMatcher;->radiusMatch_0(JJJJFJZ)V

    .line 429
    move-object/from16 v2, p3

    invoke-static {v0, v2}, Lorg/opencv/utils/Converters;->Mat_to_vector_vector_DMatch(Lorg/opencv/core/Mat;Ljava/util/List;)V

    .line 430
    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    .line 431
    return-void
.end method

.method public read(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .line 561
    iget-wide v0, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/DescriptorMatcher;->read_0(JLjava/lang/String;)V

    .line 562
    return-void
.end method

.method public train()V
    .locals 2

    .line 578
    iget-wide v0, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/features2d/DescriptorMatcher;->train_0(J)V

    .line 579
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .line 594
    iget-wide v0, p0, Lorg/opencv/features2d/DescriptorMatcher;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/features2d/DescriptorMatcher;->write_0(JLjava/lang/String;)V

    .line 595
    return-void
.end method
