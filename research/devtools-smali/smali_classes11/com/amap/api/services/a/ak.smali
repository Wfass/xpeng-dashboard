.class public Lcom/amap/api/services/a/ak;
.super Ljava/lang/Thread;
.source "DexDownLoad.java"

# interfaces
.implements Lcom/amap/api/services/a/bd$a;


# instance fields
.field private d:Ljava/lang/String;

.field private eX:Lcom/amap/api/services/a/al;

.field private eY:Lcom/amap/api/services/a/bd;

.field private eZ:Lcom/amap/api/services/a/l;

.field private fa:Ljava/io/RandomAccessFile;

.field private fb:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/a/al;Lcom/amap/api/services/a/l;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 76
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ak;->fb:Landroid/content/Context;

    .line 77
    iput-object p3, p0, Lcom/amap/api/services/a/ak;->eZ:Lcom/amap/api/services/a/l;

    .line 78
    if-nez p2, :cond_0

    .line 82
    return-void

    .line 84
    :cond_0
    iput-object p2, p0, Lcom/amap/api/services/a/ak;->eX:Lcom/amap/api/services/a/al;

    .line 85
    new-instance p2, Lcom/amap/api/services/a/bd;

    new-instance p3, Lcom/amap/api/services/a/ap;

    iget-object v0, p0, Lcom/amap/api/services/a/ak;->eX:Lcom/amap/api/services/a/al;

    invoke-direct {p3, v0}, Lcom/amap/api/services/a/ap;-><init>(Lcom/amap/api/services/a/al;)V

    invoke-direct {p2, p3}, Lcom/amap/api/services/a/bd;-><init>(Lcom/amap/api/services/a/bh;)V

    iput-object p2, p0, Lcom/amap/api/services/a/ak;->eY:Lcom/amap/api/services/a/bd;

    .line 86
    iget-object p2, p0, Lcom/amap/api/services/a/ak;->eX:Lcom/amap/api/services/a/al;

    iget-object p2, p2, Lcom/amap/api/services/a/al;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/amap/api/services/a/aq;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/a/ak;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 87
    :catch_0
    move-exception p1

    .line 88
    const-string p2, "DexDownLoad"

    const-string p3, "DexDownLoad()"

    invoke-static {p1, p2, p3}, Lcom/amap/api/services/a/aw;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :goto_0
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 61
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 62
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 1

    .line 250
    invoke-static {p1}, Lcom/amap/api/services/a/g;->s(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private a(Lcom/amap/api/services/a/x;Lcom/amap/api/services/a/av;Lcom/amap/api/services/a/al;)Z
    .locals 6

    .line 122
    iget-object v3, p3, Lcom/amap/api/services/a/al;->b:Ljava/lang/String;

    .line 123
    iget-object v4, p3, Lcom/amap/api/services/a/al;->c:Ljava/lang/String;

    .line 124
    iget-object v5, p3, Lcom/amap/api/services/a/al;->d:Ljava/lang/String;

    .line 125
    iget-object v2, p3, Lcom/amap/api/services/a/al;->e:Ljava/lang/String;

    .line 128
    const-string p3, "errorstatus"

    invoke-virtual {p2}, Lcom/amap/api/services/a/av;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    .line 130
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/amap/api/services/a/ak;->fb:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/services/a/ak;->eZ:Lcom/amap/api/services/a/l;

    invoke-virtual {v1}, Lcom/amap/api/services/a/l;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/services/a/ak;->eZ:Lcom/amap/api/services/a/l;

    invoke-virtual {v2}, Lcom/amap/api/services/a/l;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/aq;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    .line 133
    iget-object p2, p0, Lcom/amap/api/services/a/ak;->fb:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/services/a/ak;->eZ:Lcom/amap/api/services/a/l;

    invoke-static {p2, p1, v0}, Lcom/amap/api/services/a/aq;->a(Landroid/content/Context;Lcom/amap/api/services/a/x;Lcom/amap/api/services/a/l;)Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 136
    return p3

    .line 140
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/amap/api/services/a/ao;->bq()Lcom/amap/api/services/a/ao;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/api/services/a/ak;->fb:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/services/a/ak;->eZ:Lcom/amap/api/services/a/l;

    invoke-virtual {p1, p2, v0}, Lcom/amap/api/services/a/ao;->e(Landroid/content/Context;Lcom/amap/api/services/a/l;)Lcom/amap/api/services/a/an;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto :goto_0

    .line 141
    :catch_0
    move-exception p1

    .line 142
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 146
    :cond_1
    :goto_0
    return p3

    .line 151
    :cond_2
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/amap/api/services/a/ak;->d:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_3

    .line 154
    const/4 p1, 0x0

    return p1

    .line 159
    :cond_3
    iget-object p2, p0, Lcom/amap/api/services/a/ak;->fb:Landroid/content/Context;

    invoke-static {p2, v3, v4}, Lcom/amap/api/services/a/aq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3, v4, v5}, Lcom/amap/api/services/a/av;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class v0, Lcom/amap/api/services/a/av;

    invoke-virtual {p1, p2, v0}, Lcom/amap/api/services/a/x;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    .line 162
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_4

    .line 163
    return p3

    .line 169
    :cond_4
    :try_start_1
    iget-object p2, p0, Lcom/amap/api/services/a/ak;->fb:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/services/a/ak;->eZ:Lcom/amap/api/services/a/l;

    invoke-virtual {v0}, Lcom/amap/api/services/a/l;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v3, v0}, Lcom/amap/api/services/a/aq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    new-instance p2, Lcom/amap/api/services/a/av$a;

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/services/a/av$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "used"

    invoke-virtual {p2, v0}, Lcom/amap/api/services/a/av$a;->J(Ljava/lang/String;)Lcom/amap/api/services/a/av$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amap/api/services/a/av$a;->bt()Lcom/amap/api/services/a/av;

    move-result-object p2

    .line 173
    iget-object v0, p0, Lcom/amap/api/services/a/ak;->fb:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/services/a/ak;->eZ:Lcom/amap/api/services/a/l;

    iget-object v2, p0, Lcom/amap/api/services/a/ak;->d:Ljava/lang/String;

    invoke-static {v0, p1, v1, p2, v2}, Lcom/amap/api/services/a/aq;->a(Landroid/content/Context;Lcom/amap/api/services/a/x;Lcom/amap/api/services/a/l;Lcom/amap/api/services/a/av;Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/amap/api/services/a/ao;->bq()Lcom/amap/api/services/a/ao;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/api/services/a/ak;->fb:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/services/a/ak;->eZ:Lcom/amap/api/services/a/l;

    invoke-virtual {p1, p2, v0}, Lcom/amap/api/services/a/ao;->e(Landroid/content/Context;Lcom/amap/api/services/a/l;)Lcom/amap/api/services/a/an;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    goto :goto_1

    .line 177
    :catch_1
    move-exception p1

    .line 179
    const-string p2, "DexDownLoad"

    const-string v0, "processDownloadedFile()"

    invoke-static {p1, p2, v0}, Lcom/amap/api/services/a/aw;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_1
    return p3
.end method

.method private d()Z
    .locals 5

    .line 193
    new-instance v0, Lcom/amap/api/services/a/x;

    iget-object v1, p0, Lcom/amap/api/services/a/ak;->fb:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/services/a/at;->br()Lcom/amap/api/services/a/at;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/a/x;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/w;)V

    .line 195
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/services/a/ak;->eX:Lcom/amap/api/services/a/al;

    iget-object v2, v2, Lcom/amap/api/services/a/al;->b:Ljava/lang/String;

    const-string v3, "used"

    .line 196
    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/aq$a;->a(Lcom/amap/api/services/a/x;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 198
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 199
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/services/a/av;

    .line 200
    invoke-virtual {v2}, Lcom/amap/api/services/a/av;->d()Ljava/lang/String;

    move-result-object v2

    .line 201
    iget-object v3, p0, Lcom/amap/api/services/a/ak;->eX:Lcom/amap/api/services/a/al;

    iget-object v3, v3, Lcom/amap/api/services/a/al;->d:Ljava/lang/String;

    .line 202
    invoke-static {v2, v3}, Lcom/amap/api/services/a/aw;->q(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v2, :cond_0

    .line 203
    const/4 v0, 0x1

    return v0

    .line 210
    :cond_0
    goto :goto_0

    .line 207
    :catch_0
    move-exception v2

    .line 209
    const-string v3, "DexDownLoad"

    const-string v4, "isDownloaded()"

    invoke-static {v2, v3, v4}, Lcom/amap/api/services/a/aw;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_0
    iget-object v2, p0, Lcom/amap/api/services/a/ak;->eX:Lcom/amap/api/services/a/al;

    iget-object v2, v2, Lcom/amap/api/services/a/al;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/amap/api/services/a/aq$a;->a(Lcom/amap/api/services/a/x;Ljava/lang/String;)Lcom/amap/api/services/a/av;

    move-result-object v2

    .line 212
    if-eqz v2, :cond_1

    .line 215
    iget-object v1, p0, Lcom/amap/api/services/a/ak;->eX:Lcom/amap/api/services/a/al;

    invoke-direct {p0, v0, v2, v1}, Lcom/amap/api/services/a/ak;->a(Lcom/amap/api/services/a/x;Lcom/amap/api/services/a/av;Lcom/amap/api/services/a/al;)Z

    move-result v0

    return v0

    .line 219
    :cond_1
    return v1
.end method

.method private e()Z
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/amap/api/services/a/ak;->eZ:Lcom/amap/api/services/a/l;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 229
    return v1

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/a/ak;->eZ:Lcom/amap/api/services/a/l;

    invoke-virtual {v0}, Lcom/amap/api/services/a/l;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/services/a/ak;->eX:Lcom/amap/api/services/a/al;

    iget-object v2, v2, Lcom/amap/api/services/a/al;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/services/a/ak;->eZ:Lcom/amap/api/services/a/l;

    invoke-virtual {v0}, Lcom/amap/api/services/a/l;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/services/a/ak;->eX:Lcom/amap/api/services/a/al;

    iget-object v2, v2, Lcom/amap/api/services/a/al;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method private f()Z
    .locals 2

    .line 240
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Lcom/amap/api/services/a/ak;->eX:Lcom/amap/api/services/a/al;

    iget v1, v1, Lcom/amap/api/services/a/al;->g:I

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Lcom/amap/api/services/a/ak;->eX:Lcom/amap/api/services/a/al;

    iget v1, v1, Lcom/amap/api/services/a/al;->f:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private g()Z
    .locals 4

    .line 267
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/services/a/ak;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/services/a/ak;->d()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/services/a/ak;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/services/a/ak;->fb:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/amap/api/services/a/ak;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/amap/api/services/a/ak;->fb:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/ak;->eZ:Lcom/amap/api/services/a/l;

    invoke-virtual {v2}, Lcom/amap/api/services/a/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amap/api/services/a/aq;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    const/4 v0, 0x1

    return v0

    .line 271
    :cond_0
    return v0

    .line 272
    :catch_0
    move-exception v1

    .line 273
    const-string v2, "DexDownLoad"

    const-string v3, "isNeedDownload()"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/aw;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/services/a/ak;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    const-string v1, "DexDownLoad"

    const-string v2, "startDownload()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/aw;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 311
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/services/a/ak;->fa:Ljava/io/RandomAccessFile;

    if-nez p1, :cond_0

    .line 312
    return-void

    .line 314
    :cond_0
    iget-object p1, p0, Lcom/amap/api/services/a/ak;->fa:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    goto :goto_0

    .line 316
    :catch_0
    move-exception p1

    .line 317
    const-string v0, "DexDownLoad"

    const-string v1, "onException()"

    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/aw;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :goto_0
    return-void
.end method

.method public a([BJ)V
    .locals 3

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ak;->fa:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1

    .line 287
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/services/a/ak;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 289
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 290
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 292
    :cond_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amap/api/services/a/ak;->fa:Ljava/io/RandomAccessFile;

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/a/ak;->fa:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 296
    iget-object p2, p0, Lcom/amap/api/services/a/ak;->fa:Ljava/io/RandomAccessFile;

    invoke-virtual {p2, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    goto :goto_0

    .line 298
    :catch_0
    move-exception p1

    .line 301
    const-string p2, "DexDownLoad"

    const-string p3, "onDownload()"

    invoke-static {p1, p2, p3}, Lcom/amap/api/services/a/aw;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :goto_0
    return-void
.end method

.method public b()V
    .locals 10

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ak;->fa:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v0, :cond_0

    .line 328
    return-void

    .line 331
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/services/a/ak;->fa:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 335
    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    .line 334
    :try_start_2
    const-string v1, "DexDownLoad"

    const-string v2, "onFinish3"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/aw;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/a/ak;->eX:Lcom/amap/api/services/a/al;

    invoke-virtual {v0}, Lcom/amap/api/services/a/al;->b()Ljava/lang/String;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/amap/api/services/a/ak;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/amap/api/services/a/aq;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/amap/api/services/a/ak;->eX:Lcom/amap/api/services/a/al;

    invoke-virtual {v1}, Lcom/amap/api/services/a/al;->c()Ljava/lang/String;

    move-result-object v7

    .line 348
    new-instance v8, Lcom/amap/api/services/a/x;

    iget-object v1, p0, Lcom/amap/api/services/a/ak;->fb:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/services/a/at;->br()Lcom/amap/api/services/a/at;

    move-result-object v2

    invoke-direct {v8, v1, v2}, Lcom/amap/api/services/a/x;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/w;)V

    .line 349
    new-instance v9, Lcom/amap/api/services/a/av$a;

    iget-object v1, p0, Lcom/amap/api/services/a/ak;->eX:Lcom/amap/api/services/a/al;

    iget-object v2, v1, Lcom/amap/api/services/a/al;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/amap/api/services/a/ak;->eX:Lcom/amap/api/services/a/al;

    iget-object v4, v1, Lcom/amap/api/services/a/al;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/amap/api/services/a/ak;->eX:Lcom/amap/api/services/a/al;

    iget-object v6, v1, Lcom/amap/api/services/a/al;->d:Ljava/lang/String;

    move-object v1, v9

    move-object v3, v0

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/services/a/av$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "copy"

    invoke-virtual {v9, v1}, Lcom/amap/api/services/a/av$a;->J(Ljava/lang/String;)Lcom/amap/api/services/a/av$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/a/av$a;->bt()Lcom/amap/api/services/a/av;

    move-result-object v1

    .line 351
    iget-object v2, p0, Lcom/amap/api/services/a/ak;->eX:Lcom/amap/api/services/a/al;

    iget-object v2, v2, Lcom/amap/api/services/a/al;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/services/a/ak;->eX:Lcom/amap/api/services/a/al;

    iget-object v3, v3, Lcom/amap/api/services/a/al;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/amap/api/services/a/ak;->eX:Lcom/amap/api/services/a/al;

    iget-object v4, v4, Lcom/amap/api/services/a/al;->d:Ljava/lang/String;

    invoke-static {v2, v3, v7, v4}, Lcom/amap/api/services/a/av;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v1, v2}, Lcom/amap/api/services/a/aq$a;->a(Lcom/amap/api/services/a/x;Lcom/amap/api/services/a/av;Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lcom/amap/api/services/a/ak;->fb:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/ak;->eX:Lcom/amap/api/services/a/al;

    iget-object v2, v2, Lcom/amap/api/services/a/al;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/amap/api/services/a/ak;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 359
    :try_start_3
    new-instance v9, Lcom/amap/api/services/a/av$a;

    iget-object v1, p0, Lcom/amap/api/services/a/ak;->fb:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/ak;->eX:Lcom/amap/api/services/a/al;

    iget-object v2, v2, Lcom/amap/api/services/a/al;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/services/a/ak;->eZ:Lcom/amap/api/services/a/l;

    invoke-virtual {v3}, Lcom/amap/api/services/a/l;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/aq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/amap/api/services/a/ak;->eX:Lcom/amap/api/services/a/al;

    iget-object v4, v1, Lcom/amap/api/services/a/al;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/amap/api/services/a/ak;->eX:Lcom/amap/api/services/a/al;

    iget-object v6, v1, Lcom/amap/api/services/a/al;->d:Ljava/lang/String;

    move-object v1, v9

    move-object v3, v0

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/services/a/av$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "used"

    invoke-virtual {v9, v0}, Lcom/amap/api/services/a/av$a;->J(Ljava/lang/String;)Lcom/amap/api/services/a/av$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/av$a;->bt()Lcom/amap/api/services/a/av;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/amap/api/services/a/ak;->fb:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/ak;->eZ:Lcom/amap/api/services/a/l;

    iget-object v3, p0, Lcom/amap/api/services/a/ak;->d:Ljava/lang/String;

    invoke-static {v1, v8, v2, v0, v3}, Lcom/amap/api/services/a/aq;->a(Landroid/content/Context;Lcom/amap/api/services/a/x;Lcom/amap/api/services/a/l;Lcom/amap/api/services/a/av;Ljava/lang/String;)V

    .line 362
    invoke-static {}, Lcom/amap/api/services/a/ao;->bq()Lcom/amap/api/services/a/ao;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/services/a/ak;->fb:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/services/a/ak;->eZ:Lcom/amap/api/services/a/l;

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/services/a/ao;->e(Landroid/content/Context;Lcom/amap/api/services/a/l;)Lcom/amap/api/services/a/an;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 370
    goto :goto_1

    .line 366
    :catch_1
    move-exception v0

    .line 368
    :try_start_4
    const-string v1, "DexDownLoad"

    const-string v2, "onFinish1"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/aw;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 371
    :goto_1
    goto :goto_2

    .line 373
    :cond_1
    :try_start_5
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/services/a/ak;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 378
    goto :goto_2

    .line 375
    :catch_2
    move-exception v0

    .line 377
    :try_start_6
    const-string v1, "DexDownLoad"

    const-string v2, "onFinish"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/aw;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 383
    :goto_2
    goto :goto_3

    .line 380
    :catch_3
    move-exception v0

    .line 381
    const-string v1, "DexDownLoad"

    const-string v2, "onFinish()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/aw;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :goto_3
    return-void
.end method

.method public c()V
    .locals 0

    .line 393
    return-void
.end method

.method public run()V
    .locals 3

    .line 102
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/services/a/ak;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/amap/api/services/a/ak;->eY:Lcom/amap/api/services/a/bd;

    invoke-virtual {v0, p0}, Lcom/amap/api/services/a/bd;->a(Lcom/amap/api/services/a/bd$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 107
    const-string v1, "DexDownLoad"

    const-string v2, "run()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/aw;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_0
    return-void
.end method
