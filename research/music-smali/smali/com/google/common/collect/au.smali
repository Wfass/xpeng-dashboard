.class public final Lcom/google/common/collect/au;
.super Lcom/google/common/collect/av;
.source "Range.java"

# interfaces
.implements Lcom/google/common/base/p;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/au$b;,
        Lcom/google/common/collect/au$c;,
        Lcom/google/common/collect/au$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/common/collect/av;",
        "Lcom/google/common/base/p<",
        "TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ALL:Lcom/google/common/collect/au;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/au<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field final a:Lcom/google/common/collect/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/q<",
            "TC;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/common/collect/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/q<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 297
    new-instance v0, Lcom/google/common/collect/au;

    invoke-static {}, Lcom/google/common/collect/q;->a()Lcom/google/common/collect/q;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/q;->b()Lcom/google/common/collect/q;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/au;-><init>(Lcom/google/common/collect/q;Lcom/google/common/collect/q;)V

    sput-object v0, Lcom/google/common/collect/au;->ALL:Lcom/google/common/collect/au;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/q;Lcom/google/common/collect/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/q<",
            "TC;>;",
            "Lcom/google/common/collect/q<",
            "TC;>;)V"
        }
    .end annotation

    .line 351
    invoke-direct {p0}, Lcom/google/common/collect/av;-><init>()V

    .line 352
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/q;

    iput-object v0, p0, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/q;

    .line 353
    invoke-static {p2}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/q;

    iput-object v0, p0, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    .line 354
    invoke-virtual {p1, p2}, Lcom/google/common/collect/q;->a(Lcom/google/common/collect/q;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 355
    invoke-static {}, Lcom/google/common/collect/q;->b()Lcom/google/common/collect/q;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 356
    invoke-static {}, Lcom/google/common/collect/q;->a()Lcom/google/common/collect/q;

    move-result-object v0

    if-eq p2, v0, :cond_0

    return-void

    .line 357
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/google/common/collect/au;->b(Lcom/google/common/collect/q;Lcom/google/common/collect/q;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a()Lcom/google/common/base/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lcom/google/common/base/h<",
            "Lcom/google/common/collect/au<",
            "TC;>;",
            "Lcom/google/common/collect/q<",
            "TC;>;>;"
        }
    .end annotation

    .line 142
    sget-object v0, Lcom/google/common/collect/au$a;->a:Lcom/google/common/collect/au$a;

    return-object v0
.end method

.method static a(Lcom/google/common/collect/q;Lcom/google/common/collect/q;)Lcom/google/common/collect/au;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Lcom/google/common/collect/q<",
            "TC;>;",
            "Lcom/google/common/collect/q<",
            "TC;>;)",
            "Lcom/google/common/collect/au<",
            "TC;>;"
        }
    .end annotation

    .line 155
    new-instance v0, Lcom/google/common/collect/au;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/au;-><init>(Lcom/google/common/collect/q;Lcom/google/common/collect/q;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Comparable;)Lcom/google/common/collect/au;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;)",
            "Lcom/google/common/collect/au<",
            "TC;>;"
        }
    .end annotation

    .line 233
    invoke-static {}, Lcom/google/common/collect/q;->a()Lcom/google/common/collect/q;

    move-result-object v0

    invoke-static {p0}, Lcom/google/common/collect/q;->b(Ljava/lang/Comparable;)Lcom/google/common/collect/q;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/au;->a(Lcom/google/common/collect/q;Lcom/google/common/collect/q;)Lcom/google/common/collect/au;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Comparable;Lcom/google/common/collect/j;)Lcom/google/common/collect/au;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;",
            "Lcom/google/common/collect/j;",
            ")",
            "Lcom/google/common/collect/au<",
            "TC;>;"
        }
    .end annotation

    .line 252
    sget-object v0, Lcom/google/common/collect/au$1;->a:[I

    invoke-virtual {p1}, Lcom/google/common/collect/j;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 256
    invoke-static {p0}, Lcom/google/common/collect/au;->b(Ljava/lang/Comparable;)Lcom/google/common/collect/au;

    move-result-object p0

    return-object p0

    .line 258
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 254
    :cond_1
    invoke-static {p0}, Lcom/google/common/collect/au;->a(Ljava/lang/Comparable;)Lcom/google/common/collect/au;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Comparable;Lcom/google/common/collect/j;Ljava/lang/Comparable;Lcom/google/common/collect/j;)Lcom/google/common/collect/au;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;",
            "Lcom/google/common/collect/j;",
            "TC;",
            "Lcom/google/common/collect/j;",
            ")",
            "Lcom/google/common/collect/au<",
            "TC;>;"
        }
    .end annotation

    .line 217
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-static {p3}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/google/common/collect/j;->OPEN:Lcom/google/common/collect/j;

    if-ne p1, v0, :cond_0

    .line 221
    invoke-static {p0}, Lcom/google/common/collect/q;->c(Ljava/lang/Comparable;)Lcom/google/common/collect/q;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/q;->b(Ljava/lang/Comparable;)Lcom/google/common/collect/q;

    move-result-object p0

    .line 222
    :goto_0
    sget-object p1, Lcom/google/common/collect/j;->OPEN:Lcom/google/common/collect/j;

    if-ne p3, p1, :cond_1

    .line 223
    invoke-static {p2}, Lcom/google/common/collect/q;->b(Ljava/lang/Comparable;)Lcom/google/common/collect/q;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lcom/google/common/collect/q;->c(Ljava/lang/Comparable;)Lcom/google/common/collect/q;

    move-result-object p1

    .line 224
    :goto_1
    invoke-static {p0, p1}, Lcom/google/common/collect/au;->a(Lcom/google/common/collect/q;Lcom/google/common/collect/q;)Lcom/google/common/collect/au;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/au;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;TC;)",
            "Lcom/google/common/collect/au<",
            "TC;>;"
        }
    .end annotation

    .line 180
    invoke-static {p0}, Lcom/google/common/collect/q;->b(Ljava/lang/Comparable;)Lcom/google/common/collect/q;

    move-result-object p0

    invoke-static {p1}, Lcom/google/common/collect/q;->c(Ljava/lang/Comparable;)Lcom/google/common/collect/q;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/au;->a(Lcom/google/common/collect/q;Lcom/google/common/collect/q;)Lcom/google/common/collect/au;

    move-result-object p0

    return-object p0
