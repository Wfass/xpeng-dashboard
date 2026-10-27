.class public final Lkotlin/s;
.super Ljava/lang/Object;
.source "ULong.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lkotlin/s;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# static fields
.field public static final a:Lkotlin/s$a;


# instance fields
.field private final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/s$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/s$a;-><init>(Lccc;)V

    sput-object v0, Lkotlin/s;->a:Lkotlin/s$a;

    return-void
.end method

.method private synthetic constructor <init>(J)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlin/s;->b:J

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .locals 0

    .line 368
    invoke-static {p0, p1}, Lkotlin/x;->a(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(JLjava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Lkotlin/s;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Lkotlin/s;

    invoke-virtual {p2}, Lkotlin/s;->a()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static b(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static c(J)J
    .locals 0

    return-wide p0
.end method

.method public static final synthetic d(J)Lkotlin/s;
    .locals 1

    new-instance v0, Lkotlin/s;

    invoke-direct {v0, p0, p1}, Lkotlin/s;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()J
    .locals 2

    iget-wide v0, p0, Lkotlin/s;->b:J

    return-wide v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 13
    check-cast p1, Lkotlin/s;

    invoke-virtual {p1}, Lkotlin/s;->a()J

    move-result-wide v0

    invoke-virtual {p0}, Lkotlin/s;->a()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lkotlin/x;->a(JJ)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Lkotlin/s;->b:J

    invoke-static {v0, v1, p1}, Lkotlin/s;->a(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lkotlin/s;->b:J

    invoke-static {v0, v1}, Lkotlin/s;->b(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 368
    iget-wide v0, p0, Lkotlin/s;->b:J

    invoke-static {v0, v1}, Lkotlin/s;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
