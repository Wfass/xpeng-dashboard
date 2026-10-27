.class public Lcom/xiaopeng/musicradio/model/bluetooth/f;
.super Ljava/lang/Object;
.source "MetaDataManager.java"


# static fields
.field public static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:[Ljava/lang/String;


# instance fields
.field private final c:Lcom/xiaopeng/musicradio/model/bluetooth/e;

.field private final d:Lcom/xiaopeng/musicradio/model/bluetooth/e;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 33
    new-instance v0, Lcom/xiaopeng/musicradio/model/bluetooth/MetaDataManager$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/MetaDataManager$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a:Ljava/util/ArrayList;

    const-string v1, "--"

    const-string v2, " - "

    const-string v3, "-"

    const-string v4, " - "

    const-string v5, " \u2014 "

    const-string v6, "/"

    .line 41
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/xiaopeng/musicradio/model/bluetooth/NoDuplicateList;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/NoDuplicateList;-><init>()V

    .line 50
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 51
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/xiaopeng/musicradio/model/bluetooth/f;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/xiaopeng/musicradio/model/bluetooth/e;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/f;->c:Lcom/xiaopeng/musicradio/model/bluetooth/e;

    .line 55
    new-instance v0, Lcom/xiaopeng/musicradio/model/bluetooth/e;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/f;->d:Lcom/xiaopeng/musicradio/model/bluetooth/e;

    .line 61
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->music_unknow_song:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/f;->e:Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->music_unknow_singer:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/f;->f:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a()V

    return-void
.end method

.method private declared-synchronized b(Lcom/xiaopeng/musicradio/model/bluetooth/e;)Z
    .locals 12

    monitor-enter p0

    .line 87
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->c(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    monitor-exit p0

    return v1

    :cond_1
    :try_start_1
    const-string v0, "MetaDataManager"

    const-string v2, "isNotEqualWithPreviousInternal2 old:%s, new:%s"

    const/4 v3, 0x2

    .line 91
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/model/bluetooth/f;->c:Lcom/xiaopeng/musicradio/model/bluetooth/e;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object v7

    .line 93
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object v8

    .line 94
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->c()Ljava/lang/String;

    move-result-object v11

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/f;->c:Lcom/xiaopeng/musicradio/model/bluetooth/e;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/bluetooth/f;->c:Lcom/xiaopeng/musicradio/model/bluetooth/e;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object v2

    .line 104
    iget-object v3, p0, Lcom/xiaopeng/musicradio/model/bluetooth/f;->c:Lcom/xiaopeng/musicradio/model/bluetooth/e;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->d()J

    move-object v6, p0

    move-object v9, v0

    move-object v10, v2

    .line 106
    invoke-virtual/range {v6 .. v11}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 108
    aget-object v4, v3, v1

    iget-object v6, p0, Lcom/xiaopeng/musicradio/model/bluetooth/f;->e:Ljava/lang/String;

    invoke-direct {p0, v4, v6}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 109
    aget-object v3, v3, v5

    iget-object v6, p0, Lcom/xiaopeng/musicradio/model/bluetooth/f;->f:Ljava/lang/String;

    invoke-direct {p0, v3, v6}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 111
    iget-object v6, p0, Lcom/xiaopeng/musicradio/model/bluetooth/f;->e:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/xiaopeng/musicradio/model/bluetooth/f;->f:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v4, v0

    move-object v3, v2

    .line 122
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    .line 123
    monitor-exit p0

    return v1

    .line 126
    :cond_3
    :try_start_2
    invoke-virtual {p0, v4}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 127
    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "MetaDataManager"

    .line 128
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isNotEqualWithPreviousInternal2: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",,,,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",,,,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",,,,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    .line 131
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 132
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    .line 133
    monitor-exit p0

    return v1

    .line 137
    :cond_4
    :try_start_3
    invoke-virtual {p1, v4}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    .line 138
    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b(Ljava/lang/String;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    .line 139
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->d()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a(J)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/f;->c:Lcom/xiaopeng/musicradio/model/bluetooth/e;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a(Lcom/xiaopeng/musicradio/model/bluetooth/e;)V

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/f;->d:Lcom/xiaopeng/musicradio/model/bluetooth/e;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a(Lcom/xiaopeng/musicradio/model/bluetooth/e;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    monitor-exit p0

    return v5

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 341
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p2

    :cond_0
    return-object p1
.end method

.method private c(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "[\\t\\n\\r]"

    const-string v2, ""

    .line 179
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/f;->e:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "[\\t\\n\\r]"

    const-string v2, ""

    .line 187
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/f;->f:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/f;->c:Lcom/xiaopeng/musicradio/model/bluetooth/e;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->f()V

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/f;->c:Lcom/xiaopeng/musicradio/model/bluetooth/e;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/model/bluetooth/e;

    .line 347
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/f;->c:Lcom/xiaopeng/musicradio/model/bluetooth/e;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b(Ljava/lang/String;)Lcom/xiaopeng/musicradio/model/bluetooth/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/xiaopeng/musicradio/model/bluetooth/e;)Z
    .locals 2

    .line 76
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->b(Lcom/xiaopeng/musicradio/model/bluetooth/e;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "MetaDataManager"

    const-string v1, "isNotEqualWithPrevious: "

    .line 78
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    .line 148
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 157
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    goto :goto_1

    .line 162
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->b(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-virtual {p0, p2, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->b(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 164
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    aget-object v1, p2, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    aget-object v0, p1, v1

    .line 165
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 168
    :cond_1
    aget-object v0, p1, v2

    const-string v3, ""

    const-string v4, " "

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aget-object v5, p2, v1

    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    aget-object p1, p1, v1

    .line 169
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aget-object p2, p2, v2

    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const/4 v6, 0x4

    .line 193
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v8, 0x1

    aput-object v2, v6, v8

    const/4 v9, 0x2

    aput-object v3, v6, v9

    const/4 v10, 0x3

    aput-object v4, v6, v10

    const-string v10, "processTitleAndArtist title:%s,artist:%s,previousTitle:%s,previousArtist:%s"

    invoke-static {v10, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v10, "MetaDataManager"

    invoke-static {v10, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-direct/range {p0 .. p1}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->c(Ljava/lang/String;)Z

    move-result v6

    invoke-direct {v0, v2}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->d(Ljava/lang/String;)Z

    move-result v11

    xor-int/2addr v6, v11

    .line 196
    invoke-virtual/range {p0 .. p1}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 197
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 199
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    xor-int/2addr v13, v8

    .line 200
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    xor-int/2addr v14, v8

    .line 202
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    xor-int/2addr v15, v8

    .line 203
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    xor-int/lit8 v16, v16, 0x1

    .line 205
    invoke-virtual {v0, v2, v12}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->b(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 206
    aget-object v9, v17, v7

    .line 207
    aget-object v2, v17, v8

    .line 209
    invoke-virtual {v0, v1, v11}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->b(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 210
    aget-object v17, v11, v7

    .line 211
    aget-object v11, v11, v8

    if-eqz v16, :cond_a

    .line 214
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 215
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move-object v1, v3

    move-object v2, v4

    goto/16 :goto_5

    .line 218
    :cond_2
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_5

    .line 222
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0

    .line 224
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, " - "

    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_0
    move-object v2, v9

    goto/16 :goto_5

    .line 228
    :cond_5
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 229
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    goto :goto_1

    .line 240
    :cond_6
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v1, v9

    goto/16 :goto_5

    .line 243
    :cond_7
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_1
    move-object v1, v2

    goto :goto_0

    :cond_8
    const-string v2, "/"

    .line 247
    invoke-static {v12, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto/16 :goto_4

    :cond_9
    move-object/from16 v1, p2

    :goto_2
    move-object v2, v1

    goto/16 :goto_5

    :cond_a
    if-eqz v6, :cond_e

    .line 254
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 256
    invoke-virtual {v0, v5}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 259
    invoke-virtual {v0, v5, v2}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->b(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 260
    aget-object v2, v1, v8

    .line 261
    aget-object v1, v1, v7

    move-object/from16 v18, v2

    move-object v2, v1

    move-object/from16 v1, v18

    goto :goto_5

    .line 263
    :cond_b
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v2, p2

    move-object v1, v5

    goto :goto_5

    :cond_c
    if-eqz v13, :cond_d

    if-eqz v15, :cond_d

    :goto_3
    goto :goto_2

    :cond_d
    if-eqz v14, :cond_11

    if-eqz v16, :cond_11

    move-object/from16 v1, p2

    goto :goto_3

    :cond_e
    if-eqz v15, :cond_11

    if-nez v14, :cond_f

    move-object v1, v11

    move-object/from16 v2, v17

    goto :goto_5

    .line 284
    :cond_f
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v2, p2

    move-object v1, v11

    goto :goto_5

    .line 286
    :cond_10
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v2, p2

    move-object/from16 v1, v17

    goto :goto_5

    :cond_11
    :goto_4
    move-object/from16 v2, p2

    :goto_5
    const/4 v3, 0x2

    .line 293
    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v7

    aput-object v2, v3, v8

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processTitleAndArtist: processed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public declared-synchronized b()Lcom/xiaopeng/musicradio/model/bluetooth/e;
    .locals 2

    monitor-enter p0

    .line 351
    :try_start_0
    new-instance v0, Lcom/xiaopeng/musicradio/model/bluetooth/e;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;-><init>()V

    .line 352
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/f;->c:Lcom/xiaopeng/musicradio/model/bluetooth/e;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a(Lcom/xiaopeng/musicradio/model/bluetooth/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 316
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 317
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 318
    sget-object v2, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 319
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 320
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 324
    :cond_1
    sget-object v2, Lcom/xiaopeng/musicradio/model/bluetooth/f;->b:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 325
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move-object v5, v1

    .line 330
    :goto_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v1

    .line 333
    :cond_4
    invoke-static {v5}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v1

    :cond_5
    move-object v1, v5

    :cond_6
    return-object v1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 302
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    .line 308
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    .line 309
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr v1, p2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    :cond_1
    :goto_0
    return-object v0
.end method
