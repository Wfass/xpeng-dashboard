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
.field static final synthetic e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    const-class v0, Lzipkin2/internal/Proto3Fields;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lzipkin2/internal/Proto3Fields$LengthDelimitedField;->e:Z

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 95
    invoke-direct {p0, p1}, Lzipkin2/internal/Proto3Fields$Field;-><init>(I)V

    .line 96
    sget-boolean p1, Lzipkin2/internal/Proto3Fields$LengthDelimitedField;->e:Z

    if-nez p1, :cond_1

    iget p1, p0, Lzipkin2/internal/Proto3Fields$LengthDelimitedField;->c:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method final a(Lzipkin2/internal/Buffer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/internal/Buffer;",
            ")TT;"
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p1}, Lzipkin2/internal/Proto3Fields$LengthDelimitedField;->b(Lzipkin2/internal/Buffer;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 122
    :cond_0
    invoke-virtual {p0, p1, v0}, Lzipkin2/internal/Proto3Fields$LengthDelimitedField;->b(Lzipkin2/internal/Buffer;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method abstract a(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/internal/Buffer;",
            "TT;)V"
        }
    .end annotation
.end method

.method final b(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 101
    :cond_0
    invoke-virtual {p0, p1}, Lzipkin2/internal/Proto3Fields$LengthDelimitedField;->a(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 103
    :cond_1
    invoke-static {p1}, Lzipkin2/internal/Proto3Fields;->a(I)I

    move-result p1

    return p1
.end method

.method final b(Lzipkin2/internal/Buffer;)I
    .locals 1

    .line 126
    invoke-virtual {p1}, Lzipkin2/internal/Buffer;->c()I

    move-result v0

    .line 127
    invoke-static {p1, v0}, Lzipkin2/internal/Proto3Fields;->a(Lzipkin2/internal/Buffer;I)V

    return v0
.end method

.method abstract b(Lzipkin2/internal/Buffer;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/internal/Buffer;",
            "I)TT;"
        }
    .end annotation
.end method

.method final b(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/internal/Buffer;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-virtual {p0, p2}, Lzipkin2/internal/Proto3Fields$LengthDelimitedField;->a(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 110
    :cond_1
    iget v1, p0, Lzipkin2/internal/Proto3Fields$LengthDelimitedField;->d:I

    invoke-virtual {p1, v1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 111
    invoke-virtual {p1, v0}, Lzipkin2/internal/Buffer;->a(I)V

    .line 112
    invoke-virtual {p0, p1, p2}, Lzipkin2/internal/Proto3Fields$LengthDelimitedField;->a(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V

    return-void
.end method
