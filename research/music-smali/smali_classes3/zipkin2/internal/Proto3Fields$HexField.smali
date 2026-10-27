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
.field static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 161
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lzipkin2/internal/Proto3Fields$HexField;->a:[C

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

    .line 165
    invoke-direct {p0, p1}, Lzipkin2/internal/Proto3Fields$LengthDelimitedField;-><init>(I)V

    return-void
.end method

.method static a(C)I
    .locals 3

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v1, 0x66

    if-gt p0, v1, :cond_1

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    .line 185
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not lowerHex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 160
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lzipkin2/internal/Proto3Fields$HexField;->a(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method a(Ljava/lang/String;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 170
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method a(Lzipkin2/internal/Buffer;I)Ljava/lang/String;
    .locals 6

    mul-int/lit8 p2, p2, 0x2

    .line 190
    new-array v0, p2, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 193
    invoke-virtual {p1}, Lzipkin2/internal/Buffer;->b()B

    move-result v2

    add-int/lit8 v3, v1, 0x0

    .line 194
    sget-object v4, Lzipkin2/internal/Proto3Fields$HexField;->a:[C

    shr-int/lit8 v5, v2, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    add-int/lit8 v3, v1, 0x1

    and-int/lit8 v2, v2, 0xf

    .line 195
    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 198
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method bridge synthetic a(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V
    .locals 0

    .line 160
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lzipkin2/internal/Proto3Fields$HexField;->a(Lzipkin2/internal/Buffer;Ljava/lang/String;)V

    return-void
.end method

.method a(Lzipkin2/internal/Buffer;Ljava/lang/String;)V
    .locals 4

    .line 175
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 176
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lzipkin2/internal/Proto3Fields$HexField;->a(C)I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    .line 177
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lzipkin2/internal/Proto3Fields$HexField;->a(C)I

    move-result v3

    add-int/2addr v1, v3

    int-to-byte v1, v1

    .line 178
    invoke-virtual {p1, v1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic b(Lzipkin2/internal/Buffer;I)Ljava/lang/Object;
    .locals 0

    .line 160
    invoke-virtual {p0, p1, p2}, Lzipkin2/internal/Proto3Fields$HexField;->a(Lzipkin2/internal/Buffer;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
