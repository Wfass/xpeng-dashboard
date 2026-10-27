.class public Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;
.super Ljava/lang/Object;
.source "StandardGifDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/gifdecoder/GifDecoder;


# static fields
.field private static final BYTES_PER_INTEGER:I = 0x4

.field private static final COLOR_TRANSPARENT_BLACK:I = 0x0
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private static final INITIAL_FRAME_POINTER:I = -0x1

.field private static final MASK_INT_LOWEST_BYTE:I = 0xff

.field private static final MAX_STACK_SIZE:I = 0x1000

.field private static final NULL_CODE:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private act:[I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private bitmapConfig:Landroid/graphics/Bitmap$Config;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

.field private block:[B

.field private downsampledHeight:I

.field private downsampledWidth:I

.field private framePointer:I

.field private header:Lcom/bumptech/glide/gifdecoder/GifHeader;

.field private isFirstFrameTransparent:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mainPixels:[B

.field private mainScratch:[I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

.field private final pct:[I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private pixelStack:[B

.field private prefix:[S

.field private previousImage:Landroid/graphics/Bitmap;

.field private rawData:Ljava/nio/ByteBuffer;

.field private sampleSize:I

.field private savePrevious:Z

.field private status:I

.field private suffix:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V
    .locals 1
    .param p1, "provider"    # Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->pct:[I

    .line 119
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 138
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 139
    new-instance v0, Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {v0}, Lcom/bumptech/glide/gifdecoder/GifHeader;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 140
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "provider"    # Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "gifHeader"    # Lcom/bumptech/glide/gifdecoder/GifHeader;
    .param p3, "rawData"    # Ljava/nio/ByteBuffer;

    .line 126
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;-><init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V
    .locals 0
    .param p1, "provider"    # Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "gifHeader"    # Lcom/bumptech/glide/gifdecoder/GifHeader;
    .param p3, "rawData"    # Ljava/nio/ByteBuffer;
    .param p4, "sampleSize"    # I

    .line 132
    invoke-direct {p0, p1}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;-><init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V

    .line 133
    invoke-virtual {p0, p2, p3, p4}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V

    .line 134
    return-void
.end method

.method private averageColorsNear(III)I
    .locals 9
    .param p1, "positionInMainPixels"    # I
    .param p2, "maxPositionInMainPixels"    # I
    .param p3, "currentFrameIw"    # I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 647
    const/4 v0, 0x0

    .line 648
    .local v0, "alphaSum":I
    const/4 v1, 0x0

    .line 649
    .local v1, "redSum":I
    const/4 v2, 0x0

    .line 650
    .local v2, "greenSum":I
    const/4 v3, 0x0

    .line 652
    .local v3, "blueSum":I
    const/4 v4, 0x0

    .line 654
    .local v4, "totalAdded":I
    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    move v0, p1

    .line 656
    .local v0, "i":I
    .local v1, "alphaSum":I
    .local v2, "redSum":I
    .local v3, "greenSum":I
    .local v4, "blueSum":I
    .local v5, "totalAdded":I
    :goto_0
    iget v6, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    add-int/2addr v6, p1

    if-ge v0, v6, :cond_1

    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    array-length v6, v6

    if-ge v0, v6, :cond_1

    if-ge v0, p2, :cond_1

    .line 657
    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    aget-byte v6, v6, v0

    and-int/lit16 v6, v6, 0xff

    .line 658
    .local v6, "currentColorIndex":I
    iget-object v7, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->act:[I

    aget v7, v7, v6

    .line 659
    .local v7, "currentColor":I
    if-eqz v7, :cond_0

    .line 660
    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v1, v8

    .line 661
    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v2, v8

    .line 662
    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v3, v8

    .line 663
    and-int/lit16 v8, v7, 0xff

    add-int/2addr v4, v8

    .line 664
    add-int/lit8 v5, v5, 0x1

    .line 656
    .end local v6    # "currentColorIndex":I
    .end local v7    # "currentColor":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 668
    .end local v0    # "i":I
    :cond_1
    add-int v0, p1, p3

    .line 670
    .restart local v0    # "i":I
    :goto_1
    add-int v6, p1, p3

    iget v7, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    add-int/2addr v6, v7

    if-ge v0, v6, :cond_3

    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    array-length v6, v6

    if-ge v0, v6, :cond_3

    if-ge v0, p2, :cond_3

    .line 671
    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    aget-byte v6, v6, v0

    and-int/lit16 v6, v6, 0xff

    .line 672
    .restart local v6    # "currentColorIndex":I
    iget-object v7, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->act:[I

    aget v7, v7, v6

    .line 673
    .restart local v7    # "currentColor":I
    if-eqz v7, :cond_2

    .line 674
    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v1, v8

    .line 675
    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v2, v8

    .line 676
    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v3, v8

    .line 677
    and-int/lit16 v8, v7, 0xff

    add-int/2addr v4, v8

    .line 678
    add-int/lit8 v5, v5, 0x1

    .line 670
    .end local v6    # "currentColorIndex":I
    .end local v7    # "currentColor":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 681
    .end local v0    # "i":I
    :cond_3
    if-nez v5, :cond_4

    .line 682
    const/4 v0, 0x0

    return v0

    .line 684
    :cond_4
    div-int v0, v1, v5

    shl-int/lit8 v0, v0, 0x18

    div-int v6, v2, v5

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v0, v6

    div-int v6, v3, v5

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v0, v6

    div-int v6, v4, v5

    or-int/2addr v0, v6

    return v0
.end method

.method private copyCopyIntoScratchRobust(Lcom/bumptech/glide/gifdecoder/GifFrame;)V
    .locals 30
    .param p1, "currentFrame"    # Lcom/bumptech/glide/gifdecoder/GifFrame;

    move-object/from16 v0, p0

    .line 550
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainScratch:[I

    .line 551
    .local v2, "dest":[I
    iget v3, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    iget v4, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    div-int/2addr v3, v4

    .line 552
    .local v3, "downsampledIH":I
    iget v4, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iy:I

    iget v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    div-int/2addr v4, v5

    .line 553
    .local v4, "downsampledIY":I
    iget v5, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    iget v6, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    div-int/2addr v5, v6

    .line 554
    .local v5, "downsampledIW":I
    iget v6, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->ix:I

    iget v7, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    div-int/2addr v6, v7

    .line 556
    .local v6, "downsampledIX":I
    const/4 v7, 0x1

    .line 557
    .local v7, "pass":I
    const/16 v8, 0x8

    .line 558
    .local v8, "inc":I
    const/4 v9, 0x0

    .line 559
    .local v9, "iline":I
    iget v10, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    if-nez v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 560
    .local v10, "isFirstFrame":Z
    :goto_0
    iget v13, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    .line 561
    .local v13, "sampleSize":I
    iget v14, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    .line 562
    .local v14, "downsampledWidth":I
    iget v15, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledHeight:I

    .line 563
    .local v15, "downsampledHeight":I
    iget-object v11, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    .line 564
    .local v11, "mainPixels":[B
    iget-object v12, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->act:[I

    .line 566
    .local v12, "act":[I
    move/from16 v17, v7

    iget-object v7, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->isFirstFrameTransparent:Ljava/lang/Boolean;

    .line 567
    .local v7, "isFirstFrameTransparent":Ljava/lang/Boolean;
    .local v17, "pass":I
    move/from16 v18, v8

    move-object v8, v7

    const/4 v7, 0x0

    .local v7, "i":I
    .local v8, "isFirstFrameTransparent":Ljava/lang/Boolean;
    .local v18, "inc":I
    :goto_1
    if-ge v7, v3, :cond_d

    .line 568
    move/from16 v19, v7

    .line 569
    .local v19, "line":I
    move-object/from16 v20, v8

    iget-boolean v8, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->interlace:Z

    .end local v8    # "isFirstFrameTransparent":Ljava/lang/Boolean;
    .local v20, "isFirstFrameTransparent":Ljava/lang/Boolean;
    if-eqz v8, :cond_2

    .line 570
    if-lt v9, v3, :cond_1

    .line 571
    add-int/lit8 v17, v17, 0x1

    .line 572
    packed-switch v17, :pswitch_data_0

    goto :goto_2

    .line 581
    :pswitch_0
    const/4 v9, 0x1

    .line 582
    const/16 v18, 0x2

    .line 583
    goto :goto_2

    .line 577
    :pswitch_1
    const/4 v9, 0x2

    .line 578
    const/16 v18, 0x4

    .line 579
    goto :goto_2

    .line 574
    :pswitch_2
    const/4 v9, 0x4

    .line 575
    nop

    .line 588
    :cond_1
    :goto_2
    move/from16 v19, v9

    .line 589
    add-int v9, v9, v18

    .line 591
    :cond_2
    add-int v8, v19, v4

    .line 592
    .end local v19    # "line":I
    .local v8, "line":I
    move/from16 v21, v3

    const/4 v3, 0x1

    if-ne v13, v3, :cond_3

    .end local v3    # "downsampledIH":I
    .local v21, "downsampledIH":I
    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .line 593
    .local v3, "isNotDownsampling":Z
    :goto_3
    if-ge v8, v15, :cond_c

    .line 594
    mul-int v19, v8, v14

    .line 596
    .local v19, "k":I
    add-int v22, v19, v6

    .line 598
    .local v22, "dx":I
    move/from16 v23, v4

    add-int v4, v22, v5

    .line 599
    .local v4, "dlim":I
    .local v23, "downsampledIY":I
    move/from16 v24, v5

    add-int v5, v19, v14

    .end local v5    # "downsampledIW":I
    .local v24, "downsampledIW":I
    if-ge v5, v4, :cond_4

    .line 601
    add-int v4, v19, v14

    .line 604
    :cond_4
    mul-int v5, v7, v13

    move/from16 v25, v6

    iget v6, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    .end local v6    # "downsampledIX":I
    .local v25, "downsampledIX":I
    mul-int/2addr v5, v6

    .line 605
    .local v5, "sx":I
    if-eqz v3, :cond_8

    .line 607
    move v6, v5

    move/from16 v5, v22

    .end local v22    # "dx":I
    .local v5, "dx":I
    .local v6, "sx":I
    :goto_4
    if-ge v5, v4, :cond_7

    .line 608
    move/from16 v26, v3

    aget-byte v3, v11, v6

    .end local v3    # "isNotDownsampling":Z
    .local v26, "isNotDownsampling":Z
    and-int/lit16 v3, v3, 0xff

    .line 609
    .local v3, "currentColorIndex":I
    aget v22, v12, v3

    .line 610
    .local v22, "averageColor":I
    if-eqz v22, :cond_5

    .line 611
    aput v22, v2, v5

    .line 615
    move/from16 v27, v3

    goto :goto_6

    .line 612
    :cond_5
    if-eqz v10, :cond_6

    if-nez v20, :cond_6

    .line 613
    move/from16 v27, v3

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    .end local v3    # "currentColorIndex":I
    .local v27, "currentColorIndex":I
    :goto_5
    goto :goto_6

    .line 615
    .end local v27    # "currentColorIndex":I
    .restart local v3    # "currentColorIndex":I
    :cond_6
    move/from16 v27, v3

    goto :goto_5

    .end local v3    # "currentColorIndex":I
    .restart local v27    # "currentColorIndex":I
    :goto_6
    add-int/2addr v6, v13

    .line 616
    add-int/lit8 v5, v5, 0x1

    .line 617
    .end local v27    # "currentColorIndex":I
    nop

    .line 607
    move/from16 v3, v26

    goto :goto_4

    .line 618
    .end local v22    # "averageColor":I
    .end local v26    # "isNotDownsampling":Z
    .local v3, "isNotDownsampling":Z
    :cond_7
    move/from16 v26, v3

    .line 567
    .end local v3    # "isNotDownsampling":Z
    .restart local v26    # "isNotDownsampling":Z
    move-object/from16 v8, v20

    const/4 v1, 0x1

    goto :goto_9

    .line 620
    .end local v6    # "sx":I
    .end local v26    # "isNotDownsampling":Z
    .restart local v3    # "isNotDownsampling":Z
    .local v5, "sx":I
    .local v22, "dx":I
    :cond_8
    move/from16 v26, v3

    .end local v3    # "isNotDownsampling":Z
    .restart local v26    # "isNotDownsampling":Z
    sub-int v3, v4, v22

    mul-int/2addr v3, v13

    add-int/2addr v3, v5

    move v6, v5

    move/from16 v5, v22

    .line 621
    .end local v22    # "dx":I
    .local v3, "maxPositionInSource":I
    .local v5, "dx":I
    .restart local v6    # "sx":I
    :goto_7
    if-ge v5, v4, :cond_b

    .line 625
    move/from16 v28, v4

    iget v4, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    .end local v4    # "dlim":I
    .local v28, "dlim":I
    invoke-direct {v0, v6, v3, v4}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->averageColorsNear(III)I

    move-result v4

    .line 626
    .local v4, "averageColor":I
    if-eqz v4, :cond_a

    .line 627
    aput v4, v2, v5

    .line 631
    :cond_9
    const/4 v1, 0x1

    goto :goto_8

    .line 628
    :cond_a
    if-eqz v10, :cond_9

    if-nez v20, :cond_9

    .line 629
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 631
    .end local v20    # "isFirstFrameTransparent":Ljava/lang/Boolean;
    .local v16, "isFirstFrameTransparent":Ljava/lang/Boolean;
    move-object/from16 v20, v16

    .end local v16    # "isFirstFrameTransparent":Ljava/lang/Boolean;
    .restart local v20    # "isFirstFrameTransparent":Ljava/lang/Boolean;
    :goto_8
    add-int/2addr v6, v13

    .line 632
    add-int/lit8 v5, v5, 0x1

    .line 620
    move/from16 v4, v28

    move-object/from16 v1, p1

    goto :goto_7

    .line 567
    .end local v3    # "maxPositionInSource":I
    .end local v4    # "averageColor":I
    .end local v5    # "dx":I
    .end local v6    # "sx":I
    .end local v8    # "line":I
    .end local v19    # "k":I
    .end local v26    # "isNotDownsampling":Z
    .end local v28    # "dlim":I
    :cond_b
    const/4 v1, 0x1

    move-object/from16 v8, v20

    goto :goto_9

    .end local v23    # "downsampledIY":I
    .end local v24    # "downsampledIW":I
    .end local v25    # "downsampledIX":I
    .local v4, "downsampledIY":I
    .local v5, "downsampledIW":I
    .local v6, "downsampledIX":I
    :cond_c
    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    const/4 v1, 0x1

    move-object/from16 v8, v20

    .end local v4    # "downsampledIY":I
    .end local v5    # "downsampledIW":I
    .end local v6    # "downsampledIX":I
    .end local v20    # "isFirstFrameTransparent":Ljava/lang/Boolean;
    .local v8, "isFirstFrameTransparent":Ljava/lang/Boolean;
    .restart local v23    # "downsampledIY":I
    .restart local v24    # "downsampledIW":I
    .restart local v25    # "downsampledIX":I
    :goto_9
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v21

    move/from16 v4, v23

    move/from16 v5, v24

    move/from16 v6, v25

    move-object/from16 v1, p1

    goto/16 :goto_1

    .line 638
    .end local v7    # "i":I
    .end local v21    # "downsampledIH":I
    .end local v23    # "downsampledIY":I
    .end local v24    # "downsampledIW":I
    .end local v25    # "downsampledIX":I
    .local v3, "downsampledIH":I
    .restart local v4    # "downsampledIY":I
    .restart local v5    # "downsampledIW":I
    .restart local v6    # "downsampledIX":I
    :cond_d
    move/from16 v21, v3

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    move-object/from16 v20, v8

    .end local v3    # "downsampledIH":I
    .end local v4    # "downsampledIY":I
    .end local v5    # "downsampledIW":I
    .end local v6    # "downsampledIX":I
    .end local v8    # "isFirstFrameTransparent":Ljava/lang/Boolean;
    .restart local v20    # "isFirstFrameTransparent":Ljava/lang/Boolean;
    .restart local v21    # "downsampledIH":I
    .restart local v23    # "downsampledIY":I
    .restart local v24    # "downsampledIW":I
    .restart local v25    # "downsampledIX":I
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->isFirstFrameTransparent:Ljava/lang/Boolean;

    if-nez v1, :cond_f

    .line 639
    if-nez v20, :cond_e

    move-object/from16 v7, v20

    const/4 v1, 0x0

    goto :goto_a

    .line 640
    :cond_e
    move-object/from16 v7, v20

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 639
    .end local v20    # "isFirstFrameTransparent":Ljava/lang/Boolean;
    .local v7, "isFirstFrameTransparent":Ljava/lang/Boolean;
    :goto_a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->isFirstFrameTransparent:Ljava/lang/Boolean;

    goto :goto_b

    .line 642
    .end local v7    # "isFirstFrameTransparent":Ljava/lang/Boolean;
    .restart local v20    # "isFirstFrameTransparent":Ljava/lang/Boolean;
    :cond_f
    move-object/from16 v7, v20

    .end local v20    # "isFirstFrameTransparent":Ljava/lang/Boolean;
    .restart local v7    # "isFirstFrameTransparent":Ljava/lang/Boolean;
    :goto_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private copyIntoScratchFast(Lcom/bumptech/glide/gifdecoder/GifFrame;)V
    .locals 20
    .param p1, "currentFrame"    # Lcom/bumptech/glide/gifdecoder/GifFrame;

    move-object/from16 v0, p0

    .line 503
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainScratch:[I

    .line 504
    .local v2, "dest":[I
    iget v3, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    .line 505
    .local v3, "downsampledIH":I
    iget v4, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iy:I

    .line 506
    .local v4, "downsampledIY":I
    iget v5, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    .line 507
    .local v5, "downsampledIW":I
    iget v6, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->ix:I

    .line 509
    .local v6, "downsampledIX":I
    iget v7, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    if-nez v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 510
    .local v7, "isFirstFrame":Z
    :goto_0
    iget v10, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    .line 511
    .local v10, "width":I
    iget-object v11, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    .line 512
    .local v11, "mainPixels":[B
    iget-object v12, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->act:[I

    .line 513
    .local v12, "act":[I
    const/4 v13, -0x1

    .line 514
    .local v13, "transparentColorIndex":B
    move v14, v13

    const/4 v13, 0x0

    .local v13, "i":I
    .local v14, "transparentColorIndex":B
    :goto_1
    if-ge v13, v3, :cond_5

    .line 515
    add-int v15, v13, v4

    .line 516
    .local v15, "line":I
    mul-int v16, v15, v10

    .line 518
    .local v16, "k":I
    add-int v17, v16, v6

    .line 520
    .local v17, "dx":I
    add-int v8, v17, v5

    .line 521
    .local v8, "dlim":I
    add-int v9, v16, v10

    if-ge v9, v8, :cond_1

    .line 523
    add-int v8, v16, v10

    .line 526
    :cond_1
    iget v9, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    mul-int/2addr v9, v13

    move v1, v14

    move/from16 v14, v17

    .line 528
    .end local v17    # "dx":I
    .local v1, "transparentColorIndex":B
    .local v9, "sx":I
    .local v14, "dx":I
    :goto_2
    if-ge v14, v8, :cond_4

    .line 529
    move/from16 v18, v3

    aget-byte v3, v11, v9

    .line 530
    .local v3, "byteCurrentColorIndex":B
    .local v18, "downsampledIH":I
    move/from16 v19, v4

    and-int/lit16 v4, v3, 0xff

    .line 531
    .local v4, "currentColorIndex":I
    .local v19, "downsampledIY":I
    if-eq v4, v1, :cond_3

    .line 532
    aget v17, v12, v4

    .line 533
    .local v17, "color":I
    if-eqz v17, :cond_2

    .line 534
    aput v17, v2, v14

    goto :goto_3

    .line 536
    :cond_2
    move v1, v3

    .line 539
    .end local v17    # "color":I
    :cond_3
    :goto_3
    add-int/lit8 v9, v9, 0x1

    .line 540
    add-int/lit8 v14, v14, 0x1

    .line 541
    .end local v3    # "byteCurrentColorIndex":B
    .end local v4    # "currentColorIndex":I
    nop

    .line 526
    move/from16 v3, v18

    move/from16 v4, v19

    goto :goto_2

    .line 514
    .end local v8    # "dlim":I
    .end local v9    # "sx":I
    .end local v14    # "dx":I
    .end local v15    # "line":I
    .end local v16    # "k":I
    .end local v18    # "downsampledIH":I
    .end local v19    # "downsampledIY":I
    .local v3, "downsampledIH":I
    .local v4, "downsampledIY":I
    :cond_4
    move/from16 v18, v3

    move/from16 v19, v4

    .end local v3    # "downsampledIH":I
    .end local v4    # "downsampledIY":I
    .restart local v18    # "downsampledIH":I
    .restart local v19    # "downsampledIY":I
    add-int/lit8 v13, v13, 0x1

    move v14, v1

    move-object/from16 v1, p1

    goto :goto_1

    .line 544
    .end local v1    # "transparentColorIndex":B
    .end local v13    # "i":I
    .end local v18    # "downsampledIH":I
    .end local v19    # "downsampledIY":I
    .restart local v3    # "downsampledIH":I
    .restart local v4    # "downsampledIY":I
    .local v14, "transparentColorIndex":B
    :cond_5
    move/from16 v18, v3

    move/from16 v19, v4

    .end local v3    # "downsampledIH":I
    .end local v4    # "downsampledIY":I
    .restart local v18    # "downsampledIH":I
    .restart local v19    # "downsampledIY":I
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->isFirstFrameTransparent:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->isFirstFrameTransparent:Ljava/lang/Boolean;

    .line 545
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->isFirstFrameTransparent:Ljava/lang/Boolean;

    if-nez v1, :cond_8

    if-eqz v7, :cond_8

    const/4 v1, -0x1

    if-eq v14, v1, :cond_8

    :cond_7
    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->isFirstFrameTransparent:Ljava/lang/Boolean;

    .line 547
    return-void
.end method

.method private decodeBitmapData(Lcom/bumptech/glide/gifdecoder/GifFrame;)V
    .locals 27
    .param p1, "frame"    # Lcom/bumptech/glide/gifdecoder/GifFrame;

    move-object/from16 v0, p0

    .line 695
    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    .line 697
    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->rawData:Ljava/nio/ByteBuffer;

    iget v3, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->bufferFrameStart:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 700
    :cond_0
    if-nez v1, :cond_1

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    :goto_0
    mul-int/2addr v2, v3

    goto :goto_1

    :cond_1
    iget v2, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    iget v3, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    goto :goto_0

    .line 704
    .local v2, "npix":I
    :goto_1
    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    array-length v3, v3

    if-ge v3, v2, :cond_3

    .line 706
    :cond_2
    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    invoke-interface {v3, v2}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    move-result-object v3

    iput-object v3, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    .line 708
    :cond_3
    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    .line 709
    .local v3, "mainPixels":[B
    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->prefix:[S

    const/16 v5, 0x1000

    if-nez v4, :cond_4

    .line 710
    new-array v4, v5, [S

    iput-object v4, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->prefix:[S

    .line 712
    :cond_4
    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->prefix:[S

    .line 713
    .local v4, "prefix":[S
    iget-object v6, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->suffix:[B

    if-nez v6, :cond_5

    .line 714
    new-array v6, v5, [B

    iput-object v6, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->suffix:[B

    .line 716
    :cond_5
    iget-object v6, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->suffix:[B

    .line 717
    .local v6, "suffix":[B
    iget-object v7, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->pixelStack:[B

    if-nez v7, :cond_6

    .line 718
    const/16 v7, 0x1001

    new-array v7, v7, [B

    iput-object v7, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->pixelStack:[B

    .line 720
    :cond_6
    iget-object v7, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->pixelStack:[B

    .line 723
    .local v7, "pixelStack":[B
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->readByte()I

    move-result v8

    .line 724
    .local v8, "dataSize":I
    const/4 v9, 0x1

    shl-int v10, v9, v8

    .line 725
    .local v10, "clear":I
    add-int/lit8 v11, v10, 0x1

    .line 726
    .local v11, "endOfInformation":I
    add-int/lit8 v12, v10, 0x2

    .line 727
    .local v12, "available":I
    const/4 v13, -0x1

    .line 728
    .local v13, "oldCode":I
    add-int/lit8 v14, v8, 0x1

    .line 729
    .local v14, "codeSize":I
    shl-int v15, v9, v14

    sub-int/2addr v15, v9

    .line 731
    .local v15, "codeMask":I
    const/4 v5, 0x0

    move/from16 v16, v5

    .local v16, "code":I
    :goto_2
    move/from16 v17, v16

    .end local v16    # "code":I
    .local v17, "code":I
    move/from16 v9, v17

    if-ge v9, v10, :cond_7

    .line 733
    .end local v17    # "code":I
    .local v9, "code":I
    aput-short v5, v4, v9

    .line 734
    int-to-byte v5, v9

    aput-byte v5, v6, v9

    .line 731
    add-int/lit8 v16, v9, 0x1

    .end local v9    # "code":I
    .restart local v16    # "code":I
    const/4 v5, 0x0

    const/4 v9, 0x1

    goto :goto_2

    .line 736
    .end local v16    # "code":I
    .restart local v9    # "code":I
    :cond_7
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->block:[B

    .line 738
    .local v5, "block":[B
    const/16 v16, 0x0

    move/from16 v17, v16

    .local v17, "bi":I
    move/from16 v19, v16

    .local v19, "pi":I
    move/from16 v20, v16

    .local v20, "top":I
    move/from16 v21, v16

    .local v21, "first":I
    move/from16 v22, v16

    .local v22, "count":I
    move/from16 v23, v16

    .local v23, "bits":I
    move/from16 v24, v16

    .local v24, "datum":I
    move/from16 v16, v15

    move v15, v12

    move v12, v9

    const/4 v9, 0x0

    move/from16 v26, v19

    move/from16 v19, v14

    move/from16 v14, v26

    .line 739
    .local v9, "i":I
    .local v12, "code":I
    .local v14, "pi":I
    .local v15, "available":I
    .local v16, "codeMask":I
    .local v19, "codeSize":I
    :goto_3
    if-ge v9, v2, :cond_13

    .line 741
    if-nez v22, :cond_9

    .line 742
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->readBlock()I

    move-result v22

    .line 743
    if-gtz v22, :cond_8

    .line 744
    const/4 v1, 0x3

    iput v1, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    .line 745
    goto/16 :goto_8

    .line 747
    :cond_8
    const/16 v17, 0x0

    .line 750
    :cond_9
    aget-byte v1, v5, v17

    and-int/lit16 v1, v1, 0xff

    shl-int v1, v1, v23

    add-int v24, v24, v1

    .line 751
    add-int/lit8 v23, v23, 0x8

    .line 752
    const/4 v1, 0x1

    add-int/lit8 v17, v17, 0x1

    .line 753
    const/4 v1, -0x1

    add-int/lit8 v22, v22, -0x1

    .line 755
    move/from16 v25, v21

    move/from16 v21, v14

    move v14, v13

    move v13, v12

    move/from16 v12, v19

    move/from16 v19, v9

    move/from16 v9, v23

    .end local v23    # "bits":I
    .local v9, "bits":I
    .local v12, "codeSize":I
    .local v13, "code":I
    .local v14, "oldCode":I
    .local v19, "i":I
    .local v21, "pi":I
    .local v25, "first":I
    :goto_4
    if-lt v9, v12, :cond_12

    .line 757
    and-int v13, v24, v16

    .line 758
    shr-int v24, v24, v12

    .line 759
    sub-int/2addr v9, v12

    .line 762
    if-ne v13, v10, :cond_a

    .line 764
    add-int/lit8 v12, v8, 0x1

    .line 765
    const/16 v18, 0x1

    shl-int v23, v18, v12

    add-int/lit8 v16, v23, -0x1

    .line 766
    add-int/lit8 v15, v10, 0x2

    .line 767
    const/4 v14, -0x1

    .line 768
    goto :goto_4

    .line 769
    :cond_a
    const/16 v18, 0x1

    if-ne v13, v11, :cond_b

    .line 770
    nop

    .line 738
    move/from16 v23, v9

    move/from16 v9, v19

    move-object/from16 v1, p1

    move/from16 v19, v12

    move v12, v13

    move v13, v14

    move/from16 v14, v21

    move/from16 v21, v25

    goto :goto_3

    .line 771
    :cond_b
    if-ne v14, v1, :cond_c

    .line 772
    aget-byte v23, v6, v13

    aput-byte v23, v3, v21

    .line 773
    add-int/lit8 v21, v21, 0x1

    .line 774
    add-int/lit8 v19, v19, 0x1

    .line 775
    move v14, v13

    .line 776
    move/from16 v25, v13

    .line 777
    goto :goto_4

    .line 780
    :cond_c
    move/from16 v23, v13

    .line 781
    .local v23, "inCode":I
    if-lt v13, v15, :cond_d

    .line 782
    move/from16 v1, v25

    int-to-byte v0, v1

    .end local v25    # "first":I
    .local v1, "first":I
    aput-byte v0, v7, v20

    .line 783
    add-int/lit8 v20, v20, 0x1

    .line 784
    move v0, v14

    .line 787
    .end local v13    # "code":I
    .local v0, "code":I
    move v13, v0

    goto :goto_5

    .end local v0    # "code":I
    .end local v1    # "first":I
    .restart local v13    # "code":I
    .restart local v25    # "first":I
    :cond_d
    move/from16 v1, v25

    .end local v25    # "first":I
    .restart local v1    # "first":I
    :goto_5
    if-lt v13, v10, :cond_e

    .line 788
    aget-byte v0, v6, v13

    aput-byte v0, v7, v20

    .line 789
    add-int/lit8 v20, v20, 0x1

    .line 790
    aget-short v13, v4, v13

    goto :goto_5

    .line 792
    :cond_e
    aget-byte v0, v6, v13

    and-int/lit16 v0, v0, 0xff

    .line 794
    .end local v1    # "first":I
    .local v0, "first":I
    int-to-byte v1, v0

    aput-byte v1, v3, v21

    .line 795
    add-int/lit8 v21, v21, 0x1

    .line 796
    add-int/lit8 v19, v19, 0x1

    .line 798
    :goto_6
    if-lez v20, :cond_f

    .line 800
    add-int/lit8 v20, v20, -0x1

    aget-byte v1, v7, v20

    aput-byte v1, v3, v21

    .line 801
    add-int/lit8 v21, v21, 0x1

    .line 802
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 806
    :cond_f
    const/16 v1, 0x1000

    if-ge v15, v1, :cond_11

    .line 807
    int-to-short v1, v14

    aput-short v1, v4, v15

    .line 808
    int-to-byte v1, v0

    aput-byte v1, v6, v15

    .line 809
    add-int/lit8 v15, v15, 0x1

    .line 810
    and-int v1, v15, v16

    if-nez v1, :cond_10

    const/16 v1, 0x1000

    if-ge v15, v1, :cond_11

    .line 811
    add-int/lit8 v12, v12, 0x1

    .line 812
    add-int v16, v16, v15

    goto :goto_7

    .line 815
    :cond_10
    const/16 v1, 0x1000

    :cond_11
    :goto_7
    move/from16 v14, v23

    .line 755
    move/from16 v25, v0

    move-object/from16 v0, p0

    const/4 v1, -0x1

    goto/16 :goto_4

    .line 738
    .end local v0    # "first":I
    .end local v23    # "inCode":I
    .restart local v25    # "first":I
    :cond_12
    move/from16 v1, v25

    const/16 v18, 0x1

    move/from16 v23, v9

    move/from16 v9, v19

    move-object/from16 v0, p0

    move/from16 v19, v12

    move v12, v13

    move v13, v14

    move/from16 v14, v21

    move/from16 v21, v1

    move-object/from16 v1, p1

    .end local v25    # "first":I
    .restart local v1    # "first":I
    goto/16 :goto_3

    .line 820
    .end local v1    # "first":I
    .local v9, "i":I
    .local v12, "code":I
    .local v13, "oldCode":I
    .local v14, "pi":I
    .local v19, "codeSize":I
    .local v21, "first":I
    .local v23, "bits":I
    :cond_13
    :goto_8
    const/4 v0, 0x0

    invoke-static {v3, v14, v2, v0}, Ljava/util/Arrays;->fill([BIIB)V

    .line 821
    return-void
.end method

.method private getHeaderParser()Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    invoke-direct {v0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    return-object v0
.end method

.method private getNextBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 845
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->isFirstFrameTransparent:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->isFirstFrameTransparent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 847
    .local v0, "config":Landroid/graphics/Bitmap$Config;
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    iget v3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledHeight:I

    invoke-interface {v1, v2, v3, v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 848
    .local v1, "result":Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 849
    return-object v1
.end method

.method private readBlock()I
    .locals 5

    .line 836
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->readByte()I

    move-result v0

    .line 837
    .local v0, "blockSize":I
    if-gtz v0, :cond_0

    .line 838
    return v0

    .line 840
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->rawData:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->block:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 841
    return v0
.end method

.method private readByte()I
    .locals 1

    .line 827
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private setPixels(Lcom/bumptech/glide/gifdecoder/GifFrame;Lcom/bumptech/glide/gifdecoder/GifFrame;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "currentFrame"    # Lcom/bumptech/glide/gifdecoder/GifFrame;
    .param p2, "previousFrame"    # Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 425
    iget-object v8, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainScratch:[I

    .line 428
    .local v8, "dest":[I
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 429
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->previousImage:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->release(Landroid/graphics/Bitmap;)V

    .line 432
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 433
    invoke-static {v8, v0}, Ljava/util/Arrays;->fill([II)V

    .line 439
    :cond_1
    const/4 v1, 0x3

    if-eqz p2, :cond_2

    iget v2, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 441
    invoke-static {v8, v0}, Ljava/util/Arrays;->fill([II)V

    .line 445
    :cond_2
    if-eqz p2, :cond_7

    iget v0, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-lez v0, :cond_7

    .line 448
    iget v0, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 450
    const/4 v0, 0x0

    .line 451
    .local v0, "c":I
    iget-boolean v1, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    if-nez v1, :cond_3

    .line 452
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgColor:I

    .line 453
    iget-object v1, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgIndex:I

    iget v2, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    if-ne v1, v2, :cond_3

    .line 454
    const/4 v0, 0x0

    .line 458
    :cond_3
    iget v1, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    iget v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    div-int/2addr v1, v2

    .line 459
    .local v1, "downsampledIH":I
    iget v2, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->iy:I

    iget v3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    div-int/2addr v2, v3

    .line 460
    .local v2, "downsampledIY":I
    iget v3, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    iget v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    div-int/2addr v3, v4

    .line 461
    .local v3, "downsampledIW":I
    iget v4, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->ix:I

    iget v5, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    div-int/2addr v4, v5

    .line 462
    .local v4, "downsampledIX":I
    iget v5, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v4

    .line 463
    .local v5, "topLeft":I
    iget v6, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v5

    .line 464
    .local v6, "bottomLeft":I
    move v7, v5

    .local v7, "left":I
    :goto_0
    if-ge v7, v6, :cond_5

    .line 465
    add-int v9, v7, v3

    .line 466
    .local v9, "right":I
    move v10, v7

    .local v10, "pointer":I
    :goto_1
    if-ge v10, v9, :cond_4

    .line 467
    aput v0, v8, v10

    .line 466
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 464
    .end local v9    # "right":I
    .end local v10    # "pointer":I
    :cond_4
    iget v9, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    add-int/2addr v7, v9

    goto :goto_0

    .line 470
    .end local v0    # "c":I
    .end local v1    # "downsampledIH":I
    .end local v2    # "downsampledIY":I
    .end local v3    # "downsampledIW":I
    .end local v4    # "downsampledIX":I
    .end local v5    # "topLeft":I
    .end local v6    # "bottomLeft":I
    .end local v7    # "left":I
    :cond_5
    goto :goto_2

    :cond_6
    iget v0, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    .line 472
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->previousImage:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget v3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    iget v7, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledHeight:I

    move-object v1, v8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 478
    :cond_7
    :goto_2
    invoke-direct {p0, p1}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->decodeBitmapData(Lcom/bumptech/glide/gifdecoder/GifFrame;)V

    .line 480
    iget-boolean v0, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->interlace:Z

    const/4 v1, 0x1

    if-nez v0, :cond_9

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    if-eq v0, v1, :cond_8

    goto :goto_3

    .line 483
    :cond_8
    invoke-direct {p0, p1}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->copyIntoScratchFast(Lcom/bumptech/glide/gifdecoder/GifFrame;)V

    goto :goto_4

    .line 481
    :cond_9
    :goto_3
    invoke-direct {p0, p1}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->copyCopyIntoScratchRobust(Lcom/bumptech/glide/gifdecoder/GifFrame;)V

    .line 487
    :goto_4
    iget-boolean v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->savePrevious:Z

    if-eqz v0, :cond_c

    iget v0, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-eqz v0, :cond_a

    iget v0, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-ne v0, v1, :cond_c

    .line 489
    :cond_a
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_b

    .line 490
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 492
    :cond_b
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->previousImage:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget v3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    iget v7, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledHeight:I

    move-object v1, v8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 497
    :cond_c
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 498
    .local v9, "result":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    iget v3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    iget v7, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledHeight:I

    move-object v0, v9

    move-object v1, v8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 499
    return-object v9
.end method


# virtual methods
.method public advance()V
    .locals 2

    .line 165
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    .line 166
    return-void
.end method

.method public clear()V
    .locals 3

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 329
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    invoke-interface {v1, v2}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->release([B)V

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainScratch:[I

    if-eqz v1, :cond_1

    .line 333
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainScratch:[I

    invoke-interface {v1, v2}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->release([I)V

    .line 335
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 336
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->previousImage:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->release(Landroid/graphics/Bitmap;)V

    .line 338
    :cond_2
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 339
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 340
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->isFirstFrameTransparent:Ljava/lang/Boolean;

    .line 341
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->block:[B

    if-eqz v0, :cond_3

    .line 342
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->block:[B

    invoke-interface {v0, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->release([B)V

    .line 344
    :cond_3
    return-void
.end method

.method public getByteSize()I
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainScratch:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentFrameIndex()I
    .locals 1

    .line 193
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    return v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->rawData:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getDelay(I)I
    .locals 2
    .param p1, "n"    # I

    .line 170
    const/4 v0, -0x1

    .line 171
    .local v0, "delay":I
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-ge p1, v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/gifdecoder/GifFrame;

    iget v0, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->delay:I

    .line 174
    :cond_0
    return v0
.end method

.method public getFrameCount()I
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    return v0
.end method

.method public getLoopCount()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 205
    const/4 v0, 0x1

    return v0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    return v0
.end method

.method public getNetscapeLoopCount()I
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    return v0
.end method

.method public getNextDelay()I
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    if-gez v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->getDelay(I)I

    move-result v0

    return v0

    .line 180
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getNextFrame()Landroid/graphics/Bitmap;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    if-gez v0, :cond_2

    .line 235
    :cond_0
    sget-object v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    sget-object v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to decode frame, frameCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", framePointer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_1
    iput v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    .line 243
    :cond_2
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_a

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    goto/16 :goto_1

    .line 249
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    .line 251
    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->block:[B

    if-nez v5, :cond_4

    .line 252
    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    const/16 v6, 0xff

    invoke-interface {v5, v6}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    move-result-object v5

    iput-object v5, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->block:[B

    .line 255
    :cond_4
    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    iget v6, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 256
    .local v5, "currentFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    const/4 v6, 0x0

    .line 257
    .local v6, "previousFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    iget v7, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    sub-int/2addr v7, v2

    .line 258
    .local v7, "previousIndex":I
    if-ltz v7, :cond_5

    .line 259
    iget-object v8, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v8, v8, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bumptech/glide/gifdecoder/GifFrame;

    move-object v6, v8

    .line 263
    :cond_5
    iget-object v8, v5, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    if-eqz v8, :cond_6

    iget-object v8, v5, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    goto :goto_0

    :cond_6
    iget-object v8, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v8, v8, Lcom/bumptech/glide/gifdecoder/GifHeader;->gct:[I

    :goto_0
    iput-object v8, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->act:[I

    .line 264
    iget-object v8, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->act:[I

    if-nez v8, :cond_8

    .line 265
    sget-object v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 266
    sget-object v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid color table found for frame #"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_7
    iput v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-object v3

    .line 274
    :cond_8
    :try_start_1
    iget-boolean v1, v5, Lcom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    if-eqz v1, :cond_9

    .line 276
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->act:[I

    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->pct:[I

    iget-object v8, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->act:[I

    array-length v8, v8

    invoke-static {v1, v0, v3, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->pct:[I

    iput-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->act:[I

    .line 280
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->act:[I

    iget v3, v5, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    aput v0, v1, v3

    .line 282
    iget v0, v5, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-ne v0, v4, :cond_9

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    if-nez v0, :cond_9

    .line 286
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->isFirstFrameTransparent:Ljava/lang/Boolean;

    .line 291
    :cond_9
    invoke-direct {p0, v5, v6}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->setPixels(Lcom/bumptech/glide/gifdecoder/GifFrame;Lcom/bumptech/glide/gifdecoder/GifFrame;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 244
    .end local v5    # "currentFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    .end local v6    # "previousFrame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    .end local v7    # "previousIndex":I
    :cond_a
    :goto_1
    :try_start_2
    sget-object v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 245
    sget-object v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to decode frame, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    :cond_b
    monitor-exit p0

    return-object v3

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;
    throw v0
.end method

.method public getStatus()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    return v0
.end method

.method public getTotalIterationCount()I
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 218
    return v1

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    if-nez v0, :cond_1

    .line 221
    const/4 v0, 0x0

    return v0

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    return v0
.end method

.method public read(Ljava/io/InputStream;I)I
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "contentLength"    # I

    .line 296
    if-eqz p1, :cond_2

    .line 298
    const/16 v0, 0x4000

    if-lez p2, :cond_0

    add-int/lit16 v1, p2, 0x1000

    goto :goto_0

    :cond_0
    move v1, v0

    .line 299
    .local v1, "capacity":I
    :goto_0
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 301
    .local v2, "buffer":Ljava/io/ByteArrayOutputStream;
    new-array v0, v0, [B

    .line 302
    .local v0, "data":[B
    :goto_1
    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    move v5, v3

    .local v5, "nRead":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    .line 303
    invoke-virtual {v2, v0, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 305
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 307
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "data":[B
    .end local v1    # "capacity":I
    .end local v2    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "nRead":I
    goto :goto_2

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->TAG:Ljava/lang/String;

    const-string v2, "Error reading data from stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    goto :goto_3

    .line 312
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    .line 316
    :goto_3
    if-eqz p1, :cond_3

    .line 317
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 319
    :catch_1
    move-exception v0

    .line 320
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v1, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->TAG:Ljava/lang/String;

    const-string v2, "Error closing stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 321
    :cond_3
    :goto_4
    nop

    .line 323
    :goto_5
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    return v0
.end method

.method public declared-synchronized read([B)I
    .locals 1
    .param p1, "data"    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 401
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->getHeaderParser()Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->setData([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->parseHeader()Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 402
    if-eqz p1, :cond_0

    .line 403
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V

    .line 406
    :cond_0
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 400
    .end local p1    # "data":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;
    throw p1
.end method

.method public resetFrameIndex()V
    .locals 1

    .line 198
    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    .line 199
    return-void
.end method

.method public declared-synchronized setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "header"    # Lcom/bumptech/glide/gifdecoder/GifHeader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 353
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    monitor-exit p0

    return-void

    .line 352
    .end local p1    # "header":Lcom/bumptech/glide/gifdecoder/GifHeader;
    .end local p2    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;
    throw p1
.end method

.method public declared-synchronized setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V
    .locals 4
    .param p1, "header"    # Lcom/bumptech/glide/gifdecoder/GifHeader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "sampleSize"    # I

    monitor-enter p0

    .line 359
    if-lez p3, :cond_2

    .line 363
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    move p3, v0

    .line 364
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    .line 365
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 366
    const/4 v1, -0x1

    iput v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    .line 368
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 369
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 370
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->rawData:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 373
    iput-boolean v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->savePrevious:Z

    .line 374
    iget-object v0, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 375
    .local v1, "frame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    iget v2, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->savePrevious:Z

    .line 377
    goto :goto_1

    .line 379
    .end local v1    # "frame":Lcom/bumptech/glide/gifdecoder/GifFrame;
    :cond_0
    goto :goto_0

    .line 381
    :cond_1
    :goto_1
    iput p3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    .line 382
    iget v0, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    div-int/2addr v0, p3

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    .line 383
    iget v0, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    div-int/2addr v0, p3

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledHeight:I

    .line 386
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget v1, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget v2, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    .line 387
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    iget v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledHeight:I

    mul-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtainIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainScratch:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    monitor-exit p0

    return-void

    .line 360
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sample size must be >=0, not: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    .end local p1    # "header":Lcom/bumptech/glide/gifdecoder/GifHeader;
    .end local p2    # "buffer":Ljava/nio/ByteBuffer;
    .end local p3    # "sampleSize":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;
    throw p1
.end method

.method public declared-synchronized setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V
    .locals 1
    .param p1, "header"    # Lcom/bumptech/glide/gifdecoder/GifHeader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "data"    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 348
    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    monitor-exit p0

    return-void

    .line 347
    .end local p1    # "header":Lcom/bumptech/glide/gifdecoder/GifHeader;
    .end local p2    # "data":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;
    throw p1
.end method

.method public setDefaultBitmapConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 3
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 411
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 412
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", must be one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 417
    return-void
.end method
