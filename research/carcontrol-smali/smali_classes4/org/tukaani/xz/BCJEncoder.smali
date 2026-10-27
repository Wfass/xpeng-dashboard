.class Lorg/tukaani/xz/BCJEncoder;
.super Lorg/tukaani/xz/BCJCoder;

# interfaces
.implements Lorg/tukaani/xz/FilterEncoder;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static synthetic class$org$tukaani$xz$BCJEncoder:Ljava/lang/Class;


# instance fields
.field private final filterID:J

.field private final options:Lorg/tukaani/xz/BCJOptions;

.field private final props:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/tukaani/xz/BCJEncoder;->class$org$tukaani$xz$BCJEncoder:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.tukaani.xz.BCJEncoder"

    invoke-static {v0}, Lorg/tukaani/xz/BCJEncoder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/tukaani/xz/BCJEncoder;->class$org$tukaani$xz$BCJEncoder:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/tukaani/xz/BCJEncoder;->$assertionsDisabled:Z

    return-void
.end method

.method constructor <init>(Lorg/tukaani/xz/BCJOptions;J)V
    .locals 5

    invoke-direct {p0}, Lorg/tukaani/xz/BCJCoder;-><init>()V

    sget-boolean v0, Lorg/tukaani/xz/BCJEncoder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-static {p2, p3}, Lorg/tukaani/xz/BCJEncoder;->isBCJFilterID(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/tukaani/xz/BCJOptions;->getStartOffset()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/tukaani/xz/BCJEncoder;->props:[B

    goto :goto_2

    :cond_2
    const/4 v2, 0x4

    new-array v3, v2, [B

    iput-object v3, p0, Lorg/tukaani/xz/BCJEncoder;->props:[B

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Lorg/tukaani/xz/BCJEncoder;->props:[B

    mul-int/lit8 v4, v1, 0x8

    ushr-int v4, v0, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iput-wide p2, p0, Lorg/tukaani/xz/BCJEncoder;->filterID:J

    invoke-virtual {p1}, Lorg/tukaani/xz/BCJOptions;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/tukaani/xz/BCJOptions;

    iput-object p1, p0, Lorg/tukaani/xz/BCJEncoder;->options:Lorg/tukaani/xz/BCJOptions;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public getFilterID()J
    .locals 2

    iget-wide v0, p0, Lorg/tukaani/xz/BCJEncoder;->filterID:J

    return-wide v0
.end method

.method public getFilterProps()[B
    .locals 1

    iget-object v0, p0, Lorg/tukaani/xz/BCJEncoder;->props:[B

    return-object v0
.end method

.method public getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;)Lorg/tukaani/xz/FinishableOutputStream;
    .locals 1

    iget-object v0, p0, Lorg/tukaani/xz/BCJEncoder;->options:Lorg/tukaani/xz/BCJOptions;

    invoke-virtual {v0, p1}, Lorg/tukaani/xz/BCJOptions;->getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;)Lorg/tukaani/xz/FinishableOutputStream;

    move-result-object p1

    return-object p1
.end method

.method public supportsFlushing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
