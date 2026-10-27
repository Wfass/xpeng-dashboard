.class public Lcom/alibaba/sdk/android/httpdns/j/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final a:Ljava/lang/String;

.field private final a:[Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final b:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/l;->a:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/l;->a:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-array p2, p1, [Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/j/l;->a:[Ljava/lang/String;

    :goto_0
    if-eqz p3, :cond_1

    iput-object p3, p0, Lcom/alibaba/sdk/android/httpdns/j/l;->b:[Ljava/lang/String;

    goto :goto_1

    :cond_1
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/j/l;->b:[Ljava/lang/String;

    :goto_1
    if-lez p4, :cond_2

    iput p4, p0, Lcom/alibaba/sdk/android/httpdns/j/l;->a:I

    goto :goto_2

    :cond_2
    const/16 p1, 0x3c

    iput p1, p0, Lcom/alibaba/sdk/android/httpdns/j/l;->a:I

    :goto_2
    iput-object p5, p0, Lcom/alibaba/sdk/android/httpdns/j/l;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/j/l;
    .locals 10

    const-string v0, "extra"

    const-string v1, "ipsv6"

    const-string v2, "ips"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "host"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v7, v4, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move v8, v6

    :goto_0
    if-ge v8, v4, :cond_1

    :try_start_1
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    move-object v7, p0

    :cond_1
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v6, v4, :cond_3

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move-object v2, p0

    :cond_3
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, p0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v2, p0

    move-object v7, v2

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_3
    move-object v9, p0

    move-object v6, v7

    move-object v7, v2

    const-string p0, "ttl"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    new-instance p0, Lcom/alibaba/sdk/android/httpdns/j/l;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/alibaba/sdk/android/httpdns/j/l;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V

    return-object p0
.end method

.method public static a(Ljava/lang/String;I)Lcom/alibaba/sdk/android/httpdns/j/l;
    .locals 7

    new-instance v6, Lcom/alibaba/sdk/android/httpdns/j/l;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/httpdns/j/l;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/alibaba/sdk/android/httpdns/j/l;->a:I

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/l;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public b()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/j/l;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/alibaba/sdk/android/httpdns/j/l;

    iget v2, p0, Lcom/alibaba/sdk/android/httpdns/j/l;->a:I

    iget v3, p1, Lcom/alibaba/sdk/android/httpdns/j/l;->a:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/j/l;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/sdk/android/httpdns/j/l;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/j/l;->a:[Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/sdk/android/httpdns/j/l;->a:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/j/l;->b:[Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/sdk/android/httpdns/j/l;->b:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/j/l;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/alibaba/sdk/android/httpdns/j/l;->b:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/l;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/alibaba/sdk/android/httpdns/j/l;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/l;->b:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/l;->a:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/l;->b:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/j/l;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ip cnt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/j/l;->a:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ttl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/sdk/android/httpdns/j/l;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/l;->a:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    const-string v6, "\n ip: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "\n ipv6 cnt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/l;->b:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/l;->b:[Ljava/lang/String;

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    const-string v5, "\n ipv6: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "\n extra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/j/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
