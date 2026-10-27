.class final Lzipkin2/internal/Proto3Fields$Fixed64Field;
.super Lzipkin2/internal/Proto3Fields$Field;
.source "Proto3Fields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/Proto3Fields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Fixed64Field"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 222
    const-class v0, Lzipkin2/internal/Proto3Fields;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 224
    invoke-direct {p0, p1}, Lzipkin2/internal/Proto3Fields$Field;-><init>(I)V

    return-void
.end method


# virtual methods
.method readValue(Lzipkin2/internal/Buffer;)J
    .locals 2

    const/16 v0, 0x8

    .line 240
    invoke-static {p1, v0}, Lzipkin2/internal/Proto3Fields;->ensureLength(Lzipkin2/internal/Buffer;I)V

    .line 241
    invoke-virtual {p1}, Lzipkin2/internal/Buffer;->readLongLe()J

    move-result-wide v0

    return-wide v0
.end method

.method sizeInBytes(J)I
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x9

    return p1
.end method

.method write(Lzipkin2/internal/Buffer;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    return-void

    .line 230
    :cond_0
    iget v0, p0, Lzipkin2/internal/Proto3Fields$Fixed64Field;->key:I

    invoke-virtual {p1, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 231
    invoke-virtual {p1, p2, p3}, Lzipkin2/internal/Buffer;->writeLongLe(J)V

    return-void
.end method
