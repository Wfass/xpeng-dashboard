.class public Lcom/amap/api/services/a/s;
.super Lcom/amap/api/services/a/v;
.source "AnrLogProcessor.java"


# static fields
.field private static a:Z


# instance fields
.field private b:[Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/services/a/s;->a:Z

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/v;-><init>(I)V

    .line 66
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/services/a/s;->b:[Ljava/lang/String;

    .line 67
    const/4 p1, 0x0

    iput p1, p0, Lcom/amap/api/services/a/s;->c:I

    .line 68
    iput-boolean p1, p0, Lcom/amap/api/services/a/s;->d:Z

    .line 69
    iput p1, p0, Lcom/amap/api/services/a/s;->e:I

    .line 31
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 184
    :try_start_0
    iget v0, p0, Lcom/amap/api/services/a/s;->c:I

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/a/s;->c:I

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/a/s;->b:[Ljava/lang/String;

    iget v1, p0, Lcom/amap/api/services/a/s;->c:I

    aput-object p1, v0, v1

    .line 188
    iget p1, p0, Lcom/amap/api/services/a/s;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/amap/api/services/a/s;->c:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    goto :goto_0

    .line 189
    :catch_0
    move-exception p1

    .line 190
    const-string v0, "ANRWriter"

    const-string v1, "addData"

    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_0
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 4

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    :try_start_0
    iget v1, p0, Lcom/amap/api/services/a/s;->c:I

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 165
    const/16 v2, 0x9

    if-le v1, v2, :cond_0

    .line 166
    goto :goto_1

    .line 168
    :cond_0
    iget-object v2, p0, Lcom/amap/api/services/a/s;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_1
    :goto_1
    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lcom/amap/api/services/a/s;->c:I

    if-ge v1, v2, :cond_2

    .line 171
    iget-object v2, p0, Lcom/amap/api/services/a/s;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 177
    :cond_2
    goto :goto_3

    .line 173
    :catch_0
    move-exception v1

    .line 175
    const-string v2, "ANRWriter"

    const-string v3, "getLogInfo"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Z
    .locals 5

    .line 37
    invoke-static {p1}, Lcom/amap/api/services/a/g;->s(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    sget-boolean v0, Lcom/amap/api/services/a/s;->a:Z

    if-eqz v0, :cond_2

    .line 39
    sput-boolean v2, Lcom/amap/api/services/a/s;->a:Z

    .line 40
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    monitor-enter v0

    .line 42
    :try_start_0
    new-instance v3, Lcom/amap/api/services/a/ai;

    invoke-direct {v3, p1}, Lcom/amap/api/services/a/ai;-><init>(Landroid/content/Context;)V

    .line 45
    nop

    .line 46
    invoke-virtual {v3}, Lcom/amap/api/services/a/ai;->bp()Lcom/amap/api/services/a/aj;

    move-result-object p1

    .line 48
    if-nez p1, :cond_0

    .line 49
    monitor-exit v0

    return v1

    .line 52
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/services/a/aj;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    invoke-virtual {p1, v2}, Lcom/amap/api/services/a/aj;->c(Z)V

    .line 54
    invoke-virtual {v3, p1}, Lcom/amap/api/services/a/ai;->a(Lcom/amap/api/services/a/aj;)V

    .line 55
    monitor-exit v0

    return v1

    .line 57
    :cond_1
    monitor-exit v0

    return v2

    .line 59
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 61
    :cond_2
    return v2
.end method

.method protected h(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/services/a/l;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 74
    nop

    .line 75
    nop

    .line 77
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/anr/traces.txt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    nop

    .line 129
    nop

    .line 138
    nop

    .line 140
    nop

    .line 150
    nop

    .line 79
    return-object v0

    .line 81
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 82
    :try_start_1
    new-instance v1, Lcom/amap/api/services/a/az;

    sget-object v3, Lcom/amap/api/services/a/ba;->fE:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Lcom/amap/api/services/a/az;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    nop

    .line 86
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Lcom/amap/api/services/a/az;->a()Ljava/lang/String;

    move-result-object v5

    .line 87
    const-string v6, "pid"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    .line 88
    :goto_1
    const-string v4, "\"main\""

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 89
    invoke-virtual {v1}, Lcom/amap/api/services/a/az;->a()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 91
    :cond_1
    nop

    .line 94
    move v4, v7

    :cond_2
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 95
    nop

    .line 97
    move v4, v3

    :cond_3
    if-eqz v4, :cond_7

    .line 98
    invoke-direct {p0, v5}, Lcom/amap/api/services/a/s;->b(Ljava/lang/String;)V

    .line 99
    iget v6, p0, Lcom/amap/api/services/a/s;->e:I

    const/4 v8, 0x5

    if-ne v6, v8, :cond_4

    .line 100
    goto :goto_3

    .line 102
    :cond_4
    iget-boolean v6, p0, Lcom/amap/api/services/a/s;->d:Z

    if-nez v6, :cond_6

    .line 103
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amap/api/services/a/l;

    .line 104
    nop

    .line 105
    invoke-virtual {v7}, Lcom/amap/api/services/a/l;->bl()[Ljava/lang/String;

    move-result-object v8

    .line 104
    invoke-static {v8, v5}, Lcom/amap/api/services/a/s;->b([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/amap/api/services/a/s;->d:Z

    .line 106
    iget-boolean v8, p0, Lcom/amap/api/services/a/s;->d:Z

    if-eqz v8, :cond_5

    .line 107
    invoke-virtual {p0, v7}, Lcom/amap/api/services/a/s;->a(Lcom/amap/api/services/a/l;)V

    .line 109
    :cond_5
    goto :goto_2

    .line 111
    :cond_6
    iget v5, p0, Lcom/amap/api/services/a/s;->e:I

    add-int/2addr v5, v7

    iput v5, p0, Lcom/amap/api/services/a/s;->e:I
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 117
    :cond_7
    goto :goto_0

    .line 124
    :catch_0
    move-exception p1

    goto :goto_7

    .line 120
    :catch_1
    move-exception p1

    goto/16 :goto_10

    .line 115
    :catch_2
    move-exception p1

    .line 116
    nop

    .line 120
    :goto_3
    nop

    .line 129
    nop

    .line 130
    :try_start_3
    invoke-virtual {v1}, Lcom/amap/api/services/a/az;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    .line 135
    :catch_3
    move-exception p1

    .line 136
    const-string v1, "ANRWriter"

    const-string v3, "initLog2"

    invoke-static {p1, v1, v3}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 132
    :catch_4
    move-exception p1

    .line 133
    const-string v1, "ANRWriter"

    const-string v3, "initLog1"

    invoke-static {p1, v1, v3}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_4
    nop

    .line 140
    :goto_5
    nop

    .line 141
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_6

    .line 147
    :catch_5
    move-exception p1

    .line 148
    const-string v1, "ANRWriter"

    const-string v2, "initLog4"

    invoke-static {p1, v1, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 143
    :catch_6
    move-exception p1

    .line 145
    const-string v1, "ANRWriter"

    const-string v2, "initLog3"

    invoke-static {p1, v1, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :goto_6
    goto/16 :goto_14

    .line 128
    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_b

    .line 124
    :catch_7
    move-exception p1

    move-object v1, v0

    goto :goto_7

    .line 120
    :catch_8
    move-exception p1

    move-object v1, v0

    goto/16 :goto_10

    .line 128
    :catchall_1
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    goto :goto_b

    .line 124
    :catch_9
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    .line 125
    :goto_7
    :try_start_5
    const-string v3, "ANRWriter"

    const-string v4, "initLog"

    invoke-static {p1, v3, v4}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 127
    nop

    .line 129
    if-eqz v1, :cond_8

    .line 130
    :try_start_6
    invoke-virtual {v1}, Lcom/amap/api/services/a/az;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_a

    goto :goto_8

    .line 135
    :catch_a
    move-exception p1

    .line 136
    const-string v1, "ANRWriter"

    const-string v3, "initLog2"

    invoke-static {p1, v1, v3}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 132
    :catch_b
    move-exception p1

    .line 133
    const-string v1, "ANRWriter"

    const-string v3, "initLog1"

    invoke-static {p1, v1, v3}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_8
    :goto_8
    nop

    .line 140
    :goto_9
    if-eqz v2, :cond_9

    .line 141
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_c

    goto :goto_a

    .line 147
    :catch_c
    move-exception p1

    .line 148
    const-string v1, "ANRWriter"

    const-string v2, "initLog4"

    invoke-static {p1, v1, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 143
    :catch_d
    move-exception p1

    .line 145
    const-string v1, "ANRWriter"

    const-string v2, "initLog3"

    invoke-static {p1, v1, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_9
    :goto_a
    goto/16 :goto_14

    .line 128
    :catchall_2
    move-exception p1

    .line 129
    :goto_b
    if-eqz v1, :cond_a

    .line 130
    :try_start_8
    invoke-virtual {v1}, Lcom/amap/api/services/a/az;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_e

    goto :goto_c

    .line 135
    :catch_e
    move-exception v0

    .line 136
    const-string v1, "ANRWriter"

    const-string v3, "initLog2"

    invoke-static {v0, v1, v3}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 132
    :catch_f
    move-exception v0

    .line 133
    const-string v1, "ANRWriter"

    const-string v3, "initLog1"

    invoke-static {v0, v1, v3}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_a
    :goto_c
    nop

    .line 140
    :goto_d
    if-eqz v2, :cond_b

    .line 141
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_10

    goto :goto_e

    .line 147
    :catch_10
    move-exception v0

    .line 148
    const-string v1, "ANRWriter"

    const-string v2, "initLog4"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 143
    :catch_11
    move-exception v0

    .line 145
    const-string v1, "ANRWriter"

    const-string v2, "initLog3"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_b
    :goto_e
    nop

    .line 128
    :goto_f
    throw p1

    .line 120
    :catch_12
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    .line 124
    :goto_10
    nop

    .line 129
    if-eqz v1, :cond_c

    .line 130
    :try_start_a
    invoke-virtual {v1}, Lcom/amap/api/services/a/az;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_14
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_13

    goto :goto_11

    .line 135
    :catch_13
    move-exception p1

    .line 136
    const-string v1, "ANRWriter"

    const-string v3, "initLog2"

    invoke-static {p1, v1, v3}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 132
    :catch_14
    move-exception p1

    .line 133
    const-string v1, "ANRWriter"

    const-string v3, "initLog1"

    invoke-static {p1, v1, v3}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_c
    :goto_11
    nop

    .line 140
    :goto_12
    if-eqz v2, :cond_d

    .line 141
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_16
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_15

    goto :goto_13

    .line 147
    :catch_15
    move-exception p1

    .line 148
    const-string v1, "ANRWriter"

    const-string v2, "initLog4"

    invoke-static {p1, v1, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 143
    :catch_16
    move-exception p1

    .line 145
    const-string v1, "ANRWriter"

    const-string v2, "initLog3"

    invoke-static {p1, v1, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_d
    :goto_13
    nop

    .line 152
    :goto_14
    nop

    .line 153
    iget-boolean p1, p0, Lcom/amap/api/services/a/s;->d:Z

    if-eqz p1, :cond_e

    .line 154
    invoke-direct {p0}, Lcom/amap/api/services/a/s;->d()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 156
    :cond_e
    return-object v0
.end method
