.class public abstract Lcom/alibaba/fastjson2/stream/JSONStreamReader;
.super Lcom/alibaba/fastjson2/stream/StreamReader;
.source "JSONStreamReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/stream/StreamReader<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected objectReader:Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/alibaba/fastjson2/stream/StreamReader;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->objectReader:Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;

    return-void
.end method

.method public constructor <init>([Ljava/lang/reflect/Type;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/stream/StreamReader;-><init>([Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public static of(Ljava/io/File;)Lcom/alibaba/fastjson2/stream/JSONStreamReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    new-array v0, v0, [Ljava/lang/reflect/Type;

    invoke-static {p0, v1, v0}, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->of(Ljava/io/InputStream;Ljava/nio/charset/Charset;[Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/stream/JSONStreamReader;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/io/InputStream;)Lcom/alibaba/fastjson2/stream/JSONStreamReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/reflect/Type;

    invoke-static {p0, v0, v1}, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->of(Ljava/io/InputStream;Ljava/nio/charset/Charset;[Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/stream/JSONStreamReader;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/io/InputStream;Ljava/lang/Class;)Lcom/alibaba/fastjson2/stream/JSONStreamReader;
    .locals 1

    .line 45
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0, p1}, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->of(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Lcom/alibaba/fastjson2/stream/JSONStreamReader;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Lcom/alibaba/fastjson2/stream/JSONStreamReader;
    .locals 2

    .line 49
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    .line 50
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p2

    check-cast p2, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;

    .line 52
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;)V

    return-object v0

    .line 53
    :cond_1
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1, p2}, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;-><init>(Ljava/io/Reader;Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;)V

    return-object v0
.end method

.method public static varargs of(Ljava/io/InputStream;Ljava/nio/charset/Charset;[Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/stream/JSONStreamReader;
    .locals 2

    .line 38
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF8;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;[Ljava/lang/reflect/Type;)V

    return-object v0

    .line 39
    :cond_1
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1, p2}, Lcom/alibaba/fastjson2/stream/JSONStreamReaderUTF16;-><init>(Ljava/io/Reader;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static varargs of(Ljava/io/InputStream;[Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/stream/JSONStreamReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0, p1}, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->of(Ljava/io/InputStream;Ljava/nio/charset/Charset;[Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/stream/JSONStreamReader;

    move-result-object p0

    return-object p0
.end method

.method protected static stat(Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;Ljava/lang/Object;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 85
    iget p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->nulls:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->nulls:I

    return-void

    .line 88
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->values:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->values:I

    .line 90
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_6

    .line 91
    iget v0, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->numbers:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->numbers:I

    .line 93
    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 95
    :cond_2
    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_3

    instance-of p1, p1, Ljava/lang/Double;

    if-eqz p1, :cond_5

    .line 96
    :cond_3
    iget p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->doubles:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->doubles:I

    goto :goto_1

    .line 94
    :cond_4
    :goto_0
    iget p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->integers:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->integers:I

    :cond_5
    :goto_1
    return-void

    .line 101
    :cond_6
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 102
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->stat(Ljava/lang/String;)V

    return-void

    .line 106
    :cond_7
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 107
    iget p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->booleans:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->booleans:I

    return-void

    .line 111
    :cond_8
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 112
    iget p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->maps:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->maps:I

    return-void

    .line 116
    :cond_9
    instance-of p1, p1, Ljava/util/Collection;

    if-eqz p1, :cond_a

    .line 117
    iget p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->arrays:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;->arrays:I

    :cond_a
    return-void
.end method

.method private statArray(Ljava/lang/String;Ljava/util/List;I)V
    .locals 5

    const/16 v0, 0xa

    if-le p3, v0, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 154
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 155
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "]"

    const-string v3, "["

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    if-nez p1, :cond_2

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->getColumnStat(Ljava/lang/String;)Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;

    move-result-object v3

    .line 158
    invoke-static {v3, v1}, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->stat(Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;Ljava/lang/Object;)V

    .line 160
    instance-of v3, v1, Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 161
    check-cast v1, Ljava/util/Map;

    add-int/lit8 v3, p3, 0x1

    invoke-direct {p0, v2, v1, v3}, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->statMap(Ljava/lang/String;Ljava/util/Map;I)V

    goto :goto_2

    .line 162
    :cond_3
    instance-of v3, v1, Ljava/util/List;

    if-eqz v3, :cond_4

    .line 163
    check-cast v1, Ljava/util/List;

    add-int/lit8 v3, p3, 0x1

    invoke-direct {p0, v2, v1, v3}, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->statArray(Ljava/lang/String;Ljava/util/List;I)V

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private statMap(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 4

    const/16 v0, 0xa

    if-le p3, v0, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 174
    check-cast v0, Ljava/util/Map$Entry;

    .line 175
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 176
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    if-nez p1, :cond_2

    .line 177
    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    :goto_1
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->getColumnStat(Ljava/lang/String;)Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;

    move-result-object v2

    .line 179
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 180
    invoke-static {v2, v0}, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->stat(Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;Ljava/lang/Object;)V

    .line 182
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 183
    check-cast v0, Ljava/util/Map;

    add-int/lit8 v2, p3, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->statMap(Ljava/lang/String;Ljava/util/Map;I)V

    goto :goto_0

    .line 184
    :cond_3
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 185
    check-cast v0, Ljava/util/List;

    add-int/lit8 v2, p3, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->statArray(Ljava/lang/String;Ljava/util/List;I)V

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public getColumnStat(Ljava/lang/String;)Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->columnStatsMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->columnStatsMap:Ljava/util/Map;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->columns:Ljava/util/List;

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->columns:Ljava/util/List;

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->columnStats:Ljava/util/List;

    if-nez v0, :cond_2

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->columnStats:Ljava/util/List;

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->columnStatsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;

    if-nez v0, :cond_3

    .line 70
    iget-object v1, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->columnStatsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0x64

    if-gt v1, v2, :cond_3

    .line 71
    new-instance v0, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/stream/StreamReader$ColumnStat;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->columnStatsMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->columns:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object p1, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->columnStats:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public statAll()V
    .locals 1

    .line 122
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->columnStatsMap:Ljava/util/Map;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->columns:Ljava/util/List;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->columnStats:Ljava/util/List;

    .line 127
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->readLineObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->statLine(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public statLine(Ljava/lang/Object;)V
    .locals 3

    .line 137
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 138
    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, v2, p1, v1}, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->statMap(Ljava/lang/String;Ljava/util/Map;I)V

    goto :goto_0

    .line 139
    :cond_0
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 140
    check-cast p1, Ljava/util/List;

    invoke-direct {p0, v2, p1, v1}, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->statArray(Ljava/lang/String;Ljava/util/List;I)V

    .line 142
    :cond_1
    :goto_0
    iget p1, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->rowCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/stream/JSONStreamReader;->rowCount:I

    return-void
.end method
