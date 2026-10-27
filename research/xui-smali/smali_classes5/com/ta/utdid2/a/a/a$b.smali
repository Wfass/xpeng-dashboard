.class Lcom/ta/utdid2/a/a/a$b;
.super Lcom/ta/utdid2/a/a/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static final b:[B

.field private static final c:[B

.field static final synthetic d:Z


# instance fields
.field c:I

.field private count:I

.field private final d:[B

.field public final e:Z

.field private final e:[B

.field public final f:Z

.field public final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 538
    const-class v0, Lcom/ta/utdid2/a/a/a;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ta/utdid2/a/a/a$b;->d:Z

    .line 550
    const/16 v0, 0x40

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/ta/utdid2/a/a/a$b;->b:[B

    .line 561
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ta/utdid2/a/a/a$b;->c:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .locals 2

    .line 577
    invoke-direct {p0}, Lcom/ta/utdid2/a/a/a$a;-><init>()V

    .line 578
    iput-object p2, p0, Lcom/ta/utdid2/a/a/a$b;->a:[B

    .line 580
    and-int/lit8 p2, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lcom/ta/utdid2/a/a/a$b;->e:Z

    .line 581
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    iput-boolean p2, p0, Lcom/ta/utdid2/a/a/a$b;->f:Z

    .line 582
    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    iput-boolean v1, p0, Lcom/ta/utdid2/a/a/a$b;->g:Z

    .line 583
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_3

    sget-object p1, Lcom/ta/utdid2/a/a/a$b;->b:[B

    goto :goto_3

    :cond_3
    sget-object p1, Lcom/ta/utdid2/a/a/a$b;->c:[B

    :goto_3
    iput-object p1, p0, Lcom/ta/utdid2/a/a/a$b;->e:[B

    .line 585
    const/4 p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/ta/utdid2/a/a/a$b;->d:[B

    .line 586
    iput v0, p0, Lcom/ta/utdid2/a/a/a$b;->c:I

    .line 588
    iget-boolean p1, p0, Lcom/ta/utdid2/a/a/a$b;->f:Z

    if-eqz p1, :cond_4

    const/16 p1, 0x13

    goto :goto_4

    :cond_4
    const/4 p1, -0x1

    :goto_4
    iput p1, p0, Lcom/ta/utdid2/a/a/a$b;->count:I

    .line 589
    return-void
.end method


# virtual methods
.method public a([BIIZ)Z
    .locals 18

    move-object/from16 v0, p0

    .line 601
    iget-object v3, v0, Lcom/ta/utdid2/a/a/a$b;->e:[B

    .line 602
    iget-object v4, v0, Lcom/ta/utdid2/a/a/a$b;->a:[B

    .line 603
    nop

    .line 604
    iget v5, v0, Lcom/ta/utdid2/a/a/a$b;->count:I

    .line 606
    nop

    .line 607
    add-int v6, p3, p2

    .line 608
    nop

    .line 614
    iget v7, v0, Lcom/ta/utdid2/a/a/a$b;->c:I

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 631
    :pswitch_0
    add-int/lit8 v7, p2, 0x1

    if-gt v7, v6, :cond_0

    .line 633
    iget-object v11, v0, Lcom/ta/utdid2/a/a/a$b;->d:[B

    aget-byte v11, v11, v9

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    iget-object v12, v0, Lcom/ta/utdid2/a/a/a$b;->d:[B

    aget-byte v12, v12, v10

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v11

    .line 635
    iput v9, v0, Lcom/ta/utdid2/a/a/a$b;->c:I

    goto :goto_1

    .line 620
    :pswitch_1
    add-int/lit8 v7, p2, 0x2

    if-gt v7, v6, :cond_0

    .line 623
    iget-object v7, v0, Lcom/ta/utdid2/a/a/a$b;->d:[B

    aget-byte v7, v7, v9

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    add-int/lit8 v11, p2, 0x1

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v7

    add-int/lit8 v7, v11, 0x1

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v2, v11

    .line 625
    iput v9, v0, Lcom/ta/utdid2/a/a/a$b;->c:I

    goto :goto_1

    .line 617
    :pswitch_2
    nop

    .line 640
    :cond_0
    :goto_0
    move/from16 v7, p2

    move v2, v8

    :goto_1
    const/4 v12, 0x4

    const/16 v13, 0xd

    const/16 v14, 0xa

    const/4 v15, 0x2

    if-eq v2, v8, :cond_3

    .line 641
    shr-int/lit8 v8, v2, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v3, v8

    aput-byte v8, v4, v9

    .line 642
    shr-int/lit8 v8, v2, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v3, v8

    aput-byte v8, v4, v10

    .line 643
    shr-int/lit8 v8, v2, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v3, v8

    aput-byte v8, v4, v15

    .line 644
    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v3, v2

    const/4 v8, 0x3

    aput-byte v2, v4, v8

    .line 645
    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_2

    .line 646
    iget-boolean v2, v0, Lcom/ta/utdid2/a/a/a$b;->g:Z

    if-eqz v2, :cond_1

    .line 647
    const/4 v2, 0x5

    aput-byte v13, v4, v12

    goto :goto_2

    .line 648
    :cond_1
    move v2, v12

    :goto_2
    add-int/lit8 v5, v2, 0x1

    aput-byte v14, v4, v2

    .line 649
    nop

    .line 658
    const/16 v2, 0x13

    goto :goto_3

    :cond_2
    move v2, v5

    move v5, v12

    goto :goto_3

    :cond_3
    move v2, v5

    move v5, v9

    :goto_3
    add-int/lit8 v8, v7, 0x3

    if-gt v8, v6, :cond_6

    .line 659
    aget-byte v11, p1, v7

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    add-int/lit8 v16, v7, 0x1

    aget-byte v15, p1, v16

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v11, v15

    add-int/lit8 v7, v7, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v11

    .line 661
    shr-int/lit8 v11, v7, 0x12

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v3, v11

    aput-byte v11, v4, v5

    .line 662
    add-int/lit8 v11, v5, 0x1

    shr-int/lit8 v15, v7, 0xc

    and-int/lit8 v15, v15, 0x3f

    aget-byte v15, v3, v15

    aput-byte v15, v4, v11

    .line 663
    add-int/lit8 v11, v5, 0x2

    shr-int/lit8 v15, v7, 0x6

    and-int/lit8 v15, v15, 0x3f

    aget-byte v15, v3, v15

    aput-byte v15, v4, v11

    .line 664
    add-int/lit8 v11, v5, 0x3

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v3, v7

    aput-byte v7, v4, v11

    .line 665
    nop

    .line 666
    add-int/lit8 v5, v5, 0x4

    .line 667
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_5

    .line 668
    iget-boolean v2, v0, Lcom/ta/utdid2/a/a/a$b;->g:Z

    if-eqz v2, :cond_4

    .line 669
    add-int/lit8 v2, v5, 0x1

    aput-byte v13, v4, v5

    goto :goto_4

    .line 670
    :cond_4
    move v2, v5

    :goto_4
    add-int/lit8 v5, v2, 0x1

    aput-byte v14, v4, v2

    .line 671
    nop

    .line 658
    move v7, v8

    const/16 v2, 0x13

    goto :goto_5

    :cond_5
    move v7, v8

    :goto_5
    const/4 v15, 0x2

    goto :goto_3

    .line 675
    :cond_6
    if-eqz p4, :cond_17

    .line 681
    iget v8, v0, Lcom/ta/utdid2/a/a/a$b;->c:I

    sub-int v8, v7, v8

    add-int/lit8 v11, v6, -0x1

    if-ne v8, v11, :cond_b

    .line 682
    nop

    .line 683
    iget v8, v0, Lcom/ta/utdid2/a/a/a$b;->c:I

    if-lez v8, :cond_7

    iget-object v1, v0, Lcom/ta/utdid2/a/a/a$b;->d:[B

    aget-byte v1, v1, v9

    move v9, v10

    goto :goto_6

    :cond_7
    add-int/lit8 v8, v7, 0x1

    aget-byte v1, p1, v7

    move v7, v8

    :goto_6
    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v12

    .line 684
    iget v8, v0, Lcom/ta/utdid2/a/a/a$b;->c:I

    sub-int/2addr v8, v9

    iput v8, v0, Lcom/ta/utdid2/a/a/a$b;->c:I

    .line 685
    add-int/lit8 v8, v5, 0x1

    shr-int/lit8 v9, v1, 0x6

    and-int/lit8 v9, v9, 0x3f

    aget-byte v9, v3, v9

    aput-byte v9, v4, v5

    .line 686
    add-int/lit8 v5, v8, 0x1

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v3, v1

    aput-byte v1, v4, v8

    .line 687
    iget-boolean v1, v0, Lcom/ta/utdid2/a/a/a$b;->e:Z

    if-eqz v1, :cond_8

    .line 688
    add-int/lit8 v1, v5, 0x1

    const/16 v3, 0x3d

    aput-byte v3, v4, v5

    .line 689
    add-int/lit8 v5, v1, 0x1

    aput-byte v3, v4, v1

    .line 691
    :cond_8
    iget-boolean v1, v0, Lcom/ta/utdid2/a/a/a$b;->f:Z

    if-eqz v1, :cond_a

    .line 692
    iget-boolean v1, v0, Lcom/ta/utdid2/a/a/a$b;->g:Z

    if-eqz v1, :cond_9

    .line 693
    add-int/lit8 v1, v5, 0x1

    aput-byte v13, v4, v5

    goto :goto_7

    .line 694
    :cond_9
    move v1, v5

    :goto_7
    add-int/lit8 v5, v1, 0x1

    aput-byte v14, v4, v1

    .line 696
    :cond_a
    goto/16 :goto_c

    :cond_b
    iget v8, v0, Lcom/ta/utdid2/a/a/a$b;->c:I

    sub-int v8, v7, v8

    add-int/lit8 v11, v6, -0x2

    if-ne v8, v11, :cond_11

    .line 697
    nop

    .line 698
    iget v8, v0, Lcom/ta/utdid2/a/a/a$b;->c:I

    if-le v8, v10, :cond_c

    iget-object v8, v0, Lcom/ta/utdid2/a/a/a$b;->d:[B

    aget-byte v8, v8, v9

    move v9, v10

    move/from16 v17, v8

    move v8, v7

    move/from16 v7, v17

    goto :goto_8

    :cond_c
    add-int/lit8 v8, v7, 0x1

    aget-byte v7, p1, v7

    :goto_8
    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v14

    iget v11, v0, Lcom/ta/utdid2/a/a/a$b;->c:I

    if-lez v11, :cond_d

    iget-object v1, v0, Lcom/ta/utdid2/a/a/a$b;->d:[B

    add-int/lit8 v11, v9, 0x1

    aget-byte v1, v1, v9

    move v9, v11

    move v11, v8

    goto :goto_9

    :cond_d
    add-int/lit8 v11, v8, 0x1

    aget-byte v1, p1, v8

    :goto_9
    and-int/lit16 v1, v1, 0xff

    const/4 v8, 0x2

    shl-int/2addr v1, v8

    or-int/2addr v1, v7

    .line 700
    iget v7, v0, Lcom/ta/utdid2/a/a/a$b;->c:I

    sub-int/2addr v7, v9

    iput v7, v0, Lcom/ta/utdid2/a/a/a$b;->c:I

    .line 701
    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v8, v1, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v3, v8

    aput-byte v8, v4, v5

    .line 702
    add-int/lit8 v5, v7, 0x1

    shr-int/lit8 v8, v1, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v3, v8

    aput-byte v8, v4, v7

    .line 703
    add-int/lit8 v7, v5, 0x1

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v3, v1

    aput-byte v1, v4, v5

    .line 704
    iget-boolean v1, v0, Lcom/ta/utdid2/a/a/a$b;->e:Z

    if-eqz v1, :cond_e

    .line 705
    add-int/lit8 v1, v7, 0x1

    const/16 v3, 0x3d

    aput-byte v3, v4, v7

    goto :goto_a

    .line 707
    :cond_e
    move v1, v7

    :goto_a
    iget-boolean v3, v0, Lcom/ta/utdid2/a/a/a$b;->f:Z

    if-eqz v3, :cond_10

    .line 708
    iget-boolean v3, v0, Lcom/ta/utdid2/a/a/a$b;->g:Z

    if-eqz v3, :cond_f

    .line 709
    add-int/lit8 v3, v1, 0x1

    aput-byte v13, v4, v1

    .line 710
    move v1, v3

    :cond_f
    add-int/lit8 v3, v1, 0x1

    aput-byte v14, v4, v1

    .line 712
    move v1, v3

    .line 718
    :cond_10
    move v5, v1

    move v7, v11

    goto :goto_c

    .line 712
    :cond_11
    iget-boolean v1, v0, Lcom/ta/utdid2/a/a/a$b;->f:Z

    if-eqz v1, :cond_13

    if-lez v5, :cond_13

    const/16 v1, 0x13

    if-eq v2, v1, :cond_13

    .line 713
    iget-boolean v1, v0, Lcom/ta/utdid2/a/a/a$b;->g:Z

    if-eqz v1, :cond_12

    .line 714
    add-int/lit8 v1, v5, 0x1

    aput-byte v13, v4, v5

    goto :goto_b

    .line 715
    :cond_12
    move v1, v5

    :goto_b
    add-int/lit8 v3, v1, 0x1

    aput-byte v14, v4, v1

    .line 718
    move v5, v3

    :cond_13
    :goto_c
    sget-boolean v1, Lcom/ta/utdid2/a/a/a$b;->d:Z

    if-nez v1, :cond_15

    iget v1, v0, Lcom/ta/utdid2/a/a/a$b;->c:I

    if-nez v1, :cond_14

    goto :goto_d

    :cond_14
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 719
    :cond_15
    :goto_d
    sget-boolean v1, Lcom/ta/utdid2/a/a/a$b;->d:Z

    if-nez v1, :cond_19

    if-ne v7, v6, :cond_16

    goto :goto_e

    :cond_16
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 724
    :cond_17
    add-int/lit8 v3, v6, -0x1

    if-ne v7, v3, :cond_18

    .line 725
    iget-object v3, v0, Lcom/ta/utdid2/a/a/a$b;->d:[B

    iget v4, v0, Lcom/ta/utdid2/a/a/a$b;->c:I

    add-int/lit8 v6, v4, 0x1

    iput v6, v0, Lcom/ta/utdid2/a/a/a$b;->c:I

    aget-byte v1, p1, v7

    aput-byte v1, v3, v4

    goto :goto_e

    .line 726
    :cond_18
    const/4 v3, 0x2

    sub-int/2addr v6, v3

    if-ne v7, v6, :cond_19

    .line 727
    iget-object v3, v0, Lcom/ta/utdid2/a/a/a$b;->d:[B

    iget v4, v0, Lcom/ta/utdid2/a/a/a$b;->c:I

    add-int/lit8 v6, v4, 0x1

    iput v6, v0, Lcom/ta/utdid2/a/a/a$b;->c:I

    aget-byte v6, p1, v7

    aput-byte v6, v3, v4

    .line 728
    iget-object v3, v0, Lcom/ta/utdid2/a/a/a$b;->d:[B

    iget v4, v0, Lcom/ta/utdid2/a/a/a$b;->c:I

    add-int/lit8 v6, v4, 0x1

    iput v6, v0, Lcom/ta/utdid2/a/a/a$b;->c:I

    add-int/2addr v7, v10

    aget-byte v1, p1, v7

    aput-byte v1, v3, v4

    .line 732
    :cond_19
    :goto_e
    iput v5, v0, Lcom/ta/utdid2/a/a/a$b;->b:I

    .line 733
    iput v2, v0, Lcom/ta/utdid2/a/a/a$b;->count:I

    .line 735
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
