.class abstract Lcdi;
.super Ljava/lang/Object;
.source "CoderBase.java"


# static fields
.field private static final b:[B


# instance fields
.field private final a:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 29
    new-array v0, v0, [B

    sput-object v0, Lcdi;->b:[B

    return-void
.end method

.method protected varargs constructor <init>([Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcdi;->a:[Ljava/lang/Class;

    return-void
.end method

.method protected static a(Ljava/lang/Object;I)I
    .locals 1

    .line 83
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p1

    :cond_0
    return p1
.end method


# virtual methods
.method a(Ljava/io/OutputStream;Ljava/lang/Object;)Ljava/io/OutputStream;
    .locals 0

    .line 75
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "method doesn\'t support writing"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Ljava/lang/Object;)Z
    .locals 5

    .line 42
    iget-object v0, p0, Lcdi;->a:[Ljava/lang/Class;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 43
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method b(Ljava/lang/Object;)[B
    .locals 0

    .line 54
    sget-object p1, Lcdi;->b:[B

    return-object p1
.end method
