.class public final Lorg/chromium/net/impl/f;
.super Lorg/chromium/net/s$b;
.source "CronetMetrics.java"


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:J

.field private final g:J

.field private final h:J

.field private final i:J

.field private final j:J

.field private final k:J

.field private final l:J

.field private final m:J

.field private final n:J

.field private final o:Z

.field private final p:Ljava/lang/Long;

.field private final q:Ljava/lang/Long;

.field private final r:Ljava/lang/Long;

.field private final s:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lorg/chromium/net/impl/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/chromium/net/impl/f;->a:Z

    return-void
.end method

.method public constructor <init>(JJJJJJJJJJJJJZJJ)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p7

    move-wide/from16 v7, p11

    move-wide/from16 v9, p15

    move-wide/from16 v11, p23

    move-wide/from16 v13, p25

    .line 93
    invoke-direct/range {p0 .. p0}, Lorg/chromium/net/s$b;-><init>()V

    .line 96
    sget-boolean v15, Lorg/chromium/net/impl/f;->a:Z

    if-nez v15, :cond_1

    invoke-static/range {p3 .. p6}, Lorg/chromium/net/impl/f;->a(JJ)Z

    move-result v15

    if-eqz v15, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 97
    :cond_1
    :goto_0
    sget-boolean v15, Lorg/chromium/net/impl/f;->a:Z

    if-nez v15, :cond_3

    invoke-static/range {p7 .. p10}, Lorg/chromium/net/impl/f;->a(JJ)Z

    move-result v15

    if-eqz v15, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 98
    :cond_3
    :goto_1
    sget-boolean v15, Lorg/chromium/net/impl/f;->a:Z

    if-nez v15, :cond_5

    invoke-static/range {p11 .. p14}, Lorg/chromium/net/impl/f;->a(JJ)Z

    move-result v15

    if-eqz v15, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 99
    :cond_5
    :goto_2
    sget-boolean v15, Lorg/chromium/net/impl/f;->a:Z

    if-nez v15, :cond_7

    invoke-static/range {p15 .. p18}, Lorg/chromium/net/impl/f;->a(JJ)Z

    move-result v15

    if-eqz v15, :cond_6

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 100
    :cond_7
    :goto_3
    sget-boolean v15, Lorg/chromium/net/impl/f;->a:Z

    if-nez v15, :cond_9

    invoke-static/range {p19 .. p22}, Lorg/chromium/net/impl/f;->a(JJ)Z

    move-result v15

    if-eqz v15, :cond_8

    goto :goto_4

    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 102
    :cond_9
    :goto_4
    sget-boolean v15, Lorg/chromium/net/impl/f;->a:Z

    if-nez v15, :cond_b

    cmp-long v15, v13, v11

    if-ltz v15, :cond_a

    goto :goto_5

    :cond_a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 104
    :cond_b
    :goto_5
    sget-boolean v15, Lorg/chromium/net/impl/f;->a:Z

    const-wide/16 v16, -0x1

    if-nez v15, :cond_d

    cmp-long v15, v3, v1

    if-gez v15, :cond_d

    cmp-long v15, v3, v16

    if-nez v15, :cond_c

    goto :goto_6

    :cond_c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 105
    :cond_d
    :goto_6
    sget-boolean v15, Lorg/chromium/net/impl/f;->a:Z

    if-nez v15, :cond_f

    cmp-long v15, v9, v1

    if-gez v15, :cond_f

    cmp-long v15, v9, v16

    if-nez v15, :cond_e

    goto :goto_7

    :cond_e
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 106
    :cond_f
    :goto_7
    sget-boolean v15, Lorg/chromium/net/impl/f;->a:Z

    if-nez v15, :cond_11

    cmp-long v15, v7, v5

    if-gez v15, :cond_11

    cmp-long v15, v7, v16

    if-nez v15, :cond_10

    goto :goto_8

    :cond_10
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 107
    :cond_11
    :goto_8
    sget-boolean v15, Lorg/chromium/net/impl/f;->a:Z

    if-nez v15, :cond_13

    cmp-long v15, v11, v9

    if-gez v15, :cond_13

    cmp-long v15, v11, v16

    if-nez v15, :cond_12

    goto :goto_9

    :cond_12
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 108
    :cond_13
    :goto_9
    iput-wide v1, v0, Lorg/chromium/net/impl/f;->b:J

    .line 109
    iput-wide v3, v0, Lorg/chromium/net/impl/f;->c:J

    move-wide/from16 v3, p5

    .line 110
    iput-wide v3, v0, Lorg/chromium/net/impl/f;->d:J

    .line 111
    iput-wide v5, v0, Lorg/chromium/net/impl/f;->e:J

    move-wide/from16 v3, p9

    .line 112
    iput-wide v3, v0, Lorg/chromium/net/impl/f;->f:J

    .line 113
    iput-wide v7, v0, Lorg/chromium/net/impl/f;->g:J

    move-wide/from16 v3, p13

    .line 114
    iput-wide v3, v0, Lorg/chromium/net/impl/f;->h:J

    .line 115
    iput-wide v9, v0, Lorg/chromium/net/impl/f;->i:J

    move-wide/from16 v3, p17

    .line 116
    iput-wide v3, v0, Lorg/chromium/net/impl/f;->j:J

    move-wide/from16 v3, p19

    .line 117
    iput-wide v3, v0, Lorg/chromium/net/impl/f;->k:J

    move-wide/from16 v3, p21

    .line 118
    iput-wide v3, v0, Lorg/chromium/net/impl/f;->l:J

    .line 119
    iput-wide v11, v0, Lorg/chromium/net/impl/f;->m:J

    .line 120
    iput-wide v13, v0, Lorg/chromium/net/impl/f;->n:J

    move/from16 v3, p27

    .line 121
    iput-boolean v3, v0, Lorg/chromium/net/impl/f;->o:Z

    .line 122
    invoke-static/range {p28 .. p29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lorg/chromium/net/impl/f;->r:Ljava/lang/Long;

    .line 123
    invoke-static/range {p30 .. p31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lorg/chromium/net/impl/f;->s:Ljava/lang/Long;

    cmp-long v3, v1, v16

    const/4 v4, 0x0

    if-eqz v3, :cond_14

    cmp-long v5, v11, v16

    if-eqz v5, :cond_14

    sub-long v5, v11, v1

    .line 127
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v0, Lorg/chromium/net/impl/f;->p:Ljava/lang/Long;

    goto :goto_a

    .line 129
    :cond_14
    iput-object v4, v0, Lorg/chromium/net/impl/f;->p:Ljava/lang/Long;

    :goto_a
    if-eqz v3, :cond_15

    cmp-long v3, v13, v16

    if-eqz v3, :cond_15

    sub-long v1, v13, v1

    .line 132
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/net/impl/f;->q:Ljava/lang/Long;

    goto :goto_b

    .line 134
    :cond_15
    iput-object v4, v0, Lorg/chromium/net/impl/f;->q:Ljava/lang/Long;

    :goto_b
    return-void
.end method

.method private static a(JJ)Z
    .locals 3

    cmp-long v0, p2, p0

    const-wide/16 v1, -0x1

    if-ltz v0, :cond_0

    cmp-long p0, p0, v1

    if-nez p0, :cond_1

    :cond_0
    cmp-long p0, p2, v1

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
