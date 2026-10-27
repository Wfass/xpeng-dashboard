.class public abstract Lcom/alibaba/mtl/log/upload/a;
.super Ljava/lang/Object;
.source "UploadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static B:I

.field private static volatile G:Z

.field private static H:Z


# instance fields
.field C:I

.field D:I

.field a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/mtl/log/upload/a;->G:Z

    .line 41
    sput-boolean v0, Lcom/alibaba/mtl/log/upload/a;->H:Z

    .line 43
    sput v0, Lcom/alibaba/mtl/log/upload/a;->B:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/mtl/log/upload/a;->C:I

    .line 44
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lcom/alibaba/mtl/log/upload/a;->a:F

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/mtl/log/upload/a;->D:I

    return-void
.end method

.method private I()V
    .locals 20

    .line 63
    move-object/from16 v1, p0

    const-string v0, "UploadTask"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Upload"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    sget-boolean v0, Lcom/alibaba/mtl/log/a;->s:Z

    if-nez v0, :cond_0

    .line 65
    const-string v0, "UploadTask"

    const-string v1, "Upload is disabled"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 66
    return-void

    .line 69
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/log/d/l;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    return-void

    .line 72
    :cond_1
    sget-boolean v0, Lcom/alibaba/mtl/log/upload/a;->H:Z

    if-eqz v0, :cond_2

    .line 73
    return-void

    .line 75
    :cond_2
    sget-boolean v0, Lcom/alibaba/mtl/log/upload/a;->G:Z

    if-nez v0, :cond_16

    .line 76
    sput-boolean v2, Lcom/alibaba/mtl/log/upload/a;->G:Z

    .line 80
    nop

    .line 83
    invoke-static {}, Lcom/alibaba/mtl/log/a/d;->a()Lcom/alibaba/mtl/log/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/a/d;->b()Ljava/util/Map;

    move-result-object v3

    .line 85
    move v0, v5

    move v4, v0

    :goto_0
    const/4 v6, 0x3

    if-ge v4, v6, :cond_15

    .line 86
    nop

    .line 87
    invoke-static {}, Lcom/alibaba/mtl/log/a;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/mtl/log/d/k;->c(Landroid/content/Context;)Z

    move-result v7

    .line 88
    if-nez v7, :cond_3

    .line 89
    const-string v0, "UploadTask"

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Other Process is Uploading, break"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    goto/16 :goto_a

    .line 92
    :cond_3
    invoke-static {}, Lcom/alibaba/mtl/log/c/c;->a()Lcom/alibaba/mtl/log/c/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/mtl/log/c/c;->E()V

    .line 93
    nop

    .line 95
    const/4 v7, 0x0

    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v8

    if-lez v8, :cond_9

    .line 96
    move-object v8, v7

    :goto_1
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v9

    if-ge v0, v9, :cond_8

    .line 97
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/mtl/log/a/c;

    .line 99
    nop

    .line 100
    iget-object v9, v8, Lcom/alibaba/mtl/log/a/c;->a:Ljava/util/ArrayList;

    if-eqz v9, :cond_6

    iget-object v9, v8, Lcom/alibaba/mtl/log/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 101
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    const-string v10, "eventId"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " in ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    move v10, v5

    :goto_2
    iget-object v11, v8, Lcom/alibaba/mtl/log/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_5

    .line 104
    if-eqz v10, :cond_4

    .line 105
    const-string v11, " , "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_4
    iget-object v11, v8, Lcom/alibaba/mtl/log/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 109
    :cond_5
    const-string v10, " ) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 112
    :cond_6
    move-object v9, v7

    :goto_3
    invoke-static {}, Lcom/alibaba/mtl/log/c/c;->a()Lcom/alibaba/mtl/log/c/c;

    move-result-object v10

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/mtl/log/upload/a;->h()I

    move-result v11

    invoke-virtual {v10, v9, v11}, Lcom/alibaba/mtl/log/c/c;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v9

    .line 113
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_7

    .line 114
    iget-object v8, v8, Lcom/alibaba/mtl/log/a/c;->U:Ljava/lang/String;

    .line 115
    nop

    .line 119
    move-object/from16 v19, v9

    move v9, v0

    move-object v0, v8

    move-object/from16 v8, v19

    goto :goto_4

    .line 96
    :cond_7
    add-int/lit8 v0, v0, 0x1

    move-object v8, v9

    goto/16 :goto_1

    .line 119
    :cond_8
    move v9, v0

    move-object v0, v7

    goto :goto_4

    :cond_9
    move v9, v0

    move-object v0, v7

    move-object v8, v0

    :goto_4
    if-eqz v8, :cond_a

    if-eqz v8, :cond_b

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_b

    .line 120
    :cond_a
    invoke-static {}, Lcom/alibaba/mtl/log/c/c;->a()Lcom/alibaba/mtl/log/c/c;

    move-result-object v8

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/mtl/log/upload/a;->h()I

    move-result v10

    invoke-virtual {v8, v7, v10}, Lcom/alibaba/mtl/log/c/c;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v8

    .line 124
    :cond_b
    if-eqz v8, :cond_14

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_c

    goto/16 :goto_9

    .line 128
    :cond_c
    invoke-direct {v1, v8}, Lcom/alibaba/mtl/log/upload/a;->b(Ljava/util/List;)I

    move-result v10

    .line 129
    invoke-direct {v1, v8}, Lcom/alibaba/mtl/log/upload/a;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v11

    .line 130
    if-eqz v11, :cond_13

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v12

    if-nez v12, :cond_d

    goto/16 :goto_8

    .line 135
    :cond_d
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 136
    invoke-static {}, Lcom/alibaba/mtl/log/a/a;->g()Ljava/lang/String;

    move-result-object v14

    .line 137
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_e

    .line 178
    invoke-static {}, Lcom/alibaba/mtl/log/d/k;->release()V

    .line 138
    return-void

    .line 141
    :cond_e
    :try_start_1
    invoke-static {v14, v7, v11}, Lcom/alibaba/mtl/log/d/u;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-direct {v1, v0, v11}, Lcom/alibaba/mtl/log/upload/a;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/mtl/log/d/a$a;

    move-result-object v0

    .line 143
    iget-boolean v7, v0, Lcom/alibaba/mtl/log/d/a$a;->I:Z

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 147
    sub-long v11, v14, v12

    .line 148
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-direct {v1, v13, v11, v12}, Lcom/alibaba/mtl/log/upload/a;->a(Ljava/lang/Boolean;J)I

    .line 149
    if-eqz v7, :cond_10

    .line 150
    invoke-static {}, Lcom/alibaba/mtl/log/c/c;->a()Lcom/alibaba/mtl/log/c/c;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/alibaba/mtl/log/c/c;->a(Ljava/util/List;)I

    move-result v0

    .line 151
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v10

    if-ge v0, v13, :cond_f

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/mtl/log/upload/a;->H()V

    .line 154
    :cond_f
    invoke-static {v8, v0}, Lcom/alibaba/mtl/log/b/a;->a(Ljava/util/List;I)V

    .line 155
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->s()V

    .line 156
    goto :goto_6

    .line 157
    :cond_10
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v10

    invoke-static {v13}, Lcom/alibaba/mtl/log/b/a;->d(I)V

    .line 158
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->t()V

    .line 159
    invoke-virtual {v0}, Lcom/alibaba/mtl/log/d/a$a;->g()Z

    move-result v13
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v13, :cond_11

    .line 178
    :goto_5
    invoke-static {}, Lcom/alibaba/mtl/log/d/k;->release()V

    goto/16 :goto_a

    .line 161
    :cond_11
    :try_start_2
    invoke-virtual {v0}, Lcom/alibaba/mtl/log/d/a$a;->h()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 162
    sput-boolean v2, Lcom/alibaba/mtl/log/upload/a;->H:Z

    goto :goto_5

    .line 167
    :cond_12
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 168
    const-string v0, "UploadTask"

    const/4 v13, 0x4

    new-array v6, v13, [Ljava/lang/Object;

    const-string v18, "logs.size():"

    aput-object v18, v6, v5

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v2

    const-string v8, " selfMonitorLogCount:"

    const/16 v18, 0x2

    aput-object v8, v6, v18

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x3

    aput-object v8, v6, v10

    invoke-static {v0, v6}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    const-string v0, "UploadTask"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const-string v8, "upload isSendSuccess:"

    aput-object v8, v6, v5

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, " consume:"

    aput-object v7, v6, v18

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v6, v8

    const-string v7, " delete consume:"

    aput-object v7, v6, v13

    const/4 v7, 0x5

    sub-long v10, v16, v14

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v6}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    :try_start_3
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v6, 0x1388

    invoke-virtual {v0, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    goto :goto_7

    .line 172
    :catch_0
    move-exception v0

    .line 173
    :try_start_4
    const-string v6, "UploadTask"

    const-string v7, "thread sleep interrupted"

    invoke-static {v6, v7, v0}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    .line 178
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/alibaba/mtl/log/d/k;->release()V

    throw v0

    .line 176
    :catch_1
    move-exception v0

    .line 178
    :goto_7
    invoke-static {}, Lcom/alibaba/mtl/log/d/k;->release()V

    .line 179
    nop

    .line 85
    add-int/lit8 v4, v4, 0x1

    move v0, v9

    goto/16 :goto_0

    .line 131
    :cond_13
    :goto_8
    sput-boolean v5, Lcom/alibaba/mtl/log/upload/a;->G:Z

    .line 132
    goto :goto_a

    .line 125
    :cond_14
    :goto_9
    sput-boolean v5, Lcom/alibaba/mtl/log/upload/a;->G:Z

    .line 126
    nop

    .line 181
    :cond_15
    :goto_a
    sput-boolean v5, Lcom/alibaba/mtl/log/upload/a;->G:Z

    .line 182
    invoke-static {}, Lcom/alibaba/mtl/log/d/k;->release()V

    .line 183
    return-void

    .line 78
    :cond_16
    return-void
.end method

.method private a(Ljava/lang/Boolean;J)I
    .locals 5

    .line 241
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 242
    iget p1, p0, Lcom/alibaba/mtl/log/upload/a;->C:I

    return p1

    .line 244
    :cond_0
    iget v0, p0, Lcom/alibaba/mtl/log/upload/a;->D:I

    .line 245
    int-to-float v0, v0

    long-to-float v1, p2

    div-float/2addr v0, v1

    .line 247
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 248
    const-wide/32 v3, 0xafc8

    cmp-long p1, p2, v3

    if-lez p1, :cond_1

    .line 249
    iget p1, p0, Lcom/alibaba/mtl/log/upload/a;->C:I

    return p1

    .line 251
    :cond_1
    const p1, 0x472fc800    # 45000.0f

    mul-float/2addr p1, v0

    float-to-double p1, p1

    .line 252
    iget p3, p0, Lcom/alibaba/mtl/log/upload/a;->a:F

    float-to-double v3, p3

    div-double/2addr p1, v3

    sget p3, Lcom/alibaba/mtl/log/upload/a;->B:I

    int-to-double v3, p3

    sub-double/2addr p1, v3

    double-to-int p1, p1

    iput p1, p0, Lcom/alibaba/mtl/log/upload/a;->C:I

    .line 253
    goto :goto_0

    .line 255
    :cond_2
    iget p1, p0, Lcom/alibaba/mtl/log/upload/a;->C:I

    div-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/mtl/log/upload/a;->C:I

    .line 256
    sget p1, Lcom/alibaba/mtl/log/upload/a;->B:I

    add-int/2addr p1, v2

    sput p1, Lcom/alibaba/mtl/log/upload/a;->B:I

    .line 258
    :goto_0
    iget p1, p0, Lcom/alibaba/mtl/log/upload/a;->C:I

    const/4 p2, 0x0

    if-ge p1, v2, :cond_3

    .line 259
    iput v2, p0, Lcom/alibaba/mtl/log/upload/a;->C:I

    .line 260
    sput p2, Lcom/alibaba/mtl/log/upload/a;->B:I

    goto :goto_1

    .line 261
    :cond_3
    iget p1, p0, Lcom/alibaba/mtl/log/upload/a;->C:I

    const/16 p3, 0x15e

    if-le p1, p3, :cond_4

    .line 262
    iput p3, p0, Lcom/alibaba/mtl/log/upload/a;->C:I

    .line 264
    :cond_4
    :goto_1
    const-string p1, "UploadTask"

    new-array p3, v1, [Ljava/lang/Object;

    const-string v0, "winsize:"

    aput-object v0, p3, p2

    iget p2, p0, Lcom/alibaba/mtl/log/upload/a;->C:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v2

    invoke-static {p1, p3}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    iget p1, p0, Lcom/alibaba/mtl/log/upload/a;->C:I

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)Lcom/alibaba/mtl/log/d/a$a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/mtl/log/d/a$a;"
        }
    .end annotation

    .line 219
    if-eqz p1, :cond_0

    .line 220
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v1, p1, p2, v0}, Lcom/alibaba/mtl/log/d/e;->a(ILjava/lang/String;Ljava/util/Map;Z)Lcom/alibaba/mtl/log/d/e$a;

    move-result-object p2

    .line 221
    iget-object p2, p2, Lcom/alibaba/mtl/log/d/e$a;->data:[B

    .line 222
    const-string v2, "UploadTask"

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "url:"

    aput-object v4, v3, v0

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    if-eqz p2, :cond_0

    .line 224
    const/4 p1, 0x0

    .line 226
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    nop

    .line 230
    move-object p1, v2

    goto :goto_0

    .line 227
    :catch_0
    move-exception p2

    .line 228
    invoke-virtual {p2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 230
    :goto_0
    if-eqz p1, :cond_0

    .line 231
    const-string p2, "UploadTask"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "result:"

    aput-object v2, v1, v0

    aput-object p1, v1, v4

    invoke-static {p2, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    invoke-static {p1}, Lcom/alibaba/mtl/log/d/a;->a(Ljava/lang/String;)Lcom/alibaba/mtl/log/d/a$a;

    move-result-object p1

    return-object p1

    .line 236
    :cond_0
    sget-object p1, Lcom/alibaba/mtl/log/d/a$a;->a:Lcom/alibaba/mtl/log/d/a$a;

    return-object p1
.end method

.method private a(Lcom/alibaba/mtl/log/model/a;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/mtl/log/model/a;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 327
    iget-object p1, p1, Lcom/alibaba/mtl/log/model/a;->X:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/mtl/log/a/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 328
    return-object p1
.end method

.method private a(Ljava/util/List;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/mtl/log/model/a;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 269
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 272
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 273
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 274
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/mtl/log/model/a;

    invoke-direct {p0, v3}, Lcom/alibaba/mtl/log/upload/a;->a(Lcom/alibaba/mtl/log/model/a;)Ljava/util/List;

    move-result-object v3

    .line 275
    if-eqz v3, :cond_2

    .line 276
    move v4, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 277
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StringBuilder;

    .line 278
    if-nez v5, :cond_1

    .line 279
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 282
    :cond_1
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :goto_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/mtl/log/model/a;

    invoke-virtual {v6}, Lcom/alibaba/mtl/log/model/a;->i()Ljava/lang/String;

    move-result-object v6

    .line 285
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 273
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 289
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 290
    iput v1, p0, Lcom/alibaba/mtl/log/upload/a;->D:I

    .line 291
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 292
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/alibaba/mtl/log/upload/a;->a(Ljava/lang/String;)[B

    move-result-object v5

    .line 293
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget v4, p0, Lcom/alibaba/mtl/log/upload/a;->D:I

    array-length v5, v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/alibaba/mtl/log/upload/a;->D:I

    .line 295
    goto :goto_3

    .line 296
    :cond_4
    iget v0, p0, Lcom/alibaba/mtl/log/upload/a;->D:I

    int-to-float v0, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/alibaba/mtl/log/upload/a;->a:F

    .line 297
    const-string p1, "UploadTask"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "averagePackageSize:"

    aput-object v3, v0, v1

    iget v1, p0, Lcom/alibaba/mtl/log/upload/a;->a:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    return-object v2

    .line 270
    :cond_5
    :goto_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;)[B
    .locals 3

    .line 302
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 303
    nop

    .line 305
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 306
    :try_start_1
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 307
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    nop

    .line 313
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 311
    :catchall_0
    move-exception p1

    goto :goto_4

    .line 308
    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    .line 311
    :catchall_1
    move-exception p1

    move-object v2, v1

    goto :goto_4

    .line 308
    :catch_1
    move-exception p1

    .line 309
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 311
    if-eqz v1, :cond_0

    .line 313
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 315
    :goto_1
    goto :goto_2

    .line 314
    :catch_2
    move-exception p1

    goto :goto_1

    .line 318
    :cond_0
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string v1, "QrMgt8GGYI6T52ZY5AnhtxkLzb8egpFn3j5JELI8H6wtACbUnZ5cc3aYTsTRbmkAkRJeYbtx92LPBWm7nBO9UIl7y5i5MQNmUZNf5QENurR5tGyo7yJ2G0MBjWvy6iAtlAbacKP0SwOUeUWx5dsBdyhxa7Id1APtybSdDgicBDuNjI0mlZFUzZSS9dmN8lBD0WTVOMz0pRZbR3cysomRXOO1ghqjJdTcyDIxzpNAEszN8RMGjrzyU7Hjbmwi6YNK"

    invoke-static {p1, v1}, Lcom/alibaba/mtl/log/d/n;->a([BLjava/lang/String;)[B

    move-result-object p1

    .line 320
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 322
    goto :goto_3

    .line 321
    :catch_3
    move-exception v0

    .line 323
    :goto_3
    return-object p1

    .line 311
    :goto_4
    if-eqz v2, :cond_1

    .line 313
    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 315
    goto :goto_5

    .line 314
    :catch_4
    move-exception v0

    .line 315
    :cond_1
    :goto_5
    throw p1
.end method

.method private b(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/mtl/log/model/a;",
            ">;)I"
        }
    .end annotation

    .line 186
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 187
    return v0

    .line 189
    :cond_0
    nop

    .line 190
    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 191
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/mtl/log/model/a;

    iget-object v2, v2, Lcom/alibaba/mtl/log/model/a;->X:Ljava/lang/String;

    .line 192
    if-eqz v2, :cond_1

    .line 193
    const-string v3, "6005"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    add-int/lit8 v1, v1, 0x1

    .line 190
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_2
    return v1
.end method

.method private h()I
    .locals 2

    .line 202
    iget v0, p0, Lcom/alibaba/mtl/log/upload/a;->C:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 204
    invoke-static {}, Lcom/alibaba/mtl/log/d/l;->u()Ljava/lang/String;

    move-result-object v0

    .line 205
    const-string v1, "wifi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/mtl/log/upload/a;->C:I

    goto :goto_0

    .line 207
    :cond_0
    const-string v1, "4G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/mtl/log/upload/a;->C:I

    goto :goto_0

    .line 209
    :cond_1
    const-string v1, "3G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    const/16 v0, 0xc

    iput v0, p0, Lcom/alibaba/mtl/log/upload/a;->C:I

    goto :goto_0

    .line 212
    :cond_2
    const/16 v0, 0x8

    iput v0, p0, Lcom/alibaba/mtl/log/upload/a;->C:I

    .line 215
    :cond_3
    :goto_0
    iget v0, p0, Lcom/alibaba/mtl/log/upload/a;->C:I

    return v0
.end method

.method public static isRunning()Z
    .locals 1

    .line 59
    sget-boolean v0, Lcom/alibaba/mtl/log/upload/a;->G:Z

    return v0
.end method


# virtual methods
.method public abstract G()V
.end method

.method public abstract H()V
.end method

.method public run()V
    .locals 1

    .line 51
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/mtl/log/upload/a;->I()V

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/mtl/log/upload/a;->G()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 56
    :goto_0
    return-void
.end method
