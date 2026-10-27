.class final Lzipkin2/internal/Proto3Fields$BooleanField;
.super Lzipkin2/internal/Proto3Fields$Field;
.source "Proto3Fields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/Proto3Fields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BooleanField"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 272
    const-class v0, Lzipkin2/internal/Proto3Fields;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "key"    # I

    .line 274
    invoke-direct {p0, p1}, Lzipkin2/internal/Proto3Fields$Field;-><init>(I)V

    .line 275
    nop

    .line 276
    return-void
.end method


# virtual methods
.method read(Lzipkin2/internal/Buffer;)Z
    .locals 4
    .param p1, "b"    # Lzipkin2/internal/Buffer;

    .line 289
    invoke-virtual {p1}, Lzipkin2/internal/Buffer;->readByte()B

    move-result v0

    .line 290
    .local v0, "bool":B
    if-ltz v0, :cond_1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 293
    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 291
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed: invalid boolean value at byte "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lzipkin2/internal/Buffer;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method sizeInBytes(Z)I
    .locals 1
    .param p1, "bool"    # Z

    .line 279
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method write(Lzipkin2/internal/Buffer;Z)V
    .locals 1
    .param p1, "b"    # Lzipkin2/internal/Buffer;
    .param p2, "bool"    # Z

    .line 283
    if-nez p2, :cond_0

    return-void

    .line 284
    :cond_0
    iget v0, p0, Lzipkin2/internal/Proto3Fields$BooleanField;->key:I

    invoke-virtual {p1, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 285
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 286
    return-void
.end method
