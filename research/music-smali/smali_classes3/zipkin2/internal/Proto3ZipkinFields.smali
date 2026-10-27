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
.field static final a:Ljava/util/logging/Logger;

.field static final b:Lzipkin2/internal/Proto3ZipkinFields$SpanField;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lzipkin2/internal/Proto3ZipkinFields;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields;->a:Ljava/util/logging/Logger;

    .line 43
    new-instance v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;

    invoke-direct {v0}, Lzipkin2/internal/Proto3ZipkinFields$SpanField;-><init>()V

    sput-object v0, Lzipkin2/internal/Proto3ZipkinFields;->b:Lzipkin2/internal/Proto3ZipkinFields$SpanField;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lzipkin2/internal/Buffer;I)V
    .locals 5

    .line 373
    iget v0, p0, Lzipkin2/internal/Buffer;->a:I

    invoke-static {p1, v0}, Lzipkin2/internal/Proto3Fields$Field;->b(II)I

    move-result v0

    .line 374
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    iget v1, p0, Lzipkin2/internal/Buffer;->a:I

    invoke-static {p1, v1}, Lzipkin2/internal/Proto3Fields$Field;->a(II)I

    move-result p1

    .line 376
    sget-object v1, Lzipkin2/internal/Proto3ZipkinFields;->a:Ljava/util/logging/Logger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lzipkin2/internal/Buffer;->a:I

    .line 377
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p1

    const-string p1, "Skipping field: byte=%s, fieldNumber=%s, wireType=%s"

    .line 376
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 379
    :cond_0
    invoke-static {p0, v0}, Lzipkin2/internal/Proto3Fields$Field;->c(Lzipkin2/internal/Buffer;I)Z

    return-void
.end method
