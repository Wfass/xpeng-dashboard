.class final Lxf;
.super Lzw;
.source "ObjectReaderImplBigInteger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzw<",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lxf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lxf;

    invoke-direct {v0}, Lxf;-><init>()V

    sput-object v0, Lxf;->a:Lxf;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    const-class v0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lzw;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual/range {p0 .. p5}, Lxf;->d(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/math/BigInteger;
    .locals 0

    .line 18
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->ah()Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/math/BigInteger;
    .locals 0

    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->ah()Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public synthetic readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual/range {p0 .. p5}, Lxf;->e(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method
