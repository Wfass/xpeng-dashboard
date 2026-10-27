.class public final Lalh;
.super Ljava/lang/Object;
.source "ECIEncoderSet.java"


# static fields
.field static final synthetic a:Z

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:[Ljava/nio/charset/CharsetEncoder;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 40
    const-class v0, Lalh;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lalh;->a:Z

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lalh;->b:Ljava/util/List;

    const-string v1, "IBM437"

    const-string v2, "ISO-8859-2"

    const-string v3, "ISO-8859-3"

    const-string v4, "ISO-8859-4"

    const-string v5, "ISO-8859-5"

    const-string v6, "ISO-8859-6"

    const-string v7, "ISO-8859-7"

    const-string v8, "ISO-8859-8"

    const-string v9, "ISO-8859-9"

    const-string v10, "ISO-8859-10"

    const-string v11, "ISO-8859-11"

    const-string v12, "ISO-8859-13"

    const-string v13, "ISO-8859-14"

    const-string v14, "ISO-8859-15"

    const-string v15, "ISO-8859-16"

    const-string v16, "windows-1250"

    const-string v17, "windows-1251"

    const-string v18, "windows-1252"

    const-string v19, "windows-1256"

    const-string v20, "Shift_JIS"

    .line 45
    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    .line 65
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 66
    invoke-static {v3}, Lalg;->a(Ljava/lang/String;)Lalg;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 68
    :try_start_0
    sget-object v4, Lalh;->b:Ljava/util/List;

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V
    .locals 9

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 92
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    move v4, v3

    move v3, v1

    .line 95
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_7

    .line 97
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/charset/CharsetEncoder;

    .line 98
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, p3, :cond_2

    .line 99
    invoke-virtual {v6, v7}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_2
    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    if-nez v5, :cond_5

    .line 107
    sget-object v6, Lalh;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/charset/CharsetEncoder;

    .line 108
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 111
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v2

    :cond_5
    if-nez v5, :cond_6

    move v4, v2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 125
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_8

    if-nez v4, :cond_8

    .line 127
    new-array p1, v2, [Ljava/nio/charset/CharsetEncoder;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/nio/charset/CharsetEncoder;

    aput-object p3, p1, v1

    iput-object p1, p0, Lalh;->c:[Ljava/nio/charset/CharsetEncoder;

    goto :goto_4

    .line 131
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Ljava/nio/charset/CharsetEncoder;

    iput-object p1, p0, Lalh;->c:[Ljava/nio/charset/CharsetEncoder;

    .line 133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p3, v1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetEncoder;

    .line 134
    iget-object v3, p0, Lalh;->c:[Ljava/nio/charset/CharsetEncoder;

    add-int/lit8 v4, p3, 0x1

    aput-object v0, v3, p3

    move p3, v4

    goto :goto_3

    .line 137
    :cond_9
    iget-object p1, p0, Lalh;->c:[Ljava/nio/charset/CharsetEncoder;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    aput-object v0, p1, p3

    .line 138
    iget-object p1, p0, Lalh;->c:[Ljava/nio/charset/CharsetEncoder;

    add-int/2addr p3, v2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    aput-object v0, p1, p3

    :goto_4
    const/4 p1, -0x1

    if-eqz p2, :cond_b

    move p3, v1

    .line 144
    :goto_5
    iget-object v0, p0, Lalh;->c:[Ljava/nio/charset/CharsetEncoder;

    array-length v2, v0

    if-ge p3, v2, :cond_b

    .line 145
    aget-object v0, v0, p3

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lalh;->c:[Ljava/nio/charset/CharsetEncoder;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move p1, p3

    goto :goto_6

    :cond_a
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 151
    :cond_b
    :goto_6
    iput p1, p0, Lalh;->d:I

    .line 153
    sget-boolean p1, Lalh;->a:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Lalh;->c:[Ljava/nio/charset/CharsetEncoder;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_7

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_d
    :goto_7
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 157
    iget-object v0, p0, Lalh;->c:[Ljava/nio/charset/CharsetEncoder;

    array-length v0, v0

    return v0
.end method

.method public a(I)Ljava/nio/charset/Charset;
    .locals 1

    .line 166
    sget-boolean v0, Lalh;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lalh;->a()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 167
    :cond_1
    :goto_0
    iget-object v0, p0, Lalh;->c:[Ljava/nio/charset/CharsetEncoder;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object p1

    return-object p1
.end method

.method public a(CI)Z
    .locals 2

    .line 182
    sget-boolean v0, Lalh;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lalh;->a()I

    move-result v0

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 183
    :cond_1
    :goto_0
    iget-object v0, p0, Lalh;->c:[Ljava/nio/charset/CharsetEncoder;

    aget-object p2, v0, p2

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;I)[B
    .locals 1

    .line 195
    sget-boolean v0, Lalh;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lalh;->a()I

    move-result v0

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 196
    :cond_1
    :goto_0
    iget-object v0, p0, Lalh;->c:[Ljava/nio/charset/CharsetEncoder;

    aget-object p2, v0, p2

    .line 197
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1

    .line 178
    iget v0, p0, Lalh;->d:I

    return v0
.end method

.method public b(I)I
    .locals 1

    .line 171
    iget-object v0, p0, Lalh;->c:[Ljava/nio/charset/CharsetEncoder;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p1}, Lalg;->a(Ljava/nio/charset/Charset;)Lalg;

    move-result-object p1

    invoke-virtual {p1}, Lalg;->a()I

    move-result p1

    return p1
.end method
