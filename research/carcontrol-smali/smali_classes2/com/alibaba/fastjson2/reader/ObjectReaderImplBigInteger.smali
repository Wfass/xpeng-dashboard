.class final Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigInteger;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "ObjectReaderImplBigInteger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive<",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigInteger;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigInteger;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigInteger;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    const-class v0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigInteger;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/math/BigInteger;
    .locals 0

    .line 18
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigInteger;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/math/BigInteger;
    .locals 0

    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method
