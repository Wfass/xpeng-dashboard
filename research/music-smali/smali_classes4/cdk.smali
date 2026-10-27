.class Lcdk;
.super Lcdi;
.source "DeltaDecoder.java"


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    .line 29
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Number;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcdi;-><init>([Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method a(Ljava/io/OutputStream;Ljava/lang/Object;)Ljava/io/OutputStream;
    .locals 1

    const/4 v0, 0x1

    .line 40
    invoke-static {p2, v0}, Lcdk;->a(Ljava/lang/Object;I)I

    move-result p2

    .line 42
    :try_start_0
    new-instance v0, Lcho;

    invoke-direct {v0, p2}, Lcho;-><init>(I)V

    new-instance p2, Lchs;

    invoke-direct {p2, p1}, Lchs;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p2}, Lcho;->a(Lchr;)Lchr;

    move-result-object p1
    :try_end_0
    .catch Lcia; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 44
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Lcia;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method b(Ljava/lang/Object;)[B
    .locals 2

    const/4 v0, 0x1

    .line 50
    new-array v1, v0, [B

    invoke-static {p1, v0}, Lcdk;->a(Ljava/lang/Object;I)I

    move-result p1

    sub-int/2addr p1, v0

    int-to-byte p1, p1

    const/4 v0, 0x0

    aput-byte p1, v1, v0

    return-object v1
.end method
