.class public Lcgz;
.super Ljava/lang/Object;
.source "MqttDefaultFilePersistence.java"

# interfaces
.implements Lcel;


# static fields
.field private static d:Ljava/io/FilenameFilter;


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/io/File;

.field private c:Lcff;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "user.dir"

    .line 65
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcgz;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcgz;->b:Ljava/io/File;

    .line 52
    iput-object v0, p0, Lcgz;->c:Lcff;

    .line 73
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcgz;->a:Ljava/io/File;

    return-void
.end method

.method private static a()Ljava/io/FilenameFilter;
    .locals 2

    .line 58
    sget-object v0, Lcgz;->d:Ljava/io/FilenameFilter;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lchb;

    const-string v1, ".msg"

    invoke-direct {v0, v1}, Lchb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcgz;->d:Ljava/io/FilenameFilter;

    .line 61
    :cond_0
    sget-object v0, Lcgz;->d:Ljava/io/FilenameFilter;

    return-object v0
.end method

.method private a(Ljava/io/File;)V
    .locals 6

    .line 273
    new-instance v0, Lcha;

    const-string v1, ".bup"

    invoke-direct {v0, v1}, Lcha;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    move v2, v1

    .line 279
    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    return-void

    .line 280
    :cond_0
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 281
    aget-object v4, v0, v2

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 283
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 284
    aget-object v4, v0, v2

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    :cond_2
    new-instance p1, Lcer;

    invoke-direct {p1}, Lcer;-><init>()V

    throw p1
.end method

.method private a(C)Z
    .locals 1

    .line 262
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private b()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcgz;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    return-void

    .line 136
    :cond_0
    new-instance v0, Lcer;

    invoke-direct {v0}, Lcer;-><init>()V

    throw v0
.end method

.method private c()[Ljava/io/File;
    .locals 2

    .line 253
    invoke-direct {p0}, Lcgz;->b()V

    .line 254
    iget-object v0, p0, Lcgz;->b:Ljava/io/File;

    invoke-static {}, Lcgz;->a()Ljava/io/FilenameFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 256
    :cond_0
    new-instance v0, Lcer;

    invoke-direct {v0}, Lcer;-><init>()V

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 296
    invoke-direct {p0}, Lcgz;->b()V

    .line 297
    invoke-direct {p0}, Lcgz;->c()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 298
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 301
    iget-object v0, p0, Lcgz;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    .line 299
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .line 142
    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v0, p0, Lcgz;->c:Lcff;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcgz;->c:Lcff;

    invoke-virtual {v0}, Lcff;->a()V

    .line 148
    :cond_0
    invoke-direct {p0}, Lcgz;->c()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 149
    iget-object v0, p0, Lcgz;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcgz;->b:Ljava/io/File;

    .line 142
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 3

    .line 290
    invoke-direct {p0}, Lcgz;->b()V

    .line 291
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcgz;->b:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ".msg"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/String;)Lceq;
    .locals 10

    .line 203
    invoke-direct {p0}, Lcgz;->b()V

    .line 206
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcgz;->b:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".msg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 207
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 208
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 209
    new-array v4, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    .line 214
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 215
    new-instance v0, Lcfi;

    const/4 v5, 0x0

    array-length v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lcfi;-><init>(Ljava/lang/String;[BII[BII)V

    return-object v0

    :cond_0
    sub-int v3, v0, v2

    .line 212
    invoke-virtual {v1, v4, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v3

    goto :goto_0

    :catch_0
    move-exception p1

    .line 218
    new-instance v0, Lcer;

    invoke-direct {v0, p1}, Lcer;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 6

    .line 241
    invoke-direct {p0}, Lcgz;->b()V

    .line 242
    invoke-direct {p0}, Lcgz;->c()[Ljava/io/File;

    move-result-object v0

    .line 243
    new-instance v1, Ljava/util/Vector;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    .line 244
    :goto_0
    array-length v4, v0

    if-lt v3, v4, :cond_0

    .line 249
    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    .line 245
    :cond_0
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 246
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 247
    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public open(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 78
    iget-object v0, p0, Lcgz;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcgz;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    new-instance p1, Lcer;

    invoke-direct {p1}, Lcer;-><init>()V

    throw p1

    .line 80
    :cond_1
    :goto_0
    iget-object v0, p0, Lcgz;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 81
    iget-object v0, p0, Lcgz;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 82
    :cond_2
    new-instance p1, Lcer;

    invoke-direct {p1}, Lcer;-><init>()V

    throw p1

    .line 85
    :cond_3
    :goto_1
    iget-object v0, p0, Lcgz;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 90
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 91
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_7

    const-string p1, "-"

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    :goto_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lt v1, p1, :cond_5

    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-object p1, p0, Lcgz;->b:Ljava/io/File;

    if-nez p1, :cond_4

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcgz;->a:Ljava/io/File;

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcgz;->b:Ljava/io/File;

    .line 110
    iget-object p1, p0, Lcgz;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_4

    .line 111
    iget-object p1, p0, Lcgz;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_4
    :try_start_1
    new-instance p1, Lcff;

    iget-object p2, p0, Lcgz;->b:Ljava/io/File;

    const-string v0, ".lck"

    invoke-direct {p1, p2, v0}, Lcff;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcgz;->c:Lcff;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    :catch_0
    :try_start_2
    iget-object p1, p0, Lcgz;->b:Ljava/io/File;

    invoke-direct {p0, p1}, Lcgz;->a(Ljava/io/File;)V

    .line 105
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 99
    :cond_5
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 100
    invoke-direct {p0, p1}, Lcgz;->a(C)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 92
    :cond_7
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 93
    invoke-direct {p0, v3}, Lcgz;->a(C)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 94
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 86
    :cond_9
    new-instance p1, Lcer;

    invoke-direct {p1}, Lcer;-><init>()V

    throw p1
.end method

.method public put(Ljava/lang/String;Lceq;)V
    .locals 5

    .line 162
    invoke-direct {p0}, Lcgz;->b()V

    .line 163
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcgz;->b:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".msg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcgz;->b:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".bup"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 170
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 171
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 175
    :cond_0
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 176
    invoke-interface {p2}, Lceq;->a()[B

    move-result-object v2

    invoke-interface {p2}, Lceq;->c()I

    move-result v3

    invoke-interface {p2}, Lceq;->b()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 177
    invoke-interface {p2}, Lceq;->d()[B

    move-result-object v2

    if-eqz v2, :cond_1

    .line 178
    invoke-interface {p2}, Lceq;->d()[B

    move-result-object v2

    invoke-interface {p2}, Lceq;->f()I

    move-result v3

    invoke-interface {p2}, Lceq;->x_()I

    move-result p2

    invoke-virtual {p1, v2, v3, p2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 180
    :cond_1
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->sync()V

    .line 181
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 182
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 184
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 193
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 195
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 196
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 188
    :try_start_1
    new-instance p2, Lcer;

    invoke-direct {p2, p1}, Lcer;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 193
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 195
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 196
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 199
    :cond_4
    throw p1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3

    .line 228
    invoke-direct {p0}, Lcgz;->b()V

    .line 229
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcgz;->b:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ".msg"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 231
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method
