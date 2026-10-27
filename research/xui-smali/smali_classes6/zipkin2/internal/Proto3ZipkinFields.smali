.class final Lzipkin2/internal/Proto3ZipkinFields;
.super Ljava/lang/Object;
.source "Proto3ZipkinFields.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/internal/Proto3ZipkinFields$SpanField;,
        Lzipkin2/internal/Proto3ZipkinFields$TagField;,
        Lzipkin2/internal/Proto3ZipkinFields$AnnotationField;,
        Lzipkin2/internal/Proto3ZipkinFields$SpanBuilderField;,
        Lzipkin2/internal/Proto3ZipkinFields$EndpointField;
    }
.end annotation


# static fields
.field static final LOG:Ljava/util/logging/Logger;

.field static final SPAN:Lzipkin2/internal/Proto3ZipkinFields$SpanField;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lzipkin2/internal/Proto3ZipkinFields;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields;->LOG:Ljava/util/logging/Logger;

    .line 43
    new-instance v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;

    invoke-direct {v0}, Lzipkin2/internal/Proto3ZipkinFields$SpanField;-><init>()V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields;->SPAN:Lzipkin2/internal/Proto3ZipkinFields$SpanField;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static logAndSkip(Lzipkin2/internal/Buffer;I)V
    .locals 7
    .param p0, "buffer"    # Lzipkin2/internal/Buffer;
    .param p1, "nextKey"    # I

    .line 373
    iget v0, p0, Lzipkin2/internal/Buffer;->pos:I

    invoke-static {p1, v0}, Lzipkin2/internal/Proto3Fields$Field;->wireType(II)I

    move-result v0

    .line 374
    .local v0, "nextWireType":I
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    iget v1, p0, Lzipkin2/internal/Buffer;->pos:I

    invoke-static {p1, v1}, Lzipkin2/internal/Proto3Fields$Field;->fieldNumber(II)I

    move-result v1

    .line 376
    .local v1, "nextFieldNumber":I
    sget-object v2, Lzipkin2/internal/Proto3ZipkinFields;->LOG:Ljava/util/logging/Logger;

    const-string v3, "Skipping field: byte=%s, fieldNumber=%s, wireType=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lzipkin2/internal/Buffer;->pos:I

    .line 377
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 376
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 379
    .end local v1    # "nextFieldNumber":I
    :cond_0
    invoke-static {p0, v0}, Lzipkin2/internal/Proto3Fields$Field;->skipValue(Lzipkin2/internal/Buffer;I)Z

    .line 380
    return-void
.end method
