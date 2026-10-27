.class public Lcom/alibaba/sdk/android/man/crashreporter/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/sdk/android/man/crashreporter/d/c;


# instance fields
.field private final MOTU_PATH:Ljava/lang/String;

.field private final TOMBSTONE_PATH:Ljava/lang/String;

.field private a:Landroid/content/Context;

.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "tombstone"

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/d/b;->TOMBSTONE_PATH:Ljava/lang/String;

    .line 25
    const-string v0, "motu"

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/d/b;->MOTU_PATH:Ljava/lang/String;

    .line 26
    const-string v0, ".stacktrace"

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/d/b;->t:Ljava/lang/String;

    .line 27
    const-string v0, "-waitsend"

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/d/b;->u:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/d/b;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/io/File;
    .locals 6

    .line 171
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/d/b;->a:Landroid/content/Context;

    const-string v1, "tombstone"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 176
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    nop

    .line 179
    :try_start_0
    const-string v1, ".stacktrace"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_1

    .line 181
    const-string v1, "%s/%s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    aput-object p1, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 183
    :cond_1
    const-string v1, "%s/%s%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    aput-object p1, v5, v3

    const-string p1, ".stacktrace"

    aput-object p1, v5, v4

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 185
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    nop

    .line 188
    return-object v0

    .line 190
    :catch_0
    move-exception p1

    .line 191
    const-string v0, "data build error."

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a()Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;
    .locals 1

    .line 283
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;
    .locals 4

    .line 238
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 242
    :cond_0
    nop

    .line 243
    nop

    .line 244
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 248
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :try_start_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/d/a/a;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v2

    .line 250
    instance-of v3, v2, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;

    if-eqz v3, :cond_1

    .line 251
    check-cast v2, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 258
    nop

    .line 259
    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/e/f;->a(Ljava/io/InputStream;)V

    goto :goto_1

    .line 253
    :cond_1
    nop

    .line 258
    nop

    .line 259
    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/e/f;->a(Ljava/io/InputStream;)V

    return-object v0

    .line 255
    :catch_0
    move-exception v2

    goto :goto_0

    .line 258
    :catchall_0
    move-exception p2

    move-object p1, v0

    goto :goto_2

    .line 255
    :catch_1
    move-exception p1

    move-object p1, v0

    .line 256
    :goto_0
    :try_start_2
    const-string v2, "Trying to load deduplication crash report but file not found."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->h(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 258
    if-eqz p1, :cond_2

    .line 259
    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/e/f;->a(Ljava/io/InputStream;)V

    .line 265
    :cond_2
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_3

    .line 266
    :try_start_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v2, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->times:Ljava/lang/Integer;

    .line 267
    invoke-static {v2, v1}, Lcom/alibaba/sdk/android/man/crashreporter/d/a/a;->a(Ljava/lang/Object;Ljava/io/File;)V

    .line 268
    const-string p1, "save deduplication file succ "

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 269
    return-object v2

    .line 271
    :catch_2
    move-exception p1

    .line 272
    const-string p2, "deduplicationFile build error."

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 273
    :cond_3
    goto :goto_3

    .line 258
    :catchall_1
    move-exception p2

    :goto_2
    if-eqz p1, :cond_4

    .line 259
    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/e/f;->a(Ljava/io/InputStream;)V

    :cond_4
    throw p2

    .line 275
    :cond_5
    :goto_3
    return-object v0

    .line 239
    :cond_6
    :goto_4
    const-string p1, "load file failure"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->h(Ljava/lang/String;)V

    .line 240
    return-object v0
.end method

.method public a(J)Ljava/lang/String;
    .locals 4

    .line 221
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/d/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/e/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 222
    const-string v1, "%s_%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, ""

    .line 223
    invoke-static {v0, v3}, Lcom/alibaba/sdk/android/man/crashreporter/e/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/e/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 224
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    .line 222
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/alibaba/sdk/android/man/crashreporter/global/BaseDataContent;)V
    .locals 0

    .line 286
    return-void
.end method

.method public a(Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;I)Z
    .locals 5

    .line 103
    iget-object v0, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->path:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 105
    return v1

    .line 108
    :cond_0
    const/4 p2, 0x0

    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/e/i;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 111
    :cond_1
    iget-object v0, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->path:Ljava/lang/String;

    .line 112
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 115
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-waitsend"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 117
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-waitsend"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->path:Ljava/lang/String;

    .line 118
    const-string p1, "file exists!"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 120
    return v1

    .line 124
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 127
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-waitsend"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    .line 129
    if-eqz v2, :cond_4

    .line 130
    iput-object v0, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->path:Ljava/lang/String;

    .line 131
    const-string p1, "file exists!"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    .line 132
    return v1

    .line 134
    :cond_4
    return p2

    .line 125
    :cond_5
    :goto_0
    return p2

    .line 109
    :cond_6
    :goto_1
    return p2
