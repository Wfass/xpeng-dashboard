.class public LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0Oo/OooO00o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0Oo/OooO0o;


# instance fields
.field public final OooO00o:Ljava/lang/String;

.field public OooO0O0:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0Oo/OooO00o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0Oo/OooO00o;->OooO00o:Ljava/lang/String;

    .line 9
    iput-object p1, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0Oo/OooO00o;->OooO0O0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;)Lcom/loostone/libserver/version1/entity/response/ResponseData;
    .locals 4

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 4
    new-instance v0, Lcom/loostone/libserver/version1/entity/response/ResponseData;

    invoke-direct {v0}, Lcom/loostone/libserver/version1/entity/response/ResponseData;-><init>()V

    .line 6
    :try_start_0
    check-cast p1, Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/loostone/libserver/version1/entity/PMConfig;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v1, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0Oo/OooO00o$OooO00o;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0Oo/OooO00o$OooO00o;-><init>(LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0Oo/OooO00o;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p1, v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/loostone/libserver/version1/entity/response/ResponseData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    :try_start_1
    invoke-virtual {p1}, Lcom/loostone/libserver/version1/entity/response/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/loostone/libserver/version1/entity/response/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/loostone/libserver/version1/entity/response/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0Oo/OooO00o;->OooO0O0:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/loostone/libserver/version1/entity/response/ResponseData;->setData(Ljava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/loostone/libserver/version1/entity/response/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/loostone/libserver/version1/entity/response/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p1}, Lcom/loostone/libserver/version1/entity/response/ResponseData;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0Oo/OooO00o;->OooO0O0:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/loostone/libserver/version1/entity/response/ResponseData;->setData(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    .line 16
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    iget-object v2, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0Oo/OooO00o;->OooO00o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "-000001"

    .line 18
    invoke-virtual {p1, v0}, Lcom/loostone/libserver/version1/entity/response/ResponseData;->setState(Ljava/lang/String;)V

    const-string v0, "decrypt json failed"

    .line 19
    invoke-virtual {p1, v0}, Lcom/loostone/libserver/version1/entity/response/ResponseData;->setMsg(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object p1

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the param must be instance of String"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooO0O0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 4
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_0

    .line 5
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 7
    :try_start_0
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, p1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 11
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 12
    sget-object v5, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    iget-object v6, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0Oo/OooO00o;->OooO00o:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {}, Lcom/loostone/libserver/version1/entity/PMConfig;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0OO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_6

    .line 22
    :cond_2
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v5, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 23
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v6, "AES"

    invoke-direct {v1, v0, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/16 v0, 0x10

    :try_start_1
    const-string v6, "AES/CBC/NoPadding"

    .line 26
    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 27
    invoke-virtual {v6, v4, v1, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/16 v1, 0x20

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/2addr v4, v0

    rsub-int/lit8 v4, v4, 0x10

    move-object v5, p1

    move p1, v2

    :goto_2
    if-ge p1, v4, :cond_3

    .line 32
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 33
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v6, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 35
    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v3

    :goto_3
    if-nez p1, :cond_4

    goto :goto_6

    .line 36
    :cond_4
    array-length v1, p1

    const-string v3, ""

    :goto_4
    if-ge v2, v1, :cond_6

    .line 39
    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    if-ge v4, v0, :cond_5

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 42
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    :goto_6
    return-object v3
.end method
