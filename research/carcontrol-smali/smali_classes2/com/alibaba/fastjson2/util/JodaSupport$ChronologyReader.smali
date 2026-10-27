.class Lcom/alibaba/fastjson2/util/JodaSupport$ChronologyReader;
.super Ljava/lang/Object;
.source "JodaSupport.java"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/util/JodaSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChronologyReader"
.end annotation


# static fields
.field static final HASH_ZONE_ID:J


# instance fields
.field final dateTimeZone:Ljava/lang/Class;

.field final forID:Ljava/util/function/Function;

.field final getInstance:Ljava/util/function/Function;

.field final gregorianChronology:Ljava/lang/Class;

.field final objectClass:Ljava/lang/Class;

.field final utc:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "zoneId"

    .line 144
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/util/JodaSupport$ChronologyReader;->HASH_ZONE_ID:J

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .locals 6

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/alibaba/fastjson2/util/JodaSupport$ChronologyReader;->objectClass:Ljava/lang/Class;

    .line 155
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :try_start_0
    const-string v0, "org.joda.time.chrono.GregorianChronology"

    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/util/JodaSupport$ChronologyReader;->gregorianChronology:Ljava/lang/Class;

    const-string v1, "org.joda.time.DateTimeZone"

    .line 158
    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/util/JodaSupport$ChronologyReader;->dateTimeZone:Ljava/lang/Class;

    const-string v1, "getInstanceUTC"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 160
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson2/util/JodaSupport$ChronologyReader;->utc:Ljava/lang/Object;

    const-string v1, "forID"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 161
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    .line 162
    invoke-virtual {p1, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 161
    invoke-static {v1}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson2/util/JodaSupport$ChronologyReader;->forID:Ljava/util/function/Function;

    const-string v1, "getInstance"

    new-array v3, v3, [Ljava/lang/Class;

    aput-object p1, v3, v2

    .line 165
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 164
    invoke-static {p1}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/util/JodaSupport$ChronologyReader;->getInstance:Ljava/util/function/Function;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 168
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "create ChronologyReader error"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getObjectClass()Ljava/lang/Class;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/alibaba/fastjson2/util/JodaSupport$ChronologyReader;->objectClass:Ljava/lang/Class;

    return-object v0
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .line 186
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    const/4 p2, 0x0

    move-object p3, p2

    .line 187
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result p4

    if-nez p4, :cond_2

    .line 189
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide p4

    const-wide v0, 0x726965cd420d58abL    # 1.3548158803004202E243

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    .line 192
    :cond_0
    sget-wide v0, Lcom/alibaba/fastjson2/util/JodaSupport$ChronologyReader;->HASH_ZONE_ID:J

    cmp-long p3, p4, v0

    if-nez p3, :cond_1

    .line 193
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 195
    :cond_1
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "not support fieldName "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    if-nez p2, :cond_4

    const-string p1, "UTC"

    .line 200
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 201
    iget-object p1, p0, Lcom/alibaba/fastjson2/util/JodaSupport$ChronologyReader;->utc:Ljava/lang/Object;

    return-object p1

    .line 204
    :cond_3
    iget-object p1, p0, Lcom/alibaba/fastjson2/util/JodaSupport$ChronologyReader;->forID:Ljava/util/function/Function;

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 205
    iget-object p2, p0, Lcom/alibaba/fastjson2/util/JodaSupport$ChronologyReader;->getInstance:Ljava/util/function/Function;

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 208
    :cond_4
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string p3, "not support"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 179
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string p3, "not support"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