.end method

.method public a(I)[Ljava/lang/String;
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/d/b;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 45
    const-string p1, "Trying to load crash report but context is null."

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->h(Ljava/lang/String;)V

    .line 46
    return-object v1

    .line 49
    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 52
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/d/b;->a:Landroid/content/Context;

    const-string v1, "tombstone"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 53
    const-string v1, "%s/%s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "motu"

    aput-object p1, v0, v2

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/d/b;->a:Landroid/content/Context;

    const-string v1, ".stacktrace"

    invoke-static {v0, p1, v1}, Lcom/alibaba/sdk/android/man/crashreporter/d/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 57
    :cond_2
    return-object v1

    .line 50
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/d/b;->a:Landroid/content/Context;

    const-string v0, "tombstone"

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/d/a/a;->a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;
    .locals 5

    .line 65
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/d/b;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 66
    const-string p1, "Trying to load crash report but context is null."

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->h(Ljava/lang/String;)V

    .line 67
    return-object v1

    .line 69
    :cond_0
    nop

    .line 70
    nop

    .line 72
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alibaba/sdk/android/man/crashreporter/d/b;->a:Landroid/content/Context;

    const-string v3, "tombstone"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :try_start_2
    invoke-static {v3}, Lcom/alibaba/sdk/android/man/crashreporter/d/a/a;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v2

    .line 78
    instance-of v4, v2, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;

    if-eqz v4, :cond_1

    .line 79
    check-cast v2, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 91
    nop

    .line 92
    invoke-static {v3}, Lcom/alibaba/sdk/android/man/crashreporter/e/f;->a(Ljava/io/InputStream;)V

    return-object v2

    .line 81
    :cond_1
    nop

    .line 91
    nop

    .line 92
    invoke-static {v3}, Lcom/alibaba/sdk/android/man/crashreporter/e/f;->a(Ljava/io/InputStream;)V

    return-object v1

    .line 83
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v3, v1

    goto :goto_0

    .line 91
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 83
    :catch_2
    move-exception p1

    move-object p1, v1

    move-object v3, p1

    .line 84
    :goto_0
    :try_start_3
    const-string v2, "Trying to load crash report but file:%s not found."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->h(Ljava/lang/String;)V

    .line 86
    if-eqz p1, :cond_2

    .line 87
    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/e/e;->i(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    :cond_2
    nop

    .line 91
    if-eqz v3, :cond_3

    .line 92
    invoke-static {v3}, Lcom/alibaba/sdk/android/man/crashreporter/e/f;->a(Ljava/io/InputStream;)V

    :cond_3
    return-object v1

    .line 91
    :catchall_1
    move-exception p1

    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_4

    .line 92
    invoke-static {v1}, Lcom/alibaba/sdk/android/man/crashreporter/e/f;->a(Ljava/io/InputStream;)V

    :cond_4
    throw p1
.end method

.method public b(Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;)V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/d/b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 145
    const-string p1, "Trying to load crash report but context is null."

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->h(Ljava/lang/String;)V

    .line 146
    return-void

    .line 149
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/alibaba/sdk/android/man/crashreporter/global/CrashReportDataForSave;->fileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/man/crashreporter/d/b;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_1

    .line 151
    const-string v1, "save crash file: "

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/man/crashreporter/d/a/a;->a(Ljava/lang/Object;Ljava/io/File;)V

    .line 154
    const-string p1, "save crash file succ "

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_1
    const-string p1, "store crash report file failure!"

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    goto :goto_1

    .line 158
    :catch_0
    move-exception p1

    .line 159
    const-string v0, "crash data save error."

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    :goto_1
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 289
    return-void
.end method

.method public c(Landroid/content/Context;)Z
    .locals 1

    .line 32
    :try_start_0
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/d/b;->a:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    const/4 p1, 0x1

    return p1

    .line 34
    :catch_0
    move-exception p1

    .line 35
    const-string v0, "init storer err"

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/man/crashreporter/b/a;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    const/4 p1, 0x0

    return p1
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 279
    const-string v0, ""

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/d/b;->a:Landroid/content/Context;

    const-string v1, "tombstone"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 208
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 212
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 228
    const-string v0, ".stacktrace"

    return-object v0
.end method
