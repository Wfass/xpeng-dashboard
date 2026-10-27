.class final Lzipkin2/internal/Proto3ZipkinFields$TagField;
.super Lzipkin2/internal/Proto3ZipkinFields$SpanBuilderField;
.source "Proto3ZipkinFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/Proto3ZipkinFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TagField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzipkin2/internal/Proto3ZipkinFields$SpanBuilderField<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field static final KEY:Lzipkin2/internal/Proto3Fields$Utf8Field;

.field static final KEY_KEY:I = 0xa

.field static final VALUE:Lzipkin2/internal/Proto3Fields$Utf8Field;

.field static final VALUE_KEY:I = 0x12


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 170
    new-instance v0, Lzipkin2/internal/Proto3Fields$Utf8Field;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3Fields$Utf8Field;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$TagField;->KEY:Lzipkin2/internal/Proto3Fields$Utf8Field;

    .line 171
    new-instance v0, Lzipkin2/internal/Proto3Fields$Utf8Field;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3Fields$Utf8Field;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$TagField;->VALUE:Lzipkin2/internal/Proto3Fields$Utf8Field;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "key"    # I

    .line 174
    invoke-direct {p0, p1}, Lzipkin2/internal/Proto3ZipkinFields$SpanBuilderField;-><init>(I)V

    .line 175
    return-void
.end method


# virtual methods
.method readLengthPrefixAndValue(Lzipkin2/internal/Buffer;Lzipkin2/Span$Builder;)Z
    .locals 7
    .param p1, "b"    # Lzipkin2/internal/Buffer;
    .param p2, "builder"    # Lzipkin2/Span$Builder;

    .line 187
    invoke-virtual {p0, p1}, Lzipkin2/internal/Proto3ZipkinFields$TagField;->readLengthPrefix(Lzipkin2/internal/Buffer;)I

    move-result v0

    .line 188
    .local v0, "length":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 189
    :cond_0
    iget v2, p1, Lzipkin2/internal/Buffer;->pos:I

    add-int/2addr v2, v0

    .line 192
    .local v2, "endPos":I
    const/4 v3, 0x0

    .local v3, "key":Ljava/lang/String;
    const-string v4, ""

    .line 193
    .local v4, "value":Ljava/lang/String;
    :goto_0
    iget v5, p1, Lzipkin2/internal/Buffer;->pos:I

    if-ge v5, v2, :cond_4

    .line 194
    invoke-virtual {p1}, Lzipkin2/internal/Buffer;->readVarint32()I

    move-result v5

    .line 195
    .local v5, "nextKey":I
    const/16 v6, 0xa

    if-eq v5, v6, :cond_2

    const/16 v6, 0x12

    if-eq v5, v6, :cond_1

    .line 204
    invoke-static {p1, v5}, Lzipkin2/internal/Proto3ZipkinFields;->logAndSkip(Lzipkin2/internal/Buffer;I)V

    .end local v5    # "nextKey":I
    goto :goto_1

    .line 200
    .restart local v5    # "nextKey":I
    :cond_1
    sget-object v6, Lzipkin2/internal/Proto3ZipkinFields$TagField;->VALUE:Lzipkin2/internal/Proto3Fields$Utf8Field;

    invoke-virtual {v6, p1}, Lzipkin2/internal/Proto3Fields$Utf8Field;->readLengthPrefixAndValue(Lzipkin2/internal/Buffer;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 201
    .local v6, "read":Ljava/lang/String;
    if-eqz v6, :cond_3

    move-object v4, v6

    goto :goto_1

    .line 197
    .end local v6    # "read":Ljava/lang/String;
    :cond_2
    sget-object v6, Lzipkin2/internal/Proto3ZipkinFields$TagField;->KEY:Lzipkin2/internal/Proto3Fields$Utf8Field;

    invoke-virtual {v6, p1}, Lzipkin2/internal/Proto3Fields$Utf8Field;->readLengthPrefixAndValue(Lzipkin2/internal/Buffer;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Ljava/lang/String;

    .line 198
    nop

    .line 206
    .end local v5    # "nextKey":I
    :cond_3
    :goto_1
    goto :goto_0

    .line 207
    :cond_4
    if-nez v3, :cond_5

    return v1

    .line 208
    :cond_5
    invoke-virtual {p2, v3, v4}, Lzipkin2/Span$Builder;->putTag(Ljava/lang/String;Ljava/lang/String;)Lzipkin2/Span$Builder;

    .line 209
    const/4 v1, 0x1

    return v1
.end method

.method bridge synthetic sizeOfValue(Ljava/lang/Object;)I
    .locals 0

    .line 165
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lzipkin2/internal/Proto3ZipkinFields$TagField;->sizeOfValue(Ljava/util/Map$Entry;)I

    move-result p1

    return p1
.end method

.method sizeOfValue(Ljava/util/Map$Entry;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 178
    .local p1, "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$TagField;->KEY:Lzipkin2/internal/Proto3Fields$Utf8Field;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lzipkin2/internal/Proto3Fields$Utf8Field;->sizeInBytes(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$TagField;->VALUE:Lzipkin2/internal/Proto3Fields$Utf8Field;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lzipkin2/internal/Proto3Fields$Utf8Field;->sizeInBytes(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method bridge synthetic writeValue(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V
    .locals 0

    .line 165
    check-cast p2, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2}, Lzipkin2/internal/Proto3ZipkinFields$TagField;->writeValue(Lzipkin2/internal/Buffer;Ljava/util/Map$Entry;)V

    return-void
.end method

.method writeValue(Lzipkin2/internal/Buffer;Ljava/util/Map$Entry;)V
    .locals 2
    .param p1, "b"    # Lzipkin2/internal/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/internal/Buffer;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 182
    .local p2, "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$TagField;->KEY:Lzipkin2/internal/Proto3Fields$Utf8Field;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lzipkin2/internal/Proto3Fields$Utf8Field;->write(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V

    .line 183
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$TagField;->VALUE:Lzipkin2/internal/Proto3Fields$Utf8Field;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lzipkin2/internal/Proto3Fields$Utf8Field;->write(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V

    .line 184
    return-void
.end method
