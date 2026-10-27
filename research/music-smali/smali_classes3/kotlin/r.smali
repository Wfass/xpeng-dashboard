.class public final Lkotlin/r;
.super Ljava/lang/Object;
.source "UInt.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lkotlin/r;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# static fields
.field public static final a:Lkotlin/r$a;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/r$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/r$a;-><init>(Lccc;)V

    sput-object v0, Lkotlin/r;->a:Lkotlin/r$a;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlin/r;->b:I

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 4

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 365
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lkotlin/r;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lkotlin/r;

    invoke-virtual {p1}, Lkotlin/r;->a()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static b(I)I
    .locals 0

    return p0
.end method

.method public static c(I)I
    .locals 0

    return p0
.end method

.method public static final synthetic d(I)Lkotlin/r;
    .locals 1

    new-instance v0, Lkotlin/r;

    invoke-direct {v0, p0}, Lkotlin/r;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()I
    .locals 1

    iget v0, p0, Lkotlin/r;->b:I

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 13
    check-cast p1, Lkotlin/r;

    invoke-virtual {p1}, Lkotlin/r;->a()I

    move-result p1

    invoke-virtual {p0}, Lkotlin/r;->a()I

    move-result v0

    invoke-static {v0, p1}, Lkotlin/x;->a(II)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lkotlin/r;->b:I

    invoke-static {v0, p1}, Lkotlin/r;->a(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lkotlin/r;->b:I

    invoke-static {v0}, Lkotlin/r;->b(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 365
    iget v0, p0, Lkotlin/r;->b:I

    invoke-static {v0}, Lkotlin/r;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