.end method

.method static b()Lcom/google/common/base/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lcom/google/common/base/h<",
            "Lcom/google/common/collect/au<",
            "TC;>;",
            "Lcom/google/common/collect/q<",
            "TC;>;>;"
        }
    .end annotation

    .line 147
    sget-object v0, Lcom/google/common/collect/au$c;->a:Lcom/google/common/collect/au$c;

    return-object v0
.end method

.method public static b(Ljava/lang/Comparable;)Lcom/google/common/collect/au;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;)",
            "Lcom/google/common/collect/au<",
            "TC;>;"
        }
    .end annotation

    .line 242
    invoke-static {}, Lcom/google/common/collect/q;->a()Lcom/google/common/collect/q;

    move-result-object v0

    invoke-static {p0}, Lcom/google/common/collect/q;->c(Ljava/lang/Comparable;)Lcom/google/common/collect/q;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/au;->a(Lcom/google/common/collect/q;Lcom/google/common/collect/q;)Lcom/google/common/collect/au;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Comparable;Lcom/google/common/collect/j;)Lcom/google/common/collect/au;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;",
            "Lcom/google/common/collect/j;",
            ")",
            "Lcom/google/common/collect/au<",
            "TC;>;"
        }
    .end annotation

    .line 287
    sget-object v0, Lcom/google/common/collect/au$1;->a:[I

    invoke-virtual {p1}, Lcom/google/common/collect/j;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 291
    invoke-static {p0}, Lcom/google/common/collect/au;->d(Ljava/lang/Comparable;)Lcom/google/common/collect/au;

    move-result-object p0

    return-object p0

    .line 293
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 289
    :cond_1
    invoke-static {p0}, Lcom/google/common/collect/au;->c(Ljava/lang/Comparable;)Lcom/google/common/collect/au;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/au;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;TC;)",
            "Lcom/google/common/collect/au<",
            "TC;>;"
        }
    .end annotation

    .line 192
    invoke-static {p0}, Lcom/google/common/collect/q;->b(Ljava/lang/Comparable;)Lcom/google/common/collect/q;

    move-result-object p0

    invoke-static {p1}, Lcom/google/common/collect/q;->b(Ljava/lang/Comparable;)Lcom/google/common/collect/q;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/au;->a(Lcom/google/common/collect/q;Lcom/google/common/collect/q;)Lcom/google/common/collect/au;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/google/common/collect/q;Lcom/google/common/collect/q;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/q<",
            "*>;",
            "Lcom/google/common/collect/q<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 674
    invoke-virtual {p0, v0}, Lcom/google/common/collect/q;->a(Ljava/lang/StringBuilder;)V

    const-string p0, ".."

    .line 675
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    invoke-virtual {p1, v0}, Lcom/google/common/collect/q;->b(Ljava/lang/StringBuilder;)V

    .line 677
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static c(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0

    .line 695
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static c()Lcom/google/common/collect/ar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lcom/google/common/collect/ar<",
            "Lcom/google/common/collect/au<",
            "TC;>;>;"
        }
    .end annotation

    .line 151
    sget-object v0, Lcom/google/common/collect/au$b;->a:Lcom/google/common/collect/ar;

    return-object v0
.end method

.method public static c(Ljava/lang/Comparable;)Lcom/google/common/collect/au;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;)",
            "Lcom/google/common/collect/au<",
            "TC;>;"
        }
    .end annotation

    .line 268
    invoke-static {p0}, Lcom/google/common/collect/q;->c(Ljava/lang/Comparable;)Lcom/google/common/collect/q;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/q;->b()Lcom/google/common/collect/q;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/au;->a(Lcom/google/common/collect/q;Lcom/google/common/collect/q;)Lcom/google/common/collect/au;

    move-result-object p0

    return-object p0
