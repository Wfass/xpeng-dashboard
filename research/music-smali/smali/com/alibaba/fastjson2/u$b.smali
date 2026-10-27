.class final Lcom/alibaba/fastjson2/u$b;
.super Ljava/lang/Object;
.source "JSONReader.java"

# interfaces
.implements Ljava/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiFunction<",
        "Ljava/lang/Integer;",
        "[I",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "[I",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 4604
    sget-boolean v0, Labf;->r:Z

    if-nez v0, :cond_0

    sget-boolean v0, Labf;->s:Z

    if-nez v0, :cond_0

    .line 4606
    :try_start_0
    const-class v0, Ljava/math/BigInteger;

    invoke-static {v0}, Labf;->b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 4607
    const-class v0, Ljava/math/BigInteger;

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, [I

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 4608
    invoke-static {v2, v3, v5}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 4607
    invoke-virtual {v1, v0, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findConstructor(Ljava/lang/Class;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    const-string v2, "apply"

    .line 4610
    const-class v0, Ljava/util/function/BiFunction;

    .line 4613
    invoke-static {v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v3

    .line 4614
    invoke-virtual {v5}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->generic()Ljava/lang/invoke/MethodType;

    move-result-object v0

    const-class v6, Ljava/math/BigInteger;

    const-class v8, Ljava/lang/Integer;

    new-array v4, v4, [Ljava/lang/Class;

    const-class v9, [I

    aput-object v9, v4, v7

    .line 4616
    invoke-static {v6, v8, v4}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    move-object v4, v0

    .line 4610
    invoke-static/range {v1 .. v6}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 4618
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/BiFunction;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 4624
    new-instance v0, Lcom/alibaba/fastjson2/u$b;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/u$b;-><init>()V

    .line 4626
    :cond_1
    sput-object v0, Lcom/alibaba/fastjson2/u$b;->a:Ljava/util/function/BiFunction;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 4598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;[I)Ljava/math/BigInteger;
    .locals 11

    .line 4631
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4633
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_3

    .line 4637
    :cond_0
    aget v0, p2, v1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    .line 4638
    array-length v3, p2

    sub-int/2addr v3, v2

    shl-int/lit8 v3, v3, 0x5

    add-int/2addr v0, v3

    if-gez p1, :cond_4

    .line 4641
    aget v3, p2, v1

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    move v4, v3

    move v3, v2

    .line 4642
    :goto_1
    array-length v5, p2

    if-ge v3, v5, :cond_3

    if-eqz v4, :cond_3

    .line 4643
    aget v4, p2, v3

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    add-int/lit8 v0, v0, -0x1

    .line 4650
    :cond_4
    :goto_3
    div-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v2

    .line 4652
    new-array v3, v0, [B

    sub-int/2addr v0, v2

    const/4 v4, 0x4

    move v6, v1

    move v7, v6

    move v5, v4

    :goto_4
    if-ltz v0, :cond_c

    if-ne v5, v4, :cond_b

    add-int/lit8 v5, v7, 0x1

    if-gez v7, :cond_6

    :cond_5
    move v6, v1

    goto :goto_6

    .line 4659
    :cond_6
    array-length v6, p2

    if-lt v7, v6, :cond_7

    if-gez p1, :cond_5

    const/4 v6, -0x1

    goto :goto_6

    .line 4662
    :cond_7
    array-length v6, p2

    sub-int/2addr v6, v7

    sub-int/2addr v6, v2

    aget v6, p2, v6

    if-ltz p1, :cond_8

    goto :goto_6

    .line 4669
    :cond_8
    array-length v8, p2

    add-int/lit8 v9, v8, -0x1

    :goto_5
    if-ltz v9, :cond_9

    .line 4670
    aget v10, p2, v9

    if-nez v10, :cond_9

    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    :cond_9
    sub-int/2addr v8, v9

    sub-int/2addr v8, v2

    if-gt v7, v8, :cond_a

    neg-int v6, v6

    goto :goto_6

    :cond_a
    not-int v6, v6

    :goto_6
    move v7, v5

    move v5, v2

    goto :goto_7

    :cond_b
    ushr-int/lit8 v6, v6, 0x8

    add-int/lit8 v5, v5, 0x1

    :goto_7
    int-to-byte v8, v6

    .line 4689
    aput-byte v8, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 4692
    :cond_c
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v3}, Ljava/math/BigInteger;-><init>([B)V

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4598
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/u$b;->a(Ljava/lang/Integer;[I)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method
