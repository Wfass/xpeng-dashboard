.class Lzipkin2/internal/Proto3Fields$VarintField;
.super Lzipkin2/internal/Proto3Fields$Field;
.source "Proto3Fields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/Proto3Fields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VarintField"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 245
    const-class v0, Lzipkin2/internal/Proto3Fields;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 247
    invoke-direct {p0, p1}, Lzipkin2/internal/Proto3Fields$Field;-><init>(I)V

    return-void
.end method


# virtual methods
.method sizeInBytes(I)I
    .locals 0

    if-eqz p1, :cond_0

    .line 252
    invoke-static {p1}, Lzipkin2/internal/Buffer;->varintSizeInBytes(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method sizeInBytes(J)I
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 262
    invoke-static {p1, p2}, Lzipkin2/internal/Buffer;->varintSizeInBytes(J)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method write(Lzipkin2/internal/Buffer;I)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 257
    :cond_0
    iget v0, p0, Lzipkin2/internal/Proto3Fields$VarintField;->key:I

    invoke-virtual {p1, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 258
    invoke-virtual {p1, p2}, Lzipkin2/internal/Buffer;->writeVarint(I)V

    return-void
.end method

.method write(Lzipkin2/internal/Buffer;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    return-void

    .line 267
    :cond_0
    iget v0, p0, Lzipkin2/internal/Proto3Fields$VarintField;->key:I

    invoke-virtual {p1, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 268
    invoke-virtual {p1, p2, p3}, Lzipkin2/internal/Buffer;->writeVarint(J)V

    return-void
.end method
