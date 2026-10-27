.class public Lwy;
.super Ljava/lang/Object;
.source "ObjectReaderBaseModule.java"

# interfaces
.implements Lsm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwy$a;
    }
.end annotation


# instance fields
.field final a:Lzx;

.field final b:Lwy$a;


# direct methods
.method public constructor <init>(Lzx;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lwy;->a:Lzx;

    .line 41
    new-instance p1, Lwy$a;

    invoke-direct {p1, p0}, Lwy$a;-><init>(Lwy;)V

    iput-object p1, p0, Lwy;->b:Lwy$a;

    return-void
.end method

.method private static synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "null"

    .line 195
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private static synthetic a(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 2

    .line 2128
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2130
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "create address error"

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lwk;
    .locals 10

    if-eqz p2, :cond_0

    .line 2185
    const-class v0, Ljava/lang/String;

    if-ne p2, v0, :cond_1

    :cond_0
    const-class v0, Ljava/lang/String;

    if-ne p3, v0, :cond_1

    .line 2186
    new-instance p2, Lyz;

    const-wide/16 v0, 0x0

    invoke-direct {p2, p0, p1, v0, v1}, Lyz;-><init>(Ljava/lang/Class;Ljava/lang/Class;J)V

    return-object p2

    .line 2188
    :cond_1
    new-instance v0, Lza;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v9}, Lza;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;JLjava/util/function/Function;)V

    return-object v0
.end method

