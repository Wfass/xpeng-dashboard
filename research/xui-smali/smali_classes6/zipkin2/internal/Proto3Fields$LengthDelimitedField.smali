.class abstract Lzipkin2/internal/Proto3Fields$LengthDelimitedField;
.super Lzipkin2/internal/Proto3Fields$Field;
.source "Proto3Fields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/Proto3Fields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "LengthDelimitedField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lzipkin2/internal/Proto3Fields$Field;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    const-class v0, Lzipkin2/internal/Proto3Fields;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "key"    # I

    .line 95
    .local p0, "this":Lzipkin2/internal/Proto3Fields$LengthDelimitedField;, "Lzipkin2/internal/Proto3Fields$LengthDelimitedField<TT;>;"
    invoke-direct {p0, p1}, Lzipkin2/internal/Proto3Fields$Field;-><init>(I)V

    .line 96
    nop

    .line 97
    return-void
.end method


# virtual methods
.method final readLengthPrefix(Lzipkin2/internal/Buffer;)I
    .locals 1
    .param p1, "b"    # Lzipkin2/internal/Buffer;

    .line 126
    .local p0, "this":Lzipkin2/internal/Proto3Fields$LengthDelimitedField;, "Lzipkin2/internal/Proto3Fields$LengthDelimitedField<TT;>;"
    invoke-virtual {p1}, Lzipkin2/internal/Buffer;->readVarint32()I

    move-result v0

    .line 127
    .local v0, "length":I
    invoke-static {p1, v0}, Lzipkin2/internal/Proto3Fields;->ensureLength(Lzipkin2/internal/Buffer;I)V

    .line 128
    return v0
.end method

.method final readLengthPrefixAndValue(Lzipkin2/internal/Buffer;)Ljava/lang/Object;
    .locals 2
    .param p1, "b"    # Lzipkin2/internal/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/internal/Buffer;",
            ")TT;"
        }
    .end annotation

    .line 120
    .local p0, "this":Lzipkin2/internal/Proto3Fields$LengthDelimitedField;, "Lzipkin2/internal/Proto3Fields$LengthDelimitedField<TT;>;"
    invoke-virtual {p0, p1}, Lzipkin2/internal/Proto3Fields$LengthDelimitedField;->readLengthPrefix(Lzipkin2/internal/Buffer;)I

    move-result v0

    .line 121
    .local v0, "length":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 122
    :cond_0
    invoke-virtual {p0, p1, v0}, Lzipkin2/internal/Proto3Fields$LengthDelimitedField;->readValue(Lzipkin2/internal/Buffer;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method abstract readValue(Lzipkin2/internal/Buffer;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/internal/Buffer;",
            "I)TT;"
        }
    .end annotation
.end method

.method final sizeInBytes(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 100
    .local p0, "this":Lzipkin2/internal/Proto3Fields$LengthDelimitedField;, "Lzipkin2/internal/Proto3Fields$LengthDelimitedField<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 101
    :cond_0
    invoke-virtual {p0, p1}, Lzipkin2/internal/Proto3Fields$LengthDelimitedField;->sizeOfValue(Ljava/lang/Object;)I

    move-result v1

    .line 102
    .local v1, "sizeOfValue":I
    if-nez v1, :cond_1

    return v0

    .line 103
    :cond_1
    invoke-static {v1}, Lzipkin2/internal/Proto3Fields;->sizeOfLengthDelimitedField(I)I

    move-result v0

    return v0
.end method

.method abstract sizeOfValue(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method final write(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V
    .locals 2
    .param p1, "b"    # Lzipkin2/internal/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/internal/Buffer;",
            "TT;)V"
        }
    .end annotation

    .line 107
    .local p0, "this":Lzipkin2/internal/Proto3Fields$LengthDelimitedField;, "Lzipkin2/internal/Proto3Fields$LengthDelimitedField<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-virtual {p0, p2}, Lzipkin2/internal/Proto3Fields$LengthDelimitedField;->sizeOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 109
    .local v0, "sizeOfValue":I
    if-nez v0, :cond_1

    return-void

    .line 110
    :cond_1
    iget v1, p0, Lzipkin2/internal/Proto3Fields$LengthDelimitedField;->key:I

    invoke-virtual {p1, v1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 111
    invoke-virtual {p1, v0}, Lzipkin2/internal/Buffer;->writeVarint(I)V

    .line 112
    invoke-virtual {p0, p1, p2}, Lzipkin2/internal/Proto3Fields$LengthDelimitedField;->writeValue(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method abstract writeValue(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/internal/Buffer;",
            "TT;)V"
        }
    .end annotation
.end method
