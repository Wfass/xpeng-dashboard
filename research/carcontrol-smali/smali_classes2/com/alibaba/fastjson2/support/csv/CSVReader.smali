.class public abstract Lcom/alibaba/fastjson2/support/csv/CSVReader;
.super Lcom/alibaba/fastjson2/stream/StreamReader;
.source "CSVReader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/stream/StreamReader<",
        "TT;>;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field protected objectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private objectSupport:Z

.field quote:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/alibaba/fastjson2/stream/StreamReader;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->objectSupport:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lcom/alibaba/fastjson2/stream/StreamReader;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->objectSupport:Z

    .line 34
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->objectClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>([Ljava/lang/reflect/Type;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/stream/StreamReader;-><init>([Ljava/lang/reflect/Type;)V

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->objectSupport:Z

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->objectSupport:Z

    return-void
.end method

.method public static of(Ljava/io/File;Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;)Lcom/alibaba/fastjson2/support/csv/CSVReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVReader;->of(Ljava/io/File;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;)Lcom/alibaba/fastjson2/support/csv/CSVReader;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/io/File;Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;)Lcom/alibaba/fastjson2/support/csv/CSVReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVReader;->of(Ljava/io/File;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;)Lcom/alibaba/fastjson2/support/csv/CSVReader;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/io/File;Ljava/lang/Class;)Lcom/alibaba/fastjson2/support/csv/CSVReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/support/csv/CSVReader<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVReader;->of(Ljava/io/File;Ljava/nio/charset/Charset;Ljava/lang/Class;)Lcom/alibaba/fastjson2/support/csv/CSVReader;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/io/File;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;)Lcom/alibaba/fastjson2/support/csv/CSVReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    if-eq p1, v0, :cond_0

    .line 100
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;)V

    return-object v0

    .line 98
    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not support charset : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static of(Ljava/io/File;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;)Lcom/alibaba/fastjson2/support/csv/CSVReader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1, p2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;-><init>(Ljava/io/Reader;Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;)V

    return-object v0
.end method

