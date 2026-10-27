.class public Lcom/alibaba/fastjson2/reader/ObjectReaderImplValueInt;
.super Ljava/lang/Object;
.source "ObjectReaderImplValueInt.java"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alibaba/fastjson2/reader/ObjectReader<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final features:J

.field final function:Ljava/util/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/IntFunction<",
            "TT;>;"
        }
    .end annotation
.end field

.field final schema:Lcom/alibaba/fastjson2/schema/JSONSchema;


# direct methods
.method public constructor <init>(Ljava/lang/Class;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/IntFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;J",
            "Lcom/alibaba/fastjson2/schema/JSONSchema;",
            "Ljava/util/function/IntFunction<",
            "TT;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValueInt;->features:J

    .line 23
    iput-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValueInt;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    .line 24
    iput-object p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValueInt;->function:Ljava/util/function/IntFunction;

    return-void
.end method

.method public static of(Ljava/lang/Class;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/IntFunction;)Lcom/alibaba/fastjson2/reader/ObjectReaderImplValueInt;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;J",
            "Lcom/alibaba/fastjson2/schema/JSONSchema;",
            "Ljava/util/function/IntFunction<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/reader/ObjectReaderImplValueInt<",
            "TT;>;"
        }
    .end annotation

    .line 72
    new-instance v6, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValueInt;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValueInt;-><init>(Ljava/lang/Class;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/IntFunction;)V

    return-object v6
.end method

.method public static of(Ljava/lang/Class;Ljava/util/function/IntFunction;)Lcom/alibaba/fastjson2/reader/ObjectReaderImplValueInt;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/IntFunction<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/reader/ObjectReaderImplValueInt<",
            "TT;>;"
        }
    .end annotation

    .line 58
    new-instance v6, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValueInt;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValueInt;-><init>(Ljava/lang/Class;JLcom/alibaba/fastjson2/schema/JSONSchema;Ljava/util/function/IntFunction;)V

    return-object v6
.end method


# virtual methods
.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 29
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValueInt;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 34
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNullOrEmptyString()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    move-result p2

    .line 40
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValueInt;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    if-eqz p3, :cond_1

    int-to-long p4, p2

    .line 41
    invoke-virtual {p3, p4, p5}, Lcom/alibaba/fastjson2/schema/JSONSchema;->validate(J)Lcom/alibaba/fastjson2/schema/ValidateResult;

    .line 46
    :cond_1
    :try_start_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValueInt;->function:Ljava/util/function/IntFunction;

    invoke-interface {p3, p2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 48
    new-instance p3, Lcom/alibaba/fastjson2/JSONException;

    const-string p4, "create object error"

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method
