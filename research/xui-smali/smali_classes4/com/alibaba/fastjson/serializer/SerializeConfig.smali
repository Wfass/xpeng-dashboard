.class public Lcom/alibaba/fastjson/serializer/SerializeConfig;
.super Ljava/lang/Object;
.source "SerializeConfig.java"


# static fields
.field private static awtError:Z

.field public static final globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

.field private static guavaError:Z

.field private static jdk8Error:Z

.field private static jodaError:Z

.field private static jsonnullError:Z

.field private static jsonobjectError:Z

.field private static oracleJdbcError:Z

.field private static springfoxError:Z


# instance fields
.field private asm:Z

.field private asmFactory:Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

.field private denyClasses:[J

.field private final fieldBased:Z

.field private final mixInSerializers:Lcom/alibaba/fastjson/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/util/IdentityHashMap<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/util/IdentityHashMap<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;",
            ">;>;"
        }
    .end annotation
.end field

.field private modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/spi/Module;",
            ">;"
        }
    .end annotation
.end field

.field public propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field private final serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/util/IdentityHashMap<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;",
            ">;"
        }
    .end annotation
.end field

.field protected typeKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->awtError:Z

    .line 56
    sput-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jdk8Error:Z

    .line 57
    sput-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->oracleJdbcError:Z

    .line 58
    sput-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->springfoxError:Z

    .line 59
    sput-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->guavaError:Z

    .line 60
    sput-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jsonnullError:Z

    .line 61
    sput-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jsonobjectError:Z

    .line 63
    sput-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jodaError:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 287
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;-><init>(I)V

    .line 288
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "tableSize"    # I

    .line 295
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;-><init>(IZ)V

    .line 296
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "tableSize"    # I
    .param p2, "fieldBase"    # Z

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    .line 67
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->denyClasses:[J

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->modules:Ljava/util/List;

    .line 299
    iput-boolean p2, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->fieldBased:Z

    .line 300
    new-instance v0, Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    .line 301
    new-instance v0, Lcom/alibaba/fastjson/util/IdentityHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/util/IdentityHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->mixInSerializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    .line 303
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    if-eqz v0, :cond_0

    .line 304
    new-instance v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asmFactory:Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :cond_0
    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "eror":Ljava/lang/Throwable;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    .line 310
    .end local v0    # "eror":Ljava/lang/Throwable;
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->initSerializers()V

    .line 311
    return-void

    :array_0
    .array-data 8
        0x39ce554cca9aab53L    # 2.991084746524151E-30
        0x3db5c2961aadf5f3L    # 1.9790698305390406E-11
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "fieldBase"    # Z

    .line 291
    const/16 v0, 0x2000

    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;-><init>(IZ)V

    .line 292
    return-void
.end method

.method private final createASMSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .locals 7
    .param p1, "beanInfo"    # Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asmFactory:Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v0

    .line 94
    .local v0, "serializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 95
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v3, v3, v2

    .line 96
    .local v3, "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    iget-object v4, v3, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 97
    .local v4, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 98
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v5

    .line 99
    .local v5, "fieldSer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    instance-of v6, v5, Lcom/alibaba/fastjson/serializer/EnumSerializer;

    if-nez v6, :cond_0

    .line 100
    iput-boolean v1, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeDirect:Z

    .line 94
    .end local v3    # "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v4    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "fieldSer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public static getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .locals 1

    .line 283
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    return-object v0
.end method

.method private initSerializers()V
    .locals 2

    .line 314
    const-class v0, Ljava/lang/Boolean;

    sget-object v1, Lcom/alibaba/fastjson/serializer/BooleanCodec;->instance:Lcom/alibaba/fastjson/serializer/BooleanCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 315
    const-class v0, Ljava/lang/Character;

    sget-object v1, Lcom/alibaba/fastjson/serializer/CharacterCodec;->instance:Lcom/alibaba/fastjson/serializer/CharacterCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 316
    const-class v0, Ljava/lang/Byte;

    sget-object v1, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 317
    const-class v0, Ljava/lang/Short;

    sget-object v1, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 318
    const-class v0, Ljava/lang/Integer;

    sget-object v1, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 319
    const-class v0, Ljava/lang/Long;

    sget-object v1, Lcom/alibaba/fastjson/serializer/LongCodec;->instance:Lcom/alibaba/fastjson/serializer/LongCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 320
    const-class v0, Ljava/lang/Float;

    sget-object v1, Lcom/alibaba/fastjson/serializer/FloatCodec;->instance:Lcom/alibaba/fastjson/serializer/FloatCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 321
    const-class v0, Ljava/lang/Double;

    sget-object v1, Lcom/alibaba/fastjson/serializer/DoubleSerializer;->instance:Lcom/alibaba/fastjson/serializer/DoubleSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 322
    const-class v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/alibaba/fastjson/serializer/BigDecimalCodec;->instance:Lcom/alibaba/fastjson/serializer/BigDecimalCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 323
    const-class v0, Ljava/math/BigInteger;

    sget-object v1, Lcom/alibaba/fastjson/serializer/BigIntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/BigIntegerCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 324
    const-class v0, Ljava/lang/String;

    sget-object v1, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 325
    const-class v0, [B

    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 326
    const-class v0, [S

    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 327
    const-class v0, [I

    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 328
    const-class v0, [J

    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 329
    const-class v0, [F

    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 330
    const-class v0, [D

    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 331
    const-class v0, [Z

    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 332
    const-class v0, [C

    sget-object v1, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 333
    const-class v0, [Ljava/lang/Object;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;->instance:Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 334
    const-class v0, Ljava/lang/Class;

    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 336
    const-class v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 337
    const-class v0, Ljava/util/Currency;

    new-instance v1, Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-direct {v1}, Lcom/alibaba/fastjson/serializer/MiscCodec;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 338
    const-class v0, Ljava/util/TimeZone;

    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 339
    const-class v0, Ljava/net/InetAddress;

    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 340
    const-class v0, Ljava/net/Inet4Address;

    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 341
    const-class v0, Ljava/net/Inet6Address;

    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 342
    const-class v0, Ljava/net/InetSocketAddress;

    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 343
    const-class v0, Ljava/io/File;

    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 344
    const-class v0, Ljava/lang/Appendable;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AppendableSerializer;->instance:Lcom/alibaba/fastjson/serializer/AppendableSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 345
    const-class v0, Ljava/lang/StringBuffer;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AppendableSerializer;->instance:Lcom/alibaba/fastjson/serializer/AppendableSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 346
    const-class v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AppendableSerializer;->instance:Lcom/alibaba/fastjson/serializer/AppendableSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 347
    const-class v0, Ljava/nio/charset/Charset;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 348
    const-class v0, Ljava/util/regex/Pattern;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 349
    const-class v0, Ljava/util/Locale;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 350
    const-class v0, Ljava/net/URI;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 351
    const-class v0, Ljava/net/URL;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 352
    const-class v0, Ljava/util/UUID;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 355
    const-class v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 356
    const-class v0, Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 357
    const-class v0, Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 358
    const-class v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ReferenceCodec;->instance:Lcom/alibaba/fastjson/serializer/ReferenceCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 359
    const-class v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 360
    const-class v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    sget-object v1, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 362
    const-class v0, Ljava/lang/ref/WeakReference;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ReferenceCodec;->instance:Lcom/alibaba/fastjson/serializer/ReferenceCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 363
    const-class v0, Ljava/lang/ref/SoftReference;

    sget-object v1, Lcom/alibaba/fastjson/serializer/ReferenceCodec;->instance:Lcom/alibaba/fastjson/serializer/ReferenceCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 365
    const-class v0, Ljava/util/LinkedList;

    sget-object v1, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 366
    return-void
.end method


# virtual methods
.method public addFilter(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/SerializeFilter;)V
    .locals 3
    .param p2, "filter"    # Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/serializer/SerializeFilter;",
            ")V"
        }
    .end annotation

    .line 373
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    .line 375
    .local v0, "serializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    instance-of v1, v0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;

    if-eqz v1, :cond_1

    .line 376
    move-object v1, v0

    check-cast v1, Lcom/alibaba/fastjson/serializer/SerializeFilterable;

    .line 378
    .local v1, "filterable":Lcom/alibaba/fastjson/serializer/SerializeFilterable;
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    if-eq p0, v2, :cond_0

    .line 379
    sget-object v2, Lcom/alibaba/fastjson/serializer/MapSerializer;->instance:Lcom/alibaba/fastjson/serializer/MapSerializer;

    if-ne v1, v2, :cond_0

    .line 380
    new-instance v2, Lcom/alibaba/fastjson/serializer/MapSerializer;

    invoke-direct {v2}, Lcom/alibaba/fastjson/serializer/MapSerializer;-><init>()V

    .line 381
    .local v2, "newMapSer":Lcom/alibaba/fastjson/serializer/MapSerializer;
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 382
    invoke-virtual {v2, p2}, Lcom/alibaba/fastjson/serializer/MapSerializer;->addFilter(Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    .line 383
    return-void

    .line 387
    .end local v2    # "newMapSer":Lcom/alibaba/fastjson/serializer/MapSerializer;
    :cond_0
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->addFilter(Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    .line 389
    .end local v1    # "filterable":Lcom/alibaba/fastjson/serializer/SerializeFilterable;
    :cond_1
    return-void
.end method

.method public clearSerializers()V
    .locals 1

    .line 870
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/IdentityHashMap;->clear()V

    .line 871
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->initSerializers()V

    .line 872
    return-void
.end method

.method public config(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 6
    .param p2, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/serializer/SerializerFeature;",
            "Z)V"
        }
    .end annotation

    .line 395
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;Z)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    .line 397
    .local v0, "serializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    if-nez v0, :cond_1

    .line 398
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-static {p1, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v1

    .line 400
    .local v1, "beanInfo":Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    if-eqz p3, :cond_0

    .line 401
    iget v2, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    iget v3, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v2, v3

    iput v2, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    goto :goto_0

    .line 403
    :cond_0
    iget v2, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    iget v3, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    not-int v3, v3

    and-int/2addr v2, v3

    iput v2, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    .line 406
    :goto_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    .line 408
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 409
    return-void

    .line 412
    .end local v1    # "beanInfo":Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    :cond_1
    instance-of v1, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v1, :cond_4

    .line 413
    move-object v1, v0

    check-cast v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 414
    .local v1, "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    iget-object v2, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    .line 416
    .local v2, "beanInfo":Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    iget v3, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    .line 417
    .local v3, "originalFeaturs":I
    if-eqz p3, :cond_2

    .line 418
    iget v4, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    iget v5, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v4, v5

    iput v4, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    goto :goto_1

    .line 420
    :cond_2
    iget v4, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    iget v5, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    not-int v5, v5

    and-int/2addr v4, v5

    iput v4, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    .line 423
    :goto_1
    iget v4, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    if-ne v3, v4, :cond_3

    .line 424
    return-void

    .line 427
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 428
    .local v4, "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eq v4, v5, :cond_4

    .line 429
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v5

    .line 430
    .local v5, "newSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    invoke-virtual {p0, p1, v5}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 433
    .end local v1    # "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .end local v2    # "beanInfo":Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    .end local v3    # "originalFeaturs":I
    .end local v4    # "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "newSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_4
    return-void
.end method

.method public varargs configEnumAsJavaBean([Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Enum;",
            ">;)V"
        }
    .end annotation

    .line 856
    .local p1, "enumClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/Enum;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 857
    .local v2, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum;>;"
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 856
    .end local v2    # "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 859
    :cond_0
    return-void
.end method

.method public createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 18
    .param p1, "beanInfo"    # Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-object/from16 v1, p0

    .line 124
    move-object/from16 v2, p1

    iget-object v3, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    .line 126
    .local v3, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    iget-boolean v0, v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->fieldBased:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    .line 128
    .local v5, "asm":Z
    if-eqz v3, :cond_7

    .line 129
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONType;->serializer()Ljava/lang/Class;

    move-result-object v6

    .line 130
    .local v6, "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Void;

    if-eq v6, v0, :cond_2

    .line 132
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 133
    .local v0, "seralizer":Ljava/lang/Object;
    instance-of v7, v0, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    if-eqz v7, :cond_1

    .line 134
    move-object v7, v0

    check-cast v7, Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 138
    .end local v0    # "seralizer":Ljava/lang/Object;
    :cond_1
    goto :goto_1

    .line 136
    :catch_0
    move-exception v0

    .line 141
    :cond_2
    :goto_1
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONType;->asm()Z

    move-result v0

    if-nez v0, :cond_3

    .line 142
    const/4 v5, 0x0

    .line 145
    :cond_3
    if-eqz v5, :cond_6

    .line 146
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    array-length v7, v0

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_6

    aget-object v9, v0, v8

    .line 147
    .local v9, "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v10, v9, :cond_5

    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v10, v9, :cond_5

    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v10, v9, :cond_5

    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v10, v9, :cond_4

    goto :goto_3

    .line 146
    .end local v9    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 151
    .restart local v9    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    :cond_5
    :goto_3
    const/4 v0, 0x0

    .line 152
    .end local v5    # "asm":Z
    .local v0, "asm":Z
    nop

    .line 157
    move v5, v0

    .end local v0    # "asm":Z
    .end local v9    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .restart local v5    # "asm":Z
    :cond_6
    if-eqz v5, :cond_7

    .line 158
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFilters()[Ljava/lang/Class;

    move-result-object v0

    .line 159
    .local v0, "filterClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/alibaba/fastjson/serializer/SerializeFilter;>;"
    array-length v7, v0

    if-eqz v7, :cond_7

    .line 160
    const/4 v5, 0x0

    .line 165
    .end local v0    # "filterClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/alibaba/fastjson/serializer/SerializeFilter;>;"
    .end local v6    # "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    iget-object v6, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    .line 166
    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 167
    new-instance v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V

    return-object v0

    .line 172
    :cond_8
    if-eqz v5, :cond_9

    iget-object v0, v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asmFactory:Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/util/ASMClassLoader;->isExternalClass(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    const-class v0, Ljava/io/Serializable;

    if-eq v6, v0, :cond_a

    const-class v0, Ljava/lang/Object;

    if-ne v6, v0, :cond_b

    .line 174
    :cond_a
    const/4 v5, 0x0

    .line 177
    :cond_b
    if-eqz v5, :cond_c

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->checkName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 178
    const/4 v5, 0x0

    .line 181
    :cond_c
    if-eqz v5, :cond_d

    iget-object v0, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 182
    const/4 v5, 0x0

    .line 185
    :cond_d
    if-eqz v5, :cond_1c

    .line 186
    iget-object v0, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v7, v0

    move v8, v5

    const/4 v5, 0x0

    .end local v5    # "asm":Z
    .local v8, "asm":Z
    :goto_4
    if-ge v5, v7, :cond_1b

    aget-object v9, v0, v5

    .line 187
    .local v9, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v10, v9, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 188
    .local v10, "field":Ljava/lang/reflect/Field;
    if-eqz v10, :cond_e

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    iget-object v12, v9, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 189
    const/4 v5, 0x0

    .line 190
    .end local v8    # "asm":Z
    .restart local v5    # "asm":Z
    nop

    .line 246
    .end local v3    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .end local v9    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v10    # "field":Ljava/lang/reflect/Field;
    .local v17, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :goto_5
    move-object/from16 v17, v3

    goto/16 :goto_d

    .line 193
    .end local v5    # "asm":Z
    .end local v17    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v3    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v8    # "asm":Z
    .restart local v9    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v10    # "field":Ljava/lang/reflect/Field;
    :cond_e
    iget-object v11, v9, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 194
    .local v11, "method":Ljava/lang/reflect/Method;
    if-eqz v11, :cond_f

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    iget-object v13, v9, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 195
    const/4 v5, 0x0

    .line 196
    .end local v8    # "asm":Z
    .restart local v5    # "asm":Z
    goto :goto_5

    .line 199
    .end local v5    # "asm":Z
    .restart local v8    # "asm":Z
    :cond_f
    invoke-virtual {v9}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v12

    .line 201
    .local v12, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-nez v12, :cond_10

    .line 202
    nop

    .line 186
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    goto/16 :goto_a

    .line 205
    :cond_10
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v13

    .line 206
    .local v13, "format":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_12

    .line 207
    iget-object v14, v9, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    if-ne v14, v15, :cond_11

    const-string v14, "trim"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    goto :goto_6

    .line 210
    :cond_11
    const/4 v5, 0x0

    .line 211
    .end local v8    # "asm":Z
    .restart local v5    # "asm":Z
    goto :goto_5

    .line 215
    .end local v5    # "asm":Z
    .restart local v8    # "asm":Z
    :cond_12
    :goto_6
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/alibaba/fastjson/util/ASMUtils;->checkName(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 216
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->jsonDirect()Z

    move-result v14

    if-nez v14, :cond_1a

    .line 217
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->serializeUsing()Ljava/lang/Class;

    move-result-object v14

    const-class v15, Ljava/lang/Void;

    if-ne v14, v15, :cond_1a

    .line 218
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->unwrapped()Z

    move-result v14

    if-eqz v14, :cond_13

    .line 220
    move-object/from16 v17, v3

    goto/16 :goto_c

    .line 224
    :cond_13
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v14

    array-length v15, v14

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v15, :cond_16

    move-object/from16 v16, v0

    aget-object v0, v14, v4

    .line 225
    .local v0, "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    move-object/from16 v17, v3

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .end local v3    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v17    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eq v3, v0, :cond_15

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v3, v0, :cond_15

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v3, v0, :cond_15

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v3, v0, :cond_15

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v3, v0, :cond_14

    goto :goto_8

    .line 224
    .end local v0    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    :cond_14
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v16

    move-object/from16 v3, v17

    goto :goto_7

    .line 230
    .restart local v0    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    :cond_15
    :goto_8
    const/4 v8, 0x0

    .line 231
    goto :goto_9

    .line 235
    .end local v0    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .end local v17    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v3    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :cond_16
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    .end local v3    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v17    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :goto_9
    invoke-static {v11}, Lcom/alibaba/fastjson/util/TypeUtils;->isAnnotationPresentOneToMany(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {v11}, Lcom/alibaba/fastjson/util/TypeUtils;->isAnnotationPresentManyToMany(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_b

    .line 239
    :cond_17
    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->defaultValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    const-string v0, ""

    invoke-interface {v12}, Lcom/alibaba/fastjson/annotation/JSONField;->defaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 240
    const/4 v5, 0x0

    .line 241
    .end local v8    # "asm":Z
    .restart local v5    # "asm":Z
    goto :goto_d

    .line 186
    .end local v5    # "asm":Z
    .end local v9    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v10    # "field":Ljava/lang/reflect/Field;
    .end local v11    # "method":Ljava/lang/reflect/Method;
    .end local v12    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v13    # "format":Ljava/lang/String;
    .restart local v8    # "asm":Z
    :cond_18
    :goto_a
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    move-object/from16 v3, v17

    goto/16 :goto_4

    .line 236
    .restart local v9    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v10    # "field":Ljava/lang/reflect/Field;
    .restart local v11    # "method":Ljava/lang/reflect/Method;
    .restart local v12    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v13    # "format":Ljava/lang/String;
    :cond_19
    :goto_b
    const/4 v5, 0x0

    .line 237
    .end local v8    # "asm":Z
    .restart local v5    # "asm":Z
    goto :goto_d

    .line 220
    .end local v5    # "asm":Z
    .end local v17    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v3    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v8    # "asm":Z
    :cond_1a
    move-object/from16 v17, v3

    .end local v3    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v17    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :goto_c
    const/4 v5, 0x0

    .line 221
    .end local v8    # "asm":Z
    .restart local v5    # "asm":Z
    goto :goto_d

    .line 246
    .end local v5    # "asm":Z
    .end local v9    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v10    # "field":Ljava/lang/reflect/Field;
    .end local v11    # "method":Ljava/lang/reflect/Method;
    .end local v12    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v13    # "format":Ljava/lang/String;
    .end local v17    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v3    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v8    # "asm":Z
    :cond_1b
    move-object/from16 v17, v3

    move v5, v8

    goto :goto_d

    .end local v8    # "asm":Z
    .restart local v5    # "asm":Z
    :cond_1c
    move-object/from16 v17, v3

    .end local v3    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v17    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :goto_d
    if-eqz v5, :cond_1f

    .line 248
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createASMSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassFormatError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 249
    .local v0, "asmSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    if-eqz v0, :cond_1e

    .line 250
    return-object v0

    .line 263
    .end local v0    # "asmSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :catch_1
    move-exception v0

    move-object v3, v0

    .line 264
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create asm serializer error, verson 1.2.70, class "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 258
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    move-object v3, v0

    .line 259
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Metaspace"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1d

    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    goto :goto_e

    .line 260
    .restart local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_1d
    throw v0

    .line 256
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v0

    goto :goto_e

    .line 254
    :catch_4
    move-exception v0

    goto :goto_e

    .line 252
    :catch_5
    move-exception v0

    .line 265
    :cond_1e
    :goto_e
    nop

    .line 268
    :cond_1f
    new-instance v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V

    return-object v0
.end method

.method public final createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    .line 109
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v1

    .line 111
    .local v1, "hashCode64":J
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->denyClasses:[J

    invoke-static {v3, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    if-gez v3, :cond_1

    .line 115
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    iget-boolean v5, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->fieldBased:Z

    invoke-static {p1, v3, v4, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Z)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v3

    .line 116
    .local v3, "beanInfo":Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    iget-object v4, v3, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v4, v4

    if-nez v4, :cond_0

    const-class v4, Ljava/lang/Iterable;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    sget-object v4, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    return-object v4

    .line 120
    :cond_0
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v4

    return-object v4

    .line 112
    .end local v3    # "beanInfo":Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    :cond_1
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not support class : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .line 822
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 823
    .local v0, "mixin":Ljava/lang/reflect/Type;
    if-nez v0, :cond_0

    .line 824
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    return-object v1

    .line 826
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->mixInSerializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/IdentityHashMap;

    .line 827
    .local v1, "mixInClasses":Lcom/alibaba/fastjson/util/IdentityHashMap;, "Lcom/alibaba/fastjson/util/IdentityHashMap<Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;>;"
    if-nez v1, :cond_1

    .line 828
    const/4 v2, 0x0

    return-object v2

    .line 830
    :cond_1
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    return-object v2
.end method

.method protected getEnumSerializer()Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 1

    .line 818
    sget-object v0, Lcom/alibaba/fastjson/serializer/EnumSerializer;->instance:Lcom/alibaba/fastjson/serializer/EnumSerializer;

    return-object v0
.end method

.method public getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    .line 436
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;Z)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    return-object v0
.end method

.method public getObjectWriter(Ljava/lang/Class;Z)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 19
    .param p2, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 440
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v3

    .line 442
    .local v3, "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    if-eqz v3, :cond_0

    .line 443
    return-object v3

    .line 447
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 448
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const-class v4, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    invoke-static {v4, v0}, Lcom/alibaba/fastjson/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 449
    .local v5, "o":Ljava/lang/Object;
    instance-of v6, v5, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    if-nez v6, :cond_1

    .line 450
    goto :goto_0

    .line 453
    :cond_1
    move-object v6, v5

    check-cast v6, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    .line 454
    .local v6, "autowired":Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;
    invoke-interface {v6}, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;->getAutowiredFor()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Type;

    .line 455
    .local v8, "forType":Ljava/lang/reflect/Type;
    invoke-virtual {v1, v8, v6}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    .end local v8    # "forType":Ljava/lang/reflect/Type;
    goto :goto_1

    .line 457
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "autowired":Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;
    :cond_2
    goto :goto_0

    .line 460
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    :cond_3
    goto :goto_2

    .line 458
    :catch_0
    move-exception v0

    .line 462
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v3

    .line 464
    if-nez v3, :cond_7

    .line 465
    const-class v0, Lcom/alibaba/fastjson/JSON;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 466
    .local v4, "classLoader":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eq v4, v0, :cond_7

    .line 468
    :try_start_1
    const-class v0, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    invoke-static {v0, v4}, Lcom/alibaba/fastjson/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 470
    .restart local v5    # "o":Ljava/lang/Object;
    instance-of v6, v5, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    if-nez v6, :cond_4

    .line 471
    goto :goto_3

    .line 474
    :cond_4
    move-object v6, v5

    check-cast v6, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;

    .line 475
    .restart local v6    # "autowired":Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;
    invoke-interface {v6}, Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;->getAutowiredFor()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Type;

    .line 476
    .restart local v8    # "forType":Ljava/lang/reflect/Type;
    invoke-virtual {v1, v8, v6}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 477
    .end local v8    # "forType":Ljava/lang/reflect/Type;
    goto :goto_4

    .line 478
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "autowired":Lcom/alibaba/fastjson/serializer/AutowiredObjectSerializer;
    :cond_5
    goto :goto_3

    .line 481
    :cond_6
    goto :goto_5

    .line 479
    :catch_1
    move-exception v0

    .line 483
    :goto_5
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v3

    .line 487
    .end local v4    # "classLoader":Ljava/lang/ClassLoader;
    :cond_7
    iget-object v0, v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/spi/Module;

    .line 488
    .local v4, "module":Lcom/alibaba/fastjson/spi/Module;
    invoke-interface {v4, v1, v2}, Lcom/alibaba/fastjson/spi/Module;->createSerializer(Lcom/alibaba/fastjson/serializer/SerializeConfig;Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v3

    .line 489
    if-eqz v3, :cond_8

    .line 490
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 491
    return-object v3

    .line 493
    .end local v4    # "module":Lcom/alibaba/fastjson/spi/Module;
    :cond_8
    goto :goto_6

    .line 495
    :cond_9
    if-nez v3, :cond_44

    .line 496
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 499
    .local v4, "className":Ljava/lang/String;
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 500
    sget-object v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->instance:Lcom/alibaba/fastjson/serializer/MapSerializer;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_1a

    .line 501
    :cond_a
    const-class v0, Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 502
    sget-object v0, Lcom/alibaba/fastjson/serializer/ListSerializer;->instance:Lcom/alibaba/fastjson/serializer/ListSerializer;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_1a

    .line 503
    :cond_b
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 504
    sget-object v0, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_1a

    .line 505
    :cond_c
    const-class v0, Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 506
    sget-object v0, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_1a

    .line 507
    :cond_d
    const-class v0, Lcom/alibaba/fastjson/JSONAware;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 508
    sget-object v0, Lcom/alibaba/fastjson/serializer/JSONAwareSerializer;->instance:Lcom/alibaba/fastjson/serializer/JSONAwareSerializer;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_1a

    .line 509
    :cond_e
    const-class v0, Lcom/alibaba/fastjson/serializer/JSONSerializable;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 510
    sget-object v0, Lcom/alibaba/fastjson/serializer/JSONSerializableSerializer;->instance:Lcom/alibaba/fastjson/serializer/JSONSerializableSerializer;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_1a

    .line 511
    :cond_f
    const-class v0, Lcom/alibaba/fastjson/JSONStreamAware;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 512
    sget-object v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_1a

    .line 513
    :cond_10
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 514
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {v2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 515
    .local v0, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v0, :cond_11

    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->serializeEnumAsJavaBean()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 516
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v5

    move-object v3, v5

    invoke-virtual {v1, v2, v5}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_7

    .line 518
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getEnumSerializer()Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v5

    move-object v3, v5

    invoke-virtual {v1, v2, v5}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 520
    .end local v0    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :goto_7
    goto/16 :goto_1a

    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    move-object v5, v0

    .local v5, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_14

    invoke-virtual {v5}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 521
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {v5, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 522
    .restart local v0    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->serializeEnumAsJavaBean()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 523
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v6

    move-object v3, v6

    invoke-virtual {v1, v2, v6}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_8

    .line 525
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getEnumSerializer()Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v6

    move-object v3, v6

    invoke-virtual {v1, v2, v6}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 527
    .end local v0    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :goto_8
    goto/16 :goto_1a

    :cond_14
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 528
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 529
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v6

    .line 530
    .local v6, "compObjectSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    new-instance v7, Lcom/alibaba/fastjson/serializer/ArraySerializer;

    invoke-direct {v7, v0, v6}, Lcom/alibaba/fastjson/serializer/ArraySerializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)V

    move-object v3, v7

    invoke-virtual {v1, v2, v7}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 531
    .end local v0    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "compObjectSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    goto/16 :goto_1a

    :cond_15
    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 532
    const/4 v0, 0x0

    iget-object v6, v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-static {v2, v0, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v0

    .line 533
    .local v0, "beanInfo":Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    iget v6, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v6, v7

    iput v6, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    .line 534
    new-instance v6, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-direct {v6, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V

    move-object v3, v6

    invoke-virtual {v1, v2, v6}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 535
    .end local v0    # "beanInfo":Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    goto/16 :goto_1a

    :cond_16
    const-class v0, Ljava/util/TimeZone;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_42

    const-class v0, Ljava/util/Map$Entry;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto/16 :goto_19

    .line 537
    :cond_17
    const-class v0, Ljava/lang/Appendable;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 538
    sget-object v0, Lcom/alibaba/fastjson/serializer/AppendableSerializer;->instance:Lcom/alibaba/fastjson/serializer/AppendableSerializer;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_1a

    .line 539
    :cond_18
    const-class v0, Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 540
    sget-object v0, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_1a

    .line 541
    :cond_19
    const-class v0, Ljava/util/Enumeration;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 542
    sget-object v0, Lcom/alibaba/fastjson/serializer/EnumerationSerializer;->instance:Lcom/alibaba/fastjson/serializer/EnumerationSerializer;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_1a

    .line 543
    :cond_1a
    const-class v0, Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_41

    const-class v0, Ljavax/xml/datatype/XMLGregorianCalendar;

    .line 544
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto/16 :goto_18

    .line 546
    :cond_1b
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isClob(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 547
    sget-object v0, Lcom/alibaba/fastjson/serializer/ClobSeriliazer;->instance:Lcom/alibaba/fastjson/serializer/ClobSeriliazer;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_1a

    .line 548
    :cond_1c
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isPath(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 549
    sget-object v0, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_1a

    .line 550
    :cond_1d
    const-class v0, Ljava/util/Iterator;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 551
    sget-object v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_1a

    .line 552
    :cond_1e
    const-class v0, Lorg/w3c/dom/Node;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 553
    sget-object v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto/16 :goto_1a

    .line 555
    :cond_1f
    const-string v0, "java.awt."

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_22

    .line 556
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/AwtCodec;->support(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 559
    sget-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->awtError:Z

    if-nez v0, :cond_22

    .line 561
    :try_start_2
    const-string v0, "java.awt.Color"

    const-string v8, "java.awt.Font"

    const-string v9, "java.awt.Point"

    const-string v10, "java.awt.Rectangle"

    filled-new-array {v0, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, "names":[Ljava/lang/String;
    array-length v8, v0

    move v9, v6

    :goto_9
    if-ge v9, v8, :cond_21

    aget-object v10, v0, v9

    .line 568
    .local v10, "name":Ljava/lang/String;
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20

    .line 569
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Lcom/alibaba/fastjson/serializer/AwtCodec;->instance:Lcom/alibaba/fastjson/serializer/AwtCodec;

    move-object v3, v9

    invoke-virtual {v1, v8, v9}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 570
    return-object v3

    .line 567
    .end local v10    # "name":Ljava/lang/String;
    :cond_20
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 576
    .end local v0    # "names":[Ljava/lang/String;
    :cond_21
    goto :goto_a

    .line 573
    :catch_2
    move-exception v0

    .line 574
    .local v0, "e":Ljava/lang/Throwable;
    sput-boolean v7, Lcom/alibaba/fastjson/serializer/SerializeConfig;->awtError:Z

    .line 581
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_22
    :goto_a
    sget-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jdk8Error:Z

    if-nez v0, :cond_2a

    const-string v0, "java.time."

    .line 582
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "java.util.Optional"

    .line 583
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "java.util.concurrent.atomic.LongAdder"

    .line 584
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "java.util.concurrent.atomic.DoubleAdder"

    .line 585
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 589
    :cond_23
    :try_start_3
    const-string v8, "java.time.LocalDateTime"

    const-string v9, "java.time.LocalDate"

    const-string v10, "java.time.LocalTime"

    const-string v11, "java.time.ZonedDateTime"

    const-string v12, "java.time.OffsetDateTime"

    const-string v13, "java.time.OffsetTime"

    const-string v14, "java.time.ZoneOffset"

    const-string v15, "java.time.ZoneRegion"

    const-string v16, "java.time.Period"

    const-string v17, "java.time.Duration"

    const-string v18, "java.time.Instant"

    filled-new-array/range {v8 .. v18}, [Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "names":[Ljava/lang/String;
    array-length v8, v0

    move v9, v6

    :goto_b
    if-ge v9, v8, :cond_25

    aget-object v10, v0, v9

    .line 603
    .restart local v10    # "name":Ljava/lang/String;
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_24

    .line 604
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    move-object v3, v9

    invoke-virtual {v1, v8, v9}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 605
    return-object v3

    .line 602
    .end local v10    # "name":Ljava/lang/String;
    :cond_24
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 610
    .end local v0    # "names":[Ljava/lang/String;
    :cond_25
    const-string v0, "java.util.Optional"

    const-string v8, "java.util.OptionalDouble"

    const-string v9, "java.util.OptionalInt"

    const-string v10, "java.util.OptionalLong"

    filled-new-array {v0, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v0

    .line 616
    .restart local v0    # "names":[Ljava/lang/String;
    array-length v8, v0

    move v9, v6

    :goto_c
    if-ge v9, v8, :cond_27

    aget-object v10, v0, v9

    .line 617
    .restart local v10    # "name":Ljava/lang/String;
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_26

    .line 618
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;

    move-object v3, v9

    invoke-virtual {v1, v8, v9}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 619
    return-object v3

    .line 616
    .end local v10    # "name":Ljava/lang/String;
    :cond_26
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 624
    .end local v0    # "names":[Ljava/lang/String;
    :cond_27
    const-string v0, "java.util.concurrent.atomic.LongAdder"

    const-string v8, "java.util.concurrent.atomic.DoubleAdder"

    filled-new-array {v0, v8}, [Ljava/lang/String;

    move-result-object v0

    .line 628
    .restart local v0    # "names":[Ljava/lang/String;
    array-length v8, v0

    move v9, v6

    :goto_d
    if-ge v9, v8, :cond_29

    aget-object v10, v0, v9

    .line 629
    .restart local v10    # "name":Ljava/lang/String;
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_28

    .line 630
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Lcom/alibaba/fastjson/serializer/AdderSerializer;->instance:Lcom/alibaba/fastjson/serializer/AdderSerializer;

    move-object v3, v9

    invoke-virtual {v1, v8, v9}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 631
    return-object v3

    .line 628
    .end local v10    # "name":Ljava/lang/String;
    :cond_28
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 638
    .end local v0    # "names":[Ljava/lang/String;
    :cond_29
    goto :goto_e

    .line 635
    :catch_3
    move-exception v0

    .line 637
    .local v0, "e":Ljava/lang/Throwable;
    sput-boolean v7, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jdk8Error:Z

    .line 641
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2a
    :goto_e
    sget-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->oracleJdbcError:Z

    if-nez v0, :cond_2d

    const-string v0, "oracle.sql."

    .line 642
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 644
    :try_start_4
    const-string v0, "oracle.sql.DATE"

    const-string v8, "oracle.sql.TIMESTAMP"

    filled-new-array {v0, v8}, [Ljava/lang/String;

    move-result-object v0

    .line 649
    .local v0, "names":[Ljava/lang/String;
    array-length v8, v0

    move v9, v6

    :goto_f
    if-ge v9, v8, :cond_2c

    aget-object v10, v0, v9

    .line 650
    .restart local v10    # "name":Ljava/lang/String;
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2b

    .line 651
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    move-object v3, v9

    invoke-virtual {v1, v8, v9}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 652
    return-object v3

    .line 649
    .end local v10    # "name":Ljava/lang/String;
    :cond_2b
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    .line 658
    .end local v0    # "names":[Ljava/lang/String;
    :cond_2c
    goto :goto_10

    .line 655
    :catch_4
    move-exception v0

    .line 657
    .local v0, "e":Ljava/lang/Throwable;
    sput-boolean v7, Lcom/alibaba/fastjson/serializer/SerializeConfig;->oracleJdbcError:Z

    .line 661
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2d
    :goto_10
    sget-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->springfoxError:Z

    if-nez v0, :cond_2e

    const-string v0, "springfox.documentation.spring.web.json.Json"

    .line 662
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 664
    :try_start_5
    const-string v0, "springfox.documentation.spring.web.json.Json"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v8, Lcom/alibaba/fastjson/support/springfox/SwaggerJsonSerializer;->instance:Lcom/alibaba/fastjson/support/springfox/SwaggerJsonSerializer;

    move-object v3, v8

    invoke-virtual {v1, v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    .line 666
    return-object v3

    .line 667
    :catch_5
    move-exception v0

    .line 669
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sput-boolean v7, Lcom/alibaba/fastjson/serializer/SerializeConfig;->springfoxError:Z

    .line 673
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_2e
    sget-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->guavaError:Z

    if-nez v0, :cond_31

    const-string v0, "com.google.common.collect."

    .line 674
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 676
    :try_start_6
    const-string v0, "com.google.common.collect.HashMultimap"

    const-string v8, "com.google.common.collect.LinkedListMultimap"

    const-string v9, "com.google.common.collect.LinkedHashMultimap"

    const-string v10, "com.google.common.collect.ArrayListMultimap"

    const-string v11, "com.google.common.collect.TreeMultimap"

    filled-new-array {v0, v8, v9, v10, v11}, [Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, "names":[Ljava/lang/String;
    array-length v8, v0

    move v9, v6

    :goto_11
    if-ge v9, v8, :cond_30

    aget-object v10, v0, v9

    .line 685
    .restart local v10    # "name":Ljava/lang/String;
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2f

    .line 686
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Lcom/alibaba/fastjson/serializer/GuavaCodec;->instance:Lcom/alibaba/fastjson/serializer/GuavaCodec;

    move-object v3, v9

    invoke-virtual {v1, v8, v9}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    .line 687
    return-object v3

    .line 684
    .end local v10    # "name":Ljava/lang/String;
    :cond_2f
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    .line 693
    .end local v0    # "names":[Ljava/lang/String;
    :cond_30
    goto :goto_12

    .line 690
    :catch_6
    move-exception v0

    .line 692
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sput-boolean v7, Lcom/alibaba/fastjson/serializer/SerializeConfig;->guavaError:Z

    .line 696
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_31
    :goto_12
    sget-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jsonnullError:Z

    if-nez v0, :cond_32

    const-string v0, "net.sf.json.JSONNull"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 698
    :try_start_7
    const-string v0, "net.sf.json.JSONNull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v8, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    move-object v3, v8

    invoke-virtual {v1, v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    .line 699
    return-object v3

    .line 700
    :catch_7
    move-exception v0

    .line 702
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    sput-boolean v7, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jsonnullError:Z

    .line 706
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_32
    sget-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jsonobjectError:Z

    if-nez v0, :cond_33

    const-string v0, "org.json.JSONObject"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 708
    :try_start_8
    const-string v0, "org.json.JSONObject"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v8, Lcom/alibaba/fastjson/serializer/JSONObjectCodec;->instance:Lcom/alibaba/fastjson/serializer/JSONObjectCodec;

    move-object v3, v8

    invoke-virtual {v1, v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    .line 709
    return-object v3

    .line 710
    :catch_8
    move-exception v0

    .line 712
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    sput-boolean v7, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jsonobjectError:Z

    .line 716
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_33
    sget-boolean v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jodaError:Z

    if-nez v0, :cond_36

    const-string v0, "org.joda."

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 718
    :try_start_9
    const-string v8, "org.joda.time.LocalDate"

    const-string v9, "org.joda.time.LocalDateTime"

    const-string v10, "org.joda.time.LocalTime"

    const-string v11, "org.joda.time.Instant"

    const-string v12, "org.joda.time.DateTime"

    const-string v13, "org.joda.time.Period"

    const-string v14, "org.joda.time.Duration"

    const-string v15, "org.joda.time.DateTimeZone"

    const-string v16, "org.joda.time.UTCDateTimeZone"

    const-string v17, "org.joda.time.tz.CachedDateTimeZone"

    const-string v18, "org.joda.time.tz.FixedDateTimeZone"

    filled-new-array/range {v8 .. v18}, [Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, "names":[Ljava/lang/String;
    array-length v8, v0

    move v9, v6

    :goto_13
    if-ge v9, v8, :cond_35

    aget-object v10, v0, v9

    .line 733
    .restart local v10    # "name":Ljava/lang/String;
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_34

    .line 734
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Lcom/alibaba/fastjson/serializer/JodaCodec;->instance:Lcom/alibaba/fastjson/serializer/JodaCodec;

    move-object v3, v9

    invoke-virtual {v1, v8, v9}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_9

    .line 735
    return-object v3

    .line 732
    .end local v10    # "name":Ljava/lang/String;
    :cond_34
    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    .line 741
    .end local v0    # "names":[Ljava/lang/String;
    :cond_35
    goto :goto_14

    .line 738
    :catch_9
    move-exception v0

    .line 740
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sput-boolean v7, Lcom/alibaba/fastjson/serializer/SerializeConfig;->jodaError:Z

    .line 744
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_36
    :goto_14
    const-string v0, "java.nio.HeapByteBuffer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 745
    sget-object v0, Lcom/alibaba/fastjson/serializer/ByteBufferCodec;->instance:Lcom/alibaba/fastjson/serializer/ByteBufferCodec;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 746
    return-object v3

    .line 749
    :cond_37
    const-string v0, "org.javamoney.moneta.Money"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 750
    sget-object v0, Lcom/alibaba/fastjson/support/moneta/MonetaCodec;->instance:Lcom/alibaba/fastjson/support/moneta/MonetaCodec;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 751
    return-object v3

    .line 754
    :cond_38
    const-string v0, "com.google.protobuf.Descriptors$FieldDescriptor"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 755
    sget-object v0, Lcom/alibaba/fastjson/serializer/ToStringSerializer;->instance:Lcom/alibaba/fastjson/serializer/ToStringSerializer;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 756
    return-object v3

    .line 759
    :cond_39
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 760
    .local v0, "interfaces":[Ljava/lang/Class;
    array-length v8, v0

    if-ne v8, v7, :cond_3a

    aget-object v8, v0, v6

    invoke-virtual {v8}, Ljava/lang/Class;->isAnnotation()Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 761
    sget-object v6, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->instance:Lcom/alibaba/fastjson/serializer/AnnotationSerializer;

    invoke-virtual {v1, v2, v6}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 762
    sget-object v6, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->instance:Lcom/alibaba/fastjson/serializer/AnnotationSerializer;

    return-object v6

    .line 765
    :cond_3a
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isProxy(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 766
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    .line 768
    .local v6, "superClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v7

    .line 769
    .local v7, "superWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    invoke-virtual {v1, v2, v7}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 770
    return-object v7

    .line 773
    .end local v6    # "superClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "superWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_3b
    invoke-static/range {p1 .. p1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_40

    .line 774
    const/4 v8, 0x0

    .line 776
    .local v8, "handlerClass":Ljava/lang/Class;
    array-length v9, v0

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3c

    .line 777
    aget-object v6, v0, v7

    .end local v8    # "handlerClass":Ljava/lang/Class;
    .local v6, "handlerClass":Ljava/lang/Class;
    goto :goto_17

    .line 779
    .end local v6    # "handlerClass":Ljava/lang/Class;
    .restart local v8    # "handlerClass":Ljava/lang/Class;
    :cond_3c
    array-length v7, v0

    :goto_15
    if-ge v6, v7, :cond_3f

    aget-object v9, v0, v6

    .line 780
    .local v9, "proxiedInterface":Ljava/lang/Class;
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "org.springframework.aop."

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3d

    .line 781
    goto :goto_16

    .line 783
    :cond_3d
    if-eqz v8, :cond_3e

    .line 784
    const/4 v6, 0x0

    .line 785
    .end local v8    # "handlerClass":Ljava/lang/Class;
    .restart local v6    # "handlerClass":Ljava/lang/Class;
    goto :goto_17

    .line 787
    .end local v6    # "handlerClass":Ljava/lang/Class;
    .restart local v8    # "handlerClass":Ljava/lang/Class;
    :cond_3e
    move-object v8, v9

    .line 779
    .end local v9    # "proxiedInterface":Ljava/lang/Class;
    :goto_16
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 791
    :cond_3f
    move-object v6, v8

    .end local v8    # "handlerClass":Ljava/lang/Class;
    .restart local v6    # "handlerClass":Ljava/lang/Class;
    :goto_17
    if-eqz v6, :cond_40

    .line 792
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v7

    .line 793
    .restart local v7    # "superWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    invoke-virtual {v1, v2, v7}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 794
    return-object v7

    .line 798
    .end local v6    # "handlerClass":Ljava/lang/Class;
    .end local v7    # "superWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_40
    if-eqz p2, :cond_43

    .line 799
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v3

    .line 800
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .end local v0    # "interfaces":[Ljava/lang/Class;
    .end local v5    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1a

    .line 545
    .restart local v5    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_41
    :goto_18
    sget-object v0, Lcom/alibaba/fastjson/serializer/CalendarCodec;->instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    goto :goto_1a

    .line 536
    :cond_42
    :goto_19
    sget-object v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    move-object v3, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    .line 804
    .end local v5    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_43
    :goto_1a
    if-nez v3, :cond_44

    .line 805
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v3

    .line 808
    .end local v4    # "className":Ljava/lang/String;
    :cond_44
    return-object v3
.end method

.method public getTypeKey()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    return-object v0
.end method

.method public isAsmEnable()Z
    .locals 1

    .line 272
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 834
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Type;

    move-object v1, p2

    check-cast v1, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)Z
    .locals 4
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "value"    # Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .line 838
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 839
    .local v0, "mixin":Ljava/lang/reflect/Type;
    if-eqz v0, :cond_1

    .line 840
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->mixInSerializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/IdentityHashMap;

    .line 841
    .local v1, "mixInClasses":Lcom/alibaba/fastjson/util/IdentityHashMap;, "Lcom/alibaba/fastjson/util/IdentityHashMap<Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;>;"
    if-nez v1, :cond_0

    .line 843
    new-instance v2, Lcom/alibaba/fastjson/util/IdentityHashMap;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;-><init>(I)V

    move-object v1, v2

    .line 844
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->mixInSerializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v2, p1, v1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 846
    :cond_0
    invoke-virtual {v1, v0, p2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 848
    .end local v1    # "mixInClasses":Lcom/alibaba/fastjson/util/IdentityHashMap;, "Lcom/alibaba/fastjson/util/IdentityHashMap<Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/serializer/ObjectSerializer;>;"
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->serializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public register(Lcom/alibaba/fastjson/spi/Module;)V
    .locals 1
    .param p1, "module"    # Lcom/alibaba/fastjson/spi/Module;

    .line 875
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->modules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    return-void
.end method

.method public setAsmEnable(Z)V
    .locals 1
    .param p1, "asmEnable"    # Z

    .line 276
    sget-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-eqz v0, :cond_0

    .line 277
    return-void

    .line 279
    :cond_0
    iput-boolean p1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->asm:Z

    .line 280
    return-void
.end method

.method public setPropertyNamingStrategy(Lcom/alibaba/fastjson/PropertyNamingStrategy;)V
    .locals 0
    .param p1, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 866
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 867
    return-void
.end method

.method public setTypeKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "typeKey"    # Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    .line 89
    return-void
.end method
