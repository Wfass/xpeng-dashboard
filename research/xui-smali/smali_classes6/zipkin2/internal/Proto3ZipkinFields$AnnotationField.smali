.class Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;
.super Lzipkin2/internal/Proto3ZipkinFields$SpanBuilderField;
.source "Proto3ZipkinFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/Proto3ZipkinFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnnotationField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzipkin2/internal/Proto3ZipkinFields$SpanBuilderField<",
        "Lzipkin2/Annotation;",
        ">;"
    }
.end annotation


# static fields
.field static final TIMESTAMP:Lzipkin2/internal/Proto3Fields$Fixed64Field;

.field static final TIMESTAMP_KEY:I = 0x9

.field static final VALUE:Lzipkin2/internal/Proto3Fields$Utf8Field;

.field static final VALUE_KEY:I = 0x12


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 122
    new-instance v0, Lzipkin2/internal/Proto3Fields$Fixed64Field;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3Fields$Fixed64Field;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;->TIMESTAMP:Lzipkin2/internal/Proto3Fields$Fixed64Field;

    .line 123
    new-instance v0, Lzipkin2/internal/Proto3Fields$Utf8Field;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lzipkin2/internal/Proto3Fields$Utf8Field;-><init>(I)V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;->VALUE:Lzipkin2/internal/Proto3Fields$Utf8Field;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "key"    # I

    .line 126
    invoke-direct {p0, p1}, Lzipkin2/internal/Proto3ZipkinFields$SpanBuilderField;-><init>(I)V

    .line 127
    return-void
.end method


# virtual methods
.method readLengthPrefixAndValue(Lzipkin2/internal/Buffer;Lzipkin2/Span$Builder;)Z
    .locals 8
    .param p1, "b"    # Lzipkin2/internal/Buffer;
    .param p2, "builder"    # Lzipkin2/Span$Builder;

    .line 139
    invoke-virtual {p0, p1}, Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;->readLengthPrefix(Lzipkin2/internal/Buffer;)I

    move-result v0

    .line 140
    .local v0, "length":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 141
    :cond_0
    iget v2, p1, Lzipkin2/internal/Buffer;->pos:I

    add-int/2addr v2, v0

    .line 144
    .local v2, "endPos":I
    const-wide/16 v3, 0x0

    .line 145
    .local v3, "timestamp":J
    const/4 v5, 0x0

    .line 146
    .local v5, "value":Ljava/lang/String;
    :goto_0
    iget v6, p1, Lzipkin2/internal/Buffer;->pos:I

    if-ge v6, v2, :cond_3

    .line 147
    invoke-virtual {p1}, Lzipkin2/internal/Buffer;->readVarint32()I

    move-result v6

    .line 148
    .local v6, "nextKey":I
    const/16 v7, 0x9

    if-eq v6, v7, :cond_2

    const/16 v7, 0x12

    if-eq v6, v7, :cond_1

    .line 156
    invoke-static {p1, v6}, Lzipkin2/internal/Proto3ZipkinFields;->logAndSkip(Lzipkin2/internal/Buffer;I)V

    .end local v6    # "nextKey":I
    goto :goto_1

    .line 153
    .restart local v6    # "nextKey":I
    :cond_1
    sget-object v7, Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;->VALUE:Lzipkin2/internal/Proto3Fields$Utf8Field;

    invoke-virtual {v7, p1}, Lzipkin2/internal/Proto3Fields$Utf8Field;->readLengthPrefixAndValue(Lzipkin2/internal/Buffer;)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    check-cast v5, Ljava/lang/String;

    .line 154
    goto :goto_1

    .line 150
    :cond_2
    sget-object v7, Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;->TIMESTAMP:Lzipkin2/internal/Proto3Fields$Fixed64Field;

    invoke-virtual {v7, p1}, Lzipkin2/internal/Proto3Fields$Fixed64Field;->readValue(Lzipkin2/internal/Buffer;)J

    move-result-wide v3

    .line 151
    nop

    .line 158
    .end local v6    # "nextKey":I
    :goto_1
    goto :goto_0

    .line 159
    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-eqz v6, :cond_5

    if-nez v5, :cond_4

    goto :goto_2

    .line 160
    :cond_4
    invoke-virtual {p2, v3, v4, v5}, Lzipkin2/Span$Builder;->addAnnotation(JLjava/lang/String;)Lzipkin2/Span$Builder;

    .line 161
    const/4 v1, 0x1

    return v1

    .line 159
    :cond_5
    :goto_2
    return v1
.end method

.method bridge synthetic sizeOfValue(Ljava/lang/Object;)I
    .locals 0

    .line 118
    check-cast p1, Lzipkin2/Annotation;

    invoke-virtual {p0, p1}, Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;->sizeOfValue(Lzipkin2/Annotation;)I

    move-result p1

    return p1
.end method

.method sizeOfValue(Lzipkin2/Annotation;)I
    .locals 3
    .param p1, "value"    # Lzipkin2/Annotation;

    .line 130
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;->TIMESTAMP:Lzipkin2/internal/Proto3Fields$Fixed64Field;

    invoke-virtual {p1}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lzipkin2/internal/Proto3Fields$Fixed64Field;->sizeInBytes(J)I

    move-result v0

    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;->VALUE:Lzipkin2/internal/Proto3Fields$Utf8Field;

    invoke-virtual {p1}, Lzipkin2/Annotation;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzipkin2/internal/Proto3Fields$Utf8Field;->sizeInBytes(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method bridge synthetic writeValue(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V
    .locals 0

    .line 118
    check-cast p2, Lzipkin2/Annotation;

    invoke-virtual {p0, p1, p2}, Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;->writeValue(Lzipkin2/internal/Buffer;Lzipkin2/Annotation;)V

    return-void
.end method

.method writeValue(Lzipkin2/internal/Buffer;Lzipkin2/Annotation;)V
    .locals 3
    .param p1, "b"    # Lzipkin2/internal/Buffer;
    .param p2, "value"    # Lzipkin2/Annotation;

    .line 134
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;->TIMESTAMP:Lzipkin2/internal/Proto3Fields$Fixed64Field;

    invoke-virtual {p2}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lzipkin2/internal/Proto3Fields$Fixed64Field;->write(Lzipkin2/internal/Buffer;J)V

    .line 135
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;->VALUE:Lzipkin2/internal/Proto3Fields$Utf8Field;

    invoke-virtual {p2}, Lzipkin2/Annotation;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lzipkin2/internal/Proto3Fields$Utf8Field;->write(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V

    .line 136
    return-void
.end method
