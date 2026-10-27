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
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 272
    const-class v0, Lzipkin2/internal/Proto3Fields;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lzipkin2/internal/Proto3Fields$BooleanField;->a:Z

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 274
    invoke-direct {p0, p1}, Lzipkin2/internal/Proto3Fields$Field;-><init>(I)V

    .line 275
    sget-boolean p1, Lzipkin2/internal/Proto3Fields$BooleanField;->a:Z

    if-nez p1, :cond_1

    iget p1, p0, Lzipkin2/internal/Proto3Fields$BooleanField;->c:I

    if-nez p1, :cond_0

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
.method a(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method a(Lzipkin2/internal/Buffer;Z)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 284
    :cond_0
    iget p2, p0, Lzipkin2/internal/Proto3Fields$BooleanField;->d:I

    invoke-virtual {p1, p2}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    const/4 p2, 0x1

    .line 285
    invoke-virtual {p1, p2}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    return-void
.end method

.method a(Lzipkin2/internal/Buffer;)Z
    .locals 3

    .line 289
    invoke-virtual {p1}, Lzipkin2/internal/Buffer;->b()B

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 291
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed: invalid boolean value at byte "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lzipkin2/internal/Buffer;->a:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
