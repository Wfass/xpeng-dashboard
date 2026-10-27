.class Lzipkin2/internal/Proto3Fields$HexField;
.super Lzipkin2/internal/Proto3Fields$LengthDelimitedField;
.source "Proto3Fields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/Proto3Fields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HexField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzipkin2/internal/Proto3Fields$LengthDelimitedField<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 161
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lzipkin2/internal/Proto3Fields$HexField;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "key"    # I

    .line 165
    invoke-direct {p0, p1}, Lzipkin2/internal/Proto3Fields$LengthDelimitedField;-><init>(I)V

    .line 166
    return-void
.end method

.method static decodeLowerHex(C)I
    .locals 3
    .param p0, "c"    # C

    .line 183
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    return v0

    .line 184
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 185
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not lowerHex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method bridge synthetic readValue(Lzipkin2/internal/Buffer;I)Ljava/lang/Object;
    .locals 0

    .line 160
    invoke-virtual {p0, p1, p2}, Lzipkin2/internal/Proto3Fields$HexField;->readValue(Lzipkin2/internal/Buffer;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method readValue(Lzipkin2/internal/Buffer;I)Ljava/lang/String;
    .locals 6
    .param p1, "buffer"    # Lzipkin2/internal/Buffer;
    .param p2, "length"    # I

    .line 189
    mul-int/lit8 p2, p2, 0x2

    .line 190
    new-array v0, p2, [C

    .line 192
    .local v0, "result":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 193
    invoke-virtual {p1}, Lzipkin2/internal/Buffer;->readByte()B

    move-result v2

    .line 194
    .local v2, "b":B
    add-int/lit8 v3, v1, 0x0

    sget-object v4, Lzipkin2/internal/Proto3Fields$HexField;->HEX_DIGITS:[C

    shr-int/lit8 v5, v2, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 195
    add-int/lit8 v3, v1, 0x1

    sget-object v4, Lzipkin2/internal/Proto3Fields$HexField;->HEX_DIGITS:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 192
    .end local v2    # "b":B
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 198
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method bridge synthetic sizeOfValue(Ljava/lang/Object;)I
    .locals 0

    .line 160
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lzipkin2/internal/Proto3Fields$HexField;->sizeOfValue(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method sizeOfValue(Ljava/lang/String;)I
    .locals 1
    .param p1, "hex"    # Ljava/lang/String;

    .line 169
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 170
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method bridge synthetic writeValue(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V
    .locals 0

    .line 160
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lzipkin2/internal/Proto3Fields$HexField;->writeValue(Lzipkin2/internal/Buffer;Ljava/lang/String;)V

    return-void
.end method

.method writeValue(Lzipkin2/internal/Buffer;Ljava/lang/String;)V
    .locals 5
    .param p1, "b"    # Lzipkin2/internal/Buffer;
    .param p2, "hex"    # Ljava/lang/String;

    .line 175
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 176
    add-int/lit8 v2, v0, 0x1

    .local v2, "i":I
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .end local v0    # "i":I
    invoke-static {v0}, Lzipkin2/internal/Proto3Fields$HexField;->decodeLowerHex(C)I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    .line 177
    .local v0, "d1":I
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lzipkin2/internal/Proto3Fields$HexField;->decodeLowerHex(C)I

    move-result v3

    .line 178
    .local v3, "d2":I
    add-int v4, v0, v3

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 175
    .end local v0    # "d1":I
    .end local v3    # "d2":I
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "i":I
    .local v0, "i":I
    goto :goto_0

    .line 180
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_0
    return-void
.end method
