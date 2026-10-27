.class Lcom/alibaba/mtl/log/d/c$c;
.super Lcom/alibaba/mtl/log/d/c$a;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/log/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field static final synthetic J:Z

.field private static final a:[B

.field private static final b:[B


# instance fields
.field E:I

.field private final c:[B

.field private count:I

.field private final d:[B

.field public final do_cr:Z

.field public final do_newline:Z

.field public final do_padding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 547
    const-class v0, Lcom/alibaba/mtl/log/d/c;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/mtl/log/d/c$c;->J:Z

    .line 559
    const/16 v0, 0x40

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/alibaba/mtl/log/d/c$c;->a:[B

    .line 570
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alibaba/mtl/log/d/c$c;->b:[B

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

    .line 586
    invoke-direct {p0}, Lcom/alibaba/mtl/log/d/c$a;-><init>()V

    .line 587
    iput-object p2, p0, Lcom/alibaba/mtl/log/d/c$c;->output:[B

    .line 589
    and-int/lit8 p2, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lcom/alibaba/mtl/log/d/c$c;->do_padding:Z

    .line 590
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    iput-boolean p2, p0, Lcom/alibaba/mtl/log/d/c$c;->do_newline:Z

    .line 591
    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    iput-boolean v1, p0, Lcom/alibaba/mtl/log/d/c$c;->do_cr:Z

    .line 592
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_3

    sget-object p1, Lcom/alibaba/mtl/log/d/c$c;->a:[B

    goto :goto_3

    :cond_3
    sget-object p1, Lcom/alibaba/mtl/log/d/c$c;->b:[B

    :goto_3
    iput-object p1, p0, Lcom/alibaba/mtl/log/d/c$c;->d:[B

    .line 594
    const/4 p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/alibaba/mtl/log/d/c$c;->c:[B

    .line 595
    iput v0, p0, Lcom/alibaba/mtl/log/d/c$c;->E:I

    .line 597
    iget-boolean p1, p0, Lcom/alibaba/mtl/log/d/c$c;->do_newline:Z

    if-eqz p1, :cond_4

    const/16 p1, 0x13

    goto :goto_4

    :cond_4
    const/4 p1, -0x1

    :goto_4
    iput p1, p0, Lcom/alibaba/mtl/log/d/c$c;->count:I

    .line 598
    return-void
.end method


# virtual methods
.method public process([BIIZ)Z
    .locals 17
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "finish"    # Z

    move-object/from16 v0, p0

    .line 612
    iget-object v1, v0, Lcom/alibaba/mtl/log/d/c$c;->d:[B

    .line 613
    iget-object v2, v0, Lcom/alibaba/mtl/log/d/c$c;->output:[B

    .line 614
    nop

    .line 615
    iget v3, v0, Lcom/alibaba/mtl/log/d/c$c;->count:I

    .line 617
    nop

    .line 618
    add-int v4, p3, p2

    .line 619
    .end local p3    # "len":I
    .local v4, "len":I
    nop

    .line 625
    iget v5, v0, Lcom/alibaba/mtl/log/d/c$c;->E:I

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 642
    :pswitch_0
    add-int/lit8 v5, p2, 0x1

    if-gt v5, v4, :cond_0

    .line 644
    iget-object v5, v0, Lcom/alibaba/mtl/log/d/c$c;->c:[B

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    iget-object v9, v0, Lcom/alibaba/mtl/log/d/c$c;->c:[B

    aget-byte v9, v9, v8

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v5, v9

    add-int/lit8 v9, p2, 0x1

    aget-byte v10, p1, p2

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v5, v10

    .line 647
    iput v7, v0, Lcom/alibaba/mtl/log/d/c$c;->E:I

    goto :goto_1

    .line 631
    :pswitch_1
    add-int/lit8 v5, p2, 0x2

    if-gt v5, v4, :cond_0

    .line 634
    iget-object v5, v0, Lcom/alibaba/mtl/log/d/c$c;->c:[B

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v9, p2, 0x1

    aget-byte v10, p1, p2

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v5, v10

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v5, v9

    .line 637
    iput v7, v0, Lcom/alibaba/mtl/log/d/c$c;->E:I

    .line 652
    move v9, v10

    goto :goto_1

    .line 628
    :pswitch_2
    nop

    .line 652
    :cond_0
    :goto_0
    move/from16 v9, p2

    move v5, v6

    :goto_1
    const/4 v11, 0x4

    const/16 v12, 0xd

    const/16 v13, 0xa

    const/4 v14, 0x2

    if-eq v5, v6, :cond_3

    .line 653
    shr-int/lit8 v6, v5, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v1, v6

    aput-byte v6, v2, v7

    .line 654
    shr-int/lit8 v6, v5, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v1, v6

    aput-byte v6, v2, v8

    .line 655
    shr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v1, v6

    aput-byte v6, v2, v14

    .line 656
    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v1, v5

    const/4 v6, 0x3

    aput-byte v5, v2, v6

    .line 657
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_2

    .line 658
    iget-boolean v3, v0, Lcom/alibaba/mtl/log/d/c$c;->do_cr:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    aput-byte v12, v2, v11

    goto :goto_2

    .line 659
    :cond_1
    move v3, v11

    :goto_2
    add-int/lit8 v5, v3, 0x1

    aput-byte v13, v2, v3

    .line 660
    nop

    .line 669
    const/16 v3, 0x13

    goto :goto_3

    :cond_2
    move v5, v11

    goto :goto_3

    :cond_3
    move v5, v7

    :goto_3
    add-int/lit8 v6, v9, 0x3

    if-gt v6, v4, :cond_6

    .line 670
    aget-byte v10, p1, v9

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    add-int/lit8 v15, v9, 0x1

    aget-byte v8, p1, v15

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v10

    add-int/lit8 v9, v9, 0x2

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    .line 673
    shr-int/lit8 v9, v8, 0x12

    and-int/lit8 v9, v9, 0x3f

    aget-byte v9, v1, v9

    aput-byte v9, v2, v5

    .line 674
    add-int/lit8 v9, v5, 0x1

    shr-int/lit8 v10, v8, 0xc

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v1, v10

    aput-byte v10, v2, v9

    .line 675
    add-int/lit8 v9, v5, 0x2

    shr-int/lit8 v10, v8, 0x6

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v1, v10

    aput-byte v10, v2, v9

    .line 676
    add-int/lit8 v9, v5, 0x3

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v1, v8

    aput-byte v8, v2, v9

    .line 677
    nop

    .line 678
    add-int/lit8 v5, v5, 0x4

    .line 679
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_5

    .line 680
    iget-boolean v3, v0, Lcom/alibaba/mtl/log/d/c$c;->do_cr:Z

    if-eqz v3, :cond_4

    add-int/lit8 v3, v5, 0x1

    aput-byte v12, v2, v5

    goto :goto_4

    .line 681
    :cond_4
    move v3, v5

    :goto_4
    add-int/lit8 v5, v3, 0x1

    aput-byte v13, v2, v3

    .line 682
    nop

    .line 669
    move v9, v6

    const/16 v3, 0x13

    goto :goto_5

    :cond_5
    move v9, v6

    :goto_5
    const/4 v8, 0x1

    goto :goto_3

    .line 686
    :cond_6
    if-eqz p4, :cond_18

    .line 692
    iget v8, v0, Lcom/alibaba/mtl/log/d/c$c;->E:I

    sub-int v8, v9, v8

    add-int/lit8 v10, v4, -0x1

    if-ne v8, v10, :cond_b

    .line 693
    nop

    .line 694
    iget v8, v0, Lcom/alibaba/mtl/log/d/c$c;->E:I

    if-lez v8, :cond_7

    iget-object v8, v0, Lcom/alibaba/mtl/log/d/c$c;->c:[B

    aget-byte v7, v8, v7

    const/4 v8, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v8, v9, 0x1

    aget-byte v9, p1, v9

    move/from16 v16, v8

    move v8, v7

    move v7, v9

    move/from16 v9, v16

    :goto_6
    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v11

    .line 695
    iget v10, v0, Lcom/alibaba/mtl/log/d/c$c;->E:I

    sub-int/2addr v10, v8

    iput v10, v0, Lcom/alibaba/mtl/log/d/c$c;->E:I

    .line 696
    add-int/lit8 v8, v5, 0x1

    shr-int/lit8 v10, v7, 0x6

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v1, v10

    aput-byte v10, v2, v5

    .line 697
    add-int/lit8 v5, v8, 0x1

    and-int/lit8 v7, v7, 0x3f

    aget-byte v1, v1, v7

    aput-byte v1, v2, v8

    .line 698
    iget-boolean v1, v0, Lcom/alibaba/mtl/log/d/c$c;->do_padding:Z

    if-eqz v1, :cond_8

    .line 699
    add-int/lit8 v1, v5, 0x1

    const/16 v7, 0x3d

    aput-byte v7, v2, v5

    .line 700
    add-int/lit8 v5, v1, 0x1

    aput-byte v7, v2, v1

    .line 702
    :cond_8
    iget-boolean v1, v0, Lcom/alibaba/mtl/log/d/c$c;->do_newline:Z

    if-eqz v1, :cond_a

    .line 703
    iget-boolean v1, v0, Lcom/alibaba/mtl/log/d/c$c;->do_cr:Z

    if-eqz v1, :cond_9

    add-int/lit8 v1, v5, 0x1

    aput-byte v12, v2, v5

    goto :goto_7

    .line 704
    :cond_9
    move v1, v5

    :goto_7
    add-int/lit8 v5, v1, 0x1

    aput-byte v13, v2, v1

    .line 706
    :cond_a
    goto/16 :goto_b

    :cond_b
    iget v8, v0, Lcom/alibaba/mtl/log/d/c$c;->E:I

    sub-int v8, v9, v8

    add-int/lit8 v10, v4, -0x2

    if-ne v8, v10, :cond_11

    .line 707
    nop

    .line 708
    iget v8, v0, Lcom/alibaba/mtl/log/d/c$c;->E:I

    const/4 v10, 0x1

    if-le v8, v10, :cond_c

    iget-object v8, v0, Lcom/alibaba/mtl/log/d/c$c;->c:[B

    aget-byte v7, v8, v7

    const/4 v8, 0x1

    goto :goto_8

    :cond_c
    add-int/lit8 v8, v9, 0x1

    aget-byte v9, p1, v9

    move/from16 v16, v8

    move v8, v7

    move v7, v9

    move/from16 v9, v16

    :goto_8
    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v13

    iget v10, v0, Lcom/alibaba/mtl/log/d/c$c;->E:I

    if-lez v10, :cond_d

    iget-object v10, v0, Lcom/alibaba/mtl/log/d/c$c;->c:[B

    add-int/lit8 v11, v8, 0x1

    aget-byte v8, v10, v8

    goto :goto_9

    :cond_d
    add-int/lit8 v10, v9, 0x1

    aget-byte v9, p1, v9

    move v11, v8

    move v8, v9

    move v9, v10

    :goto_9
    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v14

    or-int/2addr v7, v8

    .line 710
    iget v8, v0, Lcom/alibaba/mtl/log/d/c$c;->E:I

    sub-int/2addr v8, v11

    iput v8, v0, Lcom/alibaba/mtl/log/d/c$c;->E:I

    .line 711
    add-int/lit8 v8, v5, 0x1

    shr-int/lit8 v10, v7, 0xc

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v1, v10

    aput-byte v10, v2, v5

    .line 712
    add-int/lit8 v5, v8, 0x1

    shr-int/lit8 v10, v7, 0x6

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v1, v10

    aput-byte v10, v2, v8

    .line 713
    add-int/lit8 v8, v5, 0x1

    and-int/lit8 v7, v7, 0x3f

    aget-byte v1, v1, v7

    aput-byte v1, v2, v5

    .line 714
    iget-boolean v1, v0, Lcom/alibaba/mtl/log/d/c$c;->do_padding:Z

    if-eqz v1, :cond_e

    .line 715
    add-int/lit8 v1, v8, 0x1

    const/16 v5, 0x3d

    aput-byte v5, v2, v8

    .line 717
    move v8, v1

    :cond_e
    iget-boolean v1, v0, Lcom/alibaba/mtl/log/d/c$c;->do_newline:Z

    if-eqz v1, :cond_10

    .line 718
    iget-boolean v1, v0, Lcom/alibaba/mtl/log/d/c$c;->do_cr:Z

    if-eqz v1, :cond_f

    add-int/lit8 v1, v8, 0x1

    aput-byte v12, v2, v8

    .line 719
    move v8, v1

    :cond_f
    add-int/lit8 v1, v8, 0x1

    aput-byte v13, v2, v8

    .line 721
    move v8, v1

    .line 726
    :cond_10
    move v5, v8

    goto :goto_b

    .line 721
    :cond_11
    iget-boolean v1, v0, Lcom/alibaba/mtl/log/d/c$c;->do_newline:Z

    if-eqz v1, :cond_13

    if-lez v5, :cond_13

    const/16 v1, 0x13

    if-eq v3, v1, :cond_13

    .line 722
    iget-boolean v1, v0, Lcom/alibaba/mtl/log/d/c$c;->do_cr:Z

    if-eqz v1, :cond_12

    add-int/lit8 v1, v5, 0x1

    aput-byte v12, v2, v5

    goto :goto_a

    .line 723
    :cond_12
    move v1, v5

    :goto_a
    add-int/lit8 v5, v1, 0x1

    aput-byte v13, v2, v1

    .line 726
    :cond_13
    :goto_b
    sget-boolean v1, Lcom/alibaba/mtl/log/d/c$c;->J:Z

    if-nez v1, :cond_15

    iget v1, v0, Lcom/alibaba/mtl/log/d/c$c;->E:I

    if-nez v1, :cond_14

    goto :goto_c

    :cond_14
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 727
    :cond_15
    :goto_c
    sget-boolean v1, Lcom/alibaba/mtl/log/d/c$c;->J:Z

    if-nez v1, :cond_17

    if-ne v9, v4, :cond_16

    goto :goto_d

    :cond_16
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 740
    :cond_17
    :goto_d
    const/4 v7, 0x1

    goto :goto_e

    .line 732
    :cond_18
    add-int/lit8 v1, v4, -0x1

    if-ne v9, v1, :cond_19

    .line 733
    iget-object v1, v0, Lcom/alibaba/mtl/log/d/c$c;->c:[B

    iget v2, v0, Lcom/alibaba/mtl/log/d/c$c;->E:I

    add-int/lit8 v7, v2, 0x1

    iput v7, v0, Lcom/alibaba/mtl/log/d/c$c;->E:I

    aget-byte v7, p1, v9

    aput-byte v7, v1, v2

    goto :goto_d

    .line 734
    :cond_19
    add-int/lit8 v1, v4, -0x2

    if-ne v9, v1, :cond_17

    .line 735
    iget-object v1, v0, Lcom/alibaba/mtl/log/d/c$c;->c:[B

    iget v2, v0, Lcom/alibaba/mtl/log/d/c$c;->E:I

    add-int/lit8 v7, v2, 0x1

    iput v7, v0, Lcom/alibaba/mtl/log/d/c$c;->E:I

    aget-byte v7, p1, v9

    aput-byte v7, v1, v2

    .line 736
    iget-object v1, v0, Lcom/alibaba/mtl/log/d/c$c;->c:[B

    iget v2, v0, Lcom/alibaba/mtl/log/d/c$c;->E:I

    add-int/lit8 v7, v2, 0x1

    iput v7, v0, Lcom/alibaba/mtl/log/d/c$c;->E:I

    const/4 v7, 0x1

    add-int/2addr v9, v7

    aget-byte v8, p1, v9

    aput-byte v8, v1, v2

    .line 740
    :goto_e
    iput v5, v0, Lcom/alibaba/mtl/log/d/c$c;->op:I

    .line 741
    iput v3, v0, Lcom/alibaba/mtl/log/d/c$c;->count:I

    .line 743
    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