.end method

.method public static d()Lcom/google/common/collect/au;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lcom/google/common/collect/au<",
            "TC;>;"
        }
    .end annotation

    .line 306
    sget-object v0, Lcom/google/common/collect/au;->ALL:Lcom/google/common/collect/au;

    return-object v0
.end method

.method public static d(Ljava/lang/Comparable;)Lcom/google/common/collect/au;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;)",
            "Lcom/google/common/collect/au<",
            "TC;>;"
        }
    .end annotation

    .line 277
    invoke-static {p0}, Lcom/google/common/collect/q;->b(Ljava/lang/Comparable;)Lcom/google/common/collect/q;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/q;->b()Lcom/google/common/collect/q;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/au;->a(Lcom/google/common/collect/q;Lcom/google/common/collect/q;)Lcom/google/common/collect/au;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/common/collect/r;)Lcom/google/common/collect/au;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r<",
            "TC;>;)",
            "Lcom/google/common/collect/au<",
            "TC;>;"
        }
    .end annotation

    .line 635
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    iget-object v0, p0, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/q;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/q;->c(Lcom/google/common/collect/r;)Lcom/google/common/collect/q;

    move-result-object v0

    .line 637
    iget-object v1, p0, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/q;->c(Lcom/google/common/collect/r;)Lcom/google/common/collect/q;

    move-result-object p1

    .line 638
    iget-object v1, p0, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/q;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    if-ne p1, v1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Lcom/google/common/collect/au;->a(Lcom/google/common/collect/q;Lcom/google/common/collect/q;)Lcom/google/common/collect/au;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public a(Lcom/google/common/collect/au;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/au<",
            "TC;>;)Z"
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/q;

    iget-object v1, p1, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/q;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/q;->a(Lcom/google/common/collect/q;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    iget-object p1, p1, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    .line 498
    invoke-virtual {v0, p1}, Lcom/google/common/collect/q;->a(Lcom/google/common/collect/q;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic a(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/au;->f(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/google/common/collect/au;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/au<",
            "TC;>;)Z"
        }
    .end annotation

    .line 527
    iget-object v0, p0, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/q;

    iget-object v1, p1, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/q;->a(Lcom/google/common/collect/q;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object p1, p1, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/q;

    iget-object v0, p0, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    .line 528
    invoke-virtual {p1, v0}, Lcom/google/common/collect/q;->a(Lcom/google/common/collect/q;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Lcom/google/common/collect/au;)Lcom/google/common/collect/au;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/au<",
            "TC;>;)",
            "Lcom/google/common/collect/au<",
            "TC;>;"
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/q;

    iget-object v1, p1, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/q;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/q;->a(Lcom/google/common/collect/q;)I

    move-result v0

    .line 549
    iget-object v1, p0, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    iget-object v2, p1, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/q;->a(Lcom/google/common/collect/q;)I

    move-result v1

    if-ltz v0, :cond_0

    if-gtz v1, :cond_0

    return-object p0

    :cond_0
    if-gtz v0, :cond_1

    if-ltz v1, :cond_1

    return-object p1

    :cond_1
    if-ltz v0, :cond_2

    .line 555
    iget-object v0, p0, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/q;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/q;

    :goto_0
    if-gtz v1, :cond_3

    .line 556
    iget-object p1, p0, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    .line 557
    :goto_1
    invoke-static {v0, p1}, Lcom/google/common/collect/au;->a(Lcom/google/common/collect/q;Lcom/google/common/collect/q;)Lcom/google/common/collect/au;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/q;

    invoke-static {}, Lcom/google/common/collect/q;->a()Lcom/google/common/collect/q;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .line 432
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    iget-object v0, p0, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/q;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/q;->a(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/q;->a(Ljava/lang/Comparable;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 650
    instance-of v0, p1, Lcom/google/common/collect/au;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 651
    check-cast p1, Lcom/google/common/collect/au;

    .line 652
    iget-object v0, p0, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/q;

    iget-object v2, p1, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/q;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    iget-object p1, p1, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/q;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public f()Z
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    invoke-static {}, Lcom/google/common/collect/q;->b()Lcom/google/common/collect/q;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(Ljava/lang/Comparable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 444
    invoke-virtual {p0, p1}, Lcom/google/common/collect/au;->e(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public g()Z
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/q;

    iget-object v1, p0, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/q;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 660
    iget-object v0, p0, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/q;

    invoke-virtual {v0}, Lcom/google/common/collect/q;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    invoke-virtual {v1}, Lcom/google/common/collect/q;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/q;

    iget-object v1, p0, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    invoke-static {v0, v1}, Lcom/google/common/collect/au;->b(Lcom/google/common/collect/q;Lcom/google/common/collect/q;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
