.class public Laf;
.super Ljava/lang/Object;
.source "LinearSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laf$a;,
        Laf$b;
    }
.end annotation


# static fields
.field public static a:Z = false

.field public static b:Z = true

.field public static c:Z = true

.field public static d:Z = true

.field public static e:Z = true

.field public static f:Z = false

.field public static o:Lag; = null

.field public static p:J = 0x0L

.field public static q:J = 0x0L

.field private static r:I = 0x3e8


# instance fields
.field private A:Laf$a;

.field public g:Z

.field h:I

.field i:[Lad;

.field public j:Z

.field public k:Z

.field l:I

.field m:I

.field final n:Lae;

.field private s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Laj;",
            ">;"
        }
    .end annotation
.end field

.field private t:Laf$a;

.field private u:I

.field private v:I

.field private w:[Z

.field private x:I

.field private y:[Laj;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Laf;->g:Z

    .line 53
    iput v0, p0, Laf;->h:I

    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Laf;->s:Ljava/util/HashMap;

    const/16 v2, 0x20

    .line 65
    iput v2, p0, Laf;->u:I

    .line 66
    iget v2, p0, Laf;->u:I

    iput v2, p0, Laf;->v:I

    .line 67
    iput-object v1, p0, Laf;->i:[Lad;

    .line 70
    iput-boolean v0, p0, Laf;->j:Z

    .line 71
    iput-boolean v0, p0, Laf;->k:Z

    .line 74
    new-array v1, v2, [Z

    iput-object v1, p0, Laf;->w:[Z

    const/4 v1, 0x1

    .line 76
    iput v1, p0, Laf;->l:I

    .line 77
    iput v0, p0, Laf;->m:I

    .line 78
    iput v2, p0, Laf;->x:I

    .line 82
    sget v1, Laf;->r:I

    new-array v1, v1, [Laj;

    iput-object v1, p0, Laf;->y:[Laj;

    .line 83
    iput v0, p0, Laf;->z:I

    .line 95
    new-array v0, v2, [Lad;

    iput-object v0, p0, Laf;->i:[Lad;

    .line 96
    invoke-direct {p0}, Laf;->i()V

    .line 97
    new-instance v0, Lae;

    invoke-direct {v0}, Lae;-><init>()V

    iput-object v0, p0, Laf;->n:Lae;

    .line 98
    new-instance v0, Lai;

    iget-object v1, p0, Laf;->n:Lae;

    invoke-direct {v0, v1}, Lai;-><init>(Lae;)V

    iput-object v0, p0, Laf;->t:Laf$a;

    .line 99
    sget-boolean v0, Laf;->f:Z

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Laf$b;

    iget-object v1, p0, Laf;->n:Lae;

    invoke-direct {v0, p0, v1}, Laf$b;-><init>(Laf;Lae;)V

    iput-object v0, p0, Laf;->A:Laf$a;

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Lad;

    iget-object v1, p0, Laf;->n:Lae;

    invoke-direct {v0, v1}, Lad;-><init>(Lae;)V

    iput-object v0, p0, Laf;->A:Laf$a;

    :goto_0
    return-void
.end method

.method private final a(Laf$a;Z)I
    .locals 12

    .line 716
    sget-object p2, Laf;->o:Lag;

    const-wide/16 v0, 0x1

    if-eqz p2, :cond_0

    .line 717
    iget-wide v2, p2, Lag;->h:J

    add-long/2addr v2, v0

    iput-wide v2, p2, Lag;->h:J

    :cond_0
    const/4 p2, 0x0

    move v2, p2

    .line 721
    :goto_0
    iget v3, p0, Laf;->l:I

    if-ge v2, v3, :cond_1

    .line 722
    iget-object v3, p0, Laf;->w:[Z

    aput-boolean p2, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, p2

    move v3, v2

    :cond_2
    :goto_1
    if-nez v2, :cond_e

    .line 734
    sget-object v4, Laf;->o:Lag;

    if-eqz v4, :cond_3

    .line 735
    iget-wide v5, v4, Lag;->i:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Lag;->i:J

    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 742
    iget v4, p0, Laf;->l:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_4

    return v3

    .line 749
    :cond_4
    invoke-interface {p1}, Laf$a;->g()Laj;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    .line 750
    iget-object v4, p0, Laf;->w:[Z

    invoke-interface {p1}, Laf$a;->g()Laj;

    move-result-object v6

    iget v6, v6, Laj;->b:I

    aput-boolean v5, v4, v6

    .line 752
    :cond_5
    iget-object v4, p0, Laf;->w:[Z

    invoke-interface {p1, p0, v4}, Laf$a;->a(Laf;[Z)Laj;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 758
    iget-object v6, p0, Laf;->w:[Z

    iget v7, v4, Laj;->b:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_6

    return v3

    .line 764
    :cond_6
    iget-object v6, p0, Laf;->w:[Z

    iget v7, v4, Laj;->b:I

    aput-boolean v5, v6, v7

    :cond_7
    if-eqz v4, :cond_d

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, -0x1

    move v8, v5

    move v7, v6

    move v5, p2

    .line 785
    :goto_2
    iget v9, p0, Laf;->m:I

    if-ge v5, v9, :cond_b

    .line 786
    iget-object v9, p0, Laf;->i:[Lad;

    aget-object v9, v9, v5

    .line 787
    iget-object v10, v9, Lad;->a:Laj;

    .line 788
    iget-object v10, v10, Laj;->i:Laj$a;

    sget-object v11, Laj$a;->UNRESTRICTED:Laj$a;

    if-ne v10, v11, :cond_8

    goto :goto_3

    .line 792
    :cond_8
    iget-boolean v10, v9, Lad;->f:Z

    if-eqz v10, :cond_9

    goto :goto_3

    .line 796
    :cond_9
    invoke-virtual {v9, v4}, Lad;->a(Laj;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 802
    iget-object v10, v9, Lad;->e:Lad$a;

    invoke-interface {v10, v4}, Lad$a;->b(Laj;)F

    move-result v10

    const/4 v11, 0x0

    cmpg-float v11, v10, v11

    if-gez v11, :cond_a

    .line 804
    iget v9, v9, Lad;->b:F

    neg-float v9, v9

    div-float/2addr v9, v10

    cmpg-float v10, v9, v8

    if-gez v10, :cond_a

    move v7, v5

    move v8, v9

    :cond_a
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_b
    if-le v7, v6, :cond_2

    .line 819
    iget-object v5, p0, Laf;->i:[Lad;

    aget-object v5, v5, v7

    .line 820
    iget-object v8, v5, Lad;->a:Laj;

    iput v6, v8, Laj;->c:I

    .line 821
    sget-object v6, Laf;->o:Lag;

    if-eqz v6, :cond_c

    .line 822
    iget-wide v8, v6, Lag;->j:J

    add-long/2addr v8, v0

    iput-wide v8, v6, Lag;->j:J

    .line 824
    :cond_c
    invoke-virtual {v5, v4}, Lad;->b(Laj;)V

    .line 825
    iget-object v4, v5, Lad;->a:Laj;

    iput v7, v4, Laj;->c:I

    .line 826
    iget-object v4, v5, Lad;->a:Laj;

    invoke-virtual {v4, p0, v5}, Laj;->a(Laf;Lad;)V

    goto/16 :goto_1

    :cond_d
    move v2, v5

    goto/16 :goto_1

    :cond_e
    return v3
.end method

.method public static a(Laf;Laj;Laj;F)Lad;
    .locals 0

    .line 1430
    invoke-virtual {p0}, Laf;->c()Lad;

    move-result-object p0

    .line 1431
    invoke-virtual {p0, p1, p2, p3}, Lad;->a(Laj;Laj;F)Lad;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lag;
    .locals 1

    .line 111
    sget-object v0, Laf;->o:Lag;

    return-object v0
.end method

.method private a(Laj$a;Ljava/lang/String;)Laj;
    .locals 2

    .line 370
    iget-object v0, p0, Laf;->n:Lae;

    iget-object v0, v0, Lae;->c:Lah$a;

    invoke-interface {v0}, Lah$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laj;

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Laj;

    invoke-direct {v0, p1, p2}, Laj;-><init>(Laj$a;Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0, p1, p2}, Laj;->a(Laj$a;Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_0
    invoke-virtual {v0}, Laj;->b()V

    .line 376
    invoke-virtual {v0, p1, p2}, Laj;->a(Laj$a;Ljava/lang/String;)V

    .line 378
    :goto_0
    iget p1, p0, Laf;->z:I

    sget p2, Laf;->r:I

    if-lt p1, p2, :cond_1

    mul-int/lit8 p2, p2, 0x2

    .line 379
    sput p2, Laf;->r:I

    .line 380
    iget-object p1, p0, Laf;->y:[Laj;

    sget p2, Laf;->r:I

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Laj;

    iput-object p1, p0, Laf;->y:[Laj;

    .line 382
    :cond_1
    iget-object p1, p0, Laf;->y:[Laj;

    iget p2, p0, Laf;->z:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Laf;->z:I

    aput-object v0, p1, p2

    return-object v0
.end method

.method private b(Laf$a;)I
    .locals 17

    move-object/from16 v0, p0

    const/4 v2, 0x0

    .line 879
    :goto_0
    iget v3, v0, Laf;->m:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    .line 880
    iget-object v3, v0, Laf;->i:[Lad;

    aget-object v3, v3, v2

    iget-object v3, v3, Lad;->a:Laj;

    .line 881
    iget-object v3, v3, Laj;->i:Laj$a;

    sget-object v6, Laj$a;->UNRESTRICTED:Laj$a;

    if-ne v3, v6, :cond_0

    goto :goto_1

    .line 884
    :cond_0
    iget-object v3, v0, Laf;->i:[Lad;

    aget-object v3, v3, v2

    iget v3, v3, Lad;->b:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_17

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_3
    :goto_3
    if-nez v2, :cond_18

    .line 902
    sget-object v6, Laf;->o:Lag;

    const-wide/16 v7, 0x1

    if-eqz v6, :cond_4

    .line 903
    iget-wide v9, v6, Lag;->k:J

    add-long/2addr v9, v7

    iput-wide v9, v6, Lag;->k:J

    :cond_4
    add-int/lit8 v3, v3, 0x1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    move v12, v6

    const/4 v6, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v13, 0x0

    .line 914
    :goto_4
    iget v14, v0, Laf;->m:I

    if-ge v6, v14, :cond_14

    .line 915
    iget-object v14, v0, Laf;->i:[Lad;

    aget-object v14, v14, v6

    .line 916
    iget-object v15, v14, Lad;->a:Laj;

    .line 917
    iget-object v15, v15, Laj;->i:Laj$a;

    sget-object v1, Laj$a;->UNRESTRICTED:Laj$a;

    if-ne v15, v1, :cond_5

    goto/16 :goto_b

    .line 922
    :cond_5
    iget-boolean v1, v14, Lad;->f:Z

    if-eqz v1, :cond_6

    goto/16 :goto_b

    .line 925
    :cond_6
    iget v1, v14, Lad;->b:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_13

    .line 930
    sget-boolean v1, Laf;->e:Z

    const/16 v15, 0x9

    if-eqz v1, :cond_d

    .line 931
    iget-object v1, v14, Lad;->e:Lad$a;

    invoke-interface {v1}, Lad$a;->c()I

    move-result v1

    move/from16 v16, v13

    move v13, v12

    move v12, v11

    move v11, v10

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v1, :cond_c

    .line 933
    iget-object v5, v14, Lad;->e:Lad$a;

    invoke-interface {v5, v10}, Lad$a;->a(I)Laj;

    move-result-object v5

    .line 934
    iget-object v7, v14, Lad;->e:Lad$a;

    invoke-interface {v7, v5}, Lad$a;->b(Laj;)F

    move-result v7

    cmpg-float v8, v7, v4

    if-gtz v8, :cond_7

    goto :goto_7

    :cond_7
    move/from16 v9, v16

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v15, :cond_b

    .line 942
    iget-object v15, v5, Laj;->g:[F

    aget v15, v15, v8

    div-float/2addr v15, v7

    cmpg-float v16, v15, v13

    if-gez v16, :cond_8

    if-eq v8, v9, :cond_9

    :cond_8
    if-le v8, v9, :cond_a

    .line 946
    :cond_9
    iget v9, v5, Laj;->b:I

    move v11, v6

    move v12, v9

    move v13, v15

    move v9, v8

    :cond_a
    add-int/lit8 v8, v8, 0x1

    const/16 v15, 0x9

    goto :goto_6

    :cond_b
    move/from16 v16, v9

    :goto_7
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v7, 0x1

    const/16 v15, 0x9

    goto :goto_5

    :cond_c
    move v10, v11

    move v11, v12

    move v12, v13

    move/from16 v13, v16

    goto :goto_b

    :cond_d
    const/4 v1, 0x1

    .line 952
    :goto_8
    iget v5, v0, Laf;->l:I

    if-ge v1, v5, :cond_13

    .line 953
    iget-object v5, v0, Laf;->n:Lae;

    iget-object v5, v5, Lae;->d:[Laj;

    aget-object v5, v5, v1

    .line 954
    iget-object v7, v14, Lad;->e:Lad$a;

    invoke-interface {v7, v5}, Lad$a;->b(Laj;)F

    move-result v7

    cmpg-float v8, v7, v4

    if-gtz v8, :cond_e

    const/16 v9, 0x9

    goto :goto_a

    :cond_e
    const/4 v8, 0x0

    const/16 v9, 0x9

    :goto_9
    if-ge v8, v9, :cond_12

    .line 962
    iget-object v15, v5, Laj;->g:[F

    aget v15, v15, v8

    div-float/2addr v15, v7

    cmpg-float v16, v15, v12

    if-gez v16, :cond_f

    if-eq v8, v13, :cond_10

    :cond_f
    if-le v8, v13, :cond_11

    :cond_10
    move v11, v1

    move v10, v6

    move v13, v8

    move v12, v15

    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_12
    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_13
    :goto_b
    add-int/lit8 v6, v6, 0x1

    const-wide/16 v7, 0x1

    goto/16 :goto_4

    :cond_14
    const/4 v1, -0x1

    if-eq v10, v1, :cond_16

    .line 977
    iget-object v5, v0, Laf;->i:[Lad;

    aget-object v5, v5, v10

    .line 982
    iget-object v6, v5, Lad;->a:Laj;

    iput v1, v6, Laj;->c:I

    .line 983
    sget-object v1, Laf;->o:Lag;

    if-eqz v1, :cond_15

    .line 984
    iget-wide v6, v1, Lag;->j:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v1, Lag;->j:J

    .line 986
    :cond_15
    iget-object v1, v0, Laf;->n:Lae;

    iget-object v1, v1, Lae;->d:[Laj;

    aget-object v1, v1, v11

    invoke-virtual {v5, v1}, Lad;->b(Laj;)V

    .line 987
    iget-object v1, v5, Lad;->a:Laj;

    iput v10, v1, Laj;->c:I

    .line 988
    iget-object v1, v5, Lad;->a:Laj;

    invoke-virtual {v1, v0, v5}, Laj;->a(Laf;Lad;)V

    goto :goto_c

    :cond_16
    const/4 v2, 0x1

    .line 997
    :goto_c
    iget v1, v0, Laf;->l:I

    div-int/lit8 v1, v1, 0x2

    if-le v3, v1, :cond_3

    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_17
    const/4 v3, 0x0

    :cond_18
    return v3
.end method

.method private final b(Lad;)V
    .locals 7

    .line 639
    sget-boolean v0, Laf;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lad;->f:Z

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p1, Lad;->a:Laj;

    iget p1, p1, Lad;->b:F

    invoke-virtual {v0, p0, p1}, Laj;->a(Laf;F)V

    goto :goto_0

    .line 642
    :cond_0
    iget-object v0, p0, Laf;->i:[Lad;

    iget v1, p0, Laf;->m:I

    aput-object p1, v0, v1

    .line 643
    iget-object v0, p1, Lad;->a:Laj;

    iget v1, p0, Laf;->m:I

    iput v1, v0, Laj;->c:I

    add-int/lit8 v1, v1, 0x1

    .line 644
    iput v1, p0, Laf;->m:I

    .line 645
    iget-object v0, p1, Lad;->a:Laj;

    invoke-virtual {v0, p0, p1}, Laj;->a(Laf;Lad;)V

    .line 652
    :goto_0
    sget-boolean p1, Laf;->c:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Laf;->g:Z

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    move v0, p1

    .line 654
    :goto_1
    iget v1, p0, Laf;->m:I

    if-ge v0, v1, :cond_7

    .line 655
    iget-object v1, p0, Laf;->i:[Lad;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 656
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "WTF"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 658
    :cond_1
    iget-object v1, p0, Laf;->i:[Lad;

    aget-object v2, v1, v0

    if-eqz v2, :cond_6

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lad;->f:Z

    if-eqz v1, :cond_6

    .line 659
    iget-object v1, p0, Laf;->i:[Lad;

    aget-object v1, v1, v0

    .line 660
    iget-object v2, v1, Lad;->a:Laj;

    iget v3, v1, Lad;->b:F

    invoke-virtual {v2, p0, v3}, Laj;->a(Laf;F)V

    .line 661
    sget-boolean v2, Laf;->f:Z

    if-eqz v2, :cond_2

    .line 662
    iget-object v2, p0, Laf;->n:Lae;

    iget-object v2, v2, Lae;->a:Lah$a;

    invoke-interface {v2, v1}, Lah$a;->a(Ljava/lang/Object;)Z

    goto :goto_2

    .line 664
    :cond_2
    iget-object v2, p0, Laf;->n:Lae;

    iget-object v2, v2, Lae;->b:Lah$a;

    invoke-interface {v2, v1}, Lah$a;->a(Ljava/lang/Object;)Z

    .line 666
    :goto_2
    iget-object v1, p0, Laf;->i:[Lad;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    move v3, v1

    .line 668
    :goto_3
    iget v4, p0, Laf;->m:I

    if-ge v1, v4, :cond_4

    .line 669
    iget-object v3, p0, Laf;->i:[Lad;

    add-int/lit8 v4, v1, -0x1

    aget-object v5, v3, v1

    aput-object v5, v3, v4

    .line 670
    aget-object v3, v3, v4

    iget-object v3, v3, Lad;->a:Laj;

    iget v3, v3, Laj;->c:I

    if-ne v3, v1, :cond_3

    .line 671
    iget-object v3, p0, Laf;->i:[Lad;

    aget-object v3, v3, v4

    iget-object v3, v3, Lad;->a:Laj;

    iput v4, v3, Laj;->c:I

    :cond_3
    add-int/lit8 v3, v1, 0x1

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_3

    :cond_4
    if-ge v3, v4, :cond_5

    .line 676
    iget-object v1, p0, Laf;->i:[Lad;

    aput-object v2, v1, v3

    .line 678
    :cond_5
    iget v1, p0, Laf;->m:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Laf;->m:I

    add-int/lit8 v0, v0, -0x1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 682
    :cond_7
    iput-boolean p1, p0, Laf;->g:Z

    :cond_8
    return-void
.end method

.method private h()V
    .locals 5

    .line 140
    iget v0, p0, Laf;->u:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Laf;->u:I

    .line 141
    iget-object v0, p0, Laf;->i:[Lad;

    iget v1, p0, Laf;->u:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lad;

    iput-object v0, p0, Laf;->i:[Lad;

    .line 142
    iget-object v0, p0, Laf;->n:Lae;

    iget-object v1, v0, Lae;->d:[Laj;

    iget v2, p0, Laf;->u:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Laj;

    iput-object v1, v0, Lae;->d:[Laj;

    .line 143
    iget v0, p0, Laf;->u:I

    new-array v1, v0, [Z

    iput-object v1, p0, Laf;->w:[Z

    .line 144
    iput v0, p0, Laf;->v:I

    .line 145
    iput v0, p0, Laf;->x:I

    .line 146
    sget-object v0, Laf;->o:Lag;

    if-eqz v0, :cond_0

    .line 147
    iget-wide v1, v0, Lag;->d:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lag;->d:J

    .line 148
    sget-object v0, Laf;->o:Lag;

    iget-wide v1, v0, Lag;->o:J

    iget v3, p0, Laf;->u:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lag;->o:J

    .line 149
    sget-object v0, Laf;->o:Lag;

    iget-wide v1, v0, Lag;->o:J

    iput-wide v1, v0, Lag;->x:J

    :cond_0
    return-void
.end method

.method private i()V
    .locals 4

    .line 157
    sget-boolean v0, Laf;->f:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 158
    :goto_0
    iget v0, p0, Laf;->m:I

    if-ge v2, v0, :cond_3

    .line 159
    iget-object v0, p0, Laf;->i:[Lad;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 161
    iget-object v3, p0, Laf;->n:Lae;

    iget-object v3, v3, Lae;->a:Lah$a;

    invoke-interface {v3, v0}, Lah$a;->a(Ljava/lang/Object;)Z

    .line 163
    :cond_0
    iget-object v0, p0, Laf;->i:[Lad;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    :cond_1
    :goto_1
    iget v0, p0, Laf;->m:I

    if-ge v2, v0, :cond_3

    .line 167
    iget-object v0, p0, Laf;->i:[Lad;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    .line 169
    iget-object v3, p0, Laf;->n:Lae;

    iget-object v3, v3, Lae;->b:Lah$a;

    invoke-interface {v3, v0}, Lah$a;->a(Ljava/lang/Object;)Z

    .line 171
    :cond_2
    iget-object v0, p0, Laf;->i:[Lad;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private j()V
    .locals 3

    const/4 v0, 0x0

    .line 1036
    :goto_0
    iget v1, p0, Laf;->m:I

    if-ge v0, v1, :cond_0

    .line 1037
    iget-object v1, p0, Laf;->i:[Lad;

    aget-object v1, v1, v0

    .line 1038
    iget-object v2, v1, Lad;->a:Laj;

    iget v1, v1, Lad;->b:F

    iput v1, v2, Laj;->e:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)Laj;
    .locals 5

    .line 348
    sget-object v0, Laf;->o:Lag;

    if-eqz v0, :cond_0

    .line 349
    iget-wide v1, v0, Lag;->l:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lag;->l:J

    .line 351
    :cond_0
    iget v0, p0, Laf;->l:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Laf;->v:I

    if-lt v0, v1, :cond_1

    .line 352
    invoke-direct {p0}, Laf;->h()V

    .line 354
    :cond_1
    sget-object v0, Laj$a;->ERROR:Laj$a;

    invoke-direct {p0, v0, p2}, Laf;->a(Laj$a;Ljava/lang/String;)Laj;

    move-result-object p2

    .line 355
    iget v0, p0, Laf;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laf;->h:I

    .line 356
    iget v0, p0, Laf;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laf;->l:I

    .line 357
    iget v0, p0, Laf;->h:I

    iput v0, p2, Laj;->b:I

    .line 358
    iput p1, p2, Laj;->d:I

    .line 359
    iget-object p1, p0, Laf;->n:Lae;

    iget-object p1, p1, Lae;->d:[Laj;

    iget v0, p0, Laf;->h:I

    aput-object p2, p1, v0

    .line 360
    iget-object p1, p0, Laf;->t:Laf$a;

    invoke-interface {p1, p2}, Laf$a;->d(Laj;)V

    return-object p2
.end method

.method public a(Ljava/lang/Object;)Laj;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 223
    :cond_0
    iget v1, p0, Laf;->l:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Laf;->v:I

    if-lt v1, v2, :cond_1

    .line 224
    invoke-direct {p0}, Laf;->h()V

    .line 227
    :cond_1
    instance-of v1, p1, Lbe;

    if-eqz v1, :cond_5

    .line 228
    check-cast p1, Lbe;

    invoke-virtual {p1}, Lbe;->g()Laj;

    move-result-object v0

    if-nez v0, :cond_2

    .line 230
    iget-object v0, p0, Laf;->n:Lae;

    invoke-virtual {p1, v0}, Lbe;->a(Lae;)V

    .line 231
    invoke-virtual {p1}, Lbe;->g()Laj;

    move-result-object p1

    move-object v0, p1

    .line 233
    :cond_2
    iget p1, v0, Laj;->b:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    iget p1, v0, Laj;->b:I

    iget v2, p0, Laf;->h:I

    if-gt p1, v2, :cond_3

    iget-object p1, p0, Laf;->n:Lae;

    iget-object p1, p1, Lae;->d:[Laj;

    iget v2, v0, Laj;->b:I

    aget-object p1, p1, v2

    if-nez p1, :cond_5

    .line 236
    :cond_3
    iget p1, v0, Laj;->b:I

    if-eq p1, v1, :cond_4

    .line 237
    invoke-virtual {v0}, Laj;->b()V

    .line 239
    :cond_4
    iget p1, p0, Laf;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Laf;->h:I

    .line 240
    iget p1, p0, Laf;->l:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Laf;->l:I

    .line 241
    iget p1, p0, Laf;->h:I

    iput p1, v0, Laj;->b:I

    .line 242
    sget-object p1, Laj$a;->UNRESTRICTED:Laj$a;

    iput-object p1, v0, Laj;->i:Laj$a;

    .line 243
    iget-object p1, p0, Laf;->n:Lae;

    iget-object p1, p1, Lae;->d:[Laj;

    iget v1, p0, Laf;->h:I

    aput-object v0, p1, v1

    :cond_5
    return-object v0
.end method

.method public a(Lad;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 556
    :cond_0
    sget-object v0, Laf;->o:Lag;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    .line 557
    iget-wide v3, v0, Lag;->f:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lag;->f:J

    .line 558
    iget-boolean v0, p1, Lad;->f:Z

    if-eqz v0, :cond_1

    .line 559
    sget-object v0, Laf;->o:Lag;

    iget-wide v3, v0, Lag;->g:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lag;->g:J

    .line 562
    :cond_1
    iget v0, p0, Laf;->m:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iget v4, p0, Laf;->x:I

    if-ge v0, v4, :cond_2

    iget v0, p0, Laf;->l:I

    add-int/2addr v0, v3

    iget v4, p0, Laf;->v:I

    if-lt v0, v4, :cond_3

    .line 563
    :cond_2
    invoke-direct {p0}, Laf;->h()V

    :cond_3
    const/4 v0, 0x0

    .line 571
    iget-boolean v4, p1, Lad;->f:Z

    if-nez v4, :cond_b

    .line 573
    invoke-virtual {p1, p0}, Lad;->c(Laf;)V

    .line 575
    invoke-virtual {p1}, Lad;->e()Z

    move-result v4

    if-eqz v4, :cond_4

    return-void

    .line 580
    :cond_4
    invoke-virtual {p1}, Lad;->d()V

    .line 587
    invoke-virtual {p1, p0}, Lad;->a(Laf;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 589
    invoke-virtual {p0}, Laf;->e()Laj;

    move-result-object v4

    .line 590
    iput-object v4, p1, Lad;->a:Laj;

    .line 591
    iget v5, p0, Laf;->m:I

    .line 592
    invoke-direct {p0, p1}, Laf;->b(Lad;)V

    .line 593
    iget v6, p0, Laf;->m:I

    add-int/2addr v5, v3

    if-ne v6, v5, :cond_a

    .line 595
    iget-object v0, p0, Laf;->A:Laf$a;

    invoke-interface {v0, p1}, Laf$a;->a(Laf$a;)V

    .line 596
    iget-object v0, p0, Laf;->A:Laf$a;

    invoke-direct {p0, v0, v3}, Laf;->a(Laf$a;Z)I

    .line 597
    iget v0, v4, Laj;->c:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_9

    .line 601
    iget-object v0, p1, Lad;->a:Laj;

    if-ne v0, v4, :cond_6

    .line 603
    invoke-virtual {p1, v4}, Lad;->c(Laj;)Laj;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 605
    sget-object v4, Laf;->o:Lag;

    if-eqz v4, :cond_5

    .line 606
    iget-wide v5, v4, Lag;->j:J

    add-long/2addr v5, v1

    iput-wide v5, v4, Lag;->j:J

    .line 608
    :cond_5
    invoke-virtual {p1, v0}, Lad;->b(Laj;)V

    .line 611
    :cond_6
    iget-boolean v0, p1, Lad;->f:Z

    if-nez v0, :cond_7

    .line 612
    iget-object v0, p1, Lad;->a:Laj;

    invoke-virtual {v0, p0, p1}, Laj;->a(Laf;Lad;)V

    .line 614
    :cond_7
    sget-boolean v0, Laf;->f:Z

    if-eqz v0, :cond_8

    .line 615
    iget-object v0, p0, Laf;->n:Lae;

    iget-object v0, v0, Lae;->a:Lah$a;

    invoke-interface {v0, p1}, Lah$a;->a(Ljava/lang/Object;)Z

    goto :goto_0

    .line 617
    :cond_8
    iget-object v0, p0, Laf;->n:Lae;

    iget-object v0, v0, Lae;->b:Lah$a;

    invoke-interface {v0, p1}, Lah$a;->a(Ljava/lang/Object;)Z

    .line 619
    :goto_0
    iget v0, p0, Laf;->m:I

    sub-int/2addr v0, v3

    iput v0, p0, Laf;->m:I

    :cond_9
    move v0, v3

    .line 624
    :cond_a
    invoke-virtual {p1}, Lad;->a()Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    if-nez v0, :cond_c

    .line 634
    invoke-direct {p0, p1}, Laf;->b(Lad;)V

    :cond_c
    return-void
.end method

.method a(Lad;II)V
    .locals 1

    const/4 v0, 0x0

    .line 323
    invoke-virtual {p0, p3, v0}, Laf;->a(ILjava/lang/String;)Laj;

    move-result-object p3

    .line 324
    invoke-virtual {p1, p3, p2}, Lad;->c(Laj;I)Lad;

    return-void
.end method

.method a(Laf$a;)V
    .locals 5

    .line 494
    sget-object v0, Laf;->o:Lag;

    if-eqz v0, :cond_0

    .line 495
    iget-wide v1, v0, Lag;->t:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lag;->t:J

    .line 496
    sget-object v0, Laf;->o:Lag;

    iget-wide v1, v0, Lag;->u:J

    iget v3, p0, Laf;->l:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lag;->u:J

    .line 497
    sget-object v0, Laf;->o:Lag;

    iget-wide v1, v0, Lag;->v:J

    iget v3, p0, Laf;->m:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lag;->v:J

    .line 509
    :cond_0
    invoke-direct {p0, p1}, Laf;->b(Laf$a;)I

    const/4 v0, 0x0

    .line 514
    invoke-direct {p0, p1, v0}, Laf;->a(Laf$a;Z)I

    .line 519
    invoke-direct {p0}, Laf;->j()V

    return-void
.end method

.method public a(Lag;)V
    .locals 0

    .line 107
    sput-object p1, Laf;->o:Lag;

    return-void
.end method

.method public a(Laj;I)V
    .locals 5

    .line 1377
    sget-boolean v0, Laf;->b:Z

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v0, p1, Laj;->c:I

    if-ne v0, v1, :cond_2

    int-to-float p2, p2

    .line 1381
    invoke-virtual {p1, p0, p2}, Laj;->a(Laf;F)V

    const/4 v0, 0x0

    .line 1382
    :goto_0
    iget v1, p0, Laf;->h:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 1383
    iget-object v1, p0, Laf;->n:Lae;

    iget-object v1, v1, Lae;->d:[Laj;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1384
    iget-boolean v3, v1, Laj;->m:Z

    if-eqz v3, :cond_0

    iget v3, v1, Laj;->n:I

    iget v4, p1, Laj;->b:I

    if-ne v3, v4, :cond_0

    .line 1385
    iget v3, v1, Laj;->o:F

    add-float/2addr v3, p2

    invoke-virtual {v1, p0, v3}, Laj;->a(Laf;F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 1393
    :cond_2
    iget v0, p1, Laj;->c:I

    .line 1394
    iget v3, p1, Laj;->c:I

    if-eq v3, v1, :cond_5

    .line 1395
    iget-object v1, p0, Laf;->i:[Lad;

    aget-object v0, v1, v0

    .line 1396
    iget-boolean v1, v0, Lad;->f:Z

    if-eqz v1, :cond_3

    int-to-float p1, p2

    .line 1397
    iput p1, v0, Lad;->b:F

    goto :goto_1

    .line 1399
    :cond_3
    iget-object v1, v0, Lad;->e:Lad$a;

    invoke-interface {v1}, Lad$a;->c()I

    move-result v1

    if-nez v1, :cond_4

    .line 1400
    iput-boolean v2, v0, Lad;->f:Z

    int-to-float p1, p2

    .line 1401
    iput p1, v0, Lad;->b:F

    goto :goto_1

    .line 1403
    :cond_4
    invoke-virtual {p0}, Laf;->c()Lad;

    move-result-object v0

    .line 1404
    invoke-virtual {v0, p1, p2}, Lad;->b(Laj;I)Lad;

    .line 1405
    invoke-virtual {p0, v0}, Laf;->a(Lad;)V

    goto :goto_1

    .line 1409
    :cond_5
    invoke-virtual {p0}, Laf;->c()Lad;

    move-result-object v0

    .line 1410
    invoke-virtual {v0, p1, p2}, Lad;->a(Laj;I)Lad;

    .line 1411
    invoke-virtual {p0, v0}, Laf;->a(Lad;)V

    :goto_1
    return-void
.end method

.method public a(Laj;Laj;IFLaj;Laj;II)V
    .locals 11

    move-object v0, p0

    move/from16 v1, p8

    .line 1288
    invoke-virtual {p0}, Laf;->c()Lad;

    move-result-object v10

    move-object v2, v10

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 1289
    invoke-virtual/range {v2 .. v9}, Lad;->a(Laj;Laj;IFLaj;Laj;I)Lad;

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 1291
    invoke-virtual {v10, p0, v1}, Lad;->a(Laf;I)Lad;

    .line 1293
    :cond_0
    invoke-virtual {p0, v10}, Laf;->a(Lad;)V

    return-void
.end method

.method public a(Laj;Laj;II)V
    .locals 3

    .line 1214
    invoke-virtual {p0}, Laf;->c()Lad;

    move-result-object v0

    .line 1215
    invoke-virtual {p0}, Laf;->d()Laj;

    move-result-object v1

    const/4 v2, 0x0

    .line 1216
    iput v2, v1, Laj;->d:I

    .line 1217
    invoke-virtual {v0, p1, p2, v1, p3}, Lad;->a(Laj;Laj;Laj;I)Lad;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    .line 1219
    iget-object p1, v0, Lad;->e:Lad$a;

    invoke-interface {p1, v1}, Lad$a;->b(Laj;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 1220
    invoke-virtual {p0, v0, p1, p4}, Laf;->a(Lad;II)V

    .line 1222
    :cond_0
    invoke-virtual {p0, v0}, Laf;->a(Lad;)V

    return-void
.end method

.method public a(Laj;Laj;IZ)V
    .locals 2

    .line 1229
    invoke-virtual {p0}, Laf;->c()Lad;

    move-result-object p4

    .line 1230
    invoke-virtual {p0}, Laf;->d()Laj;

    move-result-object v0

    const/4 v1, 0x0

    .line 1231
    iput v1, v0, Laj;->d:I

    .line 1232
    invoke-virtual {p4, p1, p2, v0, p3}, Lad;->a(Laj;Laj;Laj;I)Lad;

    .line 1233
    invoke-virtual {p0, p4}, Laf;->a(Lad;)V

    return-void
.end method

.method public a(Laj;Laj;Laj;Laj;FI)V
    .locals 7

    .line 1300
    invoke-virtual {p0}, Laf;->c()Lad;

    move-result-object v6

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1301
    invoke-virtual/range {v0 .. v5}, Lad;->a(Laj;Laj;Laj;Laj;F)Lad;

    const/16 p1, 0x8

    if-eq p6, p1, :cond_0

    .line 1303
    invoke-virtual {v6, p0, p6}, Lad;->a(Laf;I)Lad;

    .line 1305
    :cond_0
    invoke-virtual {p0, v6}, Laf;->a(Lad;)V

    return-void
.end method

.method public a(Lbf;Lbf;FI)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1445
    sget-object v3, Lbe$a;->LEFT:Lbe$a;

    invoke-virtual {v1, v3}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object v3

    invoke-virtual {v0, v3}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v5

    .line 1446
    sget-object v3, Lbe$a;->TOP:Lbe$a;

    invoke-virtual {v1, v3}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object v3

    invoke-virtual {v0, v3}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v7

    .line 1447
    sget-object v3, Lbe$a;->RIGHT:Lbe$a;

    invoke-virtual {v1, v3}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object v3

    invoke-virtual {v0, v3}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v3

    .line 1448
    sget-object v4, Lbe$a;->BOTTOM:Lbe$a;

    invoke-virtual {v1, v4}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object v1

    invoke-virtual {v0, v1}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v8

    .line 1450
    sget-object v1, Lbe$a;->LEFT:Lbe$a;

    invoke-virtual {v2, v1}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object v1

    invoke-virtual {v0, v1}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v1

    .line 1451
    sget-object v4, Lbe$a;->TOP:Lbe$a;

    invoke-virtual {v2, v4}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object v4

    invoke-virtual {v0, v4}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v9

    .line 1452
    sget-object v4, Lbe$a;->RIGHT:Lbe$a;

    invoke-virtual {v2, v4}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object v4

    invoke-virtual {v0, v4}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v12

    .line 1453
    sget-object v4, Lbe$a;->BOTTOM:Lbe$a;

    invoke-virtual {v2, v4}, Lbf;->a(Lbe$a;)Lbe;

    move-result-object v2

    invoke-virtual {v0, v2}, Laf;->a(Ljava/lang/Object;)Laj;

    move-result-object v10

    .line 1455
    invoke-virtual/range {p0 .. p0}, Laf;->c()Lad;

    move-result-object v2

    move/from16 v4, p3

    float-to-double v13, v4

    .line 1456
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    move/from16 v4, p4

    move-object/from16 v17, v3

    int-to-double v3, v4

    move-object/from16 p1, v12

    mul-double v11, v15, v3

    double-to-float v11, v11

    move-object v6, v2

    .line 1457
    invoke-virtual/range {v6 .. v11}, Lad;->b(Laj;Laj;Laj;Laj;F)Lad;

    .line 1458
    invoke-virtual {v0, v2}, Laf;->a(Lad;)V

    .line 1459
    invoke-virtual/range {p0 .. p0}, Laf;->c()Lad;

    move-result-object v2

    .line 1460
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v3

    double-to-float v9, v6

    move-object v4, v2

    move-object/from16 v6, v17

    move-object v7, v1

    move-object/from16 v8, p1

    .line 1461
    invoke-virtual/range {v4 .. v9}, Lad;->b(Laj;Laj;Laj;Laj;F)Lad;

    .line 1462
    invoke-virtual {v0, v2}, Laf;->a(Lad;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)I
    .locals 1

    .line 409
    check-cast p1, Lbe;

    .line 415
    invoke-virtual {p1}, Lbe;->g()Laj;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 417
    iget p1, p1, Laj;->e:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 185
    :goto_0
    iget-object v2, p0, Laf;->n:Lae;

    iget-object v2, v2, Lae;->d:[Laj;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 186
    iget-object v2, p0, Laf;->n:Lae;

    iget-object v2, v2, Lae;->d:[Laj;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 188
    invoke-virtual {v2}, Laj;->b()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_1
    iget-object v1, p0, Laf;->n:Lae;

    iget-object v1, v1, Lae;->c:Lah$a;

    iget-object v2, p0, Laf;->y:[Laj;

    iget v3, p0, Laf;->z:I

    invoke-interface {v1, v2, v3}, Lah$a;->a([Ljava/lang/Object;I)V

    .line 192
    iput v0, p0, Laf;->z:I

    .line 194
    iget-object v1, p0, Laf;->n:Lae;

    iget-object v1, v1, Lae;->d:[Laj;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    iget-object v1, p0, Laf;->s:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 196
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 198
    :cond_2
    iput v0, p0, Laf;->h:I

    .line 199
    iget-object v1, p0, Laf;->t:Laf$a;

    invoke-interface {v1}, Laf$a;->f()V

    const/4 v1, 0x1

    .line 200
    iput v1, p0, Laf;->l:I

    move v1, v0

    .line 201
    :goto_1
    iget v2, p0, Laf;->m:I

    if-ge v1, v2, :cond_4

    .line 202
    iget-object v2, p0, Laf;->i:[Lad;

    aget-object v3, v2, v1

    if-eqz v3, :cond_3

    .line 203
    aget-object v2, v2, v1

    iput-boolean v0, v2, Lad;->c:Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 206
    :cond_4
    invoke-direct {p0}, Laf;->i()V

    .line 207
    iput v0, p0, Laf;->m:I

    .line 208
    sget-boolean v0, Laf;->f:Z

    if-eqz v0, :cond_5

    .line 209
    new-instance v0, Laf$b;

    iget-object v1, p0, Laf;->n:Lae;

    invoke-direct {v0, p0, v1}, Laf$b;-><init>(Laf;Lae;)V

    iput-object v0, p0, Laf;->A:Laf$a;

    goto :goto_2

    .line 211
    :cond_5
    new-instance v0, Lad;

    iget-object v1, p0, Laf;->n:Lae;

    invoke-direct {v0, v1}, Lad;-><init>(Lae;)V

    iput-object v0, p0, Laf;->A:Laf$a;

    :goto_2
    return-void
.end method

.method public b(Laj;Laj;II)V
    .locals 3

    .line 1247
    invoke-virtual {p0}, Laf;->c()Lad;

    move-result-object v0

    .line 1248
    invoke-virtual {p0}, Laf;->d()Laj;

    move-result-object v1

    const/4 v2, 0x0

    .line 1249
    iput v2, v1, Laj;->d:I

    .line 1250
    invoke-virtual {v0, p1, p2, v1, p3}, Lad;->b(Laj;Laj;Laj;I)Lad;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    .line 1252
    iget-object p1, v0, Lad;->e:Lad$a;

    invoke-interface {p1, v1}, Lad$a;->b(Laj;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 1253
    invoke-virtual {p0, v0, p1, p4}, Laf;->a(Lad;II)V

    .line 1255
    :cond_0
    invoke-virtual {p0, v0}, Laf;->a(Lad;)V

    return-void
.end method

.method public b(Laj;Laj;IZ)V
    .locals 2

    .line 1262
    invoke-virtual {p0}, Laf;->c()Lad;

    move-result-object p4

    .line 1263
    invoke-virtual {p0}, Laf;->d()Laj;

    move-result-object v0

    const/4 v1, 0x0

    .line 1264
    iput v1, v0, Laj;->d:I

    .line 1265
    invoke-virtual {p4, p1, p2, v0, p3}, Lad;->b(Laj;Laj;Laj;I)Lad;

    .line 1266
    invoke-virtual {p0, p4}, Laf;->a(Lad;)V

    return-void
.end method

.method public c()Lad;
    .locals 5

    .line 254
    sget-boolean v0, Laf;->f:Z

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Laf;->n:Lae;

    iget-object v0, v0, Lae;->a:Lah$a;

    invoke-interface {v0}, Lah$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad;

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Laf$b;

    iget-object v3, p0, Laf;->n:Lae;

    invoke-direct {v0, p0, v3}, Laf$b;-><init>(Laf;Lae;)V

    .line 258
    sget-wide v3, Laf;->q:J

    add-long/2addr v3, v1

    sput-wide v3, Laf;->q:J

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {v0}, Lad;->c()V

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Laf;->n:Lae;

    iget-object v0, v0, Lae;->b:Lah$a;

    invoke-interface {v0}, Lah$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad;

    if-nez v0, :cond_2

    .line 265
    new-instance v0, Lad;

    iget-object v3, p0, Laf;->n:Lae;

    invoke-direct {v0, v3}, Lad;-><init>(Lae;)V

    .line 266
    sget-wide v3, Laf;->p:J

    add-long/2addr v3, v1

    sput-wide v3, Laf;->p:J

    goto :goto_0

    .line 268
    :cond_2
    invoke-virtual {v0}, Lad;->c()V

    .line 271
    :goto_0
    invoke-static {}, Laj;->a()V

    return-object v0
.end method

.method public c(Laj;Laj;II)Lad;
    .locals 3

    .line 1336
    sget-boolean v0, Laf;->b:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    if-ne p4, v1, :cond_0

    iget-boolean v0, p2, Laj;->f:Z

    if-eqz v0, :cond_0

    iget v0, p1, Laj;->c:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1340
    iget p2, p2, Laj;->e:F

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p0, p2}, Laj;->a(Laf;F)V

    const/4 p1, 0x0

    return-object p1

    .line 1362
    :cond_0
    invoke-virtual {p0}, Laf;->c()Lad;

    move-result-object v0

    .line 1363
    invoke-virtual {v0, p1, p2, p3}, Lad;->a(Laj;Laj;I)Lad;

    if-eq p4, v1, :cond_1

    .line 1365
    invoke-virtual {v0, p0, p4}, Lad;->a(Laf;I)Lad;

    .line 1367
    :cond_1
    invoke-virtual {p0, v0}, Laf;->a(Lad;)V

    return-object v0
.end method

.method public d()Laj;
    .locals 5

    .line 276
    sget-object v0, Laf;->o:Lag;

    if-eqz v0, :cond_0

    .line 277
    iget-wide v1, v0, Lag;->m:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lag;->m:J

    .line 279
    :cond_0
    iget v0, p0, Laf;->l:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Laf;->v:I

    if-lt v0, v1, :cond_1

    .line 280
    invoke-direct {p0}, Laf;->h()V

    .line 282
    :cond_1
    sget-object v0, Laj$a;->SLACK:Laj$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Laf;->a(Laj$a;Ljava/lang/String;)Laj;

    move-result-object v0

    .line 283
    iget v1, p0, Laf;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laf;->h:I

    .line 284
    iget v1, p0, Laf;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laf;->l:I

    .line 285
    iget v1, p0, Laf;->h:I

    iput v1, v0, Laj;->b:I

    .line 286
    iget-object v1, p0, Laf;->n:Lae;

    iget-object v1, v1, Lae;->d:[Laj;

    iget v2, p0, Laf;->h:I

    aput-object v0, v1, v2

    return-object v0
.end method

.method public e()Laj;
    .locals 5

    .line 291
    sget-object v0, Laf;->o:Lag;

    if-eqz v0, :cond_0

    .line 292
    iget-wide v1, v0, Lag;->n:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lag;->n:J

    .line 294
    :cond_0
    iget v0, p0, Laf;->l:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Laf;->v:I

    if-lt v0, v1, :cond_1

    .line 295
    invoke-direct {p0}, Laf;->h()V

    .line 297
    :cond_1
    sget-object v0, Laj$a;->SLACK:Laj$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Laf;->a(Laj$a;Ljava/lang/String;)Laj;

    move-result-object v0

    .line 298
    iget v1, p0, Laf;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laf;->h:I

    .line 299
    iget v1, p0, Laf;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laf;->l:I

    .line 300
    iget v1, p0, Laf;->h:I

    iput v1, v0, Laj;->b:I

    .line 301
    iget-object v1, p0, Laf;->n:Lae;

    iget-object v1, v1, Lae;->d:[Laj;

    iget v2, p0, Laf;->h:I

    aput-object v0, v1, v2

    return-object v0
.end method

.method public f()V
    .locals 5

    .line 448
    sget-object v0, Laf;->o:Lag;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    .line 449
    iget-wide v3, v0, Lag;->e:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lag;->e:J

    .line 451
    :cond_0
    iget-object v0, p0, Laf;->t:Laf$a;

    invoke-interface {v0}, Laf$a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    invoke-direct {p0}, Laf;->j()V

    return-void

    .line 461
    :cond_1
    iget-boolean v0, p0, Laf;->j:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Laf;->k:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 482
    :cond_2
    iget-object v0, p0, Laf;->t:Laf$a;

    invoke-virtual {p0, v0}, Laf;->a(Laf$a;)V

    goto :goto_3

    .line 462
    :cond_3
    :goto_0
    sget-object v0, Laf;->o:Lag;

    if-eqz v0, :cond_4

    .line 463
    iget-wide v3, v0, Lag;->q:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lag;->q:J

    :cond_4
    const/4 v0, 0x0

    move v3, v0

    .line 466
    :goto_1
    iget v4, p0, Laf;->m:I

    if-ge v3, v4, :cond_6

    .line 467
    iget-object v4, p0, Laf;->i:[Lad;

    aget-object v4, v4, v3

    .line 468
    iget-boolean v4, v4, Lad;->f:Z

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_7

    .line 474
    iget-object v0, p0, Laf;->t:Laf$a;

    invoke-virtual {p0, v0}, Laf;->a(Laf$a;)V

    goto :goto_3

    .line 476
    :cond_7
    sget-object v0, Laf;->o:Lag;

    if-eqz v0, :cond_8

    .line 477
    iget-wide v3, v0, Lag;->p:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lag;->p:J

    .line 479
    :cond_8
    invoke-direct {p0}, Laf;->j()V

    :goto_3
    return-void
.end method

.method public g()Lae;
    .locals 1

    .line 1171
    iget-object v0, p0, Laf;->n:Lae;

    return-object v0
.end method
