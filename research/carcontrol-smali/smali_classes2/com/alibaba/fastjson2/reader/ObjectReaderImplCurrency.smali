.class final Lcom/alibaba/fastjson2/reader/ObjectReaderImplCurrency;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "ObjectReaderImplCurrency.java"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplCurrency;

.field static final TYPE_HASH:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCurrency;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCurrency;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCurrency;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplCurrency;

    const-string v0, "Currency"

    .line 16
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCurrency;->TYPE_HASH:J

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 19
    const-class v0, Ljava/util/Currency;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    move-result p2

    const/16 p3, -0x6e

    if-ne p2, p3, :cond_1

    .line 25
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 26
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    move-result-wide p2

    .line 28
    sget-wide p4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCurrency;->TYPE_HASH:J

    cmp-long p4, p2, p4

    if-eqz p4, :cond_1

    const-wide p4, -0x6d16400c6daed9eeL

    cmp-long p2, p2, p4

    if-nez p2, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "currency not support input autoTypeClass "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 33
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 37
    :cond_2
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isObject()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 44
    new-instance p2, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    const/4 p3, 0x0

    new-array p3, p3, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 45
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/JSONReader;->readObject(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    const-string p1, "currency"

    .line 46
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "currencyCode"

    .line 48
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 56
    :cond_2
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