.method private static synthetic a(Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 6

    .line 1241
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 1242
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x7b4778ef

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_1

    const v3, 0x7cbf22f8

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "withPrefix"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v4

    goto :goto_0

    :cond_1
    const-string v2, "buildMethod"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v5

    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    goto :goto_1

    .line 1249
    :cond_3
    new-array p2, v5, [Ljava/lang/Object;

    invoke-virtual {p3, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1250
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 1251
    iput-object p0, p1, Lqe;->e:Ljava/lang/String;

    goto :goto_1

    .line 1244
    :cond_4
    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1245
    invoke-static {p2, p0}, Laax;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    iput-object p0, p1, Lqe;->d:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_1
    return-void
.end method

.method private static synthetic a(Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/reflect/Method;)V
    .locals 2

    :try_start_0
    const-string v0, "parameterNames"

    .line 1371
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1372
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 1373
    array-length p2, p0

    if-eqz p2, :cond_0

    .line 1374
    iput-object p0, p1, Lqe;->l:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private a(Lqe;Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqe;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 1239
    new-instance v0, L-$$Lambda$wy$EmtRbPOa1Es3YunmkpCfPYWwhyY;

    invoke-direct {v0, p3, p1, p2}, L-$$Lambda$wy$EmtRbPOa1Es3YunmkpCfPYWwhyY;-><init>(Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/Class;)V

    invoke-static {p4, v0}, Laax;->e(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private a(Lqe;Ljava/lang/Class;Ljava/lang/reflect/Constructor;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqe;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Constructor;",
            ")V"
        }
    .end annotation

    move-object v0, p1

    .line 1264
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1268
    :cond_0
    invoke-static/range {p3 .. p3}, Laax;->a(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 1271
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_b

    aget-object v6, v1, v4

    .line 1272
    invoke-interface {v6}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v7

    .line 1274
    const-class v8, Lqb;

    invoke-static {v6, v8}, Laax;->a(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lqb;

    const/4 v9, 0x1

    if-eqz v8, :cond_3

    .line 1276
    invoke-interface {v8}, Lqb;->a()[Ljava/lang/String;

    move-result-object v5

    .line 1277
    array-length v10, v5

    if-eqz v10, :cond_1

    .line 1278
    iput-object v5, v0, Lqe;->l:[Ljava/lang/String;

    :cond_1
    if-ne v8, v6, :cond_2

    :goto_1
    goto :goto_3

    :cond_2
    move v5, v9

    .line 1287
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v10, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v12, -0x7e0a04f3

    const/4 v13, 0x2

    if-eq v11, v12, :cond_6

    const v12, 0x2292e7de

    if-eq v11, v12, :cond_5

    const v12, 0x532515d0

    if-eq v11, v12, :cond_4

    goto :goto_2

    :cond_4
    const-string v11, "com.alibaba.fastjson.annotation.JSONCreator"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v10, v3

    goto :goto_2

    :cond_5
    const-string v11, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonCreator"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v10, v13

    goto :goto_2

    :cond_6
    const-string v11, "com.fasterxml.jackson.annotation.JsonCreator"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v10, v9

    :cond_7
    :goto_2
    if-eqz v10, :cond_9

    if-eq v10, v9, :cond_8

    if-eq v10, v13, :cond_8

    goto :goto_4

    .line 1304
    :cond_8
    invoke-static {}, Lcom/alibaba/fastjson2/d;->a()Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_1

    .line 1290
    :cond_9
    new-instance v5, L-$$Lambda$wy$ruPfy4Kwmgq04AnjUdK3k7Ap9FE;

    invoke-direct {v5, v6, p1}, L-$$Lambda$wy$ruPfy4Kwmgq04AnjUdK3k7Ap9FE;-><init>(Ljava/lang/annotation/Annotation;Lqe;)V

    invoke-static {v7, v5}, Laax;->e(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    :goto_3
    move v5, v9

    :cond_a
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_b
    if-nez v5, :cond_c

    return-void

    :cond_c
    const/4 v1, 0x0

    .line 1319
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v1, :cond_d

    .line 1323
    iput-object v1, v0, Lqe;->i:Ljava/lang/reflect/Constructor;

    :cond_d
    return-void
.end method

.method private a(Lqe;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqe;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1328
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Enum;

    if-ne v1, v2, :cond_0

    return-void

    .line 1332
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1333
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "values"

    .line 1334
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 1339
    :cond_1
    invoke-static/range {p3 .. p3}, Laax;->a(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 1343
    array-length v3, v2

    const/4 v5, 0x0

    move v6, v5

    move v8, v6

    const/4 v7, 0x0

    :goto_0
    const/4 v9, 0x1

    if-ge v6, v3, :cond_a

    aget-object v7, v2, v6

    .line 1344
    invoke-interface {v7}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v10

    .line 1345
    const-class v11, Lqb;

    invoke-static {v7, v11}, Laax;->a(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lqb;

    if-ne v11, v7, :cond_2

    goto :goto_3

    .line 1350
    :cond_2
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, -0x1

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v14

    const v15, -0x7e0a04f3

    const/4 v4, 0x2

    if-eq v14, v15, :cond_5

    const v15, 0x2292e7de

    if-eq v14, v15, :cond_4

    const v15, 0x532515d0

    if-eq v14, v15, :cond_3

    goto :goto_1

    :cond_3
    const-string v14, "com.alibaba.fastjson.annotation.JSONCreator"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    move v13, v5

    goto :goto_1

    :cond_4
    const-string v14, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonCreator"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    move v13, v4

    goto :goto_1

    :cond_5
    const-string v14, "com.fasterxml.jackson.annotation.JsonCreator"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    move v13, v9

    :cond_6
    :goto_1
    if-eqz v13, :cond_8

    if-eq v13, v9, :cond_7

    if-eq v13, v4, :cond_7

    goto :goto_3

    .line 1367
    :cond_7
    invoke-static {}, Lcom/alibaba/fastjson2/d;->a()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1369
    new-instance v4, L-$$Lambda$wy$0wOrXTwmnIEnWMRlZUT2jXDykfc;

    invoke-direct {v4, v7, v0}, L-$$Lambda$wy$0wOrXTwmnIEnWMRlZUT2jXDykfc;-><init>(Ljava/lang/annotation/Annotation;Lqe;)V

    invoke-static {v10, v4}, Laax;->e(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    goto :goto_2

    .line 1353
    :cond_8
    new-instance v4, L-$$Lambda$wy$PUXbY7K05-5x5k4EttgygLdxVeQ;

    invoke-direct {v4, v7, v0}, L-$$Lambda$wy$PUXbY7K05-5x5k4EttgygLdxVeQ;-><init>(Ljava/lang/annotation/Annotation;Lqe;)V

    invoke-static {v10, v4}, Laax;->e(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    :goto_2
    move v8, v9

    :cond_9
    :goto_3
    add-int/lit8 v6, v6, 0x1

    move-object v7, v11

    goto :goto_0

    :cond_a
    if-eqz v7, :cond_c

    .line 1388
    invoke-interface {v7}, Lqb;->a()[Ljava/lang/String;

    move-result-object v2

    .line 1389
    array-length v3, v2

    if-eqz v3, :cond_b

    .line 1390
    iput-object v2, v0, Lqe;->l:[Ljava/lang/String;

    :cond_b
    move v8, v9

    :cond_c
    if-nez v8, :cond_d

    return-void

    .line 1402
    :cond_d
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v3, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_e

    .line 1407
    iput-object v4, v0, Lqe;->k:Ljava/lang/reflect/Method;

    :cond_e
    return-void
.end method

.method static synthetic a(Lwy;Lqe;Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lwy;->a(Lqe;Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic a(Lwy;Lqe;Ljava/lang/Class;Ljava/lang/reflect/Constructor;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lwy;->a(Lqe;Ljava/lang/Class;Ljava/lang/reflect/Constructor;)V

    return-void
.end method

.method static synthetic a(Lwy;Lqe;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lwy;->a(Lqe;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method private static synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "null"

    .line 189
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private static synthetic b(Ljava/lang/String;)Ljava/net/URL;
    .locals 2

    .line 1540
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 1542
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "read URL error"

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static synthetic b(Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/reflect/Method;)V
    .locals 2

    :try_start_0
    const-string v0, "parameterNames"

    .line 1355
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1356
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 1357
    array-length p2, p0

    if-eqz p2, :cond_0

    .line 1358
    iput-object p0, p1, Lqe;->l:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method private static synthetic c(Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 1

    const/4 v0, 0x0

    .line 1531
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic c(Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/reflect/Method;)V
    .locals 2

    :try_start_0
    const-string v0, "parameterNames"

    .line 1292
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1293
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 1294
    array-length p2, p0

    if-eqz p2, :cond_0

    .line 1295
    iput-object p0, p1, Lqe;->l:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static synthetic lambda$0wOrXTwmnIEnWMRlZUT2jXDykfc(Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwy;->a(Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static synthetic lambda$26peSx-eotxTF18BDxYc65cHMlo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lwy;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$9lkTttyE1Ez8qHvwsodw_r05RgU(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lwy;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$Aq4iBemNDjUUiOBBkIsmgWxuinM(Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 0

    invoke-static {p0}, Lwy;->c(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$BZ7LVPPj3uZB4UTF-LR9rQOYlaA(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lwy;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$EmtRbPOa1Es3YunmkpCfPYWwhyY(Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lwy;->a(Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static synthetic lambda$MLhBVHczyX0S8v_FXHdnSbUEBRA(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 0

    invoke-static {p0}, Lwy;->a(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$PUXbY7K05-5x5k4EttgygLdxVeQ(Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwy;->b(Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static synthetic lambda$cgfuCPHbEAXN2vzTWwbZXgyTcVc(Ljava/lang/String;)Ljava/net/URL;
    .locals 0

    invoke-static {p0}, Lwy;->b(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$ruPfy4Kwmgq04AnjUdK3k7Ap9FE(Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwy;->c(Ljava/lang/annotation/Annotation;Lqe;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static synthetic lambda$sVyV6xhXgK0oRRfB8pLSjqBjTiY(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lwy;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public synthetic a()Lsl;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lwy;->b()Lwy$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lqe;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqe;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1417
    iget-object v0, p0, Lwy;->b:Lwy$a;

    if-eqz v0, :cond_0

    .line 1418
    invoke-virtual {v0, p1, p2}, Lwy$a;->a(Lqe;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 1

    .line 1423
    iget-object v0, p0, Lwy;->b:Lwy$a;

    if-eqz v0, :cond_0

    .line 1424
    invoke-virtual {v0, p1, p2, p3}, Lwy$a;->a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    :cond_0
    return-void
.end method

.method public a(Lzx;)V
    .locals 16

    move-object/from16 v0, p1

    .line 51
    const-class v1, Ljava/lang/Character;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v3, L-$$Lambda$wy$9lkTttyE1Ez8qHvwsodw_r05RgU;->INSTANCE:L-$$Lambda$wy$9lkTttyE1Ez8qHvwsodw_r05RgU;

    invoke-virtual {v0, v1, v2, v3}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    const/16 v1, 0xc

    .line 53
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Byte;

    const/4 v7, 0x1

    aput-object v2, v1, v7

    const-class v2, Ljava/lang/Short;

    const/4 v7, 0x2

    aput-object v2, v1, v7

    const-class v2, Ljava/lang/Integer;

    const/4 v7, 0x3

    aput-object v2, v1, v7

    const-class v2, Ljava/lang/Long;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-class v2, Ljava/lang/Number;

    const/4 v7, 0x5

    aput-object v2, v1, v7

    const-class v2, Ljava/lang/Float;

    const/4 v7, 0x6

    aput-object v2, v1, v7

    const-class v2, Ljava/lang/Double;

    const/4 v7, 0x7

    aput-object v2, v1, v7

    const-class v2, Ljava/math/BigInteger;

    const/16 v7, 0x8

    aput-object v2, v1, v7

    const-class v2, Ljava/math/BigDecimal;

    const/16 v7, 0x9

    aput-object v2, v1, v7

    const-class v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v7, 0xa

    aput-object v2, v1, v7

    const-class v2, Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v7, 0xb

    aput-object v2, v1, v7

    .line 68
    new-instance v2, Lrl;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Lrl;-><init>(Ljava/lang/Boolean;)V

    .line 69
    array-length v8, v1

    move v9, v3

    :goto_0
    if-ge v9, v8, :cond_0

    aget-object v10, v1, v9

    .line 70
    const-class v11, Ljava/lang/Boolean;

    invoke-virtual {v0, v10, v11, v2}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 73
    :cond_0
    new-instance v2, Lrl;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, v8}, Lrl;-><init>(Ljava/lang/Boolean;)V

    .line 74
    array-length v8, v1

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_1

    aget-object v10, v1, v9

    .line 75
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v10, v11, v2}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 78
    :cond_1
    new-instance v2, Lrt;

    invoke-direct {v2}, Lrt;-><init>()V

    .line 79
    array-length v8, v1

    move v9, v3

    :goto_2
    if-ge v9, v8, :cond_2

    aget-object v10, v1, v9

    .line 80
    const-class v11, Ljava/lang/String;

    invoke-virtual {v0, v10, v11, v2}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 83
    :cond_2
    new-instance v2, Lrj;

    invoke-direct {v2}, Lrj;-><init>()V

    .line 84
    array-length v8, v1

    move v9, v3

    :goto_3
    if-ge v9, v8, :cond_3

    aget-object v10, v1, v9

    .line 85
    const-class v11, Ljava/math/BigDecimal;

    invoke-virtual {v0, v10, v11, v2}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 88
    :cond_3
    new-instance v2, Lrk;

    invoke-direct {v2}, Lrk;-><init>()V

    .line 89
    array-length v8, v1

    move v9, v3

    :goto_4
    if-ge v9, v8, :cond_4

    aget-object v10, v1, v9

    .line 90
    const-class v11, Ljava/math/BigInteger;

    invoke-virtual {v0, v10, v11, v2}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 93
    :cond_4
    new-instance v2, Lrm;

    invoke-direct {v2, v7}, Lrm;-><init>(Ljava/lang/Byte;)V

    .line 94
    array-length v8, v1

    move v9, v3

    :goto_5
    if-ge v9, v8, :cond_5

    aget-object v10, v1, v9

    .line 95
    const-class v11, Ljava/lang/Byte;

    invoke-virtual {v0, v10, v11, v2}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 98
    :cond_5
    new-instance v2, Lrm;

    invoke-direct {v2, v6}, Lrm;-><init>(Ljava/lang/Byte;)V

    .line 99
    array-length v8, v1

    move v9, v3

    :goto_6
    if-ge v9, v8, :cond_6

    aget-object v10, v1, v9

    .line 100
    sget-object v11, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v10, v11, v2}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 103
    :cond_6
    new-instance v2, Lrs;

    invoke-direct {v2, v7}, Lrs;-><init>(Ljava/lang/Short;)V

    .line 104
    array-length v8, v1

    move v9, v3

    :goto_7
    if-ge v9, v8, :cond_7

    aget-object v10, v1, v9

    .line 105
    const-class v11, Ljava/lang/Short;

    invoke-virtual {v0, v10, v11, v2}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 108
    :cond_7
    new-instance v2, Lrs;

    invoke-direct {v2, v5}, Lrs;-><init>(Ljava/lang/Short;)V

    .line 109
    array-length v8, v1

    move v9, v3

    :goto_8
    if-ge v9, v8, :cond_8

    aget-object v10, v1, v9

    .line 110
    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v10, v11, v2}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 113
    :cond_8
    new-instance v2, Lrp;

    invoke-direct {v2, v7}, Lrp;-><init>(Ljava/lang/Integer;)V

    .line 114
    array-length v8, v1

    move v9, v3

    :goto_9
    if-ge v9, v8, :cond_9

    aget-object v10, v1, v9

    .line 115
    const-class v11, Ljava/lang/Integer;

    invoke-virtual {v0, v10, v11, v2}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 118
    :cond_9
    new-instance v2, Lrp;

    invoke-direct {v2, v4}, Lrp;-><init>(Ljava/lang/Integer;)V

    .line 119
    array-length v8, v1

    move v9, v3

    :goto_a
    if-ge v9, v8, :cond_a

    aget-object v10, v1, v9

    .line 120
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v10, v11, v2}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 123
    :cond_a
    new-instance v2, Lrq;

    invoke-direct {v2, v7}, Lrq;-><init>(Ljava/lang/Long;)V

    .line 124
    array-length v8, v1

    move v9, v3

    :goto_b
    if-ge v9, v8, :cond_b

    aget-object v10, v1, v9

    .line 125
    const-class v11, Ljava/lang/Long;

    invoke-virtual {v0, v10, v11, v2}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 128
    :cond_b
    new-instance v2, Lrq;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {v2, v10}, Lrq;-><init>(Ljava/lang/Long;)V

    .line 129
    array-length v10, v1

    move v11, v3

    :goto_c
    if-ge v11, v10, :cond_c

    aget-object v12, v1, v11

    .line 130
    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v12, v13, v2}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    .line 133
    :cond_c
    new-instance v2, Lro;

    invoke-direct {v2, v7}, Lro;-><init>(Ljava/lang/Float;)V

    .line 134
    array-length v10, v1

    move v11, v3

    :goto_d
    if-ge v11, v10, :cond_d

    aget-object v12, v1, v11

    .line 135
    const-class v13, Ljava/lang/Float;

    invoke-virtual {v0, v12, v13, v2}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 138
    :cond_d
    new-instance v2, Lro;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-direct {v2, v11}, Lro;-><init>(Ljava/lang/Float;)V

    .line 139
    array-length v11, v1

    move v12, v3

    :goto_e
    if-ge v12, v11, :cond_e

    aget-object v13, v1, v12

    .line 140
    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v13, v14, v2}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    .line 143
    :cond_e
    new-instance v2, Lrn;

    invoke-direct {v2, v7}, Lrn;-><init>(Ljava/lang/Double;)V

    .line 144
    array-length v11, v1

    move v12, v3

    :goto_f
    if-ge v12, v11, :cond_f

    aget-object v13, v1, v12

    .line 145
    const-class v14, Ljava/lang/Double;

    invoke-virtual {v0, v13, v14, v2}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    .line 148
    :cond_f
    new-instance v2, Lrn;

    const-wide/16 v11, 0x0

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-direct {v2, v13}, Lrn;-><init>(Ljava/lang/Double;)V

    .line 149
    array-length v13, v1

    move v14, v3

    :goto_10
    if-ge v14, v13, :cond_10

    aget-object v15, v1, v14

    .line 150
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v15, v7, v2}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x0

    goto :goto_10

    .line 153
    :cond_10
    new-instance v2, Lrr;

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-direct {v2, v7}, Lrr;-><init>(Ljava/lang/Number;)V

    .line 154
    array-length v7, v1

    move v13, v3

    :goto_11
    if-ge v13, v7, :cond_11

    aget-object v14, v1, v13

    .line 155
    const-class v15, Ljava/lang/Number;

    invoke-virtual {v0, v14, v15, v2}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v13, v13, 0x1

    goto :goto_11

    .line 160
    :cond_11
    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v7, Lri;

    sget-object v13, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/16 v14, 0x30

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    invoke-direct {v7, v13, v14}, Lri;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v7}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 161
    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v7, Lri;

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v7, v13, v3}, Lri;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v7}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 162
    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v3, Lri;

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-direct {v3, v7, v10}, Lri;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 163
    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v3, Lri;

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-direct {v3, v7, v10}, Lri;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 164
    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v3, Lri;

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v3, v7, v6}, Lri;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 165
    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v3, Lri;

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {v3, v6, v5}, Lri;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 166
    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v3, Lri;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v3, v5, v4}, Lri;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 167
    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v3, Lri;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lri;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 169
    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/Character;

    new-instance v3, Lri;

    const-class v4, Ljava/lang/Character;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lri;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 170
    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/Boolean;

    new-instance v3, Lri;

    const-class v4, Ljava/lang/Boolean;

    invoke-direct {v3, v4, v5}, Lri;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 171
    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/Double;

    new-instance v3, Lri;

    const-class v4, Ljava/lang/Double;

    invoke-direct {v3, v4, v5}, Lri;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 172
    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/Float;

    new-instance v3, Lri;

    const-class v4, Ljava/lang/Float;

    invoke-direct {v3, v4, v5}, Lri;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 173
    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/Byte;

    new-instance v3, Lri;

    const-class v4, Ljava/lang/Byte;

    invoke-direct {v3, v4, v5}, Lri;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 174
    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/Short;

    new-instance v3, Lri;

    const-class v4, Ljava/lang/Short;

    invoke-direct {v3, v4, v5}, Lri;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 175
    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/Integer;

    new-instance v3, Lri;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v5}, Lri;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 176
    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/Long;

    new-instance v3, Lri;

    const-class v4, Ljava/lang/Long;

    invoke-direct {v3, v4, v5}, Lri;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 177
    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/math/BigDecimal;

    new-instance v3, Lri;

    const-class v4, Ljava/math/BigDecimal;

    invoke-direct {v3, v4, v5}, Lri;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 178
    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/math/BigInteger;

    new-instance v3, Lri;

    const-class v4, Ljava/math/BigInteger;

    invoke-direct {v3, v4, v5}, Lri;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 179
    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/Number;

    new-instance v3, Lri;

    const-class v4, Ljava/math/BigDecimal;

    invoke-direct {v3, v4, v5}, Lri;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 180
    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/util/Collection;

    new-instance v3, Lri;

    const-class v4, Ljava/util/Collection;

    invoke-direct {v3, v4, v5}, Lri;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 181
    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/util/List;

    new-instance v3, Lri;

    const-class v4, Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lri;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 182
    const-class v1, Ljava/lang/String;

    const-class v2, Lcom/alibaba/fastjson2/JSONArray;

    new-instance v3, Lri;

    const-class v4, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v3, v4, v5}, Lri;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 186
    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v3, L-$$Lambda$wy$26peSx-eotxTF18BDxYc65cHMlo;->INSTANCE:L-$$Lambda$wy$26peSx-eotxTF18BDxYc65cHMlo;

    invoke-virtual {v0, v1, v2, v3}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 189
    sget-object v1, L-$$Lambda$wy$BZ7LVPPj3uZB4UTF-LR9rQOYlaA;->INSTANCE:L-$$Lambda$wy$BZ7LVPPj3uZB4UTF-LR9rQOYlaA;

    .line 192
    const-class v2, Ljava/lang/Long;

    const-class v3, Ljava/time/LocalDateTime;

    invoke-virtual {v0, v2, v3, v1}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 195
    sget-object v1, L-$$Lambda$wy$sVyV6xhXgK0oRRfB8pLSjqBjTiY;->INSTANCE:L-$$Lambda$wy$sVyV6xhXgK0oRRfB8pLSjqBjTiY;

    .line 198
    const-class v2, Ljava/lang/String;

    const-class v3, Ljava/util/UUID;

    invoke-virtual {v0, v2, v3, v1}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    return-void
.end method

.method public b()Lwy$a;
    .locals 1

    .line 1413
    iget-object v0, p0, Lwy;->b:Lwy$a;

    return-object v0
.end method

.method public getObjectReader(Lzx;Ljava/lang/reflect/Type;)Lwk;
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1430
    const-class v3, Ljava/lang/String;

    if-eq v2, v3, :cond_a0

    const-class v3, Ljava/lang/CharSequence;

    if-ne v2, v3, :cond_0

    goto/16 :goto_28

    .line 1434
    :cond_0
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_9f

    const-class v3, Ljava/lang/Character;

    if-ne v2, v3, :cond_1

    goto/16 :goto_27

    .line 1438
    :cond_1
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_9e

    const-class v3, Ljava/lang/Boolean;

    if-ne v2, v3, :cond_2

    goto/16 :goto_26

    .line 1442
    :cond_2
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_9d

    const-class v3, Ljava/lang/Byte;

    if-ne v2, v3, :cond_3

    goto/16 :goto_25

    .line 1446
    :cond_3
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_9c

    const-class v3, Ljava/lang/Short;

    if-ne v2, v3, :cond_4

    goto/16 :goto_24

    .line 1450
    :cond_4
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_9b

    const-class v3, Ljava/lang/Integer;

    if-ne v2, v3, :cond_5

    goto/16 :goto_23

    .line 1454
    :cond_5
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_9a

    const-class v3, Ljava/lang/Long;

    if-ne v2, v3, :cond_6

    goto/16 :goto_22

    .line 1458
    :cond_6
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_99

    const-class v3, Ljava/lang/Float;

    if-ne v2, v3, :cond_7

    goto/16 :goto_21

    .line 1462
    :cond_7
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_98

    const-class v3, Ljava/lang/Double;

    if-ne v2, v3, :cond_8

    goto/16 :goto_20

    .line 1466
    :cond_8
    const-class v3, Ljava/math/BigInteger;

    if-ne v2, v3, :cond_9

    .line 1467
    sget-object v0, Lxf;->a:Lxf;

    return-object v0

    .line 1470
    :cond_9
    const-class v3, Ljava/math/BigDecimal;

    if-ne v2, v3, :cond_a

    .line 1471
    sget-object v0, Lxe;->a:Lxe;

    return-object v0

    .line 1474
    :cond_a
    const-class v3, Ljava/lang/Number;

    if-ne v2, v3, :cond_b

    .line 1475
    sget-object v0, Lzc;->a:Lzc;

    return-object v0

    .line 1478
    :cond_b
    const-class v3, Ljava/util/BitSet;

    if-ne v2, v3, :cond_c

    .line 1479
    sget-object v0, Lxg;->a:Lxg;

    return-object v0

    .line 1482
    :cond_c
    const-class v3, Ljava/util/OptionalInt;

    if-ne v2, v3, :cond_d

    .line 1483
    sget-object v0, Lzj;->a:Lzj;

    return-object v0

    .line 1486
    :cond_d
    const-class v3, Ljava/util/OptionalLong;

    if-ne v2, v3, :cond_e

    .line 1487
    sget-object v0, Lzk;->a:Lzk;

    return-object v0

    .line 1490
    :cond_e
    const-class v3, Ljava/util/OptionalDouble;

    if-ne v2, v3, :cond_f

    .line 1491
    sget-object v0, Lzi;->a:Lzi;

    return-object v0

    .line 1494
    :cond_f
    const-class v3, Ljava/util/Optional;

    if-ne v2, v3, :cond_10

    .line 1495
    sget-object v0, Lzh;->a:Lzh;

    return-object v0

    .line 1498
    :cond_10
    const-class v3, Ljava/util/UUID;

    if-ne v2, v3, :cond_11

    .line 1499
    sget-object v0, Lzo;->a:Lzo;

    return-object v0

    .line 1502
    :cond_11
    const-class v3, Ljava/time/Duration;

    if-ne v2, v3, :cond_12

    .line 1503
    new-instance v0, Lyb;

    const-class v2, Ljava/time/Duration;

    sget-object v3, L-$$Lambda$kj0yCZYr_5QgHu6ofIaqSyJJa1Q;->INSTANCE:L-$$Lambda$kj0yCZYr_5QgHu6ofIaqSyJJa1Q;

    invoke-direct {v0, v2, v3}, Lyb;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0

    .line 1506
    :cond_12
    const-class v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne v2, v3, :cond_13

    .line 1507
    new-instance v0, Lxy;

    const-class v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v3, L-$$Lambda$gcTqIaEh-5xnzlWjLuhnUjgb4OY;->INSTANCE:L-$$Lambda$gcTqIaEh-5xnzlWjLuhnUjgb4OY;

    invoke-direct {v0, v2, v3}, Lxy;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0

    .line 1513
    :cond_13
    const-class v3, Ljava/net/URI;

    if-ne v2, v3, :cond_14

    .line 1514
    new-instance v0, Lyb;

    const-class v2, Ljava/net/URI;

    sget-object v3, L-$$Lambda$Tu5lEiCCSnDPR8PoxnAUsZIWhbk;->INSTANCE:L-$$Lambda$Tu5lEiCCSnDPR8PoxnAUsZIWhbk;

    invoke-direct {v0, v2, v3}, Lyb;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0

    .line 1520
    :cond_14
    const-class v3, Ljava/nio/charset/Charset;

    if-ne v2, v3, :cond_15

    .line 1521
    new-instance v0, Lyb;

    const-class v2, Ljava/nio/charset/Charset;

    sget-object v3, L-$$Lambda$9gQkdvECKnnUG9Odt1jfSicQN9k;->INSTANCE:L-$$Lambda$9gQkdvECKnnUG9Odt1jfSicQN9k;

    invoke-direct {v0, v2, v3}, Lyb;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0

    .line 1524
    :cond_15
    const-class v3, Ljava/io/File;

    if-ne v2, v3, :cond_16

    .line 1525
    new-instance v0, Lyb;

    const-class v2, Ljava/io/File;

    sget-object v3, L-$$Lambda$BHnuAJ665l1R-2J9Kl9ccw_dq7c;->INSTANCE:L-$$Lambda$BHnuAJ665l1R-2J9Kl9ccw_dq7c;

    invoke-direct {v0, v2, v3}, Lyb;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0

    .line 1528
    :cond_16
    const-class v3, Ljava/nio/file/Path;

    if-ne v2, v3, :cond_17

    .line 1529
    new-instance v0, Lyb;

    const-class v2, Ljava/nio/file/Path;

    sget-object v3, L-$$Lambda$wy$Aq4iBemNDjUUiOBBkIsmgWxuinM;->INSTANCE:L-$$Lambda$wy$Aq4iBemNDjUUiOBBkIsmgWxuinM;

    invoke-direct {v0, v2, v3}, Lyb;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0

    .line 1535
    :cond_17
    const-class v3, Ljava/net/URL;

    if-ne v2, v3, :cond_18

    .line 1536
    new-instance v0, Lyb;

    const-class v2, Ljava/net/URL;

    sget-object v3, L-$$Lambda$wy$cgfuCPHbEAXN2vzTWwbZXgyTcVc;->INSTANCE:L-$$Lambda$wy$cgfuCPHbEAXN2vzTWwbZXgyTcVc;

    invoke-direct {v0, v2, v3}, Lyb;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0

    .line 1547
    :cond_18
    const-class v3, Ljava/util/regex/Pattern;

    if-ne v2, v3, :cond_19

    .line 1548
    new-instance v0, Lyb;

    const-class v2, Ljava/util/regex/Pattern;

    sget-object v3, L-$$Lambda$BL9OOJlG-1An1qs3gnz2u_UQsTI;->INSTANCE:L-$$Lambda$BL9OOJlG-1An1qs3gnz2u_UQsTI;

    invoke-direct {v0, v2, v3}, Lyb;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0

    .line 1551
    :cond_19
    const-class v3, Ljava/lang/Class;

    if-ne v2, v3, :cond_1a

    .line 1552
    sget-object v0, Lxn;->a:Lxn;

    return-object v0

    .line 1555
    :cond_1a
    const-class v3, Ljava/lang/reflect/Method;

    if-ne v2, v3, :cond_1b

    .line 1556
    new-instance v0, Lzb;

    invoke-direct {v0}, Lzb;-><init>()V

    return-object v0

    .line 1559
    :cond_1b
    const-class v3, Ljava/lang/reflect/Field;

    if-ne v2, v3, :cond_1c

    .line 1560
    new-instance v0, Lxu;

    invoke-direct {v0}, Lxu;-><init>()V

    return-object v0

    .line 1563
    :cond_1c
    const-class v3, Ljava/lang/reflect/Type;

    if-ne v2, v3, :cond_1d

    .line 1564
    sget-object v0, Lxn;->a:Lxn;

    return-object v0

    .line 1568
    :cond_1d
    invoke-interface/range {p2 .. p2}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v3

    .line 1569
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v9, "org.springframework.util.LinkedMultiValueMap"

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "org.springframework.security.core.authority.SimpleGrantedAuthority"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move v4, v12

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "org.springframework.security.core.userdetails.User"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v4, 0x5

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "org.springframework.security.authentication.BadCredentialsException"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v4, 0x7

    goto :goto_1

    :sswitch_3
    const-string v4, "org.springframework.security.core.authority.RememberMeAuthenticationToken"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move v4, v14

    goto :goto_1

    :sswitch_4
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move v4, v5

    goto :goto_1

    :sswitch_5
    const-string v4, "org.springframework.security.web.authentication.WebAuthenticationDetails"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/16 v4, 0xa

    goto :goto_1

    :sswitch_6
    const-string v4, "org.springframework.security.web.savedrequest.SavedCookie"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/16 v4, 0x9

    goto :goto_1

    :sswitch_7
    const-string v4, "org.springframework.security.core.authority.AnonymousAuthenticationToken"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move v4, v13

    goto :goto_1

    :sswitch_8
    const-string v4, "org.springframework.security.web.csrf.DefaultCsrfToken"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/16 v4, 0x8

    goto :goto_1

    :sswitch_9
    const-string v4, "com.google.common.collect.AbstractMapBasedMultimap$WrappedSet"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move v4, v15

    goto :goto_1

    :sswitch_a
    const-string v4, "org.springframework.security.authentication.UsernamePasswordAuthenticationToken"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v4, 0x6

    goto :goto_1

    :cond_1e
    :goto_0
    const/4 v4, -0x1

    :goto_1
    const-string v6, "org.springframework.security.jackson2.SimpleGrantedAuthorityMixin"

    const-wide/16 v7, 0x0

    const/4 v11, 0x0

    packed-switch v4, :pswitch_data_0

    move-object v4, v11

    goto :goto_2

    :pswitch_0
    const-string v4, "org.springframework.security.web.jackson2.WebAuthenticationDetailsMixin"

    goto :goto_2

    :pswitch_1
    const-string v4, "org.springframework.security.web.jackson2.SavedCookieMixin"

    goto :goto_2

    :pswitch_2
    const-string v4, "org.springframework.security.web.jackson2.DefaultCsrfTokenMixin"

    goto :goto_2

    :pswitch_3
    const-string v4, "org.springframework.security.jackson2.BadCredentialsExceptionMixin"

    goto :goto_2

    :pswitch_4
    const-string v4, "org.springframework.security.jackson2.UsernamePasswordAuthenticationTokenMixin"

    goto :goto_2

    :pswitch_5
    const-string v4, "org.springframework.security.jackson2.UserMixin"

    goto :goto_2

    :pswitch_6
    move-object v4, v6

    goto :goto_2

    :pswitch_7
    const-string v4, "org.springframework.security.jackson2.RememberMeAuthenticationTokenMixin"

    goto :goto_2

    :pswitch_8
    const-string v4, "org.springframework.security.jackson2.AnonymousAuthenticationTokenMixin"

    goto :goto_2

    .line 1573
    :pswitch_9
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-static {v2, v0, v7, v8}, Lyw;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lwk;

    move-result-object v0

    return-object v0

    :pswitch_a
    return-object v11

    :goto_2
    if-eqz v4, :cond_20

    .line 1604
    iget-object v10, v0, Lzx;->m:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v10, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    if-nez v10, :cond_20

    .line 1606
    invoke-static {v4}, Labo;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    if-nez v10, :cond_1f

    .line 1608
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, "com.alibaba.fastjson2.internal.mixin.spring.SimpleGrantedAuthorityMixin"

    .line 1609
    invoke-static {v4}, Labo;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    :cond_1f
    if-eqz v10, :cond_20

    .line 1614
    iget-object v4, v0, Lzx;->m:Ljava/util/concurrent/ConcurrentMap;

    move-object v6, v2

    check-cast v6, Ljava/lang/Class;

    invoke-interface {v4, v6, v10}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    :cond_20
    const-class v4, Ljava/util/Map;

    if-eq v2, v4, :cond_97

    const-class v4, Ljava/util/AbstractMap;

    if-ne v2, v4, :cond_21

    goto/16 :goto_1f

    .line 1623
    :cond_21
    const-class v4, Ljava/util/concurrent/ConcurrentMap;

    if-eq v2, v4, :cond_96

    const-class v4, Ljava/util/concurrent/ConcurrentHashMap;

    if-ne v2, v4, :cond_22

    goto/16 :goto_1e

    .line 1627
    :cond_22
    const-class v4, Ljava/util/concurrent/ConcurrentNavigableMap;

    if-eq v2, v4, :cond_95

    const-class v4, Ljava/util/concurrent/ConcurrentSkipListMap;

    if-ne v2, v4, :cond_23

    goto/16 :goto_1d

    .line 1633
    :cond_23
    const-class v4, Ljava/util/SortedMap;

    if-eq v2, v4, :cond_94

    const-class v4, Ljava/util/NavigableMap;

    if-eq v2, v4, :cond_94

    const-class v4, Ljava/util/TreeMap;

    if-ne v2, v4, :cond_24

    goto/16 :goto_1c

    .line 1640
    :cond_24
    const-class v4, Ljava/util/Calendar;

    if-eq v2, v4, :cond_93

    const-string v4, "javax.xml.datatype.XMLGregorianCalendar"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    goto/16 :goto_1b

    .line 1644
    :cond_25
    const-class v4, Ljava/util/Date;

    if-ne v2, v4, :cond_26

    .line 1645
    sget-object v0, Lxp;->o:Lxp;

    return-object v0

    .line 1648
    :cond_26
    const-class v4, Ljava/time/LocalDate;

    if-ne v2, v4, :cond_27

    .line 1649
    sget-object v0, Lys;->o:Lys;

    return-object v0

    .line 1652
    :cond_27
    const-class v4, Ljava/time/LocalTime;

    if-ne v2, v4, :cond_28

    .line 1653
    sget-object v0, Lyu;->o:Lyu;

    return-object v0

    .line 1656
    :cond_28
    const-class v4, Ljava/time/LocalDateTime;

    if-ne v2, v4, :cond_29

    .line 1657
    sget-object v0, Lyt;->o:Lyt;

    return-object v0

    .line 1660
    :cond_29
    const-class v4, Ljava/time/ZonedDateTime;

    if-ne v2, v4, :cond_2a

    .line 1661
    sget-object v0, Lzs;->o:Lzs;

    return-object v0

    .line 1664
    :cond_2a
    const-class v4, Ljava/time/OffsetDateTime;

    if-ne v2, v4, :cond_2b

    .line 1665
    sget-object v0, Lzf;->o:Lzf;

    return-object v0

    .line 1668
    :cond_2b
    const-class v4, Ljava/time/OffsetTime;

    if-ne v2, v4, :cond_2c

    .line 1669
    sget-object v0, Lzg;->o:Lzg;

    return-object v0

    .line 1672
    :cond_2c
    const-class v4, Ljava/time/ZoneOffset;

    if-ne v2, v4, :cond_2d

    .line 1673
    new-instance v0, Lyb;

    const-class v2, Ljava/time/ZoneOffset;

    sget-object v3, L-$$Lambda$xgFNUwYvcHTlEIDBZr3a1VdEE5U;->INSTANCE:L-$$Lambda$xgFNUwYvcHTlEIDBZr3a1VdEE5U;

    invoke-direct {v0, v2, v3}, Lyb;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0

    .line 1676
    :cond_2d
    const-class v4, Ljava/time/Instant;

    if-ne v2, v4, :cond_2e

    .line 1677
    sget-object v0, Lyd;->o:Lyd;

    return-object v0

    .line 1680
    :cond_2e
    const-class v4, Ljava/util/Locale;

    if-ne v2, v4, :cond_2f

    .line 1681
    sget-object v0, Lyv;->a:Lyv;

    return-object v0

    .line 1684
    :cond_2f
    const-class v4, Ljava/util/Currency;

    if-ne v2, v4, :cond_30

    .line 1685
    sget-object v0, Lxo;->a:Lxo;

    return-object v0

    .line 1688
    :cond_30
    const-class v4, Ljava/time/ZoneId;

    if-ne v2, v4, :cond_31

    .line 1691
    new-instance v0, Lyb;

    const-class v2, Ljava/time/ZoneId;

    sget-object v3, L-$$Lambda$RupiXN48EnNp1UNzOzENzjrgwkw;->INSTANCE:L-$$Lambda$RupiXN48EnNp1UNzOzENzjrgwkw;

    invoke-direct {v0, v2, v3}, Lyb;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0

    .line 1694
    :cond_31
    const-class v4, Ljava/util/TimeZone;

    if-ne v2, v4, :cond_32

    .line 1695
    new-instance v0, Lyb;

    const-class v2, Ljava/util/TimeZone;

    sget-object v3, L-$$Lambda$mRvkLqyKw6z8GMrd0_E3G9uRAaw;->INSTANCE:L-$$Lambda$mRvkLqyKw6z8GMrd0_E3G9uRAaw;

    invoke-direct {v0, v2, v3}, Lyb;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0

    .line 1698
    :cond_32
    const-class v4, [C

    if-ne v2, v4, :cond_33

    .line 1699
    sget-object v0, Lxl;->a:Lxl;

    return-object v0

    .line 1702
    :cond_33
    const-class v4, [F

    if-ne v2, v4, :cond_34

    .line 1703
    sget-object v0, Lxx;->a:Lxx;

    return-object v0

    .line 1706
    :cond_34
    const-class v4, [D

    if-ne v2, v4, :cond_35

    .line 1707
    sget-object v0, Lxs;->a:Lxs;

    return-object v0

    .line 1710
    :cond_35
    const-class v4, [Z

    if-ne v2, v4, :cond_36

    .line 1711
    sget-object v0, Lxh;->a:Lxh;

    return-object v0

    .line 1714
    :cond_36
    const-class v4, [B

    if-ne v2, v4, :cond_37

    .line 1715
    sget-object v0, Lym;->a:Lym;

    return-object v0

    .line 1718
    :cond_37
    const-class v4, [S

    if-ne v2, v4, :cond_38

    .line 1719
    sget-object v0, Lyf;->a:Lyf;

    return-object v0

    .line 1722
    :cond_38
    const-class v4, [I

    if-ne v2, v4, :cond_39

    .line 1723
    sget-object v0, Lyh;->a:Lyh;

    return-object v0

    .line 1726
    :cond_39
    const-class v4, [J

    if-ne v2, v4, :cond_3a

    .line 1727
    sget-object v0, Lyk;->a:Lyk;

    return-object v0

    .line 1730
    :cond_3a
    const-class v4, [Ljava/lang/Byte;

    if-ne v2, v4, :cond_3b

    .line 1731
    sget-object v0, Lyl;->a:Lyl;

    return-object v0

    .line 1734
    :cond_3b
    const-class v4, [Ljava/lang/Short;

    if-ne v2, v4, :cond_3c

    .line 1735
    sget-object v0, Lye;->a:Lye;

    return-object v0

    .line 1738
    :cond_3c
    const-class v4, [Ljava/lang/Integer;

    if-ne v2, v4, :cond_3d

    .line 1739
    sget-object v0, Lyg;->a:Lyg;

    return-object v0

    .line 1742
    :cond_3d
    const-class v4, [Ljava/lang/Long;

    if-ne v2, v4, :cond_3e

    .line 1743
    sget-object v0, Lyj;->a:Lyj;

    return-object v0

    .line 1746
    :cond_3e
    const-class v4, [Ljava/lang/Float;

    if-ne v2, v4, :cond_3f

    .line 1747
    sget-object v0, Lxw;->a:Lxw;

    return-object v0

    .line 1750
    :cond_3f
    const-class v4, [Ljava/lang/Double;

    if-ne v2, v4, :cond_40

    .line 1751
    sget-object v0, Lxr;->a:Lxr;

    return-object v0

    .line 1754
    :cond_40
    const-class v4, [Ljava/lang/Number;

    if-ne v2, v4, :cond_41

    .line 1755
    sget-object v0, Lzd;->a:Lzd;

    return-object v0

    .line 1758
    :cond_41
    const-class v4, [Ljava/lang/String;

    if-ne v2, v4, :cond_42

    .line 1759
    sget-object v0, Lzn;->a:Lzn;

    return-object v0

    .line 1762
    :cond_42
    const-class v4, Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne v2, v4, :cond_43

    .line 1763
    new-instance v0, Lxz;

    const-class v2, Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v3, L-$$Lambda$3VAvzZvSgMGEh9pTm7930gMU7GM;->INSTANCE:L-$$Lambda$3VAvzZvSgMGEh9pTm7930gMU7GM;

    invoke-direct {v0, v2, v3}, Lxz;-><init>(Ljava/lang/Class;Ljava/util/function/IntFunction;)V

    return-object v0

    .line 1766
    :cond_43
    const-class v4, Ljava/util/concurrent/atomic/AtomicLong;

    if-ne v2, v4, :cond_44

    .line 1767
    new-instance v0, Lya;

    const-class v2, Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v3, L-$$Lambda$_TX7S823_LQOqgHzWH1VHrtACXg;->INSTANCE:L-$$Lambda$_TX7S823_LQOqgHzWH1VHrtACXg;

    invoke-direct {v0, v2, v3}, Lya;-><init>(Ljava/lang/Class;Ljava/util/function/LongFunction;)V

    return-object v0

    .line 1770
    :cond_44
    const-class v4, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-ne v2, v4, :cond_45

    .line 1771
    new-instance v0, Lyh;

    const-class v2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    sget-object v3, L-$$Lambda$486hr-mv188xzXC-idgqfbJFW9w;->INSTANCE:L-$$Lambda$486hr-mv188xzXC-idgqfbJFW9w;

    invoke-direct {v0, v2, v3}, Lyh;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0

    .line 1775
    :cond_45
    const-class v4, Ljava/util/concurrent/atomic/AtomicLongArray;

    if-ne v2, v4, :cond_46

    .line 1776
    new-instance v0, Lyk;

    const-class v2, Ljava/util/concurrent/atomic/AtomicLongArray;

    sget-object v3, L-$$Lambda$-ZU4ooN6Yk89pp34Ji5uvUl8Q0g;->INSTANCE:L-$$Lambda$-ZU4ooN6Yk89pp34Ji5uvUl8Q0g;

    invoke-direct {v0, v2, v3}, Lyk;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0

    .line 1780
    :cond_46
    const-class v4, Ljava/util/concurrent/atomic/AtomicReference;

    if-ne v2, v4, :cond_47

    .line 1781
    sget-object v0, Lxd;->a:Lxd;

    return-object v0

    .line 1784
    :cond_47
    instance-of v4, v2, Labl;

    if-eqz v4, :cond_48

    .line 1785
    new-instance v0, Lwi;

    check-cast v2, Labl;

    invoke-direct {v0, v2}, Lwi;-><init>(Labl;)V

    return-object v0

    .line 1788
    :cond_48
    instance-of v4, v2, Labk;

    if-eqz v4, :cond_49

    .line 1789
    new-instance v0, Lyy;

    check-cast v2, Labk;

    invoke-direct {v0, v2}, Lyy;-><init>(Labk;)V

    return-object v0

    .line 1792
    :cond_49
    const-class v4, Ljava/lang/StringBuffer;

    if-eq v2, v4, :cond_92

    const-class v4, Ljava/lang/StringBuilder;

    if-ne v2, v4, :cond_4a

    goto/16 :goto_1a

    .line 1812
    :cond_4a
    const-class v4, Ljava/lang/Iterable;

    if-eq v2, v4, :cond_91

    const-class v4, Ljava/util/Collection;

    if-eq v2, v4, :cond_91

    const-class v4, Ljava/util/List;

    if-eq v2, v4, :cond_91

    const-class v4, Ljava/util/AbstractCollection;

    if-eq v2, v4, :cond_91

    const-class v4, Ljava/util/AbstractList;

    if-eq v2, v4, :cond_91

    const-class v4, Ljava/util/ArrayList;

    if-ne v2, v4, :cond_4b

    goto/16 :goto_19

    .line 1823
    :cond_4b
    const-class v4, Ljava/util/Queue;

    if-eq v2, v4, :cond_90

    const-class v4, Ljava/util/Deque;

    if-eq v2, v4, :cond_90

    const-class v4, Ljava/util/AbstractSequentialList;

    if-eq v2, v4, :cond_90

    const-class v4, Ljava/util/LinkedList;

    if-ne v2, v4, :cond_4c

    goto/16 :goto_18

    .line 1831
    :cond_4c
    const-class v4, Ljava/util/Set;

    if-eq v2, v4, :cond_8f

    const-class v4, Ljava/util/AbstractSet;

    if-eq v2, v4, :cond_8f

    const-class v4, Ljava/util/EnumSet;

    if-ne v2, v4, :cond_4d

    goto/16 :goto_17

    .line 1836
    :cond_4d
    const-class v4, Ljava/util/NavigableSet;

    if-eq v2, v4, :cond_8e

    const-class v4, Ljava/util/SortedSet;

    if-ne v2, v4, :cond_4e

    goto/16 :goto_16

    .line 1841
    :cond_4e
    const-class v4, Ljava/util/concurrent/ConcurrentLinkedDeque;

    if-eq v2, v4, :cond_8d

    const-class v4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eq v2, v4, :cond_8d

    const-class v4, Ljava/util/concurrent/ConcurrentSkipListSet;

    if-eq v2, v4, :cond_8d

    const-class v4, Ljava/util/LinkedHashSet;

    if-eq v2, v4, :cond_8d

    const-class v4, Ljava/util/HashSet;

    if-eq v2, v4, :cond_8d

    const-class v4, Ljava/util/TreeSet;

    if-eq v2, v4, :cond_8d

    const-class v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-ne v2, v4, :cond_4f

    goto/16 :goto_15

    .line 1853
    :cond_4f
    sget-object v4, Lyp;->a:Ljava/lang/Class;

    if-eq v2, v4, :cond_8c

    sget-object v4, Lyp;->b:Ljava/lang/Class;

    if-eq v2, v4, :cond_8c

    sget-object v4, Lyp;->c:Ljava/lang/Class;

    if-eq v2, v4, :cond_8c

    sget-object v4, Lyp;->d:Ljava/lang/Class;

    if-eq v2, v4, :cond_8c

    sget-object v4, Lyp;->e:Ljava/lang/Class;

    if-eq v2, v4, :cond_8c

    sget-object v4, Lyp;->g:Ljava/lang/Class;

    if-eq v2, v4, :cond_8c

    sget-object v4, Lyp;->h:Ljava/lang/Class;

    if-eq v2, v4, :cond_8c

    sget-object v4, Lyp;->i:Ljava/lang/Class;

    if-eq v2, v4, :cond_8c

    sget-object v4, Lyp;->j:Ljava/lang/Class;

    if-eq v2, v4, :cond_8c

    sget-object v4, Lyp;->k:Ljava/lang/Class;

    if-ne v2, v4, :cond_50

    goto/16 :goto_14

    .line 1868
    :cond_50
    sget-object v4, Labo;->d:Ljava/lang/Class;

    if-ne v2, v4, :cond_51

    .line 1870
    invoke-static {v2, v11, v7, v8}, Lyp;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lwk;

    move-result-object v0

    return-object v0

    .line 1873
    :cond_51
    const-class v4, Ljava/lang/Object;

    if-eq v2, v4, :cond_8b

    const-class v4, Ljava/lang/Cloneable;

    if-eq v2, v4, :cond_8b

    const-class v4, Ljava/io/Closeable;

    if-eq v2, v4, :cond_8b

    const-class v4, Ljava/io/Serializable;

    if-eq v2, v4, :cond_8b

    const-class v4, Ljava/lang/Comparable;

    if-ne v2, v4, :cond_52

    goto/16 :goto_13

    .line 1882
    :cond_52
    const-class v4, Ljava/util/Map$Entry;

    if-ne v2, v4, :cond_53

    .line 1883
    new-instance v0, Lyx;

    invoke-direct {v0, v11, v11}, Lyx;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-object v0

    .line 1886
    :cond_53
    instance-of v4, v2, Ljava/lang/Class;

    if-eqz v4, :cond_5a

    .line 1887
    move-object v4, v2

    check-cast v4, Ljava/lang/Class;

    .line 1889
    invoke-static {v4}, Laax;->h(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_54

    return-object v11

    .line 1893
    :cond_54
    const-class v6, Ljava/util/Map;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 1894
    invoke-static {v11, v4, v7, v8}, Lyw;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lwk;

    move-result-object v0

    return-object v0

    .line 1897
    :cond_55
    const-class v6, Ljava/util/Collection;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 1898
    invoke-static {v4, v4, v7, v8}, Lyp;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lwk;

    move-result-object v0

    return-object v0

    .line 1901
    :cond_56
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_58

    .line 1902
    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 1903
    const-class v2, Ljava/lang/Object;

    if-ne v0, v2, :cond_57

    .line 1904
    sget-object v0, Lwh;->a:Lwh;

    return-object v0

    .line 1906
    :cond_57
    new-instance v0, Lwj;

    invoke-direct {v0, v4}, Lwj;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 1909
    :cond_58
    const-class v6, Lcom/alibaba/fastjson2/f;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 1910
    new-instance v0, Lyo;

    invoke-direct {v0, v4}, Lyo;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 1914
    :cond_59
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v6

    .line 1915
    invoke-virtual {v6}, Lzx;->b()Lxa;

    move-result-object v6

    .line 1917
    const-class v10, Ljava/lang/StackTraceElement;

    if-ne v4, v10, :cond_5a

    .line 1919
    :try_start_0
    new-array v10, v12, [Ljava/lang/Class;

    const-class v16, Ljava/lang/String;

    aput-object v16, v10, v15

    const-class v16, Ljava/lang/String;

    aput-object v16, v10, v5

    const-class v16, Ljava/lang/String;

    aput-object v16, v10, v14

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v10, v13

    invoke-virtual {v4, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const-string v10, "className"

    const-string v11, "methodName"

    const-string v7, "fileName"

    const-string v8, "lineNumber"

    .line 1925
    filled-new-array {v10, v11, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    .line 1926
    invoke-virtual {v6, v4, v7}, Lxa;->a(Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Lwk;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1938
    :catch_0
    :cond_5a
    instance-of v4, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_86

    .line 1939
    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 1940
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1942
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 1944
    array-length v6, v3

    if-ne v6, v14, :cond_69

    .line 1945
    aget-object v0, v3, v15

    .line 1946
    aget-object v3, v3, v5

    .line 1948
    const-class v6, Ljava/util/Map;

    if-eq v4, v6, :cond_68

    const-class v6, Ljava/util/AbstractMap;

    if-eq v4, v6, :cond_68

    const-class v6, Ljava/util/HashMap;

    if-ne v4, v6, :cond_5b

    goto/16 :goto_8

    .line 1955
    :cond_5b
    const-class v6, Ljava/util/concurrent/ConcurrentMap;

    if-eq v4, v6, :cond_67

    const-class v6, Ljava/util/concurrent/ConcurrentHashMap;

    if-ne v4, v6, :cond_5c

    goto/16 :goto_7

    .line 1961
    :cond_5c
    const-class v6, Ljava/util/concurrent/ConcurrentNavigableMap;

    if-eq v4, v6, :cond_66

    const-class v6, Ljava/util/concurrent/ConcurrentSkipListMap;

    if-ne v4, v6, :cond_5d

    goto/16 :goto_6

    .line 1967
    :cond_5d
    const-class v6, Ljava/util/LinkedHashMap;

    if-eq v4, v6, :cond_65

    const-class v6, Ljava/util/TreeMap;

    if-eq v4, v6, :cond_65

    const-class v6, Ljava/util/Hashtable;

    if-ne v4, v6, :cond_5e

    goto/16 :goto_5

    .line 1973
    :cond_5e
    const-class v6, Ljava/util/Map$Entry;

    if-ne v4, v6, :cond_5f

    .line 1974
    new-instance v2, Lyx;

    invoke-direct {v2, v0, v3}, Lyx;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-object v2

    .line 1977
    :cond_5f
    invoke-interface {v4}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    goto :goto_3

    :sswitch_b
    const-string v7, "com.google.common.collect.RegularImmutableMap"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    move v15, v5

    goto :goto_4

    :sswitch_c
    const-string v7, "org.apache.commons.lang3.tuple.ImmutablePair"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    const/4 v15, 0x5

    goto :goto_4

    :sswitch_d
    const-string v7, "com.google.common.collect.ImmutableMap"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    goto :goto_4

    :sswitch_e
    const-string v7, "org.apache.commons.lang3.tuple.Pair"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    move v15, v12

    goto :goto_4

    :sswitch_f
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    move v15, v13

    goto :goto_4

    :sswitch_10
    const-string v7, "com.google.common.collect.SingletonImmutableBiMap"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    move v15, v14

    goto :goto_4

    :cond_60
    :goto_3
    const/4 v15, -0x1

    :goto_4
    if-eqz v15, :cond_64

    if-eq v15, v5, :cond_64

    if-eq v15, v14, :cond_63

    if-eq v15, v13, :cond_62

    if-eq v15, v12, :cond_61

    const/4 v6, 0x5

    if-eq v15, v6, :cond_61

    goto/16 :goto_10

    .line 1987
    :cond_61
    new-instance v2, Laaw$a;

    check-cast v4, Ljava/lang/Class;

    invoke-direct {v2, v4, v0, v3}, Laaw$a;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-object v2

    .line 1984
    :cond_62
    check-cast v4, Ljava/lang/Class;

    const-wide/16 v5, 0x0

    invoke-static {v2, v4, v5, v6}, Lyw;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lwk;

    move-result-object v0

    return-object v0

    .line 1982
    :cond_63
    new-instance v2, Lza;

    move-object/from16 v18, v4

    check-cast v18, Ljava/lang/Class;

    const-class v19, Ljava/util/HashMap;

    const-wide/16 v22, 0x0

    invoke-static {}, Labd;->d()Ljava/util/function/Function;

    move-result-object v24

    move-object/from16 v17, v2

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    invoke-direct/range {v17 .. v24}, Lza;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;JLjava/util/function/Function;)V

    return-object v2

    .line 1980
    :cond_64
    new-instance v2, Lza;

    move-object/from16 v18, v4

    check-cast v18, Ljava/lang/Class;

    const-class v19, Ljava/util/HashMap;

    const-wide/16 v22, 0x0

    invoke-static {}, Labd;->c()Ljava/util/function/Function;

    move-result-object v24

    move-object/from16 v17, v2

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    invoke-direct/range {v17 .. v24}, Lza;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;JLjava/util/function/Function;)V

    return-object v2

    .line 1970
    :cond_65
    :goto_5
    check-cast v4, Ljava/lang/Class;

    invoke-static {v4, v4, v0, v3}, Lwy;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lwk;

    move-result-object v0

    return-object v0

    .line 1964
    :cond_66
    :goto_6
    check-cast v4, Ljava/lang/Class;

    const-class v2, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {v4, v2, v0, v3}, Lwy;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lwk;

    move-result-object v0

    return-object v0

    .line 1958
    :cond_67
    :goto_7
    check-cast v4, Ljava/lang/Class;

    const-class v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v2, v0, v3}, Lwy;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lwk;

    move-result-object v0

    return-object v0

    .line 1952
    :cond_68
    :goto_8
    check-cast v4, Ljava/lang/Class;

    const-class v2, Ljava/util/HashMap;

    invoke-static {v4, v2, v0, v3}, Lwy;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lwk;

    move-result-object v0

    return-object v0

    .line 1989
    :cond_69
    array-length v6, v3

    if-ne v6, v5, :cond_85

    .line 1990
    aget-object v3, v3, v15

    .line 1991
    invoke-static {v3}, Labo;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    .line 1993
    const-class v7, Ljava/lang/Iterable;

    if-eq v4, v7, :cond_82

    const-class v7, Ljava/util/Collection;

    if-eq v4, v7, :cond_82

    const-class v7, Ljava/util/List;

    if-eq v4, v7, :cond_82

    const-class v7, Ljava/util/AbstractCollection;

    if-eq v4, v7, :cond_82

    const-class v7, Ljava/util/AbstractList;

    if-eq v4, v7, :cond_82

    const-class v7, Ljava/util/ArrayList;

    if-ne v4, v7, :cond_6a

    goto/16 :goto_f

    .line 2008
    :cond_6a
    const-class v7, Ljava/util/Queue;

    if-eq v4, v7, :cond_7f

    const-class v7, Ljava/util/Deque;

    if-eq v4, v7, :cond_7f

    const-class v7, Ljava/util/AbstractSequentialList;

    if-eq v4, v7, :cond_7f

    const-class v7, Ljava/util/LinkedList;

    if-ne v4, v7, :cond_6b

    goto/16 :goto_e

    .line 2021
    :cond_6b
    const-class v7, Ljava/util/Set;

    if-eq v4, v7, :cond_7c

    const-class v7, Ljava/util/AbstractSet;

    if-eq v4, v7, :cond_7c

    const-class v7, Ljava/util/EnumSet;

    if-ne v4, v7, :cond_6c

    goto/16 :goto_d

    .line 2031
    :cond_6c
    const-class v7, Ljava/util/NavigableSet;

    if-eq v4, v7, :cond_79

    const-class v7, Ljava/util/SortedSet;

    if-ne v4, v7, :cond_6d

    goto/16 :goto_c

    .line 2041
    :cond_6d
    const-class v7, Ljava/util/concurrent/ConcurrentLinkedDeque;

    if-eq v4, v7, :cond_76

    const-class v7, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eq v4, v7, :cond_76

    const-class v7, Ljava/util/concurrent/ConcurrentSkipListSet;

    if-eq v4, v7, :cond_76

    const-class v7, Ljava/util/LinkedHashSet;

    if-eq v4, v7, :cond_76

    const-class v7, Ljava/util/HashSet;

    if-eq v4, v7, :cond_76

    const-class v7, Ljava/util/TreeSet;

    if-eq v4, v7, :cond_76

    const-class v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-ne v4, v7, :cond_6e

    goto :goto_b

    .line 2058
    :cond_6e
    invoke-interface {v4}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x766adabf

    if-eq v7, v8, :cond_71

    const v8, -0x289861d4

    if-eq v7, v8, :cond_70

    const v8, 0x35fca75f

    if-eq v7, v8, :cond_6f

    goto :goto_9

    :cond_6f
    const-string v7, "com.google.common.collect.ImmutableSet"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_72

    move v15, v5

    goto :goto_a

    :cond_70
    const-string v7, "com.google.common.collect.SingletonImmutableSet"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_72

    move v15, v14

    goto :goto_a

    :cond_71
    const-string v7, "com.google.common.collect.ImmutableList"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_72

    goto :goto_a

    :cond_72
    :goto_9
    const/4 v15, -0x1

    :goto_a
    if-eqz v15, :cond_75

    if-eq v15, v5, :cond_75

    if-eq v15, v14, :cond_75

    .line 2065
    const-class v5, Ljava/util/Optional;

    if-ne v4, v5, :cond_73

    const/4 v5, 0x0

    .line 2066
    invoke-static {v2, v5, v5}, Lzh;->a(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/util/Locale;)Lzh;

    move-result-object v0

    return-object v0

    .line 2069
    :cond_73
    const-class v2, Ljava/util/concurrent/atomic/AtomicReference;

    if-ne v4, v2, :cond_74

    .line 2070
    new-instance v0, Lxd;

    invoke-direct {v0, v3}, Lxd;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0

    .line 2073
    :cond_74
    instance-of v2, v3, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_85

    .line 2074
    invoke-virtual {v1, v0, v4}, Lwy;->getObjectReader(Lzx;Ljava/lang/reflect/Type;)Lwk;

    move-result-object v0

    return-object v0

    :cond_75
    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    .line 2062
    invoke-static {v2, v0, v3, v4}, Lyp;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lwk;

    move-result-object v0

    return-object v0

    .line 2049
    :cond_76
    :goto_b
    const-class v0, Ljava/lang/String;

    if-ne v3, v0, :cond_77

    .line 2050
    new-instance v0, Lyr;

    check-cast v4, Ljava/lang/Class;

    invoke-direct {v0, v4, v4}, Lyr;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 2051
    :cond_77
    const-class v0, Ljava/lang/Long;

    if-ne v6, v0, :cond_78

    .line 2052
    new-instance v0, Lyq;

    check-cast v4, Ljava/lang/Class;

    invoke-direct {v0, v4, v4}, Lyq;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    :cond_78
    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    .line 2054
    invoke-static {v2, v0, v3, v4}, Lyp;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lwk;

    move-result-object v0

    return-object v0

    .line 2032
    :cond_79
    :goto_c
    const-class v0, Ljava/lang/String;

    if-ne v3, v0, :cond_7a

    .line 2033
    new-instance v0, Lyr;

    check-cast v4, Ljava/lang/Class;

    const-class v2, Ljava/util/TreeSet;

    invoke-direct {v0, v4, v2}, Lyr;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 2034
    :cond_7a
    const-class v0, Ljava/lang/Long;

    if-ne v6, v0, :cond_7b

    .line 2035
    new-instance v0, Lyq;

    check-cast v4, Ljava/lang/Class;

    const-class v2, Ljava/util/TreeSet;

    invoke-direct {v0, v4, v2}, Lyq;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    :cond_7b
    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    .line 2037
    invoke-static {v2, v0, v3, v4}, Lyp;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lwk;

    move-result-object v0

    return-object v0

    .line 2022
    :cond_7c
    :goto_d
    const-class v0, Ljava/lang/String;

    if-ne v6, v0, :cond_7d

    .line 2023
    new-instance v0, Lyr;

    check-cast v4, Ljava/lang/Class;

    const-class v2, Ljava/util/HashSet;

    invoke-direct {v0, v4, v2}, Lyr;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 2024
    :cond_7d
    const-class v0, Ljava/lang/Long;

    if-ne v6, v0, :cond_7e

    .line 2025
    new-instance v0, Lyq;

    check-cast v4, Ljava/lang/Class;

    const-class v2, Ljava/util/HashSet;

    invoke-direct {v0, v4, v2}, Lyq;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    :cond_7e
    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    .line 2027
    invoke-static {v2, v0, v3, v4}, Lyp;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lwk;

    move-result-object v0

    return-object v0

    .line 2012
    :cond_7f
    :goto_e
    const-class v0, Ljava/lang/String;

    if-ne v6, v0, :cond_80

    .line 2013
    new-instance v0, Lyr;

    check-cast v4, Ljava/lang/Class;

    const-class v2, Ljava/util/LinkedList;

    invoke-direct {v0, v4, v2}, Lyr;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 2014
    :cond_80
    const-class v0, Ljava/lang/Long;

    if-ne v6, v0, :cond_81

    .line 2015
    new-instance v0, Lyq;

    check-cast v4, Ljava/lang/Class;

    const-class v2, Ljava/util/LinkedList;

    invoke-direct {v0, v4, v2}, Lyq;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    :cond_81
    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    .line 2017
    invoke-static {v2, v0, v3, v4}, Lyp;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lwk;

    move-result-object v0

    return-object v0

    .line 1999
    :cond_82
    :goto_f
    const-class v0, Ljava/lang/String;

    if-ne v6, v0, :cond_83

    .line 2000
    new-instance v0, Lyr;

    check-cast v4, Ljava/lang/Class;

    const-class v2, Ljava/util/ArrayList;

    invoke-direct {v0, v4, v2}, Lyr;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 2001
    :cond_83
    const-class v0, Ljava/lang/Long;

    if-ne v6, v0, :cond_84

    .line 2002
    new-instance v0, Lyq;

    check-cast v4, Ljava/lang/Class;

    const-class v2, Ljava/util/ArrayList;

    invoke-direct {v0, v4, v2}, Lyq;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    :cond_84
    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    .line 2004
    invoke-static {v2, v0, v3, v4}, Lyp;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lwk;

    move-result-object v0

    return-object v0

    :cond_85
    :goto_10
    const/4 v0, 0x0

    return-object v0

    :cond_86
    const/4 v6, 0x5

    .line 2081
    instance-of v4, v2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v4, :cond_87

    .line 2082
    new-instance v0, Lyc;

    check-cast v2, Ljava/lang/reflect/GenericArrayType;

    invoke-direct {v0, v2}, Lyc;-><init>(Ljava/lang/reflect/GenericArrayType;)V

    return-object v0

    .line 2085
    :cond_87
    instance-of v4, v2, Ljava/lang/reflect/WildcardType;

    if-eqz v4, :cond_88

    .line 2086
    move-object v4, v2

    check-cast v4, Ljava/lang/reflect/WildcardType;

    invoke-interface {v4}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 2087
    array-length v7, v4

    if-ne v7, v5, :cond_88

    .line 2088
    aget-object v2, v4, v15

    invoke-virtual {v1, v0, v2}, Lwy;->getObjectReader(Lzx;Ljava/lang/reflect/Type;)Lwk;

    move-result-object v0

    return-object v0

    .line 2092
    :cond_88
    const-class v0, Ljava/lang/reflect/ParameterizedType;

    if-ne v2, v0, :cond_89

    .line 2093
    const-class v0, Labm;

    invoke-static {v0}, Lzz;->a(Ljava/lang/Class;)Lwk;

    move-result-object v0

    return-object v0

    .line 2096
    :cond_89
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_2

    goto/16 :goto_11

    :sswitch_11
    const-string v0, "org.joda.time.Chronology"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    move v5, v6

    goto/16 :goto_12

    :sswitch_12
    const-string v0, "com.google.common.collect.RegularImmutableSet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x1e

    goto/16 :goto_12

    :sswitch_13
    const-string v0, "gnu.trove.list.array.TDoubleArrayList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x30

    goto/16 :goto_12

    :sswitch_14
    const-string v0, "com.carrotsearch.hppc.LongArrayList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x24

    goto/16 :goto_12

    :sswitch_15
    const-string v0, "gnu.trove.set.hash.TByteHashSet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x31

    goto/16 :goto_12

    :sswitch_16
    const-string v0, "java.util.RegularEnumSet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    move v5, v13

    goto/16 :goto_12

    :sswitch_17
    const-string v0, "javax.money.Money"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0xc

    goto/16 :goto_12

    :sswitch_18
    const-string v0, "org.bson.types.Decimal128"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x35

    goto/16 :goto_12

    :sswitch_19
    const-string v0, "java.lang.Throwable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x11

    goto/16 :goto_12

    :sswitch_1a
    const-string v0, "gnu.trove.list.array.TByteArrayList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x2a

    goto/16 :goto_12

    :sswitch_1b
    const-string v0, "java.net.InetSocketAddress"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0xe

    goto/16 :goto_12

    :sswitch_1c
    const-string v0, "gnu.trove.list.array.TIntArrayList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x2d

    goto/16 :goto_12

    :sswitch_1d
    const-string v0, "java.text.SimpleDateFormat"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x10

    goto/16 :goto_12

    :sswitch_1e
    const-string v0, "com.google.common.collect.AbstractMapBasedMultimap$RandomAccessWrappedList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x1f

    goto/16 :goto_12

    :sswitch_1f
    const-string v0, "org.joda.time.LocalDateTime"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/4 v5, 0x7

    goto/16 :goto_12

    :sswitch_20
    const-string v0, "com.carrotsearch.hppc.IntHashSet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x23

    goto/16 :goto_12

    :sswitch_21
    const-string v0, "com.carrotsearch.hppc.FloatArrayList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x28

    goto/16 :goto_12

    :sswitch_22
    const-string v0, "java.sql.Timestamp"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    goto/16 :goto_12

    :sswitch_23
    const-string v0, "javax.money.MonetaryAmount"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0xb

    goto/16 :goto_12

    :sswitch_24
    const-string v0, "org.joda.time.DateTime"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x9

    goto/16 :goto_12

    :sswitch_25
    const-string v0, "gnu.trove.list.array.TFloatArrayList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x2f

    goto/16 :goto_12

    :sswitch_26
    const-string v0, "java.sql.Time"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    move v5, v15

    goto/16 :goto_12

    :sswitch_27
    const-string v0, "java.sql.Date"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    move v5, v14

    goto/16 :goto_12

    :sswitch_28
    const-string v0, "org.apache.commons.lang3.tuple.ImmutablePair"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x1a

    goto/16 :goto_12

    :sswitch_29
    const-string v0, "com.google.common.collect.ImmutableSet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x1c

    goto/16 :goto_12

    :sswitch_2a
    const-string v0, "gnu.trove.list.array.TCharArrayList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x2b

    goto/16 :goto_12

    :sswitch_2b
    const-string v0, "gnu.trove.set.hash.TLongHashSet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x34

    goto/16 :goto_12

    :sswitch_2c
    const-string v0, "com.carrotsearch.hppc.ByteArrayList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x20

    goto/16 :goto_12

    :sswitch_2d
    const-string v0, "java.lang.IllegalStateException"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x13

    goto/16 :goto_12

    :sswitch_2e
    const-string v0, "java.lang.Exception"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x12

    goto/16 :goto_12

    :sswitch_2f
    const-string v0, "org.joda.time.Instant"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x8

    goto/16 :goto_12

    :sswitch_30
    const-string v0, "com.carrotsearch.hppc.DoubleArrayList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x29

    goto/16 :goto_12

    :sswitch_31
    const-string v0, "org.apache.commons.lang3.tuple.Pair"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x19

    goto/16 :goto_12

    :sswitch_32
    const-string v0, "com.carrotsearch.hppc.ShortArrayList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x21

    goto/16 :goto_12

    :sswitch_33
    const-string v0, "gnu.trove.set.hash.TIntHashSet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x33

    goto/16 :goto_12

    :sswitch_34
    const-string v0, "gnu.trove.list.array.TShortArrayList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x2c

    goto/16 :goto_12

    :sswitch_35
    const-string v0, "java.nio.ByteBuffer"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x18

    goto/16 :goto_12

    :sswitch_36
    const-string v0, "java.nio.HeapByteBuffer"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x17

    goto/16 :goto_12

    :sswitch_37
    const-string v0, "com.google.common.collect.SingletonImmutableSet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x1d

    goto/16 :goto_12

    :sswitch_38
    const-string v0, "java.net.InetAddress"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0xf

    goto/16 :goto_12

    :sswitch_39
    const-string v0, "gnu.trove.list.array.TLongArrayList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x2e

    goto/16 :goto_12

    :sswitch_3a
    const-string v0, "com.carrotsearch.hppc.IntArrayList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x22

    goto/16 :goto_12

    :sswitch_3b
    const-string v0, "com.carrotsearch.hppc.CharArrayList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x26

    goto/16 :goto_12

    :sswitch_3c
    const-string v0, "javax.money.CurrencyUnit"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0xa

    goto/16 :goto_12

    :sswitch_3d
    const-string v0, "java.util.JumboEnumSet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    move v5, v12

    goto/16 :goto_12

    :sswitch_3e
    const-string v0, "java.io.UncheckedIOException"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x16

    goto :goto_12

    :sswitch_3f
    const-string v0, "com.carrotsearch.hppc.CharHashSet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x27

    goto :goto_12

    :sswitch_40
    const-string v0, "gnu.trove.set.hash.TShortHashSet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x32

    goto :goto_12

    :sswitch_41
    const-string v0, "com.carrotsearch.hppc.LongHashSet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x25

    goto :goto_12

    :sswitch_42
    const-string v0, "org.joda.time.LocalDate"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/4 v5, 0x6

    goto :goto_12

    :sswitch_43
    const-string v0, "javax.money.NumberValue"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0xd

    goto :goto_12

    :sswitch_44
    const-string v0, "com.google.common.collect.ImmutableList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x1b

    goto :goto_12

    :sswitch_45
    const-string v0, "java.io.IOException"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x15

    goto :goto_12

    :sswitch_46
    const-string v0, "java.lang.RuntimeException"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v5, 0x14

    goto :goto_12

    :cond_8a
    :goto_11
    const/4 v5, -0x1

    :goto_12
    packed-switch v5, :pswitch_data_1

    const/4 v3, 0x0

    return-object v3

    .line 2176
    :pswitch_b
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Laat;->a(Ljava/lang/Class;)Lwk;

    move-result-object v0

    return-object v0

    :pswitch_c
    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    .line 2153
    invoke-static {v2, v0, v3, v4}, Lyp;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lwk;

    move-result-object v0

    return-object v0

    .line 2147
    :pswitch_d
    new-instance v0, Laaw$a;

    check-cast v2, Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    const-class v4, Ljava/lang/Object;

    invoke-direct {v0, v2, v3, v4}, Laaw$a;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-object v0

    :pswitch_e
    const/4 v0, 0x0

    .line 2144
    new-instance v2, Lym;

    sget-object v3, L-$$Lambda$OCvqQ23yu2ENyjnCr5NP5qUm4qc;->INSTANCE:L-$$Lambda$OCvqQ23yu2ENyjnCr5NP5qUm4qc;

    invoke-direct {v2, v3, v0}, Lym;-><init>(Ljava/util/function/Function;Ljava/lang/String;)V

    return-object v2

    .line 2141
    :pswitch_f
    new-instance v0, Lxc;

    check-cast v2, Ljava/lang/Class;

    invoke-direct {v0, v2}, Lxc;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 2134
    :pswitch_10
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    sget-object v3, L-$$Lambda$8qupo1PePHZQR_H4k2n5U--Kx0w;->INSTANCE:L-$$Lambda$8qupo1PePHZQR_H4k2n5U--Kx0w;

    invoke-static {v0, v2, v3}, Lzp;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/Function;)Lzp;

    move-result-object v0

    return-object v0

    .line 2126
    :pswitch_11
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    sget-object v3, L-$$Lambda$wy$MLhBVHczyX0S8v_FXHdnSbUEBRA;->INSTANCE:L-$$Lambda$wy$MLhBVHczyX0S8v_FXHdnSbUEBRA;

    invoke-static {v0, v2, v3}, Lzp;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/Function;)Lzp;

    move-result-object v0

    return-object v0

    .line 2124
    :pswitch_12
    new-instance v0, Lzu;

    check-cast v2, Ljava/lang/Class;

    invoke-direct {v0, v2}, Lzu;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 2122
    :pswitch_13
    invoke-static {}, Laav;->c()Lwk;

    move-result-object v0

    return-object v0

    .line 2120
    :pswitch_14
    invoke-static {}, Laav;->b()Lwk;

    move-result-object v0

    return-object v0

    .line 2117
    :pswitch_15
    invoke-static {}, Laav;->a()Lwk;

    move-result-object v0

    return-object v0

    .line 2115
    :pswitch_16
    new-instance v0, Lzs;

    new-instance v2, Labi$c;

    invoke-direct {v2}, Labi$c;-><init>()V

    invoke-direct {v0, v2}, Lzs;-><init>(Ljava/util/function/Function;)V

    return-object v0

    .line 2113
    :pswitch_17
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Labi;->d(Ljava/lang/Class;)Lwk;

    move-result-object v0

    return-object v0

    .line 2111
    :pswitch_18
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Labi;->c(Ljava/lang/Class;)Lwk;

    move-result-object v0

    return-object v0

    .line 2109
    :pswitch_19
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Labi;->b(Ljava/lang/Class;)Lwk;

    move-result-object v0

    return-object v0

    .line 2107
    :pswitch_1a
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Labi;->a(Ljava/lang/Class;)Lwk;

    move-result-object v0

    return-object v0

    .line 2105
    :pswitch_1b
    invoke-static/range {p2 .. p2}, Labo;->d(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-static {v2, v0, v3, v4}, Lyp;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lwk;

    move-result-object v0

    return-object v0

    .line 2102
    :pswitch_1c
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {v0, v3, v3}, Labh;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;)Lwk;

    move-result-object v0

    return-object v0

    :pswitch_1d
    const/4 v3, 0x0

    .line 2100
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0, v3, v3}, Labh;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;)Lwk;

    move-result-object v0

    return-object v0

    :pswitch_1e
    const/4 v3, 0x0

    .line 2098
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0, v3, v3}, Labh;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;)Lwk;

    move-result-object v0

    return-object v0

    .line 1879
    :cond_8b
    :goto_13
    sget-object v0, Lze;->a:Lze;

    return-object v0

    :cond_8c
    :goto_14
    move-wide v3, v7

    move-object v0, v11

    .line 1865
    invoke-static {v2, v0, v3, v4}, Lyp;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lwk;

    move-result-object v0

    return-object v0

    :cond_8d
    :goto_15
    move-wide v3, v7

    move-object v0, v11

    .line 1850
    invoke-static {v2, v0, v3, v4}, Lyp;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lwk;

    move-result-object v0

    return-object v0

    :cond_8e
    :goto_16
    move-wide v3, v7

    move-object v0, v11

    .line 1838
    invoke-static {v2, v0, v3, v4}, Lyp;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lwk;

    move-result-object v0

    return-object v0

    :cond_8f
    :goto_17
    move-wide v3, v7

    move-object v0, v11

    .line 1833
    invoke-static {v2, v0, v3, v4}, Lyp;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lwk;

    move-result-object v0

    return-object v0

    :cond_90
    :goto_18
    move-wide v3, v7

    move-object v0, v11

    .line 1828
    invoke-static {v2, v0, v3, v4}, Lyp;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lwk;

    move-result-object v0

    return-object v0

    :cond_91
    :goto_19
    move-wide v3, v7

    move-object v0, v11

    .line 1819
    invoke-static {v2, v0, v3, v4}, Lyp;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lwk;

    move-result-object v0

    return-object v0

    .line 1794
    :cond_92
    :goto_1a
    :try_start_1
    move-object v3, v2

    check-cast v3, Ljava/lang/Class;

    .line 1795
    new-instance v0, Lzp;

    const-class v4, Ljava/lang/String;

    const-class v6, Ljava/lang/String;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v2, v5, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v2, v15

    .line 1803
    invoke-virtual {v3, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v2, v0

    move-object v5, v6

    move-wide v6, v7

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    invoke-direct/range {v2 .. v13}, Lzp;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;JLjava/lang/String;Ljava/lang/Object;Laai;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 1808
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1641
    :cond_93
    :goto_1b
    sget-object v0, Lxk;->o:Lxk;

    return-object v0

    .line 1637
    :cond_94
    :goto_1c
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    const-class v2, Ljava/util/TreeMap;

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Lwy;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lwk;

    move-result-object v0

    return-object v0

    :cond_95
    :goto_1d
    move-object v4, v11

    .line 1630
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    const-class v2, Ljava/util/concurrent/ConcurrentSkipListMap;

    const-class v3, Ljava/lang/Object;

    invoke-static {v0, v2, v4, v3}, Lwy;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lwk;

    move-result-object v0

    return-object v0

    :cond_96
    :goto_1e
    move-object v4, v11

    .line 1624
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    const-class v2, Ljava/util/concurrent/ConcurrentHashMap;

    const-class v3, Ljava/lang/Object;

    invoke-static {v0, v2, v4, v3}, Lwy;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lwk;

    move-result-object v0

    return-object v0

    :cond_97
    :goto_1f
    move-object v4, v11

    .line 1620
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    const-wide/16 v2, 0x0

    invoke-static {v4, v0, v2, v3}, Lyw;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lwk;

    move-result-object v0

    return-object v0

    .line 1463
    :cond_98
    :goto_20
    sget-object v0, Lxq;->a:Lxq;

    return-object v0

    .line 1459
    :cond_99
    :goto_21
    sget-object v0, Lxv;->a:Lxv;

    return-object v0

    .line 1455
    :cond_9a
    :goto_22
    sget-object v0, Lyi;->a:Lyi;

    return-object v0

    .line 1451
    :cond_9b
    :goto_23
    sget-object v0, Lyn;->a:Lyn;

    return-object v0

    .line 1447
    :cond_9c
    :goto_24
    sget-object v0, Lzl;->a:Lzl;

    return-object v0

    .line 1443
    :cond_9d
    :goto_25
    sget-object v0, Lxj;->a:Lxj;

    return-object v0

    .line 1439
    :cond_9e
    :goto_26
    sget-object v0, Lxi;->a:Lxi;

    return-object v0

    .line 1435
    :cond_9f
    :goto_27
    sget-object v0, Lxm;->a:Lxm;

    return-object v0

    .line 1431
    :cond_a0
    :goto_28
    sget-object v0, Lzm;->a:Lzm;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x77c5ffff -> :sswitch_a
        -0x6a7c71fa -> :sswitch_9
        -0x648d55e3 -> :sswitch_8
        -0x25e474d9 -> :sswitch_7
        -0x24dcfefa -> :sswitch_6
        -0xeb491b5 -> :sswitch_5
        -0x9e7ba9a -> :sswitch_4
        0x1d899909 -> :sswitch_3
        0x278b30c9 -> :sswitch_2
        0x4a6300ea -> :sswitch_1
        0x5f84b54d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x64f58121 -> :sswitch_10
        -0x9e7ba9a -> :sswitch_f
        -0x82e223b -> :sswitch_e
        0x35fc9059 -> :sswitch_d
        0x371ffcf1 -> :sswitch_c
        0x79522977 -> :sswitch_b
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x7a3f8f55 -> :sswitch_46
        -0x77d84db3 -> :sswitch_45
        -0x766adabf -> :sswitch_44
        -0x75d131fe -> :sswitch_43
        -0x7295bf66 -> :sswitch_42
        -0x68ba7345 -> :sswitch_41
        -0x644c0dfa -> :sswitch_40
        -0x6393895f -> :sswitch_3f
        -0x58f8d9c9 -> :sswitch_3e
        -0x541731ee -> :sswitch_3d
        -0x4b6349e5 -> :sswitch_3c
        -0x338dde7c -> :sswitch_3b
        -0x328cea9b -> :sswitch_3a
        -0x3031dac2 -> :sswitch_39
        -0x2aec35fd -> :sswitch_38
        -0x289861d4 -> :sswitch_37
        -0x217c6306 -> :sswitch_36
        -0x209f6312 -> :sswitch_35
        -0x1abe1be8 -> :sswitch_34
        -0x1463c54d -> :sswitch_33
        -0xe4f93c8 -> :sswitch_32
        -0x82e223b -> :sswitch_31
        -0x79e4957 -> :sswitch_30
        -0xaeafe -> :sswitch_2f
        0x455697b -> :sswitch_2e
        0x4818f00 -> :sswitch_2d
        0x5f99c12 -> :sswitch_2c
        0xcfdbeea -> :sswitch_2b
        0x26e22da4 -> :sswitch_2a
        0x35fca75f -> :sswitch_29
        0x371ffcf1 -> :sswitch_28
        0x40d5de3a -> :sswitch_27
        0x40dd4159 -> :sswitch_26
        0x43dae238 -> :sswitch_25
        0x4872249a -> :sswitch_24
        0x4a5511eb -> :sswitch_23
        0x4aad720a -> :sswitch_22
        0x50496a58 -> :sswitch_21
        0x532aeec2 -> :sswitch_20
        0x56ec2a87 -> :sswitch_1f
        0x5b0f3e73 -> :sswitch_1e
        0x5bc5408c -> :sswitch_1d
        0x5cc10545 -> :sswitch_1c
        0x5e7d83d0 -> :sswitch_1b
        0x6069a832 -> :sswitch_1a
        0x612cf26c -> :sswitch_19
        0x61f056af -> :sswitch_18
        0x6456ce9a -> :sswitch_17
        0x6d0b6e25 -> :sswitch_16
        0x70c56ede -> :sswitch_15
        0x755e191e -> :sswitch_14
        0x76ff3ac9 -> :sswitch_13
        0x7952407d -> :sswitch_12
        0x7bff4017 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method
