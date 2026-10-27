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
.field static final a:Lzipkin2/internal/Proto3Fields$Utf8Field;

.field static final f:Lzipkin2/internal/Proto3Fields$Utf8Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 170
    new-instance v0, Lzipkin2/internal/Proto3Fields$Utf8Field;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3Fields$Utf8Field;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$TagField;->a:Lzipkin2/internal/Proto3Fields$Utf8Field;

    .line 171
    new-instance v0, Lzipkin2/internal/Proto3Fields$Utf8Field;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3Fields$Utf8Field;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$TagField;->f:Lzipkin2/internal/Proto3Fields$Utf8Field;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lzipkin2/internal/Proto3ZipkinFields$SpanBuilderField;-><init>(I)V

    return-void
.end method


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 165
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lzipkin2/internal/Proto3ZipkinFields$TagField;->a(Ljava/util/Map$Entry;)I

    move-result p1

    return p1
.end method

.method a(Ljava/util/Map$Entry;)I
    .locals 2
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
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$TagField;->a:Lzipkin2/internal/Proto3Fields$Utf8Field;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lzipkin2/internal/Proto3Fields$Utf8Field;->b(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$TagField;->f:Lzipkin2/internal/Proto3Fields$Utf8Field;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lzipkin2/internal/Proto3Fields$Utf8Field;->b(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method bridge synthetic a(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V
    .locals 0

    .line 165
    check-cast p2, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2}, Lzipkin2/internal/Proto3ZipkinFields$TagField;->a(Lzipkin2/internal/Buffer;Ljava/util/Map$Entry;)V

    return-void
.end method

.method a(Lzipkin2/internal/Buffer;Ljava/util/Map$Entry;)V
    .locals 2
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
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$TagField;->a:Lzipkin2/internal/Proto3Fields$Utf8Field;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lzipkin2/internal/Proto3Fields$Utf8Field;->b(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V

    .line 183
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$TagField;->f:Lzipkin2/internal/Proto3Fields$Utf8Field;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lzipkin2/internal/Proto3Fields$Utf8Field;->b(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V

    return-void
.end method

.method a(Lzipkin2/internal/Buffer;Lzipkin2/Span$Builder;)Z
    .locals 6

    .line 187
    invoke-virtual {p0, p1}, Lzipkin2/internal/Proto3ZipkinFields$TagField;->b(Lzipkin2/internal/Buffer;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 189
    :cond_0
    iget v2, p1, Lzipkin2/internal/Buffer;->a:I

    add-int/2addr v2, v0

    const/4 v0, 0x0

    const-string v3, ""

    .line 193
    :cond_1
    :goto_0
    iget v4, p1, Lzipkin2/internal/Buffer;->a:I

    if-ge v4, v2, :cond_4

    .line 194
    invoke-virtual {p1}, Lzipkin2/internal/Buffer;->c()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    const/16 v5, 0x12

    if-eq v4, v5, :cond_2

    .line 204
    invoke-static {p1, v4}, Lzipkin2/internal/Proto3ZipkinFields;->a(Lzipkin2/internal/Buffer;I)V

    goto :goto_0

    .line 200
    :cond_2
    sget-object v4, Lzipkin2/internal/Proto3ZipkinFields$TagField;->f:Lzipkin2/internal/Proto3Fields$Utf8Field;

    invoke-virtual {v4, p1}, Lzipkin2/internal/Proto3Fields$Utf8Field;->a(Lzipkin2/internal/Buffer;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    move-object v3, v4

    goto :goto_0

    .line 197
    :cond_3
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$TagField;->a:Lzipkin2/internal/Proto3Fields$Utf8Field;

    invoke-virtual {v0, p1}, Lzipkin2/internal/Proto3Fields$Utf8Field;->a(Lzipkin2/internal/Buffer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    return v1

    .line 208
    :cond_5
    invoke-virtual {p2, v0, v3}, Lzipkin2/Span$Builder;->putTag(Ljava/lang/String;Ljava/lang/String;)Lzipkin2/Span$Builder;

    const/4 p1, 0x1

    return p1
.end method
