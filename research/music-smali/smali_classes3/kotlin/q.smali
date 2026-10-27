.class public final Lkotlin/q;
.super Ljava/lang/Object;
.source "UByte.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lkotlin/q;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# static fields
.field public static final a:Lkotlin/q$a;


# instance fields
.field private final b:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/q$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/q$a;-><init>(Lccc;)V

    sput-object v0, Lkotlin/q;->a:Lkotlin/q$a;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lkotlin/q;->b:B

    return-void
.end method

.method public static a(B)Ljava/lang/String;
    .locals 0

    and-int/lit16 p0, p0, 0xff

    .line 343
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(BLjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lkotlin/q;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lkotlin/q;

    invoke-virtual {p1}, Lkotlin/q;->a()B

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static b(B)I
    .locals 0

    return p0
.end method

.method public static c(B)B
    .locals 0

    return p0
.end method

.method public static final synthetic d(B)Lkotlin/q;
    .locals 1

    new-instance v0, Lkotlin/q;

    invoke-direct {v0, p0}, Lkotlin/q;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()B
    .locals 1

    iget-byte v0, p0, Lkotlin/q;->b:B

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 13
    check-cast p1, Lkotlin/q;

    invoke-virtual {p1}, Lkotlin/q;->a()B

    move-result p1

    invoke-virtual {p0}, Lkotlin/q;->a()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p1, p1, 0xff

    invoke-static {v0, p1}, Lccf;->a(II)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-byte v0, p0, Lkotlin/q;->b:B

    invoke-static {v0, p1}, Lkotlin/q;->a(BLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-byte v0, p0, Lkotlin/q;->b:B

    invoke-static {v0}, Lkotlin/q;->b(B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 343
    iget-byte v0, p0, Lkotlin/q;->b:B

    invoke-static {v0}, Lkotlin/q;->a(B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
