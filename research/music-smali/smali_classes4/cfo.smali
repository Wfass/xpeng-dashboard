.class public Lcfo;
.super Ljava/lang/Object;
.source "SSLSocketFactoryFactory.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final d:[B


# instance fields
.field private b:Ljava/util/Hashtable;

.field private c:Ljava/util/Properties;

.field private e:Lcgw;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "com.ibm.ssl.protocol"

    const-string v1, "com.ibm.ssl.contextProvider"

    const-string v2, "com.ibm.ssl.keyStore"

    const-string v3, "com.ibm.ssl.keyStorePassword"

    const-string v4, "com.ibm.ssl.keyStoreType"

    const-string v5, "com.ibm.ssl.keyStoreProvider"

    const-string v6, "com.ibm.ssl.keyManager"

    const-string v7, "com.ibm.ssl.trustStore"

    const-string v8, "com.ibm.ssl.trustStorePassword"

    const-string v9, "com.ibm.ssl.trustStoreType"

    const-string v10, "com.ibm.ssl.trustStoreProvider"

    const-string v11, "com.ibm.ssl.trustManager"

    const-string v12, "com.ibm.ssl.enabledCipherSuites"

    const-string v13, "com.ibm.ssl.clientAuthentication"

    .line 140
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    .line 137
    sput-object v0, Lcfo;->a:[Ljava/lang/String;

    const/16 v0, 0x8

    .line 146
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcfo;->d:[B

    return-void

    :array_0
    .array-data 1
        -0x63t
        -0x59t
        -0x27t
        -0x80t
        0x5t
        -0x48t
        -0x77t
        -0x64t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcfo;->e:Lcgw;

    .line 182
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcfo;->b:Ljava/util/Hashtable;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 822
    iget-object v1, p0, Lcfo;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Properties;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 825
    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 830
    :cond_1
    iget-object p1, p0, Lcfo;->c:Ljava/util/Properties;

    if-eqz p1, :cond_2

    .line 832
    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_2
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 796
    invoke-direct {p0, p1, p2}, Lcfo;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    if-eqz p3, :cond_1

    .line 802
    invoke-static {p3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private a(Ljava/util/Properties;)V
    .locals 2

    .line 222
    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 223
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 224
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 225
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 226
    invoke-direct {p0, v0}, Lcfo;->p(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 227
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " is not a valid IBM SSL property key."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a([C)[B
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 260
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    .line 262
    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v3, v2, 0x1

    .line 263
    aget-char v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v4, v1, 0x1

    .line 264
    aget-char v1, p0, v1

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    move v1, v4

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)[C
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x5

    .line 307
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcfp;->a(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 313
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_1

    .line 316
    invoke-static {p0}, Lcfo;->a([B)[C

    move-result-object p0

    return-object p0

    .line 314
    :cond_1
    aget-byte v1, p0, v0

    sget-object v2, Lcfo;->d:[B

    array-length v3, v2

    rem-int v3, v0, v3

    aget-byte v2, v2, v3

    xor-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    return-object v0
.end method

.method public static a([B)[C
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 242
    :cond_0
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    move v2, v1

    .line 244
    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v1, 0x1

    .line 245
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v1, v4

    int-to-char v1, v1

    aput-char v1, v0, v2

    move v2, v3

    move v1, v5

    goto :goto_0
.end method

.method public static b([C)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 283
    :cond_0
    invoke-static {p0}, Lcfo;->a([C)[B

    move-result-object p0

    const/4 v0, 0x0

    .line 284
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_1

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{xor}"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lcfp;->a([B)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 285
    :cond_1
    aget-byte v1, p0, v0

    sget-object v2, Lcfo;->d:[B

    array-length v3, v2

    rem-int v3, v0, v3

    aget-byte v2, v2, v3

    xor-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b(Ljava/util/Properties;)V
    .locals 4

    const-string v0, "com.ibm.ssl.keyStorePassword"

    .line 378
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{xor}"

    if-eqz v1, :cond_0

    .line 379
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 380
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Lcfo;->b([C)Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "com.ibm.ssl.trustStorePassword"

    .line 383
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 384
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 385
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Lcfo;->b([C)Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 352
    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/16 v1, 0x2c

    .line 353
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    if-gt v2, v4, :cond_1

    .line 363
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 365
    invoke-virtual {v0, p0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0

    .line 358
    :cond_1
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v2, 0x1

    .line 360
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_0
.end method

.method private p(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 203
    :goto_0
    sget-object v2, Lcfo;->a:[Ljava/lang/String;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    goto :goto_1

    .line 204
    :cond_0
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 209
    :goto_1
    sget-object p1, Lcfo;->a:[Ljava/lang/String;

    array-length p1, p1

    if-ge v1, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private q(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "com.ibm.ssl.keyStore"

    .line 1115
    invoke-virtual/range {p0 .. p1}, Lcfo;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "TLS"

    .line 1119
    :cond_0
    iget-object v5, v1, Lcfo;->e:Lcgw;

    const/4 v6, 0x1

    const-string v7, "null (broker defaults)"

    const/4 v8, 0x0

    const/4 v9, 0x2

    const-string v10, "getSSLContext"

    const-string v11, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    if-eqz v5, :cond_2

    .line 1121
    new-array v12, v9, [Ljava/lang/Object;

    if-eqz v2, :cond_1

    move-object v13, v2

    goto :goto_0

    :cond_1
    move-object v13, v7

    :goto_0
    aput-object v13, v12, v8

    aput-object v4, v12, v6

    const-string v13, "12000"

    invoke-interface {v5, v11, v10, v13, v12}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1125
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcfo;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 1128
    :try_start_0
    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    goto :goto_1

    .line 1130
    :cond_3
    invoke-static {v4, v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    .line 1132
    :goto_1
    iget-object v5, v1, Lcfo;->e:Lcgw;

    if-eqz v5, :cond_5

    .line 1134
    iget-object v5, v1, Lcfo;->e:Lcgw;

    const-string v12, "12001"

    new-array v13, v9, [Ljava/lang/Object;

    if-eqz v2, :cond_4

    move-object v14, v2

    goto :goto_2

    :cond_4
    move-object v14, v7

    :goto_2
    aput-object v14, v13, v8

    .line 1135
    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v14

    invoke-virtual {v14}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v6

    .line 1134
    invoke-interface {v5, v11, v10, v12, v13}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    const/4 v5, 0x0

    .line 1138
    invoke-direct {v1, v2, v3, v5}, Lcfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_6

    const-string v12, "javax.net.ssl.keyStore"

    .line 1162
    invoke-direct {v1, v2, v3, v12}, Lcfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1164
    :cond_6
    iget-object v3, v1, Lcfo;->e:Lcgw;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_9

    const-string v13, "null"

    if-eqz v3, :cond_9

    .line 1166
    :try_start_1
    iget-object v3, v1, Lcfo;->e:Lcgw;

    const-string v14, "12004"

    new-array v15, v9, [Ljava/lang/Object;

    if-eqz v2, :cond_7

    move-object/from16 v16, v2

    goto :goto_3

    :cond_7
    move-object/from16 v16, v7

    :goto_3
    aput-object v16, v15, v8

    if-eqz v12, :cond_8

    move-object/from16 v16, v12

    goto :goto_4

    :cond_8
    move-object/from16 v16, v13

    :goto_4
    aput-object v16, v15, v6

    invoke-interface {v3, v11, v10, v14, v15}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1170
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcfo;->e(Ljava/lang/String;)[C

    move-result-object v3

    .line 1171
    iget-object v14, v1, Lcfo;->e:Lcgw;

    if-eqz v14, :cond_c

    .line 1173
    iget-object v14, v1, Lcfo;->e:Lcgw;

    const-string v15, "12005"

    new-array v5, v9, [Ljava/lang/Object;

    if-eqz v2, :cond_a

    move-object/from16 v17, v2

    goto :goto_5

    :cond_a
    move-object/from16 v17, v7

    :goto_5
    aput-object v17, v5, v8

    if-eqz v3, :cond_b

    .line 1174
    invoke-static {v3}, Lcfo;->b([C)Ljava/lang/String;

    move-result-object v17

    goto :goto_6

    :cond_b
    move-object/from16 v17, v13

    :goto_6
    aput-object v17, v5, v6

    .line 1173
    invoke-interface {v14, v11, v10, v15, v5}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1177
    :cond_c
    invoke-virtual/range {p0 .. p1}, Lcfo;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_d

    .line 1179
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v5

    .line 1181
    :cond_d
    iget-object v14, v1, Lcfo;->e:Lcgw;

    if-eqz v14, :cond_10

    .line 1183
    iget-object v14, v1, Lcfo;->e:Lcgw;

    const-string v15, "12006"

    new-array v6, v9, [Ljava/lang/Object;

    if-eqz v2, :cond_e

    move-object/from16 v18, v2

    goto :goto_7

    :cond_e
    move-object/from16 v18, v7

    :goto_7
    aput-object v18, v6, v8

    if-eqz v5, :cond_f

    move-object/from16 v17, v5

    goto :goto_8

    :cond_f
    move-object/from16 v17, v13

    :goto_8
    const/16 v18, 0x1

    aput-object v17, v6, v18

    invoke-interface {v14, v11, v10, v15, v6}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1187
    :cond_10
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v6

    .line 1188
    invoke-virtual/range {p0 .. p1}, Lcfo;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1189
    invoke-virtual/range {p0 .. p1}, Lcfo;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_9

    if-eqz v15, :cond_11

    goto :goto_9

    :cond_11
    move-object v15, v6

    :goto_9
    if-eqz v12, :cond_17

    if-eqz v5, :cond_17

    if-eqz v15, :cond_17

    .line 1196
    :try_start_2
    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 1197
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    if-eqz v14, :cond_12

    .line 1199
    invoke-static {v15, v14}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v6

    goto :goto_a

    .line 1201
    :cond_12
    invoke-static {v15}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v6

    .line 1203
    :goto_a
    iget-object v12, v1, Lcfo;->e:Lcgw;

    if-eqz v12, :cond_16

    .line 1205
    iget-object v12, v1, Lcfo;->e:Lcgw;

    const-string v14, "12010"

    new-array v8, v9, [Ljava/lang/Object;

    if-eqz v2, :cond_13

    move-object/from16 v18, v2

    goto :goto_b

    :cond_13
    move-object/from16 v18, v7

    :goto_b
    const/16 v19, 0x0

    aput-object v18, v8, v19

    if-eqz v15, :cond_14

    goto :goto_c

    :cond_14
    move-object v15, v13

    :goto_c
    const/16 v17, 0x1

    aput-object v15, v8, v17

    invoke-interface {v12, v11, v10, v14, v8}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1208
    iget-object v8, v1, Lcfo;->e:Lcgw;

    const-string v12, "12009"

    new-array v14, v9, [Ljava/lang/Object;

    if-eqz v2, :cond_15

    move-object v15, v2

    goto :goto_d

    :cond_15
    move-object v15, v7

    :goto_d
    const/16 v18, 0x0

    aput-object v15, v14, v18

    .line 1209
    invoke-virtual {v6}, Ljavax/net/ssl/KeyManagerFactory;->getProvider()Ljava/security/Provider;

    move-result-object v15

    invoke-virtual {v15}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x1

    aput-object v15, v14, v17

    .line 1208
    invoke-interface {v8, v11, v10, v12, v14}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1211
    :cond_16
    invoke-virtual {v6, v5, v3}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 1212
    invoke-virtual {v6}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v5
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_9

    goto :goto_e

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1222
    :try_start_3
    new-instance v3, Lcet;

    invoke-direct {v3, v2}, Lcet;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 1220
    new-instance v3, Lcet;

    invoke-direct {v3, v2}, Lcet;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 1218
    new-instance v3, Lcet;

    invoke-direct {v3, v2}, Lcet;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 1216
    new-instance v3, Lcet;

    invoke-direct {v3, v2}, Lcet;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 1214
    new-instance v3, Lcet;

    invoke-direct {v3, v2}, Lcet;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_17
    const/4 v5, 0x0

    .line 1228
    :goto_e
    invoke-virtual/range {p0 .. p1}, Lcfo;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1229
    iget-object v6, v1, Lcfo;->e:Lcgw;

    if-eqz v6, :cond_1a

    .line 1231
    iget-object v6, v1, Lcfo;->e:Lcgw;

    const-string v8, "12011"

    new-array v12, v9, [Ljava/lang/Object;

    if-eqz v2, :cond_18

    move-object v14, v2

    goto :goto_f

    :cond_18
    move-object v14, v7

    :goto_f
    const/4 v15, 0x0

    aput-object v14, v12, v15

    if-eqz v3, :cond_19

    move-object v14, v3

    goto :goto_10

    :cond_19
    move-object v14, v13

    :goto_10
    const/4 v15, 0x1

    aput-object v14, v12, v15

    invoke-interface {v6, v11, v10, v8, v12}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1237
    :cond_1a
    invoke-virtual/range {p0 .. p1}, Lcfo;->j(Ljava/lang/String;)[C

    move-result-object v6

    .line 1238
    iget-object v8, v1, Lcfo;->e:Lcgw;

    if-eqz v8, :cond_1d

    .line 1240
    iget-object v8, v1, Lcfo;->e:Lcgw;

    const-string v12, "12012"

    new-array v14, v9, [Ljava/lang/Object;

    if-eqz v2, :cond_1b

    move-object v15, v2

    goto :goto_11

    :cond_1b
    move-object v15, v7

    :goto_11
    const/16 v18, 0x0

    aput-object v15, v14, v18

    if-eqz v6, :cond_1c

    .line 1241
    invoke-static {v6}, Lcfo;->b([C)Ljava/lang/String;

    move-result-object v15

    goto :goto_12

    :cond_1c
    move-object v15, v13

    :goto_12
    const/16 v17, 0x1

    aput-object v15, v14, v17

    .line 1240
    invoke-interface {v8, v11, v10, v12, v14}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1243
    :cond_1d
    invoke-virtual/range {p0 .. p1}, Lcfo;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1e

    .line 1245
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v8

    .line 1247
    :cond_1e
    iget-object v12, v1, Lcfo;->e:Lcgw;

    if-eqz v12, :cond_21

    .line 1249
    iget-object v12, v1, Lcfo;->e:Lcgw;

    const-string v14, "12013"

    new-array v15, v9, [Ljava/lang/Object;

    if-eqz v2, :cond_1f

    move-object/from16 v18, v2

    goto :goto_13

    :cond_1f
    move-object/from16 v18, v7

    :goto_13
    const/16 v19, 0x0

    aput-object v18, v15, v19

    if-eqz v8, :cond_20

    move-object/from16 v17, v8

    goto :goto_14

    :cond_20
    move-object/from16 v17, v13

    :goto_14
    const/16 v19, 0x1

    aput-object v17, v15, v19

    invoke-interface {v12, v11, v10, v14, v15}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1253
    :cond_21
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v12

    .line 1254
    invoke-virtual/range {p0 .. p1}, Lcfo;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1255
    invoke-virtual/range {p0 .. p1}, Lcfo;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_3} :catch_9

    if-eqz v15, :cond_22

    goto :goto_15

    :cond_22
    move-object v15, v12

    :goto_15
    if-eqz v3, :cond_28

    if-eqz v8, :cond_28

    if-eqz v15, :cond_28

    .line 1262
    :try_start_4
    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v8

    .line 1263
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    if-eqz v14, :cond_23

    .line 1265
    invoke-static {v15, v14}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    goto :goto_16

    .line 1267
    :cond_23
    invoke-static {v15}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    .line 1269
    :goto_16
    iget-object v6, v1, Lcfo;->e:Lcgw;

    if-eqz v6, :cond_27

    .line 1272
    iget-object v6, v1, Lcfo;->e:Lcgw;

    const-string v12, "12017"

    new-array v14, v9, [Ljava/lang/Object;

    if-eqz v2, :cond_24

    move-object/from16 v18, v2

    goto :goto_17

    :cond_24
    move-object/from16 v18, v7

    :goto_17
    const/16 v19, 0x0

    aput-object v18, v14, v19

    if-eqz v15, :cond_25

    goto :goto_18

    :cond_25
    move-object v15, v13

    :goto_18
    const/4 v13, 0x1

    aput-object v15, v14, v13

    invoke-interface {v6, v11, v10, v12, v14}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1276
    iget-object v6, v1, Lcfo;->e:Lcgw;

    const-string v12, "12016"

    new-array v9, v9, [Ljava/lang/Object;

    if-eqz v2, :cond_26

    goto :goto_19

    :cond_26
    move-object v2, v7

    :goto_19
    const/4 v7, 0x0

    aput-object v2, v9, v7

    .line 1277
    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    aput-object v2, v9, v7

    .line 1276
    invoke-interface {v6, v11, v10, v12, v9}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1279
    :cond_27
    invoke-virtual {v3, v8}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 1280
    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2
    :try_end_4
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/security/NoSuchProviderException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/security/KeyManagementException; {:try_start_4 .. :try_end_4} :catch_9

    goto :goto_1a

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 1288
    :try_start_5
    new-instance v3, Lcet;

    invoke-direct {v3, v2}, Lcet;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_6
    move-exception v0

    move-object v2, v0

    .line 1286
    new-instance v3, Lcet;

    invoke-direct {v3, v2}, Lcet;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_7
    move-exception v0

    move-object v2, v0

    .line 1284
    new-instance v3, Lcet;

    invoke-direct {v3, v2}, Lcet;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_8
    move-exception v0

    move-object v2, v0

    .line 1282
    new-instance v3, Lcet;

    invoke-direct {v3, v2}, Lcet;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_28
    const/4 v2, 0x0

    :goto_1a
    const/4 v3, 0x0

    .line 1292
    invoke-virtual {v4, v5, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/security/NoSuchProviderException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/security/KeyManagementException; {:try_start_5 .. :try_end_5} :catch_9

    return-object v4

    :catch_9
    move-exception v0

    move-object v2, v0

    .line 1298
    new-instance v3, Lcet;

    invoke-direct {v3, v2}, Lcet;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_a
    move-exception v0

    move-object v2, v0

    .line 1296
    new-instance v3, Lcet;

    invoke-direct {v3, v2}, Lcet;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_b
    move-exception v0

    move-object v2, v0

    .line 1294
    new-instance v3, Lcet;

    invoke-direct {v3, v2}, Lcet;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public a(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 1

    .line 431
    invoke-direct {p0, p1}, Lcfo;->a(Ljava/util/Properties;)V

    .line 433
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 434
    invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 435
    invoke-direct {p0, v0}, Lcfo;->b(Ljava/util/Properties;)V

    if-eqz p2, :cond_0

    .line 437
    iget-object p1, p0, Lcfo;->b:Ljava/util/Hashtable;

    invoke-virtual {p1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 439
    :cond_0
    iput-object v0, p0, Lcfo;->c:Ljava/util/Properties;

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.ibm.ssl.protocol"

    const/4 v1, 0x0

    .line 849
    invoke-direct {p0, p1, v0, v1}, Lcfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.ibm.ssl.contextProvider"

    const/4 v1, 0x0

    .line 861
    invoke-direct {p0, p1, v0, v1}, Lcfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)[C
    .locals 2

    const-string v0, "com.ibm.ssl.keyStorePassword"

    const-string v1, "javax.net.ssl.keyStorePassword"

    .line 951
    invoke-direct {p0, p1, v0, v1}, Lcfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "{xor}"

    .line 954
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    invoke-static {p1}, Lcfo;->a(Ljava/lang/String;)[C

    move-result-object p1

    goto :goto_0

    .line 957
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.ibm.ssl.keyStoreType"

    const-string v1, "javax.net.ssl.keyStoreType"

    .line 972
    invoke-direct {p0, p1, v0, v1}, Lcfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.ibm.ssl.keyStoreProvider"

    const/4 v1, 0x0

    .line 984
    invoke-direct {p0, p1, v0, v1}, Lcfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.ibm.ssl.keyManager"

    const-string v1, "ssl.KeyManagerFactory.algorithm"

    .line 996
    invoke-direct {p0, p1, v0, v1}, Lcfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.ibm.ssl.trustStore"

    const-string v1, "javax.net.ssl.trustStore"

    .line 1008
    invoke-direct {p0, p1, v0, v1}, Lcfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;)[C
    .locals 2

    const-string v0, "com.ibm.ssl.trustStorePassword"

    const-string v1, "javax.net.ssl.trustStorePassword"

    .line 1020
    invoke-direct {p0, p1, v0, v1}, Lcfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "{xor}"

    .line 1023
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    invoke-static {p1}, Lcfo;->a(Ljava/lang/String;)[C

    move-result-object p1

    goto :goto_0

    .line 1026
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public k(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.ibm.ssl.trustStoreType"

    const/4 v1, 0x0

    .line 1041
    invoke-direct {p0, p1, v0, v1}, Lcfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.ibm.ssl.trustStoreProvider"

    const/4 v1, 0x0

    .line 1053
    invoke-direct {p0, p1, v0, v1}, Lcfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.ibm.ssl.trustManager"

    const-string v1, "ssl.TrustManagerFactory.algorithm"

    .line 1065
    invoke-direct {p0, p1, v0, v1}, Lcfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const-string v0, "com.ibm.ssl.enabledCipherSuites"

    const/4 v1, 0x0

    .line 1077
    invoke-direct {p0, p1, v0, v1}, Lcfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1078
    invoke-static {p1}, Lcfo;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 6

    .line 1348
    invoke-direct {p0, p1}, Lcfo;->q(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 1349
    iget-object v1, p0, Lcfo;->e:Lcgw;

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 1351
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move-object v4, p1

    goto :goto_0

    :cond_0
    const-string v4, "null (broker defaults)"

    :goto_0
    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 1352
    invoke-virtual {p0, p1}, Lcfo;->n(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    const-string v5, "com.ibm.ssl.enabledCipherSuites"

    invoke-direct {p0, p1, v5, v4}, Lcfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, "null (using platform-enabled cipher suites)"

    :goto_1
    aput-object p1, v2, v3

    const-string p1, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v3, "createSocketFactory"

    const-string v4, "12020"

    .line 1351
    invoke-interface {v1, p1, v3, v4, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1355
    :cond_2
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    return-object p1
.end method
