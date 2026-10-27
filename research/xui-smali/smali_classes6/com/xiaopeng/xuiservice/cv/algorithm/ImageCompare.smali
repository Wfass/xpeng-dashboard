.class public Lcom/xiaopeng/xuiservice/cv/algorithm/ImageCompare;
.super Ljava/lang/Object;
.source "ImageCompare.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/xiaopeng/xuiservice/cv/algorithm/ImageCompare;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/cv/algorithm/ImageCompare;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CompareAndMarkDiff(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Ljava/util/ArrayList;
    .locals 29
    .param p0, "img1"    # Lorg/opencv/core/Mat;
    .param p1, "img2"    # Lorg/opencv/core/Mat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/opencv/core/Rect;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 21
    move-object/from16 v1, p1

    new-instance v2, Lorg/opencv/core/Mat;

    invoke-direct {v2}, Lorg/opencv/core/Mat;-><init>()V

    .line 22
    .local v2, "img":Lorg/opencv/core/Mat;
    new-instance v3, Lorg/opencv/core/Mat;

    invoke-direct {v3}, Lorg/opencv/core/Mat;-><init>()V

    .line 23
    .local v3, "erodeImg":Lorg/opencv/core/Mat;
    new-instance v4, Lorg/opencv/core/Mat;

    invoke-direct {v4}, Lorg/opencv/core/Mat;-><init>()V

    .line 24
    .local v4, "dilateImg":Lorg/opencv/core/Mat;
    new-instance v5, Lorg/opencv/core/Mat;

    invoke-direct {v5}, Lorg/opencv/core/Mat;-><init>()V

    move-object v15, v5

    .line 25
    .local v15, "threshImg":Lorg/opencv/core/Mat;
    new-instance v14, Lorg/opencv/core/Mat;

    invoke-direct {v14}, Lorg/opencv/core/Mat;-><init>()V

    .line 26
    .local v14, "hierarchy":Lorg/opencv/core/Mat;
    invoke-virtual/range {p0 .. p0}, Lorg/opencv/core/Mat;->clone()Lorg/opencv/core/Mat;

    move-result-object v13

    .line 27
    .local v13, "img1_copy":Lorg/opencv/core/Mat;
    invoke-virtual/range {p1 .. p1}, Lorg/opencv/core/Mat;->clone()Lorg/opencv/core/Mat;

    move-result-object v12

    .line 28
    .local v12, "img2_copy":Lorg/opencv/core/Mat;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v5

    .line 30
    .local v11, "contours":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfPoint;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v5

    if-nez v5, :cond_0

    .line 31
    move-object v1, v11

    move-object v5, v12

    move-object v6, v13

    move-object v7, v15

    goto/16 :goto_1

    .line 33
    :cond_0
    sget v5, Lorg/opencv/core/CvType;->CV_8UC1:I

    invoke-virtual {v0, v0, v5}, Lorg/opencv/core/Mat;->convertTo(Lorg/opencv/core/Mat;I)V

    .line 34
    sget v5, Lorg/opencv/core/CvType;->CV_8UC1:I

    invoke-virtual {v1, v1, v5}, Lorg/opencv/core/Mat;->convertTo(Lorg/opencv/core/Mat;I)V

    .line 35
    new-instance v5, Lorg/opencv/core/Mat;

    invoke-direct {v5}, Lorg/opencv/core/Mat;-><init>()V

    move-object v9, v5

    .line 36
    .local v9, "gray1":Lorg/opencv/core/Mat;
    const/4 v10, 0x6

    invoke-static {v0, v9, v10}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    .line 37
    new-instance v5, Lorg/opencv/core/Mat;

    invoke-direct {v5}, Lorg/opencv/core/Mat;-><init>()V

    move-object v7, v5

    .line 38
    .local v7, "gray2":Lorg/opencv/core/Mat;
    invoke-static {v1, v7, v10}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    .line 39
    const/4 v5, 0x5

    invoke-virtual {v9, v9, v5}, Lorg/opencv/core/Mat;->convertTo(Lorg/opencv/core/Mat;I)V

    .line 40
    invoke-virtual {v7, v7, v5}, Lorg/opencv/core/Mat;->convertTo(Lorg/opencv/core/Mat;I)V

    .line 41
    const/4 v8, 0x0

    move-object/from16 v18, v11

    invoke-static {v9, v7, v8}, Lorg/opencv/imgproc/Imgproc;->compareHist(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)D

    move-result-wide v10

    .line 42
    .end local v11    # "contours":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfPoint;>;"
    .local v10, "result":D
    .local v18, "contours":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfPoint;>;"
    sget-object v6, Lcom/xiaopeng/xuiservice/cv/algorithm/ImageCompare;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "similarity: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {v13, v12, v2}, Lorg/opencv/core/Core;->absdiff(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V

    .line 47
    new-instance v5, Lorg/opencv/core/Size;

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-direct {v5, v0, v1, v0, v1}, Lorg/opencv/core/Size;-><init>(DD)V

    const/4 v6, 0x2

    invoke-static {v6, v5}, Lorg/opencv/imgproc/Imgproc;->getStructuringElement(ILorg/opencv/core/Size;)Lorg/opencv/core/Mat;

    move-result-object v8

    .line 48
    .local v8, "kernel":Lorg/opencv/core/Mat;
    new-instance v5, Lorg/opencv/core/Point;

    move-object/from16 v22, v7

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .end local v7    # "gray2":Lorg/opencv/core/Mat;
    .local v22, "gray2":Lorg/opencv/core/Mat;
    invoke-direct {v5, v6, v7, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    const/4 v6, 0x5

    invoke-static {v2, v3, v8, v5, v6}, Lorg/opencv/imgproc/Imgproc;->erode(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Point;I)V

    .line 50
    new-instance v5, Lorg/opencv/core/Size;

    invoke-direct {v5, v0, v1, v0, v1}, Lorg/opencv/core/Size;-><init>(DD)V

    const/4 v0, 0x2

    invoke-static {v0, v5}, Lorg/opencv/imgproc/Imgproc;->getStructuringElement(ILorg/opencv/core/Size;)Lorg/opencv/core/Mat;

    move-result-object v0

    .line 51
    .local v0, "kernel1":Lorg/opencv/core/Mat;
    invoke-static {v3, v4, v0}, Lorg/opencv/imgproc/Imgproc;->dilate(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V

    .line 53
    const-wide/high16 v16, 0x4044000000000000L    # 40.0

    const-wide v23, 0x406fe00000000000L    # 255.0

    const/4 v1, 0x0

    move-object v5, v4

    move-object v6, v15

    move-object/from16 v21, v8

    move-object/from16 v20, v22

    const/16 v22, 0x0

    move-wide/from16 v7, v16

    .end local v8    # "kernel":Lorg/opencv/core/Mat;
    .end local v22    # "gray2":Lorg/opencv/core/Mat;
    .local v20, "gray2":Lorg/opencv/core/Mat;
    .local v21, "kernel":Lorg/opencv/core/Mat;
    move-object/from16 v19, v9

    move-wide/from16 v25, v10

    const/4 v11, 0x6

    move-wide/from16 v9, v23

    .end local v9    # "gray1":Lorg/opencv/core/Mat;
    .end local v10    # "result":D
    .local v19, "gray1":Lorg/opencv/core/Mat;
    .local v25, "result":D
    move-object/from16 v28, v0

    move v0, v11

    move-object/from16 v27, v18

    move v11, v1

    .end local v0    # "kernel1":Lorg/opencv/core/Mat;
    .end local v18    # "contours":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfPoint;>;"
    .local v27, "contours":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfPoint;>;"
    .local v28, "kernel1":Lorg/opencv/core/Mat;
    invoke-static/range {v5 .. v11}, Lorg/opencv/imgproc/Imgproc;->threshold(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DDI)D

    .line 55
    invoke-static {v15, v15, v0}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    .line 57
    const/4 v0, 0x3

    const/16 v16, 0x2

    new-instance v1, Lorg/opencv/core/Point;

    const-wide/16 v5, 0x0

    invoke-direct {v1, v5, v6, v5, v6}, Lorg/opencv/core/Point;-><init>(DD)V

    move-object v5, v12

    move-object v12, v15

    .end local v12    # "img2_copy":Lorg/opencv/core/Mat;
    .local v5, "img2_copy":Lorg/opencv/core/Mat;
    move-object v6, v13

    move-object/from16 v13, v27

    .end local v13    # "img1_copy":Lorg/opencv/core/Mat;
    .local v6, "img1_copy":Lorg/opencv/core/Mat;
    move-object v7, v15

    move v15, v0

    .end local v15    # "threshImg":Lorg/opencv/core/Mat;
    .local v7, "threshImg":Lorg/opencv/core/Mat;
    move-object/from16 v17, v1

    invoke-static/range {v12 .. v17}, Lorg/opencv/imgproc/Imgproc;->findContours(Lorg/opencv/core/Mat;Ljava/util/List;Lorg/opencv/core/Mat;IILorg/opencv/core/Point;)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v1, v27

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    .end local v27    # "contours":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfPoint;>;"
    .local v1, "contours":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfPoint;>;"
    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .local v0, "boundRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/opencv/core/Rect;>;"
    nop

    .local v22, "i":I
    :goto_0
    move/from16 v8, v22

    .end local v22    # "i":I
    .local v8, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 63
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/opencv/core/Mat;

    invoke-static {v9}, Lorg/opencv/imgproc/Imgproc;->boundingRect(Lorg/opencv/core/Mat;)Lorg/opencv/core/Rect;

    move-result-object v9

    .line 64
    .local v9, "rect":Lorg/opencv/core/Rect;
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .end local v9    # "rect":Lorg/opencv/core/Rect;
    add-int/lit8 v22, v8, 0x1

    .end local v8    # "i":I
    .restart local v22    # "i":I
    goto :goto_0

    .line 67
    .end local v22    # "i":I
    :cond_1
    return-object v0

    .line 31
    .end local v0    # "boundRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/opencv/core/Rect;>;"
    .end local v1    # "contours":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfPoint;>;"
    .end local v5    # "img2_copy":Lorg/opencv/core/Mat;
    .end local v6    # "img1_copy":Lorg/opencv/core/Mat;
    .end local v7    # "threshImg":Lorg/opencv/core/Mat;
    .end local v19    # "gray1":Lorg/opencv/core/Mat;
    .end local v20    # "gray2":Lorg/opencv/core/Mat;
    .end local v21    # "kernel":Lorg/opencv/core/Mat;
    .end local v25    # "result":D
    .end local v28    # "kernel1":Lorg/opencv/core/Mat;
    .restart local v11    # "contours":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfPoint;>;"
    .restart local v12    # "img2_copy":Lorg/opencv/core/Mat;
    .restart local v13    # "img1_copy":Lorg/opencv/core/Mat;
    .restart local v15    # "threshImg":Lorg/opencv/core/Mat;
    :cond_2
    move-object v1, v11

    move-object v5, v12

    move-object v6, v13

    move-object v7, v15

    .end local v11    # "contours":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfPoint;>;"
    .end local v12    # "img2_copy":Lorg/opencv/core/Mat;
    .end local v13    # "img1_copy":Lorg/opencv/core/Mat;
    .end local v15    # "threshImg":Lorg/opencv/core/Mat;
    .restart local v1    # "contours":Ljava/util/List;, "Ljava/util/List<Lorg/opencv/core/MatOfPoint;>;"
    .restart local v5    # "img2_copy":Lorg/opencv/core/Mat;
    .restart local v6    # "img1_copy":Lorg/opencv/core/Mat;
    .restart local v7    # "threshImg":Lorg/opencv/core/Mat;
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
