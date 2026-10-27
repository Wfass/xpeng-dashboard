.class public final Lse;
.super Ljava/lang/Object;
.source "MethodWriter.java"


# instance fields
.field a:Lse;

.field b:I

.field c:Z

.field private final d:Lsg;

.field private final e:I

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private final l:Lrw;

.field private m:Lrw;

.field private final n:Lsc;

.field private o:Lsc;

.field private p:Lsc;

.field private q:[I

.field private r:[I

.field private s:I


# direct methods
.method constructor <init>(Lsg;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lse;->d:Lsg;

    const-string v0, "<init>"

    .line 143
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40000

    or-int/2addr v0, p2

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    iput v0, p0, Lse;->e:I

    .line 144
    invoke-virtual {p1, p3}, Lsg;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lse;->f:I

    .line 145
    iput-object p3, p0, Lse;->g:Ljava/lang/String;

    .line 146
    invoke-virtual {p1, p4}, Lsg;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lse;->h:I

    .line 147
    iput-object p4, p0, Lse;->i:Ljava/lang/String;

    .line 148
    new-instance p1, Lrw;

    invoke-direct {p1, p5}, Lrw;-><init>(I)V

    iput-object p1, p0, Lse;->l:Lrw;

    .line 151
    invoke-static {p4}, Lsh;->b(Ljava/lang/String;)I

    move-result p1

    shr-int/lit8 p1, p1, 0x2

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 155
    :cond_1
    iput p1, p0, Lse;->k:I

    .line 157
    new-instance p1, Lsc;

    invoke-direct {p1}, Lsc;-><init>()V

    iput-object p1, p0, Lse;->n:Lsc;

    .line 158
    iget-object p1, p0, Lse;->n:Lsc;

    invoke-virtual {p0, p1}, Lse;->a(Lsc;)V

    return-void
.end method

.method private a(Lsc;[Lsc;)V
    .locals 4

    .line 498
    iget-object v0, p0, Lse;->p:Lsc;

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, v0, Lsc;->e:Lsb;

    const/16 v1, 0xab

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v2}, Lsb;->a(IILsf;Lsg;)V

    .line 501
    invoke-direct {p0, p1}, Lse;->b(Lsc;)V

    .line 502
    invoke-virtual {p1}, Lsc;->a()Lsc;

    move-result-object p1

    iget-short v0, p1, Lsc;->b:S

    or-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    iput-short v0, p1, Lsc;->b:S

    .line 503
    :goto_0
    array-length p1, p2

    if-ge v3, p1, :cond_0

    .line 504
    aget-object p1, p2, v3

    .line 505
    invoke-direct {p0, p1}, Lse;->b(Lsc;)V

    .line 506
    invoke-virtual {p1}, Lsc;->a()Lsc;

    move-result-object p1

    iget-short v0, p1, Lsc;->b:S

    or-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    iput-short v0, p1, Lsc;->b:S

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 509
    :cond_0
    invoke-direct {p0}, Lse;->c()V

    :cond_1
    return-void
.end method

.method private b(Lsc;)V
    .locals 3

    .line 605
    iget-object v0, p0, Lse;->p:Lsc;

    new-instance v1, Lrz;

    iget-object v2, v0, Lsc;->g:Lrz;

    invoke-direct {v1, p1, v2}, Lrz;-><init>(Lsc;Lrz;)V

    iput-object v1, v0, Lsc;->g:Lrz;

    return-void
.end method

.method private c()V
    .locals 3

    .line 617
    new-instance v0, Lsc;

    invoke-direct {v0}, Lsc;-><init>()V

    .line 618
    new-instance v1, Lsb;

    invoke-direct {v1, v0}, Lsb;-><init>(Lsc;)V

    iput-object v1, v0, Lsc;->e:Lsb;

    .line 619
    iget-object v1, p0, Lse;->l:Lrw;

    iget-object v1, v1, Lrw;->a:[B

    iget-object v2, p0, Lse;->l:Lrw;

    iget v2, v2, Lrw;->b:I

    invoke-virtual {v0, v1, v2}, Lsc;->a([BI)Z

    .line 620
    iget-object v1, p0, Lse;->o:Lsc;

    iput-object v0, v1, Lsc;->f:Lsc;

    .line 621
    iput-object v0, p0, Lse;->o:Lsc;

    const/4 v0, 0x0

    .line 622
    iput-object v0, p0, Lse;->p:Lsc;

    return-void
.end method

.method private d()V
    .locals 16

    move-object/from16 v0, p0

    .line 679
    iget-object v1, v0, Lse;->r:[I

    const/4 v2, 0x1

    aget v3, v1, v2

    const/4 v4, 0x2

    .line 680
    aget v4, v1, v4

    .line 682
    iget v5, v0, Lse;->b:I

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 683
    aget v1, v1, v6

    goto :goto_0

    .line 684
    :cond_0
    aget v1, v1, v6

    iget-object v5, v0, Lse;->q:[I

    aget v5, v5, v6

    sub-int/2addr v1, v5

    sub-int/2addr v1, v2

    .line 685
    :goto_0
    iget-object v5, v0, Lse;->q:[I

    aget v5, v5, v2

    sub-int v7, v3, v5

    const/16 v8, 0xfc

    const/16 v9, 0xf8

    const/16 v10, 0xf7

    const/16 v11, 0x40

    const/16 v12, 0xff

    const/16 v13, 0xfb

    if-nez v4, :cond_2

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move v2, v8

    goto :goto_2

    :pswitch_1
    if-ge v1, v11, :cond_1

    move v2, v6

    goto :goto_2

    :cond_1
    move v2, v13

    goto :goto_2

    :pswitch_2
    move v2, v9

    goto :goto_2

    :cond_2
    if-nez v7, :cond_4

    if-ne v4, v2, :cond_4

    const/16 v2, 0x3f

    if-ge v1, v2, :cond_3

    move v2, v11

    goto :goto_2

    :cond_3
    move v2, v10

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v12

    :goto_2
    if-eq v2, v12, :cond_6

    const/4 v15, 0x3

    :goto_3
    if-ge v6, v5, :cond_6

    if-ge v6, v3, :cond_6

    .line 717
    iget-object v14, v0, Lse;->r:[I

    aget v14, v14, v15

    iget-object v12, v0, Lse;->q:[I

    aget v12, v12, v15

    if-eq v14, v12, :cond_5

    const/16 v2, 0xff

    goto :goto_4

    :cond_5
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v6, v6, 0x1

    const/16 v12, 0xff

    goto :goto_3

    :cond_6
    :goto_4
    if-eqz v2, :cond_c

    if-eq v2, v11, :cond_b

    if-eq v2, v10, :cond_a

    if-eq v2, v9, :cond_9

    if-eq v2, v13, :cond_8

    if-eq v2, v8, :cond_7

    .line 754
    iget-object v2, v0, Lse;->m:Lrw;

    const/16 v5, 0xff

    invoke-virtual {v2, v5}, Lrw;->a(I)Lrw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lrw;->b(I)Lrw;

    move-result-object v1

    invoke-virtual {v1, v3}, Lrw;->b(I)Lrw;

    const/4 v2, 0x3

    add-int/2addr v3, v2

    .line 755
    invoke-direct {v0, v2, v3}, Lse;->f(II)V

    .line 756
    iget-object v1, v0, Lse;->m:Lrw;

    invoke-virtual {v1, v4}, Lrw;->b(I)Lrw;

    add-int/2addr v4, v3

    .line 757
    invoke-direct {v0, v3, v4}, Lse;->f(II)V

    goto :goto_5

    :cond_7
    const/4 v2, 0x3

    .line 747
    iget-object v4, v0, Lse;->m:Lrw;

    add-int/2addr v7, v13

    .line 748
    invoke-virtual {v4, v7}, Lrw;->a(I)Lrw;

    move-result-object v4

    .line 749
    invoke-virtual {v4, v1}, Lrw;->b(I)Lrw;

    add-int/2addr v5, v2

    add-int/2addr v3, v2

    .line 750
    invoke-direct {v0, v5, v3}, Lse;->f(II)V

    goto :goto_5

    .line 739
    :cond_8
    iget-object v2, v0, Lse;->m:Lrw;

    invoke-virtual {v2, v13}, Lrw;->a(I)Lrw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lrw;->b(I)Lrw;

    goto :goto_5

    .line 742
    :cond_9
    iget-object v2, v0, Lse;->m:Lrw;

    add-int/2addr v7, v13

    .line 743
    invoke-virtual {v2, v7}, Lrw;->a(I)Lrw;

    move-result-object v2

    .line 744
    invoke-virtual {v2, v1}, Lrw;->b(I)Lrw;

    goto :goto_5

    .line 733
    :cond_a
    iget-object v2, v0, Lse;->m:Lrw;

    .line 734
    invoke-virtual {v2, v10}, Lrw;->a(I)Lrw;

    move-result-object v2

    .line 735
    invoke-virtual {v2, v1}, Lrw;->b(I)Lrw;

    add-int/lit8 v1, v3, 0x3

    add-int/lit8 v3, v3, 0x4

    .line 736
    invoke-direct {v0, v1, v3}, Lse;->f(II)V

    goto :goto_5

    .line 729
    :cond_b
    iget-object v2, v0, Lse;->m:Lrw;

    add-int/2addr v1, v11

    invoke-virtual {v2, v1}, Lrw;->a(I)Lrw;

    add-int/lit8 v1, v3, 0x3

    add-int/lit8 v3, v3, 0x4

    .line 730
    invoke-direct {v0, v1, v3}, Lse;->f(II)V

    goto :goto_5

    .line 726
    :cond_c
    iget-object v2, v0, Lse;->m:Lrw;

    invoke-virtual {v2, v1}, Lrw;->a(I)Lrw;

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private f(II)V
    .locals 9

    :goto_0
    if-ge p1, p2, :cond_a

    .line 771
    iget-object v0, p0, Lse;->r:[I

    aget v0, v0, p1

    .line 772
    iget-object v1, p0, Lse;->m:Lrw;

    const/high16 v2, -0x4000000

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x1a

    const/high16 v3, 0x800000

    const/high16 v4, 0x3c00000

    const v5, 0xfffff

    const/4 v6, 0x7

    if-nez v2, :cond_3

    and-int v2, v0, v5

    and-int/2addr v0, v4

    const/high16 v4, 0x400000

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    const/high16 v3, 0xc00000

    if-ne v0, v3, :cond_0

    const/16 v0, 0x8

    .line 787
    invoke-virtual {v1, v0}, Lrw;->a(I)Lrw;

    move-result-object v0

    iget-object v1, p0, Lse;->d:Lsg;

    iget-object v1, v1, Lsg;->e:[Lsf;

    aget-object v1, v1, v2

    iget-wide v1, v1, Lsf;->f:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lrw;->b(I)Lrw;

    goto/16 :goto_3

    .line 790
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 783
    :cond_1
    invoke-virtual {v1, v6}, Lrw;->a(I)Lrw;

    move-result-object v0

    iget-object v1, p0, Lse;->d:Lsg;

    iget-object v3, v1, Lsg;->e:[Lsf;

    aget-object v2, v3, v2

    iget-object v2, v2, Lsf;->e:Ljava/lang/String;

    .line 784
    invoke-virtual {v1, v6, v2}, Lsg;->b(ILjava/lang/String;)Lsf;

    move-result-object v1

    iget v1, v1, Lsf;->a:I

    invoke-virtual {v0, v1}, Lrw;->b(I)Lrw;

    goto/16 :goto_3

    .line 779
    :cond_2
    invoke-virtual {v1, v2}, Lrw;->a(I)Lrw;

    goto/16 :goto_3

    .line 794
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    add-int/lit8 v8, v2, -0x1

    if-lez v2, :cond_4

    const/16 v2, 0x5b

    .line 796
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v8

    goto :goto_1

    :cond_4
    and-int v2, v0, v4

    if-ne v2, v3, :cond_5

    const/16 v2, 0x4c

    .line 800
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lse;->d:Lsg;

    iget-object v2, v2, Lsg;->e:[Lsf;

    and-int/2addr v0, v5

    aget-object v0, v2, v0

    iget-object v0, v0, Lsf;->e:Ljava/lang/String;

    .line 801
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3b

    .line 802
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    and-int/2addr v0, v5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    const/4 v2, 0x2

    if-eq v0, v2, :cond_8

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    const/4 v2, 0x4

    if-eq v0, v2, :cond_6

    packed-switch v0, :pswitch_data_0

    .line 830
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :pswitch_0
    const/16 v0, 0x53

    .line 815
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x43

    .line 812
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_2
    const/16 v0, 0x42

    .line 809
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_3
    const/16 v0, 0x5a

    .line 806
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    const/16 v0, 0x4a

    .line 824
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    const/16 v0, 0x44

    .line 827
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    const/16 v0, 0x46

    .line 821
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    const/16 v0, 0x49

    .line 818
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 834
    :goto_2
    invoke-virtual {v1, v6}, Lrw;->a(I)Lrw;

    move-result-object v0

    iget-object v1, p0, Lse;->d:Lsg;

    .line 835
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lsg;->b(ILjava/lang/String;)Lsf;

    move-result-object v1

    iget v1, v1, Lsf;->a:I

    invoke-virtual {v0, v1}, Lrw;->b(I)Lrw;

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method a(III)I
    .locals 2

    add-int/lit8 v0, p2, 0x3

    add-int/2addr v0, p3

    .line 639
    iget-object v1, p0, Lse;->r:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-ge v1, v0, :cond_1

    .line 640
    :cond_0
    new-array v0, v0, [I

    iput-object v0, p0, Lse;->r:[I

    .line 642
    :cond_1
    iget-object v0, p0, Lse;->r:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 643
    aput p2, v0, p1

    const/4 p1, 0x2

    .line 644
    aput p3, v0, p1

    const/4 p1, 0x3

    return p1
.end method

.method a()V
    .locals 2

    .line 664
    iget-object v0, p0, Lse;->q:[I

    if-eqz v0, :cond_1

    .line 665
    iget-object v0, p0, Lse;->m:Lrw;

    if-nez v0, :cond_0

    .line 666
    new-instance v0, Lrw;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Lrw;-><init>(I)V

    iput-object v0, p0, Lse;->m:Lrw;

    .line 668
    :cond_0
    invoke-direct {p0}, Lse;->d()V

    .line 669
    iget v0, p0, Lse;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lse;->b:I

    .line 671
    :cond_1
    iget-object v0, p0, Lse;->r:[I

    iput-object v0, p0, Lse;->q:[I

    const/4 v0, 0x0

    .line 672
    iput-object v0, p0, Lse;->r:[I

    return-void
.end method

.method public a(I)V
    .locals 3

    .line 166
    iget-object v0, p0, Lse;->l:Lrw;

    iget v0, v0, Lrw;->b:I

    iput v0, p0, Lse;->s:I

    .line 168
    iget-object v0, p0, Lse;->l:Lrw;

    invoke-virtual {v0, p1}, Lrw;->a(I)Lrw;

    .line 170
    iget-object v0, p0, Lse;->p:Lsc;

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, v0, Lsc;->e:Lsb;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lsb;->a(IILsf;Lsg;)V

    const/16 v0, 0xac

    if-lt p1, v0, :cond_0

    const/16 v0, 0xb1

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0xbf

    if-ne p1, v0, :cond_2

    .line 173
    :cond_1
    invoke-direct {p0}, Lse;->c()V

    :cond_2
    return-void
.end method

.method public a(II)V
    .locals 2

    .line 179
    iget-object v0, p0, Lse;->l:Lrw;

    iget v0, v0, Lrw;->b:I

    iput v0, p0, Lse;->s:I

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    .line 182
    iget-object v0, p0, Lse;->l:Lrw;

    invoke-virtual {v0, p1, p2}, Lrw;->b(II)Lrw;

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lse;->l:Lrw;

    invoke-virtual {v0, p1, p2}, Lrw;->a(II)V

    .line 187
    :goto_0
    iget-object v0, p0, Lse;->p:Lsc;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, v0, Lsc;->e:Lsb;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lsb;->a(IILsf;Lsg;)V

    :cond_1
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    .line 228
    iget-object v0, p0, Lse;->l:Lrw;

    iget v0, v0, Lrw;->b:I

    iput v0, p0, Lse;->s:I

    .line 230
    iget-object v0, p0, Lse;->d:Lsg;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p2}, Lsg;->b(ILjava/lang/String;)Lsf;

    move-result-object p2

    .line 231
    iget-object v0, p0, Lse;->l:Lrw;

    iget v1, p2, Lsf;->a:I

    invoke-virtual {v0, p1, v1}, Lrw;->b(II)Lrw;

    .line 233
    iget-object v0, p0, Lse;->p:Lsc;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, v0, Lsc;->e:Lsb;

    iget v1, p0, Lse;->s:I

    iget-object v2, p0, Lse;->d:Lsg;

    invoke-virtual {v0, p1, v1, p2, v2}, Lsb;->a(IILsf;Lsg;)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 240
    iget-object v0, p0, Lse;->l:Lrw;

    iget v0, v0, Lrw;->b:I

    iput v0, p0, Lse;->s:I

    .line 242
    iget-object v0, p0, Lse;->d:Lsg;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p2, p3, p4}, Lsg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsf;

    move-result-object p2

    .line 243
    iget-object p3, p0, Lse;->l:Lrw;

    iget p4, p2, Lsf;->a:I

    invoke-virtual {p3, p1, p4}, Lrw;->b(II)Lrw;

    .line 245
    iget-object p3, p0, Lse;->p:Lsc;

    if-eqz p3, :cond_0

    .line 246
    iget-object p3, p3, Lsc;->e:Lsb;

    const/4 p4, 0x0

    iget-object v0, p0, Lse;->d:Lsg;

    invoke-virtual {p3, p1, p4, p2, v0}, Lsb;->a(IILsf;Lsg;)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 256
    iget-object v0, p0, Lse;->l:Lrw;

    iget v0, v0, Lrw;->b:I

    iput v0, p0, Lse;->s:I

    .line 258
    iget-object v0, p0, Lse;->d:Lsg;

    if-eqz p5, :cond_0

    const/16 p5, 0xb

    goto :goto_0

    :cond_0
    const/16 p5, 0xa

    :goto_0
    invoke-virtual {v0, p5, p2, p3, p4}, Lsg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsf;

    move-result-object p2

    const/4 p3, 0x0

    const/16 p4, 0xb9

    if-ne p1, p4, :cond_1

    .line 265
    iget-object p5, p0, Lse;->l:Lrw;

    iget v0, p2, Lsf;->a:I

    invoke-virtual {p5, p4, v0}, Lrw;->b(II)Lrw;

    move-result-object p4

    .line 266
    invoke-virtual {p2}, Lsf;->a()I

    move-result p5

    shr-int/lit8 p5, p5, 0x2

    invoke-virtual {p4, p5, p3}, Lrw;->a(II)V

    goto :goto_1

    .line 268
    :cond_1
    iget-object p4, p0, Lse;->l:Lrw;

    iget p5, p2, Lsf;->a:I

    invoke-virtual {p4, p1, p5}, Lrw;->b(II)Lrw;

    .line 271
    :goto_1
    iget-object p4, p0, Lse;->p:Lsc;

    if-eqz p4, :cond_2

    .line 272
    iget-object p4, p4, Lsc;->e:Lsb;

    iget-object p5, p0, Lse;->d:Lsg;

    invoke-virtual {p4, p1, p3, p2, p5}, Lsb;->a(IILsf;Lsg;)V

    :cond_2
    return-void
.end method

.method public a(ILsc;)V
    .locals 4

    .line 277
    iget-object v0, p0, Lse;->l:Lrw;

    iget v0, v0, Lrw;->b:I

    iput v0, p0, Lse;->s:I

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x21

    goto :goto_0

    :cond_0
    move v0, p1

    .line 283
    :goto_0
    iget-short v1, p2, Lsc;->b:S

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    iget v1, p2, Lsc;->c:I

    iget-object v2, p0, Lse;->l:Lrw;

    iget v2, v2, Lrw;->b:I

    sub-int/2addr v1, v2

    const/16 v2, -0x8000

    if-lt v1, v2, :cond_1

    goto :goto_1

    .line 285
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string p2, "not supported"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p1, :cond_3

    .line 289
    iget-object v3, p0, Lse;->l:Lrw;

    invoke-virtual {v3, p1}, Lrw;->a(I)Lrw;

    .line 290
    iget-object p1, p0, Lse;->l:Lrw;

    iget v3, p1, Lrw;->b:I

    sub-int/2addr v3, v2

    invoke-virtual {p2, p1, v3, v2}, Lsc;->a(Lrw;IZ)V

    goto :goto_2

    .line 295
    :cond_3
    iget-object p1, p0, Lse;->l:Lrw;

    invoke-virtual {p1, v0}, Lrw;->a(I)Lrw;

    .line 296
    iget-object p1, p0, Lse;->l:Lrw;

    iget v3, p1, Lrw;->b:I

    sub-int/2addr v3, v2

    invoke-virtual {p2, p1, v3, v1}, Lsc;->a(Lrw;IZ)V

    .line 300
    :goto_2
    iget-object p1, p0, Lse;->p:Lsc;

    if-eqz p1, :cond_6

    .line 302
    iget-object p1, p1, Lsc;->e:Lsb;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Lsb;->a(IILsf;Lsg;)V

    .line 304
    invoke-virtual {p2}, Lsc;->a()Lsc;

    move-result-object p1

    iget-short v1, p1, Lsc;->b:S

    or-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    iput-short v1, p1, Lsc;->b:S

    .line 306
    invoke-direct {p0, p2}, Lse;->b(Lsc;)V

    const/16 p1, 0xa7

    if-eq v0, p1, :cond_4

    .line 311
    new-instance v2, Lsc;

    invoke-direct {v2}, Lsc;-><init>()V

    :cond_4
    if-eqz v2, :cond_5

    .line 317
    invoke-virtual {p0, v2}, Lse;->a(Lsc;)V

    :cond_5
    if-ne v0, p1, :cond_6

    .line 320
    invoke-direct {p0}, Lse;->c()V

    :cond_6
    return-void
.end method

.method public a(J)V
    .locals 3

    .line 458
    iget-object v0, p0, Lse;->l:Lrw;

    iget v0, v0, Lrw;->b:I

    iput v0, p0, Lse;->s:I

    .line 460
    iget-object v0, p0, Lse;->d:Lsg;

    invoke-virtual {v0, p1, p2}, Lsg;->a(J)Lsf;

    move-result-object p1

    .line 461
    iget p2, p1, Lsf;->a:I

    .line 462
    iget-object v0, p0, Lse;->l:Lrw;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p2}, Lrw;->b(II)Lrw;

    .line 464
    iget-object p2, p0, Lse;->p:Lsc;

    if-eqz p2, :cond_0

    .line 465
    iget-object p2, p2, Lsc;->e:Lsb;

    const/16 v0, 0x12

    const/4 v1, 0x0

    iget-object v2, p0, Lse;->d:Lsg;

    invoke-virtual {p2, v0, v1, p1, v2}, Lsb;->a(IILsf;Lsg;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Class;)V
    .locals 5

    .line 416
    invoke-static {p1}, Lrv;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 417
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lsh;->a(Ljava/lang/String;II)Lsh;

    move-result-object p1

    .line 418
    iget-object v0, p0, Lse;->l:Lrw;

    iget v0, v0, Lrw;->b:I

    iput v0, p0, Lse;->s:I

    .line 422
    iget v0, p1, Lsh;->w:I

    const/16 v2, 0xa

    const/16 v3, 0xc

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget v0, p1, Lsh;->w:I

    :goto_0
    const/4 v3, 0x7

    if-ne v0, v2, :cond_1

    .line 425
    iget-object v0, p0, Lse;->d:Lsg;

    iget-object v2, p1, Lsh;->x:Ljava/lang/String;

    iget v4, p1, Lsh;->y:I

    iget p1, p1, Lsh;->z:I

    invoke-virtual {v2, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lsg;->b(ILjava/lang/String;)Lsf;

    move-result-object p1

    goto :goto_1

    .line 427
    :cond_1
    iget-object v0, p0, Lse;->d:Lsg;

    invoke-virtual {p1}, Lsh;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lsg;->b(ILjava/lang/String;)Lsf;

    move-result-object p1

    .line 429
    :goto_1
    iget v0, p1, Lsf;->a:I

    const/16 v2, 0x100

    const/16 v3, 0x12

    if-lt v0, v2, :cond_2

    .line 431
    iget-object v2, p0, Lse;->l:Lrw;

    const/16 v4, 0x13

    invoke-virtual {v2, v4, v0}, Lrw;->b(II)Lrw;

    goto :goto_2

    .line 433
    :cond_2
    iget-object v2, p0, Lse;->l:Lrw;

    invoke-virtual {v2, v3, v0}, Lrw;->a(II)V

    .line 436
    :goto_2
    iget-object v0, p0, Lse;->p:Lsc;

    if-eqz v0, :cond_3

    .line 437
    iget-object v0, v0, Lsc;->e:Lsb;

    iget-object v2, p0, Lse;->d:Lsg;

    invoke-virtual {v0, v3, v1, p1, v2}, Lsb;->a(IILsf;Lsg;)V

    :cond_3
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 399
    iget-object v0, p0, Lse;->l:Lrw;

    iget v0, v0, Lrw;->b:I

    iput v0, p0, Lse;->s:I

    .line 401
    iget-object v0, p0, Lse;->d:Lsg;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lsg;->b(ILjava/lang/String;)Lsf;

    move-result-object p1

    .line 402
    iget v0, p1, Lsf;->a:I

    const/16 v1, 0x12

    const/16 v2, 0x100

    if-lt v0, v2, :cond_0

    .line 404
    iget-object v2, p0, Lse;->l:Lrw;

    const/16 v3, 0x13

    invoke-virtual {v2, v3, v0}, Lrw;->b(II)Lrw;

    goto :goto_0

    .line 406
    :cond_0
    iget-object v2, p0, Lse;->l:Lrw;

    invoke-virtual {v2, v1, v0}, Lrw;->a(II)V

    .line 409
    :goto_0
    iget-object v0, p0, Lse;->p:Lsc;

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, v0, Lsc;->e:Lsb;

    const/4 v2, 0x0

    iget-object v3, p0, Lse;->d:Lsg;

    invoke-virtual {v0, v1, v2, p1, v3}, Lsb;->a(IILsf;Lsg;)V

    :cond_1
    return-void
.end method

.method a(Lrw;)V
    .locals 5

    .line 879
    iget v0, p0, Lse;->e:I

    and-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lrw;->b(I)Lrw;

    move-result-object v0

    iget v1, p0, Lse;->f:I

    invoke-virtual {v0, v1}, Lrw;->b(I)Lrw;

    move-result-object v0

    iget v1, p0, Lse;->h:I

    invoke-virtual {v0, v1}, Lrw;->b(I)Lrw;

    .line 882
    iget-object v0, p0, Lse;->l:Lrw;

    iget v0, v0, Lrw;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 886
    :goto_0
    invoke-virtual {p1, v0}, Lrw;->b(I)Lrw;

    .line 887
    iget-object v0, p0, Lse;->l:Lrw;

    iget v0, v0, Lrw;->b:I

    if-lez v0, :cond_2

    .line 890
    iget-object v0, p0, Lse;->l:Lrw;

    iget v0, v0, Lrw;->b:I

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x2

    .line 892
    iget-object v3, p0, Lse;->m:Lrw;

    if-eqz v3, :cond_1

    .line 894
    iget v3, v3, Lrw;->b:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 897
    :goto_1
    iget-object v3, p0, Lse;->d:Lsg;

    const-string v4, "Code"

    .line 898
    invoke-virtual {v3, v4}, Lsg;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lrw;->b(I)Lrw;

    move-result-object v3

    .line 899
    invoke-virtual {v3, v0}, Lrw;->c(I)Lrw;

    move-result-object v0

    iget v3, p0, Lse;->j:I

    .line 900
    invoke-virtual {v0, v3}, Lrw;->b(I)Lrw;

    move-result-object v0

    iget v3, p0, Lse;->k:I

    .line 901
    invoke-virtual {v0, v3}, Lrw;->b(I)Lrw;

    move-result-object v0

    iget-object v3, p0, Lse;->l:Lrw;

    iget v3, v3, Lrw;->b:I

    .line 902
    invoke-virtual {v0, v3}, Lrw;->c(I)Lrw;

    move-result-object v0

    iget-object v3, p0, Lse;->l:Lrw;

    iget-object v3, v3, Lrw;->a:[B

    iget-object v4, p0, Lse;->l:Lrw;

    iget v4, v4, Lrw;->b:I

    .line 903
    invoke-virtual {v0, v3, v2, v4}, Lrw;->a([BII)V

    .line 904
    invoke-virtual {p1, v2}, Lrw;->b(I)Lrw;

    .line 905
    invoke-virtual {p1, v1}, Lrw;->b(I)Lrw;

    .line 906
    iget-object v0, p0, Lse;->m:Lrw;

    if-eqz v0, :cond_2

    .line 908
    iget-object v0, p0, Lse;->d:Lsg;

    const-string v1, "StackMapTable"

    .line 910
    invoke-virtual {v0, v1}, Lsg;->a(Ljava/lang/String;)I

    move-result v0

    .line 909
    invoke-virtual {p1, v0}, Lrw;->b(I)Lrw;

    move-result-object p1

    iget-object v0, p0, Lse;->m:Lrw;

    iget v0, v0, Lrw;->b:I

    add-int/lit8 v0, v0, 0x2

    .line 912
    invoke-virtual {p1, v0}, Lrw;->c(I)Lrw;

    move-result-object p1

    iget v0, p0, Lse;->b:I

    .line 913
    invoke-virtual {p1, v0}, Lrw;->b(I)Lrw;

    move-result-object p1

    iget-object v0, p0, Lse;->m:Lrw;

    iget-object v0, v0, Lrw;->a:[B

    iget-object v1, p0, Lse;->m:Lrw;

    iget v1, v1, Lrw;->b:I

    .line 914
    invoke-virtual {p1, v0, v2, v1}, Lrw;->a([BII)V

    :cond_2
    return-void
.end method

.method public a(Lsc;)V
    .locals 3

    .line 327
    iget-boolean v0, p0, Lse;->c:Z

    iget-object v1, p0, Lse;->l:Lrw;

    iget-object v1, v1, Lrw;->a:[B

    iget-object v2, p0, Lse;->l:Lrw;

    iget v2, v2, Lrw;->b:I

    invoke-virtual {p1, v1, v2}, Lsc;->a([BI)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lse;->c:Z

    .line 330
    iget-short v0, p1, Lsc;->b:S

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lse;->p:Lsc;

    if-eqz v0, :cond_2

    .line 335
    iget v0, p1, Lsc;->c:I

    iget-object v1, p0, Lse;->p:Lsc;

    iget v1, v1, Lsc;->c:I

    if-ne v0, v1, :cond_1

    .line 340
    iget-object v0, p0, Lse;->p:Lsc;

    iget-short v1, v0, Lsc;->b:S

    iget-short v2, p1, Lsc;->b:S

    and-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lsc;->b:S

    .line 344
    iget-object v0, p0, Lse;->p:Lsc;

    iget-object v0, v0, Lsc;->e:Lsb;

    iput-object v0, p1, Lsc;->e:Lsb;

    return-void

    .line 350
    :cond_1
    invoke-direct {p0, p1}, Lse;->b(Lsc;)V

    .line 353
    :cond_2
    iget-object v0, p0, Lse;->o:Lsc;

    if-eqz v0, :cond_4

    .line 354
    iget v0, p1, Lsc;->c:I

    iget-object v1, p0, Lse;->o:Lsc;

    iget v1, v1, Lsc;->c:I

    if-ne v0, v1, :cond_3

    .line 356
    iget-object v0, p0, Lse;->o:Lsc;

    iget-short v1, v0, Lsc;->b:S

    iget-short v2, p1, Lsc;->b:S

    and-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lsc;->b:S

    .line 358
    iget-object v0, p0, Lse;->o:Lsc;

    iget-object v0, v0, Lsc;->e:Lsb;

    iput-object v0, p1, Lsc;->e:Lsb;

    .line 359
    iget-object p1, p0, Lse;->o:Lsc;

    iput-object p1, p0, Lse;->p:Lsc;

    return-void

    .line 362
    :cond_3
    iget-object v0, p0, Lse;->o:Lsc;

    iput-object p1, v0, Lsc;->f:Lsc;

    .line 364
    :cond_4
    iput-object p1, p0, Lse;->o:Lsc;

    .line 366
    iput-object p1, p0, Lse;->p:Lsc;

    .line 368
    new-instance v0, Lsb;

    invoke-direct {v0, p1}, Lsb;-><init>(Lsc;)V

    iput-object v0, p1, Lsc;->e:Lsb;

    return-void
.end method

.method public a(Lsc;[I[Lsc;)V
    .locals 5

    .line 484
    iget-object v0, p0, Lse;->l:Lrw;

    iget v0, v0, Lrw;->b:I

    iput v0, p0, Lse;->s:I

    .line 486
    iget-object v0, p0, Lse;->l:Lrw;

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lrw;->a(I)Lrw;

    move-result-object v0

    iget-object v1, p0, Lse;->l:Lrw;

    iget v1, v1, Lrw;->b:I

    rem-int/lit8 v1, v1, 0x4

    rsub-int/lit8 v1, v1, 0x4

    rem-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v1}, Lrw;->a([BII)V

    .line 487
    iget-object v0, p0, Lse;->l:Lrw;

    iget v1, p0, Lse;->s:I

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lsc;->a(Lrw;IZ)V

    .line 488
    iget-object v0, p0, Lse;->l:Lrw;

    array-length v1, p3

    invoke-virtual {v0, v1}, Lrw;->c(I)Lrw;

    .line 489
    :goto_0
    array-length v0, p3

    if-ge v2, v0, :cond_0

    .line 490
    iget-object v0, p0, Lse;->l:Lrw;

    aget v1, p2, v2

    invoke-virtual {v0, v1}, Lrw;->c(I)Lrw;

    .line 491
    aget-object v0, p3, v2

    iget-object v1, p0, Lse;->l:Lrw;

    iget v4, p0, Lse;->s:I

    invoke-virtual {v0, v1, v4, v3}, Lsc;->a(Lrw;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 494
    :cond_0
    invoke-direct {p0, p1, p3}, Lse;->a(Lsc;[Lsc;)V

    return-void
.end method

.method b()I
    .locals 4

    .line 854
    iget-object v0, p0, Lse;->l:Lrw;

    iget v0, v0, Lrw;->b:I

    const/16 v1, 0x8

    if-lez v0, :cond_2

    .line 855
    iget-object v0, p0, Lse;->l:Lrw;

    iget v0, v0, Lrw;->b:I

    const v2, 0xffff

    if-gt v0, v2, :cond_1

    .line 858
    iget-object v0, p0, Lse;->d:Lsg;

    const-string v2, "Code"

    invoke-virtual {v0, v2}, Lsg;->a(Ljava/lang/String;)I

    .line 861
    iget-object v0, p0, Lse;->l:Lrw;

    iget v0, v0, Lrw;->b:I

    add-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    .line 862
    iget-object v2, p0, Lse;->m:Lrw;

    if-eqz v2, :cond_0

    .line 863
    iget-object v2, p0, Lse;->d:Lsg;

    const-string v3, "StackMapTable"

    invoke-virtual {v2, v3}, Lsg;->a(Ljava/lang/String;)I

    .line 865
    iget-object v2, p0, Lse;->m:Lrw;

    iget v2, v2, Lrw;->b:I

    add-int/2addr v2, v1

    add-int v1, v0, v2

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_0

    .line 856
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lse;->d:Lsg;

    iget-object v2, v2, Lsg;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lse;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lse;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lse;->l:Lrw;

    iget v2, v2, Lrw;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return v1
.end method

.method public b(I)V
    .locals 4

    .line 442
    iget-object v0, p0, Lse;->l:Lrw;

    iget v0, v0, Lrw;->b:I

    iput v0, p0, Lse;->s:I

    .line 444
    iget-object v0, p0, Lse;->d:Lsg;

    invoke-virtual {v0, p1}, Lsg;->a(I)Lsf;

    move-result-object p1

    .line 445
    iget v0, p1, Lsf;->a:I

    const/16 v1, 0x12

    const/16 v2, 0x100

    if-lt v0, v2, :cond_0

    .line 447
    iget-object v2, p0, Lse;->l:Lrw;

    const/16 v3, 0x13

    invoke-virtual {v2, v3, v0}, Lrw;->b(II)Lrw;

    goto :goto_0

    .line 449
    :cond_0
    iget-object v2, p0, Lse;->l:Lrw;

    invoke-virtual {v2, v1, v0}, Lrw;->a(II)V

    .line 452
    :goto_0
    iget-object v0, p0, Lse;->p:Lsc;

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, v0, Lsc;->e:Lsb;

    const/4 v2, 0x0

    iget-object v3, p0, Lse;->d:Lsg;

    invoke-virtual {v0, v1, v2, p1, v3}, Lsb;->a(IILsf;Lsg;)V

    :cond_1
    return-void
.end method

.method public b(II)V
    .locals 2

    .line 193
    iget-object v0, p0, Lse;->l:Lrw;

    iget v0, v0, Lrw;->b:I

    iput v0, p0, Lse;->s:I

    const/4 v0, 0x4

    if-ge p2, v0, :cond_1

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_1

    const/16 v0, 0x36

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x15

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1a

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, -0x36

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3b

    :goto_0
    add-int/2addr v0, p2

    .line 202
    iget-object v1, p0, Lse;->l:Lrw;

    invoke-virtual {v1, v0}, Lrw;->a(I)Lrw;

    goto :goto_1

    :cond_1
    const/16 v0, 0x100

    if-lt p2, v0, :cond_2

    .line 204
    iget-object v0, p0, Lse;->l:Lrw;

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Lrw;->a(I)Lrw;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lrw;->b(II)Lrw;

    goto :goto_1

    .line 206
    :cond_2
    iget-object v0, p0, Lse;->l:Lrw;

    invoke-virtual {v0, p1, p2}, Lrw;->a(II)V

    .line 209
    :goto_1
    iget-object v0, p0, Lse;->p:Lsc;

    if-eqz v0, :cond_3

    .line 210
    iget-object v0, v0, Lsc;->e:Lsb;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lsb;->a(IILsf;Lsg;)V

    :cond_3
    const/16 v0, 0x16

    if-eq p1, v0, :cond_5

    const/16 v0, 0x18

    if-eq p1, v0, :cond_5

    const/16 v0, 0x37

    if-eq p1, v0, :cond_5

    const/16 v0, 0x39

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 p2, p2, 0x2

    .line 222
    :goto_3
    iget p1, p0, Lse;->k:I

    if-le p2, p1, :cond_6

    .line 223
    iput p2, p0, Lse;->k:I

    :cond_6
    return-void
.end method

.method public c(II)V
    .locals 3

    .line 470
    iget-object v0, p0, Lse;->l:Lrw;

    iget v0, v0, Lrw;->b:I

    iput v0, p0, Lse;->s:I

    const/16 v0, 0x84

    const/16 v1, 0xff

    if-gt p1, v1, :cond_1

    const/16 v1, 0x7f

    if-gt p2, v1, :cond_1

    const/16 v1, -0x80

    if-ge p2, v1, :cond_0

    goto :goto_0

    .line 475
    :cond_0
    iget-object v1, p0, Lse;->l:Lrw;

    invoke-virtual {v1, v0}, Lrw;->a(I)Lrw;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lrw;->a(II)V

    goto :goto_1

    .line 473
    :cond_1
    :goto_0
    iget-object v1, p0, Lse;->l:Lrw;

    const/16 v2, 0xc4

    invoke-virtual {v1, v2}, Lrw;->a(I)Lrw;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lrw;->b(II)Lrw;

    move-result-object v1

    invoke-virtual {v1, p2}, Lrw;->b(I)Lrw;

    .line 478
    :goto_1
    iget-object p2, p0, Lse;->p:Lsc;

    if-eqz p2, :cond_2

    .line 479
    iget-object p2, p2, Lsc;->e:Lsb;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1, v1}, Lsb;->a(IILsf;Lsg;)V

    :cond_2
    return-void
.end method

.method public d(II)V
    .locals 7

    .line 519
    iget-object p1, p0, Lse;->n:Lsc;

    iget-object p1, p1, Lsc;->e:Lsb;

    .line 520
    iget-object p2, p0, Lse;->d:Lsg;

    iget v0, p0, Lse;->e:I

    iget-object v1, p0, Lse;->i:Ljava/lang/String;

    iget v2, p0, Lse;->k:I

    invoke-virtual {p1, p2, v0, v1, v2}, Lsb;->a(Lsg;ILjava/lang/String;I)V

    .line 521
    invoke-virtual {p1, p0}, Lsb;->a(Lse;)V

    .line 529
    iget-object p1, p0, Lse;->n:Lsc;

    .line 530
    sget-object p2, Lsc;->a:Lsc;

    iput-object p2, p1, Lsc;->h:Lsc;

    const/4 p2, 0x0

    move v0, p2

    .line 532
    :goto_0
    sget-object v1, Lsc;->a:Lsc;

    if-eq p1, v1, :cond_3

    .line 535
    iget-object v1, p1, Lsc;->h:Lsc;

    const/4 v2, 0x0

    .line 536
    iput-object v2, p1, Lsc;->h:Lsc;

    .line 538
    iget-short v2, p1, Lsc;->b:S

    or-int/lit8 v2, v2, 0x8

    int-to-short v2, v2

    iput-short v2, p1, Lsc;->b:S

    .line 540
    iget-object v2, p1, Lsc;->e:Lsb;

    iget-object v2, v2, Lsb;->b:[I

    array-length v2, v2

    iget-short v3, p1, Lsc;->d:S

    add-int/2addr v2, v3

    if-le v2, v0, :cond_0

    move v0, v2

    .line 545
    :cond_0
    iget-object v2, p1, Lsc;->g:Lrz;

    :goto_1
    if-eqz v2, :cond_2

    .line 547
    iget-object v3, v2, Lrz;->a:Lsc;

    invoke-virtual {v3}, Lsc;->a()Lsc;

    move-result-object v3

    .line 548
    iget-object v4, p1, Lsc;->e:Lsb;

    iget-object v5, p0, Lse;->d:Lsg;

    iget-object v6, v3, Lsc;->e:Lsb;

    .line 549
    invoke-virtual {v4, v5, v6}, Lsb;->a(Lsg;Lsb;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 550
    iget-object v4, v3, Lsc;->h:Lsc;

    if-nez v4, :cond_1

    .line 553
    iput-object v1, v3, Lsc;->h:Lsc;

    move-object v1, v3

    .line 556
    :cond_1
    iget-object v2, v2, Lrz;->b:Lrz;

    goto :goto_1

    :cond_2
    move-object p1, v1

    goto :goto_0

    .line 563
    :cond_3
    iget-object p1, p0, Lse;->n:Lsc;

    :goto_2
    if-eqz p1, :cond_8

    .line 565
    iget-short v1, p1, Lsc;->b:S

    const/16 v2, 0xa

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 567
    iget-object v1, p1, Lsc;->e:Lsb;

    invoke-virtual {v1, p0}, Lsb;->a(Lse;)V

    .line 569
    :cond_4
    iget-short v1, p1, Lsc;->b:S

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_7

    .line 571
    iget-object v1, p1, Lsc;->f:Lsc;

    .line 572
    iget v2, p1, Lsc;->c:I

    if-nez v1, :cond_5

    .line 573
    iget-object v1, p0, Lse;->l:Lrw;

    iget v1, v1, Lrw;->b:I

    goto :goto_3

    :cond_5
    iget v1, v1, Lsc;->c:I

    :goto_3
    const/4 v3, 0x1

    sub-int/2addr v1, v3

    if-lt v1, v2, :cond_7

    move v4, v2

    :goto_4
    if-ge v4, v1, :cond_6

    .line 577
    iget-object v5, p0, Lse;->l:Lrw;

    iget-object v5, v5, Lrw;->a:[B

    aput-byte p2, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 579
    :cond_6
    iget-object v4, p0, Lse;->l:Lrw;

    iget-object v4, v4, Lrw;->a:[B

    const/16 v5, -0x41

    aput-byte v5, v4, v1

    .line 582
    invoke-virtual {p0, v2, p2, v3}, Lse;->a(III)I

    move-result v1

    .line 583
    iget-object v2, p0, Lse;->r:[I

    const/high16 v4, 0x800000

    iget-object v5, p0, Lse;->d:Lsg;

    const-string v6, "java/lang/Throwable"

    invoke-virtual {v5, v6}, Lsg;->b(Ljava/lang/String;)I

    move-result v5

    or-int/2addr v4, v5

    aput v4, v2, v1

    .line 584
    invoke-virtual {p0}, Lse;->a()V

    .line 586
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 589
    :cond_7
    iget-object p1, p1, Lsc;->f:Lsc;

    goto :goto_2

    .line 592
    :cond_8
    iput v0, p0, Lse;->j:I

    return-void
.end method

.method e(II)V
    .locals 1

    .line 655
    iget-object v0, p0, Lse;->r:[I

    aput p2, v0, p1

    return-void
.end method