.method public static of(Ljava/io/File;Ljava/nio/charset/Charset;Ljava/lang/Class;)Lcom/alibaba/fastjson2/support/csv/CSVReader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/support/csv/CSVReader<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    sget v0, Lcom/alibaba/fastjson2/util/JDKUtils;->JVM_VERSION:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)V

    return-object v0

    .line 134
    :cond_1
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 136
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2, p2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;-><init>(Ljava/io/Reader;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static varargs of(Ljava/io/File;Ljava/nio/charset/Charset;[Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/support/csv/CSVReader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    sget v0, Lcom/alibaba/fastjson2/util/JDKUtils;->JVM_VERSION:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;[Ljava/lang/reflect/Type;)V

    return-object v0

    .line 117
    :cond_1
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 118
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2, p2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;-><init>(Ljava/io/Reader;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static varargs of(Ljava/io/File;[Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/support/csv/CSVReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static of(Ljava/io/InputStream;Ljava/lang/Class;)Lcom/alibaba/fastjson2/support/csv/CSVReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/support/csv/CSVReader<",
            "TT;>;"
        }
    .end annotation

    .line 151
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVReader;->of(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Lcom/alibaba/fastjson2/support/csv/CSVReader;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Lcom/alibaba/fastjson2/support/csv/CSVReader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/support/csv/CSVReader<",
            "TT;>;"
        }
    .end annotation

    .line 155
    sget v0, Lcom/alibaba/fastjson2/util/JDKUtils;->JVM_VERSION:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)V

    return-object v0

    .line 160
    :cond_1
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1, p2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;-><init>(Ljava/io/Reader;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static varargs of(Ljava/io/InputStream;Ljava/nio/charset/Charset;[Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/support/csv/CSVReader;
    .locals 2

    .line 170
    sget v0, Lcom/alibaba/fastjson2/util/JDKUtils;->JVM_VERSION:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;[Ljava/lang/reflect/Type;)V

    return-object v0

    .line 174
    :cond_1
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1, p2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;-><init>(Ljava/io/Reader;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static varargs of(Ljava/io/InputStream;[Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/support/csv/CSVReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVReader;->of(Ljava/io/InputStream;Ljava/nio/charset/Charset;[Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/support/csv/CSVReader;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/io/Reader;Ljava/lang/Class;)Lcom/alibaba/fastjson2/support/csv/CSVReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/support/csv/CSVReader<",
            "TT;>;"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;-><init>(Ljava/io/Reader;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static varargs of(Ljava/io/Reader;[Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/support/csv/CSVReader;
    .locals 1

    .line 183
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;-><init>(Ljava/io/Reader;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/support/csv/CSVReader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/support/csv/CSVReader;"
        }
    .end annotation

    .line 61
    sget v0, Lcom/alibaba/fastjson2/util/JDKUtils;->JVM_VERSION:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_VALUE:Ljava/util/function/Function;

    if-eqz v0, :cond_0

    .line 63
    :try_start_0
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CODER:Ljava/util/function/ToIntFunction;

    invoke-interface {v0, p0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 65
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_VALUE:Ljava/util/function/Function;

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, [B

    .line 66
    new-instance p0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;

    const/4 v2, 0x0

    array-length v3, v1

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;-><init>([BIILjava/nio/charset/Charset;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 69
    :catch_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo p1, "unsafe get String.coder error"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/JDKUtils;->getCharArray(Ljava/lang/String;)[C

    move-result-object p0

    .line 74
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;-><init>([CIILjava/lang/Class;)V

    return-object v0
.end method

.method public static varargs of(Ljava/lang/String;[Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/support/csv/CSVReader;
    .locals 3

    .line 187
    sget v0, Lcom/alibaba/fastjson2/util/JDKUtils;->JVM_VERSION:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-le v0, v2, :cond_0

    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_VALUE:Ljava/util/function/Function;

    if-eqz v0, :cond_0

    .line 189
    :try_start_0
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CODER:Ljava/util/function/ToIntFunction;

    invoke-interface {v0, p0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 191
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_VALUE:Ljava/util/function/Function;

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 192
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;

    array-length v2, p0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;-><init>([BII[Ljava/lang/reflect/Type;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 195
    :catch_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo p1, "unsafe get String.coder error"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 199
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/JDKUtils;->getCharArray(Ljava/lang/String;)[C

    move-result-object p0

    .line 200
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;

    array-length v2, p0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;-><init>([CII[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static of([BIILjava/lang/Class;)Lcom/alibaba/fastjson2/support/csv/CSVReader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/support/csv/CSVReader<",
            "TT;>;"
        }
    .end annotation

    .line 238
    new-instance v6, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;-><init>([BIILjava/nio/charset/Charset;Ljava/lang/Class;)V

    return-object v6
.end method

.method public static of([BIILjava/nio/charset/Charset;Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;)Lcom/alibaba/fastjson2/support/csv/CSVReader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/nio/charset/Charset;",
            "Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;",
            ")",
            "Lcom/alibaba/fastjson2/support/csv/CSVReader<",
            "TT;>;"
        }
    .end annotation

    .line 230
    new-instance v6, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;-><init>([BIILjava/nio/charset/Charset;Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;)V

    return-object v6
.end method

.method public static of([BIILjava/nio/charset/Charset;Ljava/lang/Class;)Lcom/alibaba/fastjson2/support/csv/CSVReader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/support/csv/CSVReader<",
            "TT;>;"
        }
    .end annotation

    .line 242
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    if-eq p3, v0, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    if-eq p3, v0, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;-><init>([BIILjava/nio/charset/Charset;Ljava/lang/Class;)V

    return-object v0

    .line 246
    :cond_1
    :goto_0
    new-array p3, p2, [C

    .line 247
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->decodeUTF8([BII[C)I

    move-result p0

    .line 248
    new-instance p1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;

    const/4 p2, 0x0

    invoke-direct {p1, p3, p2, p0, p4}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;-><init>([CIILjava/lang/Class;)V

    return-object p1
.end method

.method public static of([BLcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;)Lcom/alibaba/fastjson2/support/csv/CSVReader;
    .locals 3

    .line 221
    array-length v0, p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, p1}, Lcom/alibaba/fastjson2/support/csv/CSVReader;->of([BIILjava/nio/charset/Charset;Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;)Lcom/alibaba/fastjson2/support/csv/CSVReader;

    move-result-object p0

    return-object p0
.end method

.method public static of([BLjava/lang/Class;)Lcom/alibaba/fastjson2/support/csv/CSVReader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/support/csv/CSVReader<",
            "TT;>;"
        }
    .end annotation

    .line 82
    array-length v0, p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, p1}, Lcom/alibaba/fastjson2/support/csv/CSVReader;->of([BIILjava/nio/charset/Charset;Ljava/lang/Class;)Lcom/alibaba/fastjson2/support/csv/CSVReader;

    move-result-object p0

    return-object p0
.end method

.method public static of([BLjava/nio/charset/Charset;Ljava/lang/Class;)Lcom/alibaba/fastjson2/support/csv/CSVReader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/support/csv/CSVReader<",
            "TT;>;"
        }
    .end annotation

    .line 234
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, p2}, Lcom/alibaba/fastjson2/support/csv/CSVReader;->of([BIILjava/nio/charset/Charset;Ljava/lang/Class;)Lcom/alibaba/fastjson2/support/csv/CSVReader;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of([B[Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/support/csv/CSVReader;
    .locals 3

    .line 217
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;-><init>([BII[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static of([CIILcom/alibaba/fastjson2/reader/CharArrayValueConsumer;)Lcom/alibaba/fastjson2/support/csv/CSVReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([CII",
            "Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;",
            ")",
            "Lcom/alibaba/fastjson2/support/csv/CSVReader<",
            "TT;>;"
        }
    .end annotation

    .line 213
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;-><init>([CIILcom/alibaba/fastjson2/reader/CharArrayValueConsumer;)V

    return-object v0
.end method

.method public static of([CIILjava/lang/Class;)Lcom/alibaba/fastjson2/support/csv/CSVReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([CII",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/support/csv/CSVReader<",
            "TT;>;"
        }
    .end annotation

    .line 255
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;-><init>([CIILjava/lang/Class;)V

    return-object v0
.end method

.method public static of([CLjava/lang/Class;)Lcom/alibaba/fastjson2/support/csv/CSVReader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([C",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/support/csv/CSVReader<",
            "TT;>;"
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;-><init>([CIILjava/lang/Class;)V

    return-object v0
.end method

.method public static varargs of([C[Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/support/csv/CSVReader;
    .locals 3

    .line 204
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;-><init>([CII[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static rowCount(Ljava/io/File;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 430
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 431
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/fastjson2/support/csv/CSVReader;->rowCount(Ljava/io/InputStream;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return p0

    :catchall_0
    move-exception p0

    .line 430
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static rowCount(Ljava/io/InputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x80000

    new-array v0, v0, [B

    .line 438
    new-instance v1, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;-><init>([Lcom/alibaba/fastjson2/stream/StreamReader$Feature;)V

    .line 440
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 447
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->rowCount()I

    move-result p0

    return p0

    .line 444
    :cond_0
    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->rowCount([BI)V

    goto :goto_0
.end method

.method public static varargs rowCount(Ljava/lang/String;[Lcom/alibaba/fastjson2/stream/StreamReader$Feature;)I
    .locals 1

    .line 408
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;-><init>([Lcom/alibaba/fastjson2/stream/StreamReader$Feature;)V

    .line 409
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVReader;->rowCount(Ljava/lang/String;I)V

    .line 410
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/support/csv/CSVReader;->rowCount()I

    move-result p0

    return p0
.end method

.method public static varargs rowCount([B[Lcom/alibaba/fastjson2/stream/StreamReader$Feature;)I
    .locals 1

    .line 414
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;-><init>([Lcom/alibaba/fastjson2/stream/StreamReader$Feature;)V

    .line 415
    array-length p1, p0

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->rowCount([BI)V

    .line 416
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF8;->rowCount()I

    move-result p0

    return p0
.end method

.method public static varargs rowCount([C[Lcom/alibaba/fastjson2/stream/StreamReader$Feature;)I
    .locals 1

    .line 420
    new-instance v0, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;-><init>([Lcom/alibaba/fastjson2/stream/StreamReader$Feature;)V

    .line 421
    array-length p1, p0

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->rowCount([CI)V

    .line 422
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/support/csv/CSVReaderUTF16;->rowCount()I

    move-result p0

    return p0
.end method


# virtual methods
.method public config(Lcom/alibaba/fastjson2/stream/StreamReader$Feature;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 50
    iget-wide v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->features:J

    iget-wide p1, p1, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->mask:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->features:J

    goto :goto_0

    .line 52
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->features:J

    iget-wide p1, p1, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->mask:J

    not-long p1, p1

    and-long/2addr p1, v0

    iput-wide p1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->features:J

    :goto_0
    return-void
.end method

.method public varargs config([Lcom/alibaba/fastjson2/stream/StreamReader$Feature;)V
    .locals 7

    .line 43
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 44
    iget-wide v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->features:J

    iget-wide v5, v2, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->mask:J

    or-long v2, v3, v5

    iput-wide v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->features:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected error(ILjava/lang/Exception;)Ljava/lang/Object;
    .locals 4

    .line 666
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->errorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->errorCount:I

    .line 667
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVReader;->getColumnStat(I)Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;

    move-result-object v0

    iget v1, v0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->errors:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->errors:I

    .line 669
    iget-wide v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->ErrorAsNull:Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 673
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read csv error, line "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->rowCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", column "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 675
    iget-object v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->columns:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->columns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 676
    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->columns:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_1
    if-eqz v1, :cond_2

    .line 678
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 679
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 681
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 683
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public errorCount()I
    .locals 1

    .line 451
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->errorCount:I

    return v0
.end method

.method public getColumn(I)Ljava/lang/String;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->columns:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->columns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->columns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getColumnStat(I)Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;
    .locals 4

    .line 698
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->columnStats:Ljava/util/List;

    if-nez v0, :cond_0

    .line 699
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->columnStats:Ljava/util/List;

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->columnStats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 704
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->columnStats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-gt v0, p1, :cond_3

    .line 706
    iget-object v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->columns:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->columns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 707
    iget-object v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->columns:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 709
    :goto_1
    new-instance v3, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;

    invoke-direct {v3, v2}, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;-><init>(Ljava/lang/String;)V

    .line 710
    iget-object v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->columnStats:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    move-object v2, v3

    goto :goto_0

    .line 713
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->columnStats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;

    :cond_3
    return-object v2
.end method

.method public getColumnStat(Ljava/lang/String;)Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;
    .locals 3

    .line 687
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->columnStats:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 688
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->columnStats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;

    .line 689
    iget-object v2, v1, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getColumnStats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;",
            ">;"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->columnStats:Ljava/util/List;

    return-object v0
.end method

.method public getColumnType(I)Ljava/lang/reflect/Type;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->types:[Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->types:[Ljava/lang/reflect/Type;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->types:[Ljava/lang/reflect/Type;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getColumns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->columns:Ljava/util/List;

    return-object v0
.end method

.method public abstract isEnd()Z
.end method

.method public isObjectSupport()Z
    .locals 1

    .line 749
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->objectSupport:Z

    return v0
.end method

.method public synthetic lambda$readHeader$0$CSVReader([Ljava/lang/String;I)V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->columnStats:Ljava/util/List;

    new-instance v1, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;

    aget-object p1, p1, p2

    invoke-direct {v1, p1}, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract readAll()V
.end method

.method public abstract readAll(I)V
.end method

.method public readHeader()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->objectSupport:Z

    .line 269
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/support/csv/CSVReader;->readLineValues(Z)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 271
    iget-object v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->objectClass:Ljava/lang/Class;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 272
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v2

    .line 273
    iget-wide v4, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->features:J

    sget-object v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v3

    .line 275
    :goto_0
    array-length v5, v1

    new-array v5, v5, [Ljava/lang/reflect/Type;

    .line 276
    array-length v6, v1

    new-array v6, v6, [Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 277
    array-length v7, v1

    new-array v7, v7, [Lcom/alibaba/fastjson2/reader/FieldReader;

    move v8, v3

    .line 279
    :goto_1
    array-length v9, v1

    if-ge v8, v9, :cond_3

    .line 280
    aget-object v9, v1, v8

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 281
    iget-object v10, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->objectClass:Ljava/lang/Class;

    iget-wide v11, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->features:J

    invoke-virtual {v2, v10, v9, v11, v12}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->createFieldReader(Ljava/lang/Class;Ljava/lang/String;J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 283
    aput-object v9, v7, v8

    .line 284
    iget-object v9, v9, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    .line 285
    instance-of v10, v9, Ljava/lang/Class;

    if-eqz v10, :cond_1

    .line 286
    move-object v10, v9

    check-cast v10, Ljava/lang/Class;

    .line 287
    invoke-virtual {v10}, Ljava/lang/Class;->isPrimitive()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 288
    invoke-static {v10}, Lcom/alibaba/fastjson2/util/TypeUtils;->nonePrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v9

    .line 291
    :cond_1
    aput-object v9, v5, v8

    .line 292
    invoke-virtual {v2, v9, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v9

    aput-object v9, v6, v8

    goto :goto_2

    .line 294
    :cond_2
    const-class v9, Ljava/lang/String;

    aput-object v9, v5, v8

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 298
    :cond_3
    iput-object v5, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->types:[Ljava/lang/reflect/Type;

    .line 299
    iput-object v6, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->typeReaders:[Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 300
    iput-object v7, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 301
    iget-object v4, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->objectClass:Ljava/lang/Class;

    iget-wide v5, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->features:J

    invoke-virtual {v2, v4, v5, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->createObjectCreator(Ljava/lang/Class;J)Ljava/util/function/Supplier;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->objectCreator:Ljava/util/function/Supplier;

    .line 304
    :cond_4
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->columns:Ljava/util/List;

    .line 305
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->columnStats:Ljava/util/List;

    .line 306
    array-length v2, v1

    invoke-static {v3, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v4, Lcom/alibaba/fastjson2/support/csv/-$$Lambda$CSVReader$M0TGAVTRhep1yPmiuJ2ax3OzQC4;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/fastjson2/support/csv/-$$Lambda$CSVReader$M0TGAVTRhep1yPmiuJ2ax3OzQC4;-><init>(Lcom/alibaba/fastjson2/support/csv/CSVReader;[Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 310
    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->rowCount:I

    if-ne v1, v0, :cond_6

    .line 311
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineTerminated:Z

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, -0x1

    :goto_3
    iput v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->rowCount:I

    .line 313
    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->columns:Ljava/util/List;

    return-object v0
.end method

.method public final readLine()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 404
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/support/csv/CSVReader;->readLineValues(Z)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public readLineAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 722
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 724
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVReader;->readLine()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 728
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public readLineObject()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 345
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->objectSupport:Z

    if-eqz v0, :cond_b

    .line 348
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->inputEnd:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    const-string v2, "not support operation, objectClass is null"

    const/4 v3, 0x0

    if-nez v0, :cond_5

    .line 353
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 354
    iget-object v4, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->objectClass:Ljava/lang/Class;

    if-eqz v4, :cond_4

    .line 355
    iget-wide v4, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->features:J

    sget-object v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    .line 356
    :goto_0
    iget-object v5, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->objectClass:Ljava/lang/Class;

    invoke-virtual {v0, v5, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v4

    .line 357
    instance-of v5, v4, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;

    if-eqz v5, :cond_3

    .line 358
    check-cast v4, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFieldReaders()[Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 359
    iget-object v4, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/reflect/Type;

    iput-object v4, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->types:[Ljava/lang/reflect/Type;

    move v4, v3

    .line 360
    :goto_1
    iget-object v5, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->types:[Ljava/lang/reflect/Type;

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 361
    iget-object v5, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->types:[Ljava/lang/reflect/Type;

    iget-object v6, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    aget-object v6, v6, v4

    iget-object v6, v6, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 369
    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->objectClass:Ljava/lang/Class;

    iget-wide v5, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->features:J

    invoke-virtual {v0, v4, v5, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->createObjectCreator(Ljava/lang/Class;J)Ljava/util/function/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->objectCreator:Ljava/util/function/Supplier;

    goto :goto_2

    .line 364
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support operation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->objectClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->objectCreator:Ljava/util/function/Supplier;

    if-eqz v0, :cond_a

    .line 376
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/support/csv/CSVReader;->readLineValues(Z)[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    return-object v1

    .line 381
    :cond_6
    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    if-eqz v1, :cond_9

    .line 382
    iget-object v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->objectCreator:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    .line 383
    :goto_3
    iget-object v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    array-length v2, v2

    if-ge v3, v2, :cond_8

    .line 384
    iget-object v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    aget-object v2, v2, v3

    if-eqz v2, :cond_7

    .line 386
    aget-object v4, v0, v3

    invoke-virtual {v2, v1, v4}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    return-object v1

    .line 392
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "this method should not be called, try specify objectClass or method readLineValues instead ?"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readLineObjectAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 737
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 739
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVReader;->readLineObject()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 743
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public readLineObjectAll(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 339
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVReader;->readLineObjectAll(ZLjava/util/function/Consumer;)V

    return-void
.end method

.method public abstract readLineObjectAll(ZLjava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public final readLineValues()[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 398
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/support/csv/CSVReader;->readLineValues(Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract readLineValues(Z)[Ljava/lang/Object;
.end method

.method public rowCount()I
    .locals 1

    .line 455
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineTerminated:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->rowCount:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->rowCount:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method rowCount(Ljava/lang/String;I)V
    .locals 11

    const/4 v0, 0x0

    .line 459
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineTerminated:Z

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_f

    .line 461
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    .line 463
    iget v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    .line 464
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->quote:Z

    if-nez v2, :cond_0

    .line 465
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->quote:Z

    goto/16 :goto_3

    :cond_0
    add-int/lit8 v2, v1, 0x1

    if-lt v2, p2, :cond_1

    goto/16 :goto_4

    .line 471
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_2

    move v1, v2

    goto/16 :goto_3

    .line 475
    :cond_2
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->quote:Z

    goto/16 :goto_3

    .line 481
    :cond_3
    iget-boolean v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->quote:Z

    if-eqz v3, :cond_4

    .line 482
    iget v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    goto :goto_3

    :cond_4
    const-wide/16 v5, 0x0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_8

    .line 487
    iget v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    if-gtz v2, :cond_5

    iget-wide v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->features:J

    sget-object v7, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->IgnoreEmptyLine:Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->mask:J

    and-long/2addr v2, v7

    cmp-long v2, v2, v5

    if-nez v2, :cond_6

    .line 488
    :cond_5
    iget v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->rowCount:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->rowCount:I

    .line 489
    iput v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    :cond_6
    add-int/lit8 v2, v1, 0x1

    if-ne v2, p2, :cond_7

    move v2, v4

    goto :goto_1

    :cond_7
    move v2, v0

    .line 492
    :goto_1
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineTerminated:Z

    goto :goto_3

    :cond_8
    const/16 v7, 0xd

    if-ne v2, v7, :cond_e

    .line 494
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineTerminated:Z

    .line 495
    iget v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    if-gtz v2, :cond_9

    iget-wide v7, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->IgnoreEmptyLine:Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

    iget-wide v9, v2, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->mask:J

    and-long/2addr v7, v9

    cmp-long v2, v7, v5

    if-nez v2, :cond_a

    .line 496
    :cond_9
    iget v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->rowCount:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->rowCount:I

    .line 499
    :cond_a
    iput v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    add-int/lit8 v2, v1, 0x1

    if-lt v2, p2, :cond_b

    goto :goto_4

    .line 504
    :cond_b
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_c

    move v1, v2

    :cond_c
    add-int/lit8 v2, v1, 0x1

    if-ne v2, p2, :cond_d

    move v2, v4

    goto :goto_2

    :cond_d
    move v2, v0

    .line 509
    :goto_2
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineTerminated:Z

    goto :goto_3

    .line 511
    :cond_e
    iget v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    :goto_3
    add-int/2addr v1, v4

    goto/16 :goto_0

    :cond_f
    :goto_4
    return-void
.end method

.method rowCount([BI)V
    .locals 11

    const/4 v0, 0x0

    .line 517
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineTerminated:Z

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_10

    add-int/lit8 v2, v1, 0x4

    const/16 v3, 0x22

    const/4 v4, 0x1

    if-ge v2, p2, :cond_0

    .line 521
    aget-byte v2, p1, v1

    add-int/lit8 v5, v1, 0x1

    .line 522
    aget-byte v5, p1, v5

    add-int/lit8 v6, v1, 0x2

    .line 523
    aget-byte v6, p1, v6

    add-int/lit8 v7, v1, 0x3

    .line 524
    aget-byte v8, p1, v7

    if-le v2, v3, :cond_0

    if-le v5, v3, :cond_0

    if-le v6, v3, :cond_0

    if-le v8, v3, :cond_0

    .line 530
    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    move v1, v7

    goto/16 :goto_3

    .line 536
    :cond_0
    aget-byte v2, p1, v1

    if-ne v2, v3, :cond_4

    .line 538
    iget v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    .line 539
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->quote:Z

    if-nez v2, :cond_1

    .line 540
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->quote:Z

    goto/16 :goto_3

    :cond_1
    add-int/lit8 v2, v1, 0x1

    if-lt v2, p2, :cond_2

    goto/16 :goto_4

    .line 546
    :cond_2
    aget-byte v5, p1, v2

    if-ne v5, v3, :cond_3

    move v1, v2

    goto/16 :goto_3

    .line 550
    :cond_3
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->quote:Z

    goto/16 :goto_3

    .line 556
    :cond_4
    iget-boolean v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->quote:Z

    if-eqz v3, :cond_5

    .line 557
    iget v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    goto :goto_3

    :cond_5
    const-wide/16 v5, 0x0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    .line 562
    iget v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    if-gtz v2, :cond_6

    iget-wide v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->features:J

    sget-object v7, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->IgnoreEmptyLine:Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->mask:J

    and-long/2addr v2, v7

    cmp-long v2, v2, v5

    if-nez v2, :cond_7

    .line 563
    :cond_6
    iget v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->rowCount:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->rowCount:I

    .line 566
    :cond_7
    iput v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    add-int/lit8 v2, v1, 0x1

    if-ne v2, p2, :cond_8

    move v2, v4

    goto :goto_1

    :cond_8
    move v2, v0

    .line 567
    :goto_1
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineTerminated:Z

    goto :goto_3

    :cond_9
    const/16 v7, 0xd

    if-ne v2, v7, :cond_f

    .line 569
    iget v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    if-gtz v2, :cond_a

    iget-wide v7, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->IgnoreEmptyLine:Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

    iget-wide v9, v2, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->mask:J

    and-long/2addr v7, v9

    cmp-long v2, v7, v5

    if-nez v2, :cond_b

    .line 570
    :cond_a
    iget v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->rowCount:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->rowCount:I

    .line 572
    :cond_b
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineTerminated:Z

    .line 573
    iput v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    add-int/lit8 v2, v1, 0x1

    if-lt v2, p2, :cond_c

    goto :goto_4

    .line 579
    :cond_c
    aget-byte v5, p1, v2

    if-ne v5, v3, :cond_d

    move v1, v2

    :cond_d
    add-int/lit8 v2, v1, 0x1

    if-ne v2, p2, :cond_e

    move v2, v4

    goto :goto_2

    :cond_e
    move v2, v0

    .line 584
    :goto_2
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineTerminated:Z

    goto :goto_3

    .line 586
    :cond_f
    iget v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    :goto_3
    add-int/2addr v1, v4

    goto/16 :goto_0

    :cond_10
    :goto_4
    return-void
.end method

.method rowCount([CI)V
    .locals 11

    const/4 v0, 0x0

    .line 592
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineTerminated:Z

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_10

    add-int/lit8 v2, v1, 0x4

    const/16 v3, 0x22

    const/4 v4, 0x1

    if-ge v2, p2, :cond_0

    .line 595
    aget-char v2, p1, v1

    add-int/lit8 v5, v1, 0x1

    .line 596
    aget-char v5, p1, v5

    add-int/lit8 v6, v1, 0x2

    .line 597
    aget-char v6, p1, v6

    add-int/lit8 v7, v1, 0x3

    .line 598
    aget-char v8, p1, v7

    if-le v2, v3, :cond_0

    if-le v5, v3, :cond_0

    if-le v6, v3, :cond_0

    if-le v8, v3, :cond_0

    .line 605
    iget v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    move v1, v7

    goto/16 :goto_4

    .line 610
    :cond_0
    aget-char v2, p1, v1

    if-ne v2, v3, :cond_4

    .line 612
    iget v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    .line 613
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->quote:Z

    if-nez v2, :cond_1

    .line 614
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->quote:Z

    goto/16 :goto_4

    :cond_1
    add-int/lit8 v2, v1, 0x1

    if-lt v2, p2, :cond_2

    goto/16 :goto_5

    .line 620
    :cond_2
    aget-char v5, p1, v2

    if-ne v5, v3, :cond_3

    move v1, v2

    goto/16 :goto_4

    .line 624
    :cond_3
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->quote:Z

    goto/16 :goto_4

    .line 630
    :cond_4
    iget-boolean v3, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->quote:Z

    if-eqz v3, :cond_5

    .line 631
    iget v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    goto :goto_4

    :cond_5
    const-wide/16 v5, 0x0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    .line 636
    iget v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    if-gtz v2, :cond_6

    iget-wide v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->features:J

    sget-object v7, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->IgnoreEmptyLine:Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->mask:J

    and-long/2addr v2, v7

    cmp-long v2, v2, v5

    if-nez v2, :cond_7

    .line 637
    :cond_6
    iget v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->rowCount:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->rowCount:I

    .line 639
    :cond_7
    iput v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    add-int/lit8 v2, v1, 0x1

    if-ne v2, p2, :cond_8

    move v2, v4

    goto :goto_1

    :cond_8
    move v2, v0

    .line 641
    :goto_1
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineTerminated:Z

    goto :goto_4

    :cond_9
    const/16 v7, 0xd

    if-eq v2, v7, :cond_b

    .line 642
    iget-wide v7, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->IgnoreEmptyLine:Lcom/alibaba/fastjson2/stream/StreamReader$Feature;

    iget-wide v9, v2, Lcom/alibaba/fastjson2/stream/StreamReader$Feature;->mask:J

    and-long/2addr v7, v9

    cmp-long v2, v7, v5

    if-nez v2, :cond_a

    goto :goto_2

    .line 660
    :cond_a
    iget v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    goto :goto_4

    .line 643
    :cond_b
    :goto_2
    iget v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    if-lez v2, :cond_c

    .line 644
    iget v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->rowCount:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->rowCount:I

    .line 646
    :cond_c
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineTerminated:Z

    .line 647
    iput v0, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineSize:I

    add-int/lit8 v2, v1, 0x1

    if-lt v2, p2, :cond_d

    goto :goto_5

    .line 653
    :cond_d
    aget-char v5, p1, v2

    if-ne v5, v3, :cond_e

    move v1, v2

    :cond_e
    add-int/lit8 v2, v1, 0x1

    if-ne v2, p2, :cond_f

    move v2, v4

    goto :goto_3

    :cond_f
    move v2, v0

    .line 658
    :goto_3
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/support/csv/CSVReader;->lineTerminated:Z

    :goto_4
    add-int/2addr v1, v4

    goto/16 :goto_0

    :cond_10
    :goto_5
    return-void
.end method

.method public skipLines(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVReader;->seekLine()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 260
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public abstract statAll()V
.end method

.method public abstract statAll(I)V
.end method
