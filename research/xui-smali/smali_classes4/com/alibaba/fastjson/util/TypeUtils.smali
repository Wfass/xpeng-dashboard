.class public Lcom/alibaba/fastjson/util/TypeUtils;
.super Ljava/lang/Object;
.source "TypeUtils.java"


# static fields
.field private static final NUMBER_WITH_TRAILING_ZEROS_PATTERN:Ljava/util/regex/Pattern;

.field private static volatile classXmlAccessorType_error:Z

.field private static volatile class_Clob:Ljava/lang/Class;

.field private static volatile class_Clob_error:Z

.field private static class_JacksonCreator:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static class_JacksonCreator_error:Z

.field private static class_ManyToMany:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static class_ManyToMany_error:Z

.field private static class_OneToMany:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static class_OneToMany_error:Z

.field private static volatile class_XmlAccessType:Ljava/lang/Class;

.field private static volatile class_XmlAccessorType:Ljava/lang/Class;

.field public static compatibleWithFieldName:Z

.field public static compatibleWithJavaBean:Z

.field private static volatile field_XmlAccessType_FIELD:Ljava/lang/reflect/Field;

.field private static volatile field_XmlAccessType_FIELD_VALUE:Ljava/lang/Object;

.field private static volatile kotlinIgnores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile kotlinIgnores_error:Z

.field private static volatile kotlin_class_klass_error:Z

.field private static volatile kotlin_error:Z

.field private static volatile kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

.field private static volatile kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;

.field private static volatile kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

.field private static volatile kotlin_kparameter_getName:Ljava/lang/reflect/Method;

.field private static volatile kotlin_metadata:Ljava/lang/Class;

.field private static volatile kotlin_metadata_error:Z

.field private static mappings:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static method_HibernateIsInitialized:Ljava/lang/reflect/Method;

.field private static method_HibernateIsInitialized_error:Z

.field private static volatile method_XmlAccessorType_value:Ljava/lang/reflect/Method;

.field private static optionalClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static optionalClassInited:Z

.field private static oracleDateMethod:Ljava/lang/reflect/Method;

.field private static oracleDateMethodInited:Z

.field private static oracleTimestampMethod:Ljava/lang/reflect/Method;

.field private static oracleTimestampMethodInited:Z

.field private static pathClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static pathClass_error:Z

.field private static setAccessibleEnable:Z

.field private static transientClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static transientClassInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 65
    const-string v0, "\\.0*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->NUMBER_WITH_TRAILING_ZEROS_PATTERN:Ljava/util/regex/Pattern;

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    .line 69
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithFieldName:Z

    .line 70
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    .line 71
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    .line 73
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    .line 75
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    .line 77
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->transientClassInited:Z

    .line 80
    const/4 v2, 0x0

    sput-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;

    .line 81
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany_error:Z

    .line 82
    sput-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany:Ljava/lang/Class;

    .line 83
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany_error:Z

    .line 85
    sput-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized:Ljava/lang/reflect/Method;

    .line 86
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized_error:Z

    .line 97
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v4, 0x100

    const/high16 v5, 0x3f400000    # 0.75f

    invoke-direct {v3, v4, v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    .line 99
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass_error:Z

    .line 101
    sput-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_JacksonCreator:Ljava/lang/Class;

    .line 102
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_JacksonCreator_error:Z

    .line 104
    sput-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_Clob:Ljava/lang/Class;

    .line 105
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_Clob_error:Z

    .line 107
    sput-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessType:Ljava/lang/Class;

    .line 108
    sput-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessorType:Ljava/lang/Class;

    .line 109
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    .line 110
    sput-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->method_XmlAccessorType_value:Ljava/lang/reflect/Method;

    .line 111
    sput-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->field_XmlAccessType_FIELD:Ljava/lang/reflect/Field;

    .line 112
    sput-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->field_XmlAccessType_FIELD_VALUE:Ljava/lang/Object;

    .line 116
    :try_start_0
    const-string v0, "true"

    const-string v1, "fastjson.compatibleWithJavaBean"

    invoke-static {v1}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    .line 117
    const-string v0, "true"

    const-string v1, "fastjson.compatibleWithFieldName"

    invoke-static {v1}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithFieldName:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 124
    :goto_0
    invoke-static {}, Lcom/alibaba/fastjson/util/TypeUtils;->addBaseClassMappings()V

    .line 125
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addBaseClassMappings()V
    .locals 6

    .line 1510
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1515
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[byte"

    const-class v2, [B

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[short"

    const-class v2, [S

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[int"

    const-class v2, [I

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[long"

    const-class v2, [J

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[float"

    const-class v2, [F

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[double"

    const-class v2, [D

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[boolean"

    const-class v2, [Z

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1525
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[char"

    const-class v2, [C

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[B"

    const-class v2, [B

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[S"

    const-class v2, [S

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1528
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[I"

    const-class v2, [I

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1529
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[J"

    const-class v2, [J

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[F"

    const-class v2, [F

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[D"

    const-class v2, [D

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[C"

    const-class v2, [C

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[Z"

    const-class v2, [Z

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    const/16 v0, 0x47

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Cloneable;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "java.lang.AutoCloseable"

    .line 1537
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Exception;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/RuntimeException;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/IllegalAccessError;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/IllegalAccessException;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/IllegalMonitorStateException;

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/IllegalStateException;

    const/16 v3, 0x9

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/IllegalThreadStateException;

    const/16 v3, 0xa

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/IndexOutOfBoundsException;

    const/16 v3, 0xb

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/InstantiationError;

    const/16 v3, 0xc

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/InstantiationException;

    const/16 v3, 0xd

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/InternalError;

    const/16 v3, 0xe

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/InterruptedException;

    const/16 v3, 0xf

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/LinkageError;

    const/16 v3, 0x10

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/NegativeArraySizeException;

    const/16 v3, 0x11

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/NoClassDefFoundError;

    const/16 v3, 0x12

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/NoSuchFieldError;

    const/16 v3, 0x13

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/NoSuchFieldException;

    const/16 v3, 0x14

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/NoSuchMethodError;

    const/16 v3, 0x15

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/NoSuchMethodException;

    const/16 v3, 0x16

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/NullPointerException;

    const/16 v3, 0x17

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/NumberFormatException;

    const/16 v3, 0x18

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/OutOfMemoryError;

    const/16 v3, 0x19

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/SecurityException;

    const/16 v3, 0x1a

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/StackOverflowError;

    const/16 v3, 0x1b

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/StringIndexOutOfBoundsException;

    const/16 v3, 0x1c

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/TypeNotPresentException;

    const/16 v3, 0x1d

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/VerifyError;

    const/16 v3, 0x1e

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/StackTraceElement;

    const/16 v3, 0x1f

    aput-object v1, v0, v3

    const-class v1, Ljava/util/HashMap;

    const/16 v3, 0x20

    aput-object v1, v0, v3

    const-class v1, Ljava/util/Hashtable;

    const/16 v3, 0x21

    aput-object v1, v0, v3

    const-class v1, Ljava/util/TreeMap;

    const/16 v3, 0x22

    aput-object v1, v0, v3

    const-class v1, Ljava/util/IdentityHashMap;

    const/16 v3, 0x23

    aput-object v1, v0, v3

    const-class v1, Ljava/util/WeakHashMap;

    const/16 v3, 0x24

    aput-object v1, v0, v3

    const-class v1, Ljava/util/LinkedHashMap;

    const/16 v3, 0x25

    aput-object v1, v0, v3

    const-class v1, Ljava/util/HashSet;

    const/16 v3, 0x26

    aput-object v1, v0, v3

    const-class v1, Ljava/util/LinkedHashSet;

    const/16 v3, 0x27

    aput-object v1, v0, v3

    const-class v1, Ljava/util/TreeSet;

    const/16 v3, 0x28

    aput-object v1, v0, v3

    const-class v1, Ljava/util/ArrayList;

    const/16 v3, 0x29

    aput-object v1, v0, v3

    const-class v1, Ljava/util/concurrent/TimeUnit;

    const/16 v3, 0x2a

    aput-object v1, v0, v3

    const-class v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x2b

    aput-object v1, v0, v3

    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v3, 0x2c

    aput-object v1, v0, v3

    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v3, 0x2d

    aput-object v1, v0, v3

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 1581
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/16 v3, 0x2e

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Boolean;

    const/16 v3, 0x2f

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Character;

    const/16 v3, 0x30

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Byte;

    const/16 v3, 0x31

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Short;

    const/16 v3, 0x32

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Integer;

    const/16 v3, 0x33

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Long;

    const/16 v3, 0x34

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Float;

    const/16 v3, 0x35

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Double;

    const/16 v3, 0x36

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Number;

    const/16 v3, 0x37

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/String;

    const/16 v3, 0x38

    aput-object v1, v0, v3

    const-class v1, Ljava/math/BigDecimal;

    const/16 v3, 0x39

    aput-object v1, v0, v3

    const-class v1, Ljava/math/BigInteger;

    const/16 v3, 0x3a

    aput-object v1, v0, v3

    const-class v1, Ljava/util/BitSet;

    const/16 v3, 0x3b

    aput-object v1, v0, v3

    const-class v1, Ljava/util/Calendar;

    const/16 v3, 0x3c

    aput-object v1, v0, v3

    const-class v1, Ljava/util/Date;

    const/16 v3, 0x3d

    aput-object v1, v0, v3

    const-class v1, Ljava/util/Locale;

    const/16 v3, 0x3e

    aput-object v1, v0, v3

    const-class v1, Ljava/util/UUID;

    const/16 v3, 0x3f

    aput-object v1, v0, v3

    const-class v1, Ljava/sql/Time;

    const/16 v3, 0x40

    aput-object v1, v0, v3

    const-class v1, Ljava/sql/Date;

    const/16 v3, 0x41

    aput-object v1, v0, v3

    const-class v1, Ljava/sql/Timestamp;

    const/16 v3, 0x42

    aput-object v1, v0, v3

    const-class v1, Ljava/text/SimpleDateFormat;

    const/16 v3, 0x43

    aput-object v1, v0, v3

    const-class v1, Lcom/alibaba/fastjson/JSONObject;

    const/16 v3, 0x44

    aput-object v1, v0, v3

    const-class v1, Lcom/alibaba/fastjson/JSONPObject;

    const/16 v3, 0x45

    aput-object v1, v0, v3

    const-class v1, Lcom/alibaba/fastjson/JSONArray;

    const/16 v3, 0x46

    aput-object v1, v0, v3

    .line 1607
    .local v0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1608
    .local v3, "clazz":Ljava/lang/Class;
    if-nez v3, :cond_0

    .line 1609
    goto :goto_1

    .line 1611
    :cond_0
    sget-object v4, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1607
    .end local v3    # "clazz":Ljava/lang/Class;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1613
    :cond_1
    return-void
.end method

.method public static addMapping(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1621
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    return-void
.end method

.method public static buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    .locals 1
    .param p2, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;"
        }
    .end annotation

    .line 1709
    .local p0, "beanType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Z)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v0

    return-object v0
.end method

.method public static buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Z)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    .locals 21
    .param p2, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .param p3, "fieldBased"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "Z)",
            "Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;"
        }
    .end annotation

    .local p0, "beanType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    .line 1717
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {v14, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1718
    .local v13, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    const/4 v0, 0x0

    .line 1720
    .local v0, "orders":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "typeName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1721
    .local v2, "typeKey":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v13, :cond_8

    .line 1722
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v0

    .line 1724
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object v1

    .line 1725
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 1726
    const/4 v1, 0x0

    .line 1729
    :cond_0
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONType;->naming()Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v4

    .line 1730
    .local v4, "jsonTypeNaming":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    sget-object v5, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    if-eq v4, v5, :cond_1

    .line 1731
    move-object v5, v4

    .end local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .local v5, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    goto :goto_0

    .line 1734
    .end local v5    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_1
    move-object/from16 v5, p2

    .end local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local v5    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :goto_0
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v6

    .line 1735
    .local v6, "features":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    .line 1736
    .local v7, "supperClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v7, :cond_4

    const-class v8, Ljava/lang/Object;

    if-eq v7, v8, :cond_4

    .line 1738
    const-class v8, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {v7, v8}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1739
    .local v8, "superJsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    if-nez v8, :cond_2

    .line 1740
    goto :goto_2

    .line 1742
    :cond_2
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v2

    .line 1743
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_3

    .line 1744
    goto :goto_2

    .line 1737
    .end local v8    # "superJsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    goto :goto_1

    .line 1748
    .end local v7    # "supperClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v7

    array-length v8, v7

    move-object v9, v2

    move v2, v3

    .end local v2    # "typeKey":Ljava/lang/String;
    .local v9, "typeKey":Ljava/lang/String;
    :goto_3
    if-ge v2, v8, :cond_6

    aget-object v10, v7, v2

    .line 1749
    .local v10, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v11, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {v10, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1750
    .local v11, "superJsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v11, :cond_5

    .line 1751
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v9

    .line 1752
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_5

    .line 1753
    goto :goto_4

    .line 1748
    .end local v10    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "superJsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1758
    :cond_6
    :goto_4
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    .line 1759
    const/4 v9, 0x0

    .line 1761
    .end local v4    # "jsonTypeNaming":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_7
    nop

    .line 1762
    move-object v10, v0

    move-object/from16 v16, v1

    move-object v12, v5

    move v11, v6

    move-object/from16 v17, v9

    goto :goto_5

    .end local v5    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .end local v6    # "features":I
    .end local v9    # "typeKey":Ljava/lang/String;
    .restart local v2    # "typeKey":Ljava/lang/String;
    .restart local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_8
    move-object/from16 v12, p2

    move-object v10, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move v11, v3

    .line 1765
    .end local v0    # "orders":[Ljava/lang/String;
    .end local v1    # "typeName":Ljava/lang/String;
    .end local v2    # "typeKey":Ljava/lang/String;
    .end local p2    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .local v10, "orders":[Ljava/lang/String;
    .local v11, "features":I
    .local v12, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .local v16, "typeName":Ljava/lang/String;
    .local v17, "typeKey":Ljava/lang/String;
    :goto_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v9, v0

    .line 1766
    .local v9, "fieldCacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    invoke-static {v14, v9}, Lcom/alibaba/fastjson/parser/ParserConfig;->parserAllFieldToCache(Ljava/lang/Class;Ljava/util/Map;)V

    .line 1767
    if-eqz p3, :cond_9

    .line 1768
    invoke-static {v14, v15, v3, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGettersWithFieldBase(Ljava/lang/Class;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v0

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    .line 1769
    move-object v0, v14

    move-object v1, v13

    move-object v2, v15

    move-object v3, v9

    move-object v5, v12

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v0

    :goto_6
    move-object v8, v0

    .line 1770
    .local v8, "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v7, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1771
    .local v7, "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-interface {v8, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1774
    if-eqz v10, :cond_b

    array-length v0, v10

    if-eqz v0, :cond_b

    .line 1775
    if-eqz p3, :cond_a

    .line 1776
    const/4 v0, 0x1

    invoke-static {v14, v15, v0, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGettersWithFieldBase(Ljava/lang/Class;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v0

    goto :goto_7

    :cond_a
    const/4 v4, 0x1

    .line 1777
    move-object v0, v14

    move-object v1, v13

    move-object v2, v15

    move-object v3, v9

    move-object v5, v12

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v0

    .local v0, "sortedFieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :goto_7
    goto :goto_8

    .line 1779
    .end local v0    # "sortedFieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1780
    .restart local v0    # "sortedFieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1782
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1783
    .local v1, "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1784
    invoke-static {v1, v7}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1785
    move-object v1, v7

    .line 1787
    :cond_c
    new-instance v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-object v6, v2

    move-object v3, v7

    move-object v7, v14

    .end local v7    # "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .local v3, "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    move-object v4, v8

    move-object v8, v13

    .end local v8    # "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v4, "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move-object v5, v9

    move-object/from16 v9, v16

    .end local v9    # "fieldCacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    .local v5, "fieldCacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    move-object/from16 v18, v10

    move-object/from16 v10, v17

    .end local v10    # "orders":[Ljava/lang/String;
    .local v18, "orders":[Ljava/lang/String;
    move-object/from16 v19, v12

    move-object v12, v3

    .end local v12    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .local v19, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    move-object/from16 v20, v13

    move-object v13, v1

    .end local v13    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .local v20, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    invoke-direct/range {v6 .. v13}, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/lang/String;Ljava/lang/String;I[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;)V

    return-object v2
.end method

.method public static byteValue(Ljava/math/BigDecimal;)B
    .locals 2
    .param p0, "decimal"    # Ljava/math/BigDecimal;

    .line 852
    if-nez p0, :cond_0

    .line 853
    const/4 v0, 0x0

    return v0

    .line 856
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    .line 857
    .local v0, "scale":I
    const/16 v1, -0x64

    if-lt v0, v1, :cond_1

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    .line 858
    invoke-virtual {p0}, Ljava/math/BigDecimal;->byteValue()B

    move-result v1

    return v1

    .line 861
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->byteValueExact()B

    move-result v1

    return v1
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 6
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .line 1014
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_7

    .line 1015
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    .line 1016
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1017
    :cond_0
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_1

    .line 1018
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1019
    :cond_1
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_2

    .line 1020
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 1021
    :cond_2
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_3

    .line 1022
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1023
    :cond_3
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_4

    .line 1024
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 1025
    :cond_4
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_5

    .line 1026
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 1027
    :cond_5
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_6

    .line 1028
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 1030
    :cond_6
    return-object v0

    .line 1033
    :cond_7
    if-eqz p1, :cond_31

    .line 1037
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne p1, v1, :cond_8

    .line 1038
    return-object p0

    .line 1041
    :cond_8
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_b

    .line 1042
    const-class v0, Ljava/util/Map;

    if-ne p1, v0, :cond_9

    .line 1043
    return-object p0

    .line 1046
    :cond_9
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    .line 1047
    .local v0, "map":Ljava/util/Map;
    const-class v1, Ljava/lang/Object;

    if-ne p1, v1, :cond_a

    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1048
    return-object p0

    .line 1050
    :cond_a
    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1053
    .end local v0    # "map":Ljava/util/Map;
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1054
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_d

    .line 1055
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    .line 1056
    .local v0, "collection":Ljava/util/Collection;
    const/4 v1, 0x0

    .line 1057
    .local v1, "index":I
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 1058
    .local v2, "array":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1059
    .local v4, "item":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v4, v5, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v5

    .line 1060
    .local v5, "value":Ljava/lang/Object;
    invoke-static {v2, v1, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 1061
    add-int/lit8 v1, v1, 0x1

    .line 1062
    .end local v4    # "item":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 1063
    :cond_c
    return-object v2

    .line 1065
    .end local v0    # "collection":Ljava/util/Collection;
    .end local v1    # "index":I
    .end local v2    # "array":Ljava/lang/Object;
    :cond_d
    const-class v1, [B

    if-ne p1, v1, :cond_e

    .line 1066
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBytes(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0

    .line 1070
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1071
    return-object p0

    .line 1074
    :cond_f
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_30

    const-class v1, Ljava/lang/Boolean;

    if-ne p1, v1, :cond_10

    goto/16 :goto_a

    .line 1078
    :cond_10
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_2f

    const-class v1, Ljava/lang/Byte;

    if-ne p1, v1, :cond_11

    goto/16 :goto_9

    .line 1082
    :cond_11
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_2e

    const-class v1, Ljava/lang/Character;

    if-ne p1, v1, :cond_12

    goto/16 :goto_8

    .line 1086
    :cond_12
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_2d

    const-class v1, Ljava/lang/Short;

    if-ne p1, v1, :cond_13

    goto/16 :goto_7

    .line 1090
    :cond_13
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_2c

    const-class v1, Ljava/lang/Integer;

    if-ne p1, v1, :cond_14

    goto/16 :goto_6

    .line 1094
    :cond_14
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_2b

    const-class v1, Ljava/lang/Long;

    if-ne p1, v1, :cond_15

    goto/16 :goto_5

    .line 1098
    :cond_15
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_2a

    const-class v1, Ljava/lang/Float;

    if-ne p1, v1, :cond_16

    goto/16 :goto_4

    .line 1102
    :cond_16
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_29

    const-class v1, Ljava/lang/Double;

    if-ne p1, v1, :cond_17

    goto/16 :goto_3

    .line 1106
    :cond_17
    const-class v1, Ljava/lang/String;

    if-ne p1, v1, :cond_18

    .line 1107
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1110
    :cond_18
    const-class v1, Ljava/math/BigDecimal;

    if-ne p1, v1, :cond_19

    .line 1111
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1114
    :cond_19
    const-class v1, Ljava/math/BigInteger;

    if-ne p1, v1, :cond_1a

    .line 1115
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 1118
    :cond_1a
    const-class v1, Ljava/util/Date;

    if-ne p1, v1, :cond_1b

    .line 1119
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 1122
    :cond_1b
    const-class v1, Ljava/sql/Date;

    if-ne p1, v1, :cond_1c

    .line 1123
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToSqlDate(Ljava/lang/Object;)Ljava/sql/Date;

    move-result-object v0

    return-object v0

    .line 1126
    :cond_1c
    const-class v1, Ljava/sql/Time;

    if-ne p1, v1, :cond_1d

    .line 1127
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToSqlTime(Ljava/lang/Object;)Ljava/sql/Time;

    move-result-object v0

    return-object v0

    .line 1130
    :cond_1d
    const-class v1, Ljava/sql/Timestamp;

    if-ne p1, v1, :cond_1e

    .line 1131
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToTimestamp(Ljava/lang/Object;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0

    .line 1134
    :cond_1e
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1135
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToEnum(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1138
    :cond_1f
    const-class v1, Ljava/util/Calendar;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1139
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v0

    .line 1141
    .local v0, "date":Ljava/util/Date;
    const-class v1, Ljava/util/Calendar;

    if-ne p1, v1, :cond_20

    .line 1142
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    sget-object v2, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .local v1, "calendar":Ljava/util/Calendar;
    goto :goto_1

    .line 1145
    .end local v1    # "calendar":Ljava/util/Calendar;
    :cond_20
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1148
    .restart local v1    # "calendar":Ljava/util/Calendar;
    nop

    .line 1147
    :goto_1
    nop

    .line 1150
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1151
    return-object v1

    .line 1146
    .end local v1    # "calendar":Ljava/util/Calendar;
    :catch_0
    move-exception v1

    .line 1147
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not cast to : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1154
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_21
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1155
    .local v1, "className":Ljava/lang/String;
    const-string v2, "javax.xml.datatype.XMLGregorianCalendar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1156
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v0

    .line 1157
    .restart local v0    # "date":Ljava/util/Date;
    sget-object v2, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    sget-object v3, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 1158
    .local v2, "calendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1159
    sget-object v3, Lcom/alibaba/fastjson/serializer/CalendarCodec;->instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/serializer/CalendarCodec;->createXMLGregorianCalendar(Ljava/util/Calendar;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v3

    return-object v3

    .line 1162
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "calendar":Ljava/util/Calendar;
    :cond_22
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_27

    .line 1163
    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    .line 1164
    .local v2, "strVal":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_26

    const-string v3, "null"

    .line 1165
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    const-string v3, "NULL"

    .line 1166
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_2

    .line 1170
    :cond_23
    const-class v0, Ljava/util/Currency;

    if-ne p1, v0, :cond_24

    .line 1171
    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    return-object v0

    .line 1174
    :cond_24
    const-class v0, Ljava/util/Locale;

    if-ne p1, v0, :cond_25

    .line 1175
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->toLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 1178
    :cond_25
    const-string v0, "java.time."

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1179
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1180
    .local v0, "json":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 1167
    .end local v0    # "json":Ljava/lang/String;
    :cond_26
    :goto_2
    return-object v0

    .line 1184
    .end local v2    # "strVal":Ljava/lang/String;
    :cond_27
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 1185
    .local v0, "objectDeserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    if-eqz v0, :cond_28

    .line 1186
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1187
    .local v2, "str":Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 1189
    .end local v2    # "str":Ljava/lang/String;
    :cond_28
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not cast to : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1103
    .end local v0    # "objectDeserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v1    # "className":Ljava/lang/String;
    :cond_29
    :goto_3
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 1099
    :cond_2a
    :goto_4
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 1095
    :cond_2b
    :goto_5
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1091
    :cond_2c
    :goto_6
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1087
    :cond_2d
    :goto_7
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 1083
    :cond_2e
    :goto_8
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToChar(Ljava/lang/Object;)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 1079
    :cond_2f
    :goto_9
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1075
    :cond_30
    :goto_a
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1034
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "clazz is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 9
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "type"    # Ljava/lang/reflect/ParameterizedType;
    .param p2, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .line 1273
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1275
    .local v0, "rawTye":Ljava/lang/reflect/Type;
    const-class v1, Ljava/util/List;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/util/ArrayList;

    if-ne v0, v1, :cond_4

    .line 1276
    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    .line 1277
    .local v1, "itemType":Ljava/lang/reflect/Type;
    instance-of v3, p0, Ljava/util/List;

    if-eqz v3, :cond_4

    .line 1278
    move-object v3, p0

    check-cast v3, Ljava/util/List;

    .line 1279
    .local v3, "listObj":Ljava/util/List;
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1281
    .local v4, "arrayList":Ljava/util/List;
    move v5, v2

    .local v5, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 1282
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1285
    .local v6, "item":Ljava/lang/Object;
    instance-of v7, v1, Ljava/lang/Class;

    if-eqz v7, :cond_2

    .line 1286
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lcom/alibaba/fastjson/JSONObject;

    if-ne v7, v8, :cond_1

    .line 1287
    move-object v7, v6

    check-cast v7, Lcom/alibaba/fastjson/JSONObject;

    move-object v8, v1

    check-cast v8, Ljava/lang/Class;

    invoke-virtual {v7, v8, p2, v2}, Lcom/alibaba/fastjson/JSONObject;->toJavaObject(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    .line 1289
    :cond_1
    move-object v7, v1

    check-cast v7, Ljava/lang/Class;

    invoke-static {v6, v7, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v7

    .local v7, "itemValue":Ljava/lang/Object;
    :goto_1
    goto :goto_2

    .line 1292
    .end local v7    # "itemValue":Ljava/lang/Object;
    :cond_2
    invoke-static {v6, v1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v7

    .line 1295
    .restart local v7    # "itemValue":Ljava/lang/Object;
    :goto_2
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1281
    .end local v6    # "item":Ljava/lang/Object;
    .end local v7    # "itemValue":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1297
    .end local v5    # "i":I
    :cond_3
    return-object v4

    .line 1301
    .end local v1    # "itemType":Ljava/lang/reflect/Type;
    .end local v3    # "listObj":Ljava/util/List;
    .end local v4    # "arrayList":Ljava/util/List;
    :cond_4
    const-class v1, Ljava/util/Set;

    if-eq v0, v1, :cond_5

    const-class v1, Ljava/util/HashSet;

    if-eq v0, v1, :cond_5

    const-class v1, Ljava/util/TreeSet;

    if-eq v0, v1, :cond_5

    const-class v1, Ljava/util/Collection;

    if-eq v0, v1, :cond_5

    const-class v1, Ljava/util/List;

    if-eq v0, v1, :cond_5

    const-class v1, Ljava/util/ArrayList;

    if-ne v0, v1, :cond_c

    .line 1306
    :cond_5
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    .line 1307
    .restart local v1    # "itemType":Ljava/lang/reflect/Type;
    instance-of v3, p0, Ljava/lang/Iterable;

    if-eqz v3, :cond_c

    .line 1309
    const-class v3, Ljava/util/Set;

    if-eq v0, v3, :cond_8

    const-class v3, Ljava/util/HashSet;

    if-ne v0, v3, :cond_6

    goto :goto_3

    .line 1311
    :cond_6
    const-class v3, Ljava/util/TreeSet;

    if-ne v0, v3, :cond_7

    .line 1312
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    goto :goto_4

    .line 1314
    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_4

    .line 1310
    :cond_8
    :goto_3
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1314
    .local v3, "collection":Ljava/util/Collection;
    :goto_4
    nop

    .line 1316
    move-object v4, p0

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1317
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1320
    .local v5, "item":Ljava/lang/Object;
    instance-of v6, v1, Ljava/lang/Class;

    if-eqz v6, :cond_a

    .line 1321
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/alibaba/fastjson/JSONObject;

    if-ne v6, v7, :cond_9

    .line 1322
    move-object v6, v5

    check-cast v6, Lcom/alibaba/fastjson/JSONObject;

    move-object v7, v1

    check-cast v7, Ljava/lang/Class;

    invoke-virtual {v6, v7, p2, v2}, Lcom/alibaba/fastjson/JSONObject;->toJavaObject(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_6

    .line 1324
    :cond_9
    move-object v6, v1

    check-cast v6, Ljava/lang/Class;

    invoke-static {v5, v6, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v6

    .local v6, "itemValue":Ljava/lang/Object;
    :goto_6
    goto :goto_7

    .line 1327
    .end local v6    # "itemValue":Ljava/lang/Object;
    :cond_a
    invoke-static {v5, v1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v6

    .line 1330
    .restart local v6    # "itemValue":Ljava/lang/Object;
    :goto_7
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1331
    .end local v5    # "item":Ljava/lang/Object;
    .end local v6    # "itemValue":Ljava/lang/Object;
    goto :goto_5

    .line 1332
    .end local v4    # "it":Ljava/util/Iterator;
    :cond_b
    return-object v3

    .line 1336
    .end local v1    # "itemType":Ljava/lang/reflect/Type;
    .end local v3    # "collection":Ljava/util/Collection;
    :cond_c
    const-class v1, Ljava/util/Map;

    const/4 v3, 0x1

    if-eq v0, v1, :cond_d

    const-class v1, Ljava/util/HashMap;

    if-ne v0, v1, :cond_f

    .line 1337
    :cond_d
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    .line 1338
    .local v1, "keyType":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v3

    .line 1339
    .local v4, "valueType":Ljava/lang/reflect/Type;
    instance-of v5, p0, Ljava/util/Map;

    if-eqz v5, :cond_f

    .line 1340
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1341
    .local v2, "map":Ljava/util/Map;
    move-object v3, p0

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1342
    .local v5, "entry":Ljava/util/Map$Entry;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v6

    .line 1343
    .local v6, "key":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v4, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v7

    .line 1344
    .local v7, "value":Ljava/lang/Object;
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    .end local v5    # "entry":Ljava/util/Map$Entry;
    .end local v6    # "key":Ljava/lang/Object;
    .end local v7    # "value":Ljava/lang/Object;
    goto :goto_8

    .line 1346
    :cond_e
    return-object v2

    .line 1349
    .end local v1    # "keyType":Ljava/lang/reflect/Type;
    .end local v2    # "map":Ljava/util/Map;
    .end local v4    # "valueType":Ljava/lang/reflect/Type;
    :cond_f
    instance-of v1, p0, Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v1, :cond_10

    .line 1350
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 1351
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_10

    .line 1352
    return-object v4

    .line 1356
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_10
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1357
    .local v1, "actualTypeArguments":[Ljava/lang/reflect/Type;
    array-length v5, v1

    if-ne v5, v3, :cond_11

    .line 1358
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    aget-object v2, v5, v2

    .line 1359
    .local v2, "argType":Ljava/lang/reflect/Type;
    instance-of v5, v2, Ljava/lang/reflect/WildcardType;

    if-eqz v5, :cond_11

    .line 1360
    invoke-static {p0, v0, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 1364
    .end local v2    # "argType":Ljava/lang/reflect/Type;
    :cond_11
    const-class v2, Ljava/util/Map$Entry;

    if-ne v0, v2, :cond_13

    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_13

    move-object v2, p0

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v2, v3, :cond_13

    .line 1365
    move-object v2, p0

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1366
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 1367
    .local v4, "entryValue":Ljava/lang/Object;
    array-length v5, v1

    const/4 v6, 0x2

    if-ne v5, v6, :cond_12

    instance-of v5, v4, Ljava/util/Map;

    if-eqz v5, :cond_12

    .line 1368
    aget-object v3, v1, v3

    .line 1369
    .local v3, "valueType":Ljava/lang/reflect/Type;
    nop

    .line 1370
    invoke-static {v4, v3, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v5

    .line 1369
    invoke-interface {v2, v5}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    .end local v3    # "valueType":Ljava/lang/reflect/Type;
    :cond_12
    return-object v2

    .line 1376
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "entryValue":Ljava/lang/Object;
    :cond_13
    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_15

    .line 1377
    if-nez p2, :cond_14

    .line 1378
    sget-object p2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 1380
    :cond_14
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2

    .line 1381
    .local v2, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    if-eqz v2, :cond_15

    .line 1382
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1383
    .local v3, "str":Ljava/lang/String;
    new-instance v5, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-direct {v5, v3, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 1384
    .local v5, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    invoke-interface {v2, v5, p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 1388
    .end local v2    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v3    # "str":Ljava/lang/String;
    .end local v5    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    :cond_15
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not cast to : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .line 1248
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1249
    return-object v0

    .line 1251
    :cond_0
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 1252
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-static {p0, v0, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1254
    :cond_1
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    .line 1255
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, v0, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1257
    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1258
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 1259
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "null"

    .line 1260
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "NULL"

    .line 1261
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1262
    :cond_3
    return-object v0

    .line 1265
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_4
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_5

    .line 1266
    return-object p0

    .line 1268
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 314
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 315
    return-object v0

    .line 317
    :cond_0
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_1

    .line 318
    move-object v0, p0

    check-cast v0, Ljava/math/BigDecimal;

    return-object v0

    .line 320
    :cond_1
    instance-of v1, p0, Ljava/math/BigInteger;

    if-eqz v1, :cond_2

    .line 321
    new-instance v0, Ljava/math/BigDecimal;

    move-object v1, p0

    check-cast v1, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 323
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 325
    return-object v0

    .line 327
    :cond_3
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_4

    move-object v2, p0

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 328
    return-object v0

    .line 330
    :cond_4
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .line 334
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 335
    return-object v0

    .line 337
    :cond_0
    instance-of v1, p0, Ljava/math/BigInteger;

    if-eqz v1, :cond_1

    .line 338
    move-object v0, p0

    check-cast v0, Ljava/math/BigInteger;

    return-object v0

    .line 340
    :cond_1
    instance-of v1, p0, Ljava/lang/Float;

    if-nez v1, :cond_6

    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 343
    :cond_2
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_3

    .line 344
    move-object v1, p0

    check-cast v1, Ljava/math/BigDecimal;

    .line 345
    .local v1, "decimal":Ljava/math/BigDecimal;
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    .line 346
    .local v2, "scale":I
    const/16 v3, -0x3e8

    if-le v2, v3, :cond_3

    const/16 v3, 0x3e8

    if-ge v2, v3, :cond_3

    .line 347
    move-object v0, p0

    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 350
    .end local v1    # "decimal":Ljava/math/BigDecimal;
    .end local v2    # "scale":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "null"

    .line 352
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "NULL"

    .line 353
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 356
    :cond_4
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 354
    :cond_5
    :goto_0
    return-object v0

    .line 341
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_6
    :goto_1
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .line 966
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 967
    return-object v0

    .line 969
    :cond_0
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 970
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 973
    :cond_1
    instance-of v1, p0, Ljava/math/BigDecimal;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 974
    move-object v0, p0

    check-cast v0, Ljava/math/BigDecimal;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->intValue(Ljava/math/BigDecimal;)I

    move-result v0

    if-ne v0, v3, :cond_2

    move v2, v3

    nop

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 977
    :cond_3
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_5

    .line 978
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_4

    move v2, v3

    nop

    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 981
    :cond_5
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 982
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 983
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "null"

    .line 984
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "NULL"

    .line 985
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    .line 988
    :cond_6
    const-string v0, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "1"

    .line 989
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    .line 992
    :cond_7
    const-string v0, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "0"

    .line 993
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    .line 996
    :cond_8
    const-string v0, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "T"

    .line 997
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_0

    .line 1000
    :cond_9
    const-string v0, "F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "N"

    .line 1001
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1002
    :cond_a
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 998
    :cond_b
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 994
    :cond_c
    :goto_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 990
    :cond_d
    :goto_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 986
    :cond_e
    :goto_3
    return-object v0

    .line 1005
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_f
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to boolean, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToByte(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 243
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 244
    return-object v0

    .line 247
    :cond_0
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_1

    .line 248
    move-object v0, p0

    check-cast v0, Ljava/math/BigDecimal;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->byteValue(Ljava/math/BigDecimal;)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 251
    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 252
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 255
    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 256
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 257
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "null"

    .line 258
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "NULL"

    .line 259
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 262
    :cond_3
    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 260
    :cond_4
    :goto_0
    return-object v0

    .line 264
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to byte, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToBytes(Ljava/lang/Object;)[B
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 956
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 957
    move-object v0, p0

    check-cast v0, [B

    return-object v0

    .line 959
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 960
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 962
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to byte[], value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToChar(Ljava/lang/Object;)Ljava/lang/Character;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .line 268
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 269
    return-object v0

    .line 271
    :cond_0
    instance-of v1, p0, Ljava/lang/Character;

    if-eqz v1, :cond_1

    .line 272
    move-object v0, p0

    check-cast v0, Ljava/lang/Character;

    return-object v0

    .line 274
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 275
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 276
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 277
    return-object v0

    .line 279
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 282
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 280
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to char, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to char, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToDate(Ljava/lang/Object;)Ljava/util/Date;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .line 404
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static castToDate(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Date;
    .locals 9
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;

    .line 408
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 409
    return-object v0

    .line 412
    :cond_0
    instance-of v1, p0, Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 413
    move-object v0, p0

    check-cast v0, Ljava/util/Date;

    return-object v0

    .line 416
    :cond_1
    instance-of v1, p0, Ljava/util/Calendar;

    if-eqz v1, :cond_2

    .line 417
    move-object v0, p0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 420
    :cond_2
    const-wide/16 v1, -0x1

    .line 422
    .local v1, "longValue":J
    instance-of v3, p0, Ljava/math/BigDecimal;

    if-eqz v3, :cond_3

    .line 423
    move-object v0, p0

    check-cast v0, Ljava/math/BigDecimal;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->longValue(Ljava/math/BigDecimal;)J

    move-result-wide v0

    .line 424
    .end local v1    # "longValue":J
    .local v0, "longValue":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2

    .line 427
    .end local v0    # "longValue":J
    .restart local v1    # "longValue":J
    :cond_3
    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_5

    .line 428
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 429
    .end local v1    # "longValue":J
    .restart local v0    # "longValue":J
    const-string v2, "unixtime"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 430
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 432
    :cond_4
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2

    .line 435
    .end local v0    # "longValue":J
    .restart local v1    # "longValue":J
    :cond_5
    instance-of v3, p0, Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_12

    .line 436
    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    .line 437
    .local v3, "strVal":Ljava/lang/String;
    new-instance v5, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v5, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 439
    .local v5, "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :try_start_0
    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 440
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 441
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 441
    return-object v4

    .line 444
    .end local v0    # "calendar":Ljava/util/Calendar;
    :cond_6
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 445
    nop

    .line 447
    const-string v6, "/Date("

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, ")/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 448
    const/4 v6, 0x6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 451
    :cond_7
    const/16 v6, 0x2d

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gtz v6, :cond_a

    const/16 v6, 0x2b

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_8

    goto :goto_0

    .line 479
    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_9

    .line 480
    return-object v0

    .line 482
    :cond_9
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .end local v3    # "strVal":Ljava/lang/String;
    .end local v5    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    goto/16 :goto_3

    .line 452
    .restart local v3    # "strVal":Ljava/lang/String;
    .restart local v5    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :cond_a
    :goto_0
    if-nez p1, :cond_11

    .line 453
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v4, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v0, v4, :cond_10

    .line 454
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x16

    if-ne v0, v4, :cond_b

    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    const-string v4, "yyyyMMddHHmmssSSSZ"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1

    .line 456
    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0xa

    if-ne v0, v4, :cond_c

    .line 457
    const-string p1, "yyyy-MM-dd"

    goto :goto_2

    .line 458
    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v0, v4, :cond_d

    .line 459
    const-string p1, "yyyy-MM-dd HH:mm:ss"

    goto :goto_2

    .line 460
    :cond_d
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x1d

    if-ne v0, v4, :cond_e

    const/16 v0, 0x1a

    .line 461
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x3a

    if-ne v0, v4, :cond_e

    const/16 v0, 0x1c

    .line 462
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x30

    if-ne v0, v4, :cond_e

    .line 463
    const-string p1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX"

    goto :goto_2

    .line 464
    :cond_e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x17

    if-ne v0, v4, :cond_f

    const/16 v0, 0x13

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2c

    if-ne v0, v4, :cond_f

    .line 465
    const-string p1, "yyyy-MM-dd HH:mm:ss,SSS"

    goto :goto_2

    .line 467
    :cond_f
    const-string p1, "yyyy-MM-dd HH:mm:ss.SSS"

    goto :goto_2

    .line 455
    :cond_10
    :goto_1
    sget-object p1, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 471
    :cond_11
    :goto_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v4, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-direct {v0, p1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 472
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    sget-object v4, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 474
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v4

    .line 475
    :catch_0
    move-exception v4

    .line 476
    .local v4, "e":Ljava/text/ParseException;
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can not cast to Date, value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 444
    .end local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v4    # "e":Ljava/text/ParseException;
    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v0

    .line 485
    .end local v3    # "strVal":Ljava/lang/String;
    .end local v5    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :cond_12
    :goto_3
    const-wide/16 v5, -0x1

    cmp-long v0, v1, v5

    if-nez v0, :cond_17

    .line 486
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 487
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "oracle.sql.TIMESTAMP"

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_14

    .line 488
    sget-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_13

    sget-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    if-nez v3, :cond_13

    .line 490
    :try_start_2
    const-string v3, "toJdbc"

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethod:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    .line 494
    :catchall_1
    move-exception v3

    sput-boolean v5, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    throw v3

    .line 491
    :catch_1
    move-exception v3

    .line 494
    :goto_4
    sput-boolean v5, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    .line 495
    nop

    .line 499
    :cond_13
    :try_start_3
    sget-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethod:Ljava/lang/reflect/Method;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 502
    .local v3, "result":Ljava/lang/Object;
    nop

    .line 501
    nop

    .line 503
    move-object v4, v3

    check-cast v4, Ljava/util/Date;

    return-object v4

    .line 500
    .end local v3    # "result":Ljava/lang/Object;
    :catch_2
    move-exception v3

    .line 501
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "can not cast oracle.sql.TIMESTAMP to Date"

    invoke-direct {v4, v5, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 505
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_14
    const-string v3, "oracle.sql.DATE"

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 506
    sget-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_15

    sget-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    if-nez v3, :cond_15

    .line 508
    :try_start_4
    const-string v3, "toJdbc"

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethod:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    .line 512
    :catchall_2
    move-exception v3

    sput-boolean v5, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    throw v3

    .line 509
    :catch_3
    move-exception v3

    .line 512
    :goto_5
    sput-boolean v5, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    .line 513
    nop

    .line 517
    :cond_15
    :try_start_5
    sget-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethod:Ljava/lang/reflect/Method;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 520
    .local v3, "result":Ljava/lang/Object;
    nop

    .line 519
    nop

    .line 521
    move-object v4, v3

    check-cast v4, Ljava/util/Date;

    return-object v4

    .line 518
    .end local v3    # "result":Ljava/lang/Object;
    :catch_4
    move-exception v3

    .line 519
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "can not cast oracle.sql.DATE to Date"

    invoke-direct {v4, v5, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 524
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_16
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not cast to Date, value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 527
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_17
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public static castToDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .line 382
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 383
    return-object v0

    .line 385
    :cond_0
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 386
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 388
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 389
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "null"

    .line 391
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "NULL"

    .line 392
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 395
    :cond_2
    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 396
    const-string v0, ","

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 398
    :cond_3
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 393
    :cond_4
    :goto_0
    return-object v0

    .line 400
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to double, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToEnum(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .line 1206
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1207
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 1208
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 1209
    const/4 v1, 0x0

    return-object v1

    .line 1212
    :cond_0
    if-nez p2, :cond_1

    .line 1213
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    move-object p2, v1

    .line 1216
    :cond_1
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 1217
    .local v1, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v2, v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    if-eqz v2, :cond_2

    .line 1218
    move-object v2, v1

    check-cast v2, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    .line 1219
    .local v2, "enumDeserializer":Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->getEnumByHashCode(J)Ljava/lang/Enum;

    move-result-object v3

    return-object v3

    .line 1222
    .end local v2    # "enumDeserializer":Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;
    :cond_2
    invoke-static {p1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    return-object v2

    .line 1225
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_3
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_4

    .line 1226
    move-object v0, p0

    check-cast v0, Ljava/math/BigDecimal;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->intValue(Ljava/math/BigDecimal;)I

    move-result v0

    .line 1227
    .local v0, "ordinal":I
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    .line 1228
    .local v1, "values":[Ljava/lang/Object;
    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 1229
    aget-object v2, v1, v0

    return-object v2

    .line 1233
    .end local v0    # "ordinal":I
    .end local v1    # "values":[Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_5

    .line 1234
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1235
    .restart local v0    # "ordinal":I
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    .line 1236
    .restart local v1    # "values":[Ljava/lang/Object;
    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 1237
    aget-object v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1242
    .end local v0    # "ordinal":I
    .end local v1    # "values":[Ljava/lang/Object;
    :cond_5
    nop

    .line 1243
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1240
    :catch_0
    move-exception v0

    .line 1241
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static castToFloat(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 360
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 361
    return-object v0

    .line 363
    :cond_0
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 364
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 366
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 367
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "null"

    .line 369
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "NULL"

    .line 370
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 373
    :cond_2
    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 374
    const-string v0, ","

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 376
    :cond_3
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 371
    :cond_4
    :goto_0
    return-object v0

    .line 378
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to float, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToInt(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .line 904
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 905
    return-object v0

    .line 908
    :cond_0
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 909
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    .line 912
    :cond_1
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_2

    .line 913
    move-object v0, p0

    check-cast v0, Ljava/math/BigDecimal;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->intValue(Ljava/math/BigDecimal;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 916
    :cond_2
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 917
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 920
    :cond_3
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 921
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 922
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "null"

    .line 923
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "NULL"

    .line 924
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 927
    :cond_4
    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    .line 928
    const-string v0, ","

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 931
    :cond_5
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->NUMBER_WITH_TRAILING_ZEROS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 932
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 933
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 935
    :cond_6
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 925
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    :cond_7
    :goto_0
    return-object v0

    .line 938
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_8
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 939
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 941
    :cond_9
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 942
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    .line 943
    .local v0, "map":Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    const-string v1, "andIncrement"

    .line 944
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "andDecrement"

    .line 945
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 946
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 947
    .local v1, "iter":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 948
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 949
    .local v2, "value2":Ljava/lang/Object;
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 952
    .end local v0    # "map":Ljava/util/Map;
    .end local v1    # "iter":Ljava/util/Iterator;
    .end local v2    # "value2":Ljava/lang/Object;
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to int, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToJavaBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1009
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 6
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .line 1394
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    const-class v0, Ljava/lang/StackTraceElement;

    if-ne p1, v0, :cond_2

    .line 1395
    const-string v0, "className"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1396
    .local v0, "declaringClass":Ljava/lang/String;
    const-string v1, "methodName"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1397
    .local v1, "methodName":Ljava/lang/String;
    const-string v2, "fileName"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1400
    .local v2, "fileName":Ljava/lang/String;
    const-string v3, "lineNumber"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 1401
    .local v3, "value":Ljava/lang/Number;
    if-nez v3, :cond_0

    .line 1402
    const/4 v4, 0x0

    .end local v3    # "value":Ljava/lang/Number;
    .local v4, "lineNumber":I
    :goto_0
    goto :goto_1

    .line 1403
    .end local v4    # "lineNumber":I
    .restart local v3    # "value":Ljava/lang/Number;
    :cond_0
    instance-of v4, v3, Ljava/math/BigDecimal;

    if-eqz v4, :cond_1

    .line 1404
    move-object v4, v3

    check-cast v4, Ljava/math/BigDecimal;

    invoke-virtual {v4}, Ljava/math/BigDecimal;->intValueExact()I

    move-result v4

    goto :goto_0

    .line 1406
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v4

    .end local v3    # "value":Ljava/lang/Number;
    .restart local v4    # "lineNumber":I
    :goto_1
    move v3, v4

    .line 1409
    .end local v4    # "lineNumber":I
    .local v3, "lineNumber":I
    new-instance v4, Ljava/lang/StackTraceElement;

    invoke-direct {v4, v0, v1, v2, v3}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v4

    .line 1413
    .end local v0    # "declaringClass":Ljava/lang/String;
    .end local v1    # "methodName":Ljava/lang/String;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "lineNumber":I
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1414
    .local v0, "iClassObject":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1415
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 1417
    .local v1, "className":Ljava/lang/String;
    if-nez p2, :cond_3

    .line 1418
    sget-object v2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object p2, v2

    .line 1420
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 1421
    .local v2, "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_4

    .line 1424
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1425
    invoke-static {p0, v2, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 1422
    :cond_4
    new-instance v3, Ljava/lang/ClassNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1430
    .end local v0    # "iClassObject":Ljava/lang/Object;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1432
    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_6

    .line 1433
    move-object v0, p0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .local v0, "object":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_2

    .line 1435
    .end local v0    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1437
    .restart local v0    # "object":Lcom/alibaba/fastjson/JSONObject;
    :goto_2
    if-nez p2, :cond_7

    .line 1438
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    move-object p2, v1

    .line 1440
    :cond_7
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 1441
    .local v1, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    if-eqz v1, :cond_8

    .line 1442
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1443
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 1445
    .end local v2    # "json":Ljava/lang/String;
    :cond_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1449
    .end local v0    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_9
    const-class v0, Ljava/util/Locale;

    if-ne p1, v0, :cond_b

    .line 1450
    const-string v0, "language"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1451
    .local v0, "arg0":Ljava/lang/Object;
    const-string v1, "country"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1452
    .local v1, "arg1":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 1453
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 1454
    .local v2, "language":Ljava/lang/String;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 1455
    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 1456
    .local v3, "country":Ljava/lang/String;
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 1457
    .end local v3    # "country":Ljava/lang/String;
    :cond_a
    if-nez v1, :cond_b

    .line 1458
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 1463
    .end local v0    # "arg0":Ljava/lang/Object;
    .end local v1    # "arg1":Ljava/lang/Object;
    .end local v2    # "language":Ljava/lang/String;
    :cond_b
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_c

    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_c

    .line 1464
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1467
    :cond_c
    const-class v0, Lcom/alibaba/fastjson/JSON;

    if-ne p1, v0, :cond_d

    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_d

    .line 1468
    return-object p0

    .line 1471
    :cond_d
    const-class v0, Ljava/util/LinkedHashMap;

    if-ne p1, v0, :cond_f

    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_f

    .line 1472
    move-object v0, p0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 1473
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    move-result-object v1

    .line 1474
    .local v1, "innerMap":Ljava/util/Map;
    instance-of v2, v1, Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_e

    .line 1475
    return-object v1

    .line 1477
    :cond_e
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1478
    .local v2, "linkedHashMap":Ljava/util/LinkedHashMap;
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 1482
    .end local v0    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "innerMap":Ljava/util/Map;
    .end local v2    # "linkedHashMap":Ljava/util/LinkedHashMap;
    :cond_f
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1483
    return-object p0

    .line 1486
    :cond_10
    const-class v0, Lcom/alibaba/fastjson/JSONObject;

    if-ne p1, v0, :cond_11

    .line 1487
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 1490
    :cond_11
    if-nez p2, :cond_12

    .line 1491
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    move-object p2, v0

    .line 1494
    :cond_12
    const/4 v0, 0x0

    .line 1495
    .local v0, "javaBeanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 1496
    .local v1, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v2, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v2, :cond_13

    .line 1497
    move-object v2, v1

    check-cast v2, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-object v0, v2

    .line 1500
    :cond_13
    if-eqz v0, :cond_14

    .line 1503
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Ljava/util/Map;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1501
    :cond_14
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not get javaBeanDeserializer. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1504
    .end local v0    # "javaBeanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .end local v1    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :catch_0
    move-exception v0

    .line 1505
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static castToLocalDateTime(Ljava/lang/Object;Ljava/lang/String;)Ljava/time/LocalDateTime;
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;

    .line 3251
    if-nez p0, :cond_0

    .line 3252
    const/4 v0, 0x0

    return-object v0

    .line 3255
    :cond_0
    if-nez p1, :cond_1

    .line 3256
    const-string p1, "yyyy-MM-dd HH:mm:ss"

    .line 3259
    :cond_1
    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 3260
    .local v0, "df":Ljava/time/format/DateTimeFormatter;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public static castToLong(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 5
    .param p0, "value"    # Ljava/lang/Object;

    .line 798
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 799
    return-object v0

    .line 802
    :cond_0
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_1

    .line 803
    move-object v0, p0

    check-cast v0, Ljava/math/BigDecimal;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->longValue(Ljava/math/BigDecimal;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 806
    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 807
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 810
    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 811
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 812
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "null"

    .line 813
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "NULL"

    .line 814
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 817
    :cond_3
    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 818
    const-string v0, ","

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 821
    :cond_4
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 822
    :catch_0
    move-exception v0

    .line 825
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 826
    .local v0, "dateParser":Lcom/alibaba/fastjson/parser/JSONScanner;
    const/4 v2, 0x0

    .line 827
    .local v2, "calendar":Ljava/util/Calendar;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 828
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    .line 830
    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 831
    if-eqz v2, :cond_7

    .line 832
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    .line 815
    .end local v0    # "dateParser":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v2    # "calendar":Ljava/util/Calendar;
    :cond_6
    :goto_0
    return-object v0

    .line 836
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_7
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 837
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    .line 838
    .local v0, "map":Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    const-string v1, "andIncrement"

    .line 839
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "andDecrement"

    .line 840
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 841
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 842
    .local v1, "iter":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 843
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 844
    .local v2, "value2":Ljava/lang/Object;
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    .line 848
    .end local v0    # "map":Ljava/util/Map;
    .end local v1    # "iter":Ljava/util/Iterator;
    .end local v2    # "value2":Ljava/lang/Object;
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to long, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToShort(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 288
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 289
    return-object v0

    .line 292
    :cond_0
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_1

    .line 293
    move-object v0, p0

    check-cast v0, Ljava/math/BigDecimal;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->shortValue(Ljava/math/BigDecimal;)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 296
    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 297
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 300
    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 301
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 302
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "null"

    .line 303
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "NULL"

    .line 304
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 307
    :cond_3
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 305
    :cond_4
    :goto_0
    return-object v0

    .line 310
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to short, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToSqlDate(Ljava/lang/Object;)Ljava/sql/Date;
    .locals 7
    .param p0, "value"    # Ljava/lang/Object;

    .line 531
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 532
    return-object v0

    .line 534
    :cond_0
    instance-of v1, p0, Ljava/sql/Date;

    if-eqz v1, :cond_1

    .line 535
    move-object v0, p0

    check-cast v0, Ljava/sql/Date;

    return-object v0

    .line 537
    :cond_1
    instance-of v1, p0, Ljava/util/Date;

    if-eqz v1, :cond_2

    .line 538
    new-instance v0, Ljava/sql/Date;

    move-object v1, p0

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    return-object v0

    .line 540
    :cond_2
    instance-of v1, p0, Ljava/util/Calendar;

    if-eqz v1, :cond_3

    .line 541
    new-instance v0, Ljava/sql/Date;

    move-object v1, p0

    check-cast v1, Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    return-object v0

    .line 544
    :cond_3
    const-wide/16 v1, 0x0

    .line 545
    .local v1, "longValue":J
    instance-of v3, p0, Ljava/math/BigDecimal;

    if-eqz v3, :cond_4

    .line 546
    move-object v3, p0

    check-cast v3, Ljava/math/BigDecimal;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->longValue(Ljava/math/BigDecimal;)J

    move-result-wide v1

    goto :goto_0

    .line 547
    :cond_4
    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_5

    .line 548
    move-object v3, p0

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 551
    :cond_5
    :goto_0
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 552
    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    .line 553
    .local v3, "strVal":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "null"

    .line 554
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "NULL"

    .line 555
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    .line 558
    :cond_6
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 559
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_2

    .line 561
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 562
    .local v0, "scanner":Lcom/alibaba/fastjson/parser/JSONScanner;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 563
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    goto :goto_2

    .line 565
    :cond_8
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can not cast to Timestamp, value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 556
    .end local v0    # "scanner":Lcom/alibaba/fastjson/parser/JSONScanner;
    :cond_9
    :goto_1
    return-object v0

    .line 569
    .end local v3    # "strVal":Ljava/lang/String;
    :cond_a
    :goto_2
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_b

    .line 572
    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    return-object v0

    .line 570
    :cond_b
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not cast to Date, value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToSqlTime(Ljava/lang/Object;)Ljava/sql/Time;
    .locals 7
    .param p0, "value"    # Ljava/lang/Object;

    .line 584
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 585
    return-object v0

    .line 587
    :cond_0
    instance-of v1, p0, Ljava/sql/Time;

    if-eqz v1, :cond_1

    .line 588
    move-object v0, p0

    check-cast v0, Ljava/sql/Time;

    return-object v0

    .line 590
    :cond_1
    instance-of v1, p0, Ljava/util/Date;

    if-eqz v1, :cond_2

    .line 591
    new-instance v0, Ljava/sql/Time;

    move-object v1, p0

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Time;-><init>(J)V

    return-object v0

    .line 593
    :cond_2
    instance-of v1, p0, Ljava/util/Calendar;

    if-eqz v1, :cond_3

    .line 594
    new-instance v0, Ljava/sql/Time;

    move-object v1, p0

    check-cast v1, Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Time;-><init>(J)V

    return-object v0

    .line 597
    :cond_3
    const-wide/16 v1, 0x0

    .line 598
    .local v1, "longValue":J
    instance-of v3, p0, Ljava/math/BigDecimal;

    if-eqz v3, :cond_4

    .line 599
    move-object v3, p0

    check-cast v3, Ljava/math/BigDecimal;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->longValue(Ljava/math/BigDecimal;)J

    move-result-wide v1

    goto :goto_0

    .line 600
    :cond_4
    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_5

    .line 601
    move-object v3, p0

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 604
    :cond_5
    :goto_0
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 605
    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    .line 606
    .local v3, "strVal":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "null"

    .line 607
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    .line 610
    :cond_6
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 611
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_2

    .line 613
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 614
    .local v0, "scanner":Lcom/alibaba/fastjson/parser/JSONScanner;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 615
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    goto :goto_2

    .line 617
    :cond_8
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can not cast to Timestamp, value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 608
    .end local v0    # "scanner":Lcom/alibaba/fastjson/parser/JSONScanner;
    :cond_9
    :goto_1
    return-object v0

    .line 621
    .end local v3    # "strVal":Ljava/lang/String;
    :cond_a
    :goto_2
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_b

    .line 624
    new-instance v0, Ljava/sql/Time;

    invoke-direct {v0, v1, v2}, Ljava/sql/Time;-><init>(J)V

    return-object v0

    .line 622
    :cond_b
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not cast to Date, value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .line 236
    if-nez p0, :cond_0

    .line 237
    const/4 v0, 0x0

    return-object v0

    .line 239
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static castToTimestamp(Ljava/lang/Object;)Ljava/sql/Timestamp;
    .locals 27
    .param p0, "value"    # Ljava/lang/Object;

    .line 628
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 629
    return-object v1

    .line 631
    :cond_0
    instance-of v2, v0, Ljava/util/Calendar;

    if-eqz v2, :cond_1

    .line 632
    new-instance v1, Ljava/sql/Timestamp;

    move-object v2, v0

    check-cast v2, Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v1

    .line 634
    :cond_1
    instance-of v2, v0, Ljava/sql/Timestamp;

    if-eqz v2, :cond_2

    .line 635
    move-object v1, v0

    check-cast v1, Ljava/sql/Timestamp;

    return-object v1

    .line 637
    :cond_2
    instance-of v2, v0, Ljava/util/Date;

    if-eqz v2, :cond_3

    .line 638
    new-instance v1, Ljava/sql/Timestamp;

    move-object v2, v0

    check-cast v2, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v1

    .line 640
    :cond_3
    const-wide/16 v2, 0x0

    .line 641
    .local v2, "longValue":J
    instance-of v4, v0, Ljava/math/BigDecimal;

    if-eqz v4, :cond_4

    .line 642
    move-object v4, v0

    check-cast v4, Ljava/math/BigDecimal;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->longValue(Ljava/math/BigDecimal;)J

    move-result-wide v2

    goto :goto_0

    .line 643
    :cond_4
    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_5

    .line 644
    move-object v4, v0

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 646
    :cond_5
    :goto_0
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 647
    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 648
    .local v4, "strVal":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "null"

    .line 649
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "NULL"

    .line 650
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto/16 :goto_2

    .line 653
    :cond_6
    const-string v1, ".000000000"

    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v5, 0x7

    const/16 v6, 0xa

    const/4 v7, 0x0

    if-eqz v1, :cond_7

    .line 654
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v4, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 655
    :cond_7
    const-string v1, ".000000"

    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 656
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v4, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 659
    :cond_8
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v8, 0x1d

    if-ne v1, v8, :cond_9

    const/4 v1, 0x4

    .line 660
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v8, 0x2d

    if-ne v1, v8, :cond_9

    .line 661
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_9

    .line 662
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x20

    if-ne v1, v5, :cond_9

    const/16 v1, 0xd

    .line 663
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x3a

    if-ne v1, v5, :cond_9

    const/16 v1, 0x10

    .line 664
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_9

    const/16 v1, 0x13

    .line 665
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x2e

    if-ne v1, v5, :cond_9

    .line 666
    nop

    .line 667
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 668
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x2

    .line 669
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, 0x3

    .line 670
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 666
    invoke-static {v1, v5, v6, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->num(CCCC)I

    move-result v1

    .line 671
    .local v1, "year":I
    const/4 v5, 0x5

    .line 672
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x6

    .line 673
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 671
    invoke-static {v5, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->num(CC)I

    move-result v5

    .line 674
    .local v5, "month":I
    const/16 v6, 0x8

    .line 675
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x9

    .line 676
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 674
    invoke-static {v6, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->num(CC)I

    move-result v6

    .line 677
    .local v6, "day":I
    const/16 v7, 0xb

    .line 678
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xc

    .line 679
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 677
    invoke-static {v7, v8}, Lcom/alibaba/fastjson/util/TypeUtils;->num(CC)I

    move-result v7

    .line 680
    .local v7, "hour":I
    const/16 v8, 0xe

    .line 681
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xf

    .line 682
    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 680
    invoke-static {v8, v9}, Lcom/alibaba/fastjson/util/TypeUtils;->num(CC)I

    move-result v16

    .line 683
    .local v16, "minute":I
    const/16 v8, 0x11

    .line 684
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x12

    .line 685
    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 683
    invoke-static {v8, v9}, Lcom/alibaba/fastjson/util/TypeUtils;->num(CC)I

    move-result v17

    .line 686
    .local v17, "second":I
    const/16 v8, 0x14

    .line 687
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v8, 0x15

    .line 688
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v8, 0x16

    .line 689
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v8, 0x17

    .line 690
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v8, 0x18

    .line 691
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v22

    const/16 v8, 0x19

    .line 692
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v23

    const/16 v8, 0x1a

    .line 693
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const/16 v8, 0x1b

    .line 694
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v25

    const/16 v8, 0x1c

    .line 695
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v26

    .line 686
    invoke-static/range {v18 .. v26}, Lcom/alibaba/fastjson/util/TypeUtils;->num(CCCCCCCCC)I

    move-result v18

    .line 696
    .local v18, "nanos":I
    new-instance v19, Ljava/sql/Timestamp;

    add-int/lit16 v9, v1, -0x76c

    add-int/lit8 v10, v5, -0x1

    move-object/from16 v8, v19

    move v11, v6

    move v12, v7

    move/from16 v13, v16

    move/from16 v14, v17

    move/from16 v15, v18

    invoke-direct/range {v8 .. v15}, Ljava/sql/Timestamp;-><init>(IIIIIII)V

    return-object v19

    .line 699
    .end local v1    # "year":I
    .end local v5    # "month":I
    .end local v6    # "day":I
    .end local v7    # "hour":I
    .end local v16    # "minute":I
    .end local v17    # "second":I
    .end local v18    # "nanos":I
    :cond_9
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->isNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 700
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_3

    .line 702
    :cond_a
    new-instance v1, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v1, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 703
    .local v1, "scanner":Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 704
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_3

    .line 706
    :cond_b
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can not cast to Timestamp, value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 651
    .end local v1    # "scanner":Lcom/alibaba/fastjson/parser/JSONScanner;
    :cond_c
    :goto_2
    return-object v1

    .line 711
    .end local v4    # "strVal":Ljava/lang/String;
    :cond_d
    :goto_3
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_e

    .line 714
    new-instance v1, Ljava/sql/Timestamp;

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v1

    .line 712
    :cond_e
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not cast to Timestamp, value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static checkPrimitiveArray(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;
    .locals 6
    .param p0, "genericArrayType"    # Ljava/lang/reflect/GenericArrayType;

    .line 2566
    move-object v0, p0

    .line 2567
    .local v0, "clz":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 2569
    .local v1, "genericComponentType":Ljava/lang/reflect/Type;
    const-string v2, "["

    .line 2570
    .local v2, "prefix":Ljava/lang/String;
    :goto_0
    instance-of v3, v1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_0

    .line 2571
    move-object v3, v1

    check-cast v3, Ljava/lang/reflect/GenericArrayType;

    .line 2572
    invoke-interface {v3}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 2573
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2576
    :cond_0
    instance-of v3, v1, Ljava/lang/Class;

    if-eqz v3, :cond_9

    .line 2577
    move-object v3, v1

    check-cast v3, Ljava/lang/Class;

    .line 2578
    .local v3, "ck":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2580
    :try_start_0
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_1

    .line 2581
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Z"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 2582
    :cond_1
    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_2

    .line 2583
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 2584
    :cond_2
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_3

    .line 2585
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "B"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 2586
    :cond_3
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_4

    .line 2587
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 2588
    :cond_4
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_5

    .line 2589
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "I"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    .line 2590
    :cond_5
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_6

    .line 2591
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "J"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    .line 2592
    :cond_6
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_7

    .line 2593
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "F"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    .line 2594
    :cond_7
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_8

    .line 2595
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "D"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 2598
    :cond_8
    :goto_1
    goto :goto_2

    .line 2597
    :catch_0
    move-exception v4

    .line 2602
    .end local v3    # "ck":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    :goto_2
    return-object v0
.end method

.method public static clearClassMapping()V
    .locals 1

    .line 1616
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 1617
    invoke-static {}, Lcom/alibaba/fastjson/util/TypeUtils;->addBaseClassMappings()V

    .line 1618
    return-void
.end method

.method private static computeFields(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/Map;[Ljava/lang/reflect/Field;)V
    .locals 26
    .param p2, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .param p4, "fields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;[",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 2178
    move-object/from16 v3, p4

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_7

    aget-object v15, v3, v5

    .line 2179
    .local v15, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2180
    goto/16 :goto_2

    .line 2182
    :cond_0
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v15, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 2183
    .local v14, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    const/4 v6, 0x0

    .local v6, "ordinal":I
    const/4 v7, 0x0

    .local v7, "serialzeFeatures":I
    const/4 v8, 0x0

    .line 2184
    .local v8, "parserFeatures":I
    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    .line 2185
    .local v9, "propertyName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 2186
    .local v10, "label":Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 2187
    invoke-interface {v14}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v11

    if-nez v11, :cond_1

    .line 2188
    goto/16 :goto_2

    .line 2190
    :cond_1
    invoke-interface {v14}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v6

    .line 2191
    invoke-interface {v14}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v11

    invoke-static {v11}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v7

    .line 2192
    invoke-interface {v14}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v11

    invoke-static {v11}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v8

    .line 2193
    invoke-interface {v14}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_2

    .line 2194
    invoke-interface {v14}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v9

    .line 2196
    :cond_2
    invoke-interface {v14}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_3

    .line 2197
    invoke-interface {v14}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v10

    .line 2200
    .end local v6    # "ordinal":I
    .end local v7    # "serialzeFeatures":I
    .end local v8    # "parserFeatures":I
    .end local v10    # "label":Ljava/lang/String;
    .local v18, "label":Ljava/lang/String;
    .local v19, "ordinal":I
    .local v20, "serialzeFeatures":I
    .local v21, "parserFeatures":I
    :cond_3
    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v18, v10

    if-eqz v0, :cond_4

    .line 2201
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    .line 2202
    if-nez v9, :cond_4

    .line 2203
    goto :goto_2

    .line 2206
    :cond_4
    if-eqz v1, :cond_5

    .line 2207
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2209
    .end local v9    # "propertyName":Ljava/lang/String;
    .local v6, "propertyName":Ljava/lang/String;
    move-object v13, v6

    goto :goto_1

    .end local v6    # "propertyName":Ljava/lang/String;
    .restart local v9    # "propertyName":Ljava/lang/String;
    :cond_5
    move-object v13, v9

    .end local v9    # "propertyName":Ljava/lang/String;
    .local v13, "propertyName":Ljava/lang/String;
    :goto_1
    invoke-interface {v2, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 2210
    new-instance v22, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    move-object/from16 v6, v22

    move-object v7, v13

    move-object v9, v15

    move-object/from16 v10, p0

    move/from16 v12, v19

    move-object/from16 v23, v13

    move/from16 v13, v20

    .end local v13    # "propertyName":Ljava/lang/String;
    .local v23, "propertyName":Ljava/lang/String;
    move-object/from16 v24, v14

    move/from16 v14, v21

    .end local v14    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v24, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v25, v15

    move-object/from16 v15, v16

    .end local v15    # "field":Ljava/lang/reflect/Field;
    .local v25, "field":Ljava/lang/reflect/Field;
    move-object/from16 v16, v24

    move-object/from16 v17, v18

    invoke-direct/range {v6 .. v17}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    .line 2212
    .local v6, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v9, v23

    invoke-interface {v2, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2178
    .end local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v18    # "label":Ljava/lang/String;
    .end local v19    # "ordinal":I
    .end local v20    # "serialzeFeatures":I
    .end local v21    # "parserFeatures":I
    .end local v23    # "propertyName":Ljava/lang/String;
    .end local v24    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v25    # "field":Ljava/lang/reflect/Field;
    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 2215
    :cond_7
    return-void
.end method

.method public static computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;
    .locals 45
    .param p1, "jsonType"    # Lcom/alibaba/fastjson/annotation/JSONType;
    .param p4, "sorted"    # Z
    .param p5, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;Z",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "fieldCacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 1821
    move-object/from16 v15, p5

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v11, v0

    .line 1822
    .local v11, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result v16

    .line 1824
    .local v16, "kotlin":Z
    const/4 v0, 0x0

    .line 1825
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;
    const/4 v1, 0x0

    check-cast v1, [[Ljava/lang/annotation/Annotation;

    .line 1826
    .local v1, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const/4 v2, 0x0

    .line 1827
    .local v2, "paramNames":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1828
    .local v3, "paramNameMapping":[S
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    .line 1829
    .local v10, "methods":[Ljava/lang/reflect/Method;
    array-length v9, v10

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_43

    aget-object v6, v10, v7

    .line 1830
    .local v6, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1831
    .local v5, "methodName":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "ordinal":I
    const/16 v17, 0x0

    .local v17, "serialzeFeatures":I
    const/16 v18, 0x0

    .line 1832
    .local v18, "parserFeatures":I
    const/16 v19, 0x0

    .line 1833
    .local v19, "label":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1834
    nop

    .line 1829
    move-object/from16 v21, v1

    goto :goto_1

    .line 1836
    :cond_0
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    move-object/from16 v21, v1

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .end local v1    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .local v21, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1837
    goto :goto_1

    .line 1839
    :cond_1
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_2

    .line 1840
    goto :goto_1

    .line 1842
    :cond_2
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    const-class v8, Ljava/lang/ClassLoader;

    if-ne v1, v8, :cond_3

    .line 1843
    goto :goto_1

    .line 1846
    :cond_3
    const-string v1, "getMetaClass"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1847
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v8, "groovy.lang.MetaClass"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1848
    goto :goto_1

    .line 1850
    :cond_4
    const-string v1, "getSuppressed"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1851
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-class v8, Ljava/lang/Throwable;

    if-ne v1, v8, :cond_5

    .line 1852
    goto :goto_1

    .line 1855
    :cond_5
    if-eqz v16, :cond_6

    invoke-static {v12, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlinIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1856
    nop

    .line 1829
    .end local v4    # "ordinal":I
    .end local v5    # "methodName":Ljava/lang/String;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v17    # "serialzeFeatures":I
    .end local v18    # "parserFeatures":I
    .end local v19    # "label":Ljava/lang/String;
    .end local v21    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v1    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    :goto_1
    move/from16 v27, v7

    move/from16 v28, v9

    move-object/from16 v30, v10

    move-object v14, v11

    move-object/from16 v1, v21

    const/16 v25, 0x0

    .end local v1    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v21    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    goto/16 :goto_1d

    .line 1861
    .restart local v4    # "ordinal":I
    .restart local v5    # "methodName":Ljava/lang/String;
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    .restart local v17    # "serialzeFeatures":I
    .restart local v18    # "parserFeatures":I
    .restart local v19    # "label":Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 1862
    .local v22, "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v6, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1863
    .local v1, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-nez v1, :cond_7

    .line 1864
    invoke-static {v12, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v1

    .line 1866
    :cond_7
    if-nez v1, :cond_14

    if-eqz v16, :cond_14

    .line 1867
    if-nez v0, :cond_a

    .line 1868
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1869
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKotlinConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 1870
    .local v8, "creatorConstructor":Ljava/lang/reflect/Constructor;
    if-eqz v8, :cond_9

    .line 1871
    invoke-static {v8}, Lcom/alibaba/fastjson/util/TypeUtils;->getParameterAnnotations(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object v21

    .line 1872
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v2

    .line 1873
    if-eqz v2, :cond_9

    .line 1874
    move-object/from16 v24, v0

    array-length v0, v2

    .end local v0    # "constructors":[Ljava/lang/reflect/Constructor;
    .local v24, "constructors":[Ljava/lang/reflect/Constructor;
    new-array v0, v0, [Ljava/lang/String;

    .line 1875
    .local v0, "paramNames_sorted":[Ljava/lang/String;
    move-object/from16 v25, v1

    array-length v1, v2

    .end local v1    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v25, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v26, v3

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1877
    .end local v3    # "paramNameMapping":[S
    .local v26, "paramNameMapping":[S
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1878
    array-length v1, v2

    new-array v1, v1, [S

    .line 1879
    .end local v26    # "paramNameMapping":[S
    .local v1, "paramNameMapping":[S
    move/from16 v20, v3

    .local v20, "p":S
    :goto_2
    move/from16 v27, v20

    .end local v20    # "p":S
    .local v27, "p":S
    array-length v3, v2

    move/from16 v29, v4

    move/from16 v4, v27

    if-ge v4, v3, :cond_8

    .line 1880
    .end local v27    # "p":S
    .local v4, "p":S
    .local v29, "ordinal":I
    aget-object v3, v2, v4

    invoke-static {v0, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 1881
    .local v3, "index":I
    aput-short v4, v1, v3

    .line 1879
    .end local v3    # "index":I
    add-int/lit8 v3, v4, 0x1

    int-to-short v3, v3

    .end local v4    # "p":S
    .local v3, "p":S
    move/from16 v20, v3

    move/from16 v4, v29

    const/4 v3, 0x0

    goto :goto_2

    .line 1883
    .end local v3    # "p":S
    :cond_8
    move-object v2, v0

    .line 1887
    .end local v0    # "paramNames_sorted":[Ljava/lang/String;
    .end local v8    # "creatorConstructor":Ljava/lang/reflect/Constructor;
    move-object v3, v1

    move-object/from16 v1, v21

    move-object/from16 v0, v24

    goto :goto_3

    .end local v24    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v25    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v29    # "ordinal":I
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;
    .local v1, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v3, "paramNameMapping":[S
    .local v4, "ordinal":I
    :cond_9
    move-object/from16 v24, v0

    move-object/from16 v25, v1

    move-object/from16 v26, v3

    move/from16 v29, v4

    move-object/from16 v1, v21

    .end local v0    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v1    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v3    # "paramNameMapping":[S
    .end local v4    # "ordinal":I
    .restart local v24    # "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v25    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v26    # "paramNameMapping":[S
    .restart local v29    # "ordinal":I
    goto :goto_3

    .end local v24    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v25    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v26    # "paramNameMapping":[S
    .end local v29    # "ordinal":I
    .restart local v0    # "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v1    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v3    # "paramNameMapping":[S
    .restart local v4    # "ordinal":I
    :cond_a
    move-object/from16 v25, v1

    move-object/from16 v26, v3

    move/from16 v29, v4

    move-object/from16 v1, v21

    .end local v4    # "ordinal":I
    .end local v21    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .local v1, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v25    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v29    # "ordinal":I
    :goto_3
    if-eqz v2, :cond_12

    if-eqz v3, :cond_12

    const-string v4, "get"

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1888
    const/4 v4, 0x3

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1889
    .local v4, "propertyName":Ljava/lang/String;
    invoke-static {v2, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    .line 1890
    .local v8, "p":I
    if-gez v8, :cond_c

    .line 1891
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_4
    move/from16 v30, v20

    .end local v20    # "i":I
    .local v30, "i":I
    move-object/from16 v31, v0

    array-length v0, v2

    .end local v0    # "constructors":[Ljava/lang/reflect/Constructor;
    .local v31, "constructors":[Ljava/lang/reflect/Constructor;
    move-object/from16 v32, v5

    move/from16 v5, v30

    if-ge v5, v0, :cond_d

    .line 1892
    .end local v30    # "i":I
    .local v5, "i":I
    .local v32, "methodName":Ljava/lang/String;
    aget-object v0, v2, v5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1893
    move v8, v5

    .line 1894
    goto :goto_5

    .line 1891
    :cond_b
    add-int/lit8 v20, v5, 0x1

    .end local v5    # "i":I
    .restart local v20    # "i":I
    move-object/from16 v0, v31

    move-object/from16 v5, v32

    goto :goto_4

    .line 1898
    .end local v20    # "i":I
    .end local v31    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v32    # "methodName":Ljava/lang/String;
    .restart local v0    # "constructors":[Ljava/lang/reflect/Constructor;
    .local v5, "methodName":Ljava/lang/String;
    :cond_c
    move-object/from16 v31, v0

    move-object/from16 v32, v5

    .end local v0    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v5    # "methodName":Ljava/lang/String;
    .restart local v31    # "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v32    # "methodName":Ljava/lang/String;
    :cond_d
    :goto_5
    if-ltz v8, :cond_11

    .line 1899
    aget-short v0, v3, v8

    .line 1900
    .local v0, "index":S
    aget-object v5, v1, v0

    .line 1901
    .local v5, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    if-eqz v5, :cond_10

    .line 1902
    move/from16 v33, v0

    array-length v0, v5

    .end local v0    # "index":S
    .local v33, "index":S
    move-object/from16 v34, v1

    const/4 v1, 0x0

    .end local v1    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .local v34, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    :goto_6
    if-ge v1, v0, :cond_f

    move/from16 v35, v0

    aget-object v0, v5, v1

    .line 1903
    .local v0, "paramAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v36, v2

    instance-of v2, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    .end local v2    # "paramNames":[Ljava/lang/String;
    .local v36, "paramNames":[Ljava/lang/String;
    if-eqz v2, :cond_e

    .line 1904
    move-object v1, v0

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1905
    .end local v25    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v1, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    nop

    .line 1909
    move-object/from16 v25, v1

    goto :goto_7

    .line 1902
    .end local v0    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .end local v1    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v25    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_e
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v35

    move-object/from16 v2, v36

    goto :goto_6

    .line 1909
    .end local v36    # "paramNames":[Ljava/lang/String;
    .restart local v2    # "paramNames":[Ljava/lang/String;
    :cond_f
    move-object/from16 v36, v2

    .end local v2    # "paramNames":[Ljava/lang/String;
    .restart local v36    # "paramNames":[Ljava/lang/String;
    goto :goto_7

    .end local v33    # "index":S
    .end local v34    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v36    # "paramNames":[Ljava/lang/String;
    .local v0, "index":S
    .local v1, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v2    # "paramNames":[Ljava/lang/String;
    :cond_10
    move/from16 v33, v0

    move-object/from16 v34, v1

    move-object/from16 v36, v2

    .end local v0    # "index":S
    .end local v1    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v2    # "paramNames":[Ljava/lang/String;
    .restart local v33    # "index":S
    .restart local v34    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v36    # "paramNames":[Ljava/lang/String;
    :goto_7
    if-nez v25, :cond_13

    .line 1910
    invoke-static {v4, v14}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1911
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_13

    .line 1912
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1918
    .end local v4    # "propertyName":Ljava/lang/String;
    .end local v5    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .end local v8    # "p":I
    .end local v25    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v33    # "index":S
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object v8, v0

    move-object/from16 v26, v3

    goto :goto_a

    .end local v0    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v34    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v36    # "paramNames":[Ljava/lang/String;
    .restart local v1    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v2    # "paramNames":[Ljava/lang/String;
    .restart local v25    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_11
    move-object/from16 v34, v1

    move-object/from16 v36, v2

    .end local v1    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v2    # "paramNames":[Ljava/lang/String;
    .restart local v34    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v36    # "paramNames":[Ljava/lang/String;
    goto :goto_8

    .end local v31    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v32    # "methodName":Ljava/lang/String;
    .end local v34    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v36    # "paramNames":[Ljava/lang/String;
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v1    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v2    # "paramNames":[Ljava/lang/String;
    .local v5, "methodName":Ljava/lang/String;
    :cond_12
    move-object/from16 v31, v0

    move-object/from16 v34, v1

    move-object/from16 v36, v2

    move-object/from16 v32, v5

    .end local v0    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v1    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v2    # "paramNames":[Ljava/lang/String;
    .end local v5    # "methodName":Ljava/lang/String;
    .restart local v31    # "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v32    # "methodName":Ljava/lang/String;
    .restart local v34    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v36    # "paramNames":[Ljava/lang/String;
    :cond_13
    :goto_8
    move-object/from16 v26, v3

    goto :goto_9

    .end local v25    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v29    # "ordinal":I
    .end local v31    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v32    # "methodName":Ljava/lang/String;
    .end local v34    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v36    # "paramNames":[Ljava/lang/String;
    .restart local v0    # "constructors":[Ljava/lang/reflect/Constructor;
    .local v1, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v2    # "paramNames":[Ljava/lang/String;
    .local v4, "ordinal":I
    .restart local v5    # "methodName":Ljava/lang/String;
    .restart local v21    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    :cond_14
    move-object/from16 v25, v1

    move-object/from16 v26, v3

    move/from16 v29, v4

    move-object/from16 v32, v5

    .end local v1    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v3    # "paramNameMapping":[S
    .end local v4    # "ordinal":I
    .end local v5    # "methodName":Ljava/lang/String;
    .restart local v25    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v26    # "paramNameMapping":[S
    .restart local v29    # "ordinal":I
    .restart local v32    # "methodName":Ljava/lang/String;
    move-object/from16 v31, v0

    move-object/from16 v36, v2

    move-object/from16 v34, v21

    .end local v0    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v2    # "paramNames":[Ljava/lang/String;
    .end local v21    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v25    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v8, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v31    # "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v34    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v36    # "paramNames":[Ljava/lang/String;
    :goto_9
    move-object/from16 v8, v25

    :goto_a
    if-eqz v8, :cond_18

    .line 1919
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1920
    nop

    .line 1829
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v8    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v17    # "serialzeFeatures":I
    .end local v18    # "parserFeatures":I
    .end local v19    # "label":Ljava/lang/String;
    .end local v22    # "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    .end local v29    # "ordinal":I
    .end local v32    # "methodName":Ljava/lang/String;
    :goto_b
    move/from16 v27, v7

    move/from16 v28, v9

    move-object/from16 v30, v10

    move-object v14, v11

    const/16 v25, 0x0

    goto/16 :goto_1c

    .line 1922
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    .restart local v8    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v17    # "serialzeFeatures":I
    .restart local v18    # "parserFeatures":I
    .restart local v19    # "label":Ljava/lang/String;
    .restart local v22    # "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    .restart local v29    # "ordinal":I
    .restart local v32    # "methodName":Ljava/lang/String;
    :cond_15
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v20

    .line 1923
    .end local v29    # "ordinal":I
    .local v20, "ordinal":I
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v17

    .line 1924
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v18

    .line 1925
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_17

    .line 1926
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    .line 1927
    .local v0, "propertyName":Ljava/lang/String;
    if-eqz v13, :cond_16

    .line 1928
    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 1929
    if-nez v0, :cond_16

    .line 1930
    goto :goto_b

    .line 1933
    :cond_16
    move-object v5, v0

    .end local v0    # "propertyName":Ljava/lang/String;
    .local v5, "propertyName":Ljava/lang/String;
    new-instance v21, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    const/16 v25, 0x0

    move-object v4, v12

    move-object/from16 v38, v5

    move-object/from16 v37, v32

    move-object/from16 v5, v23

    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v32    # "methodName":Ljava/lang/String;
    .local v37, "methodName":Ljava/lang/String;
    .local v38, "propertyName":Ljava/lang/String;
    move-object/from16 v39, v6

    move/from16 v6, v20

    .end local v6    # "method":Ljava/lang/reflect/Method;
    .local v39, "method":Ljava/lang/reflect/Method;
    move/from16 v27, v7

    move/from16 v7, v17

    move-object/from16 v40, v8

    move/from16 v8, v18

    .end local v8    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v40, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move/from16 v28, v9

    move-object/from16 v9, v40

    move-object/from16 v30, v10

    move-object/from16 v10, v24

    .end local v10    # "methods":[Ljava/lang/reflect/Method;
    .local v30, "methods":[Ljava/lang/reflect/Method;
    move-object v15, v11

    move-object/from16 v11, v19

    .end local v11    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v15, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    .line 1935
    .local v0, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v1, v38

    invoke-interface {v15, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1936
    .end local v38    # "propertyName":Ljava/lang/String;
    .local v1, "propertyName":Ljava/lang/String;
    goto :goto_d

    .line 1938
    .end local v0    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v1    # "propertyName":Ljava/lang/String;
    .end local v15    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v30    # "methods":[Ljava/lang/reflect/Method;
    .end local v37    # "methodName":Ljava/lang/String;
    .end local v39    # "method":Ljava/lang/reflect/Method;
    .end local v40    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    .restart local v8    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v10    # "methods":[Ljava/lang/reflect/Method;
    .restart local v11    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v32    # "methodName":Ljava/lang/String;
    :cond_17
    move-object/from16 v39, v6

    move/from16 v27, v7

    move-object/from16 v40, v8

    move/from16 v28, v9

    move-object/from16 v30, v10

    move-object v15, v11

    move-object/from16 v37, v32

    const/16 v25, 0x0

    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v8    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v10    # "methods":[Ljava/lang/reflect/Method;
    .end local v11    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v32    # "methodName":Ljava/lang/String;
    .restart local v15    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v30    # "methods":[Ljava/lang/reflect/Method;
    .restart local v37    # "methodName":Ljava/lang/String;
    .restart local v39    # "method":Ljava/lang/reflect/Method;
    .restart local v40    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v11, v40

    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v0

    .end local v40    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v11, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_19

    .line 1939
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v19

    goto :goto_c

    .line 1942
    .end local v15    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v20    # "ordinal":I
    .end local v30    # "methods":[Ljava/lang/reflect/Method;
    .end local v37    # "methodName":Ljava/lang/String;
    .end local v39    # "method":Ljava/lang/reflect/Method;
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    .restart local v8    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v10    # "methods":[Ljava/lang/reflect/Method;
    .local v11, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v29    # "ordinal":I
    .restart local v32    # "methodName":Ljava/lang/String;
    :cond_18
    move-object/from16 v39, v6

    move/from16 v27, v7

    move/from16 v28, v9

    move-object/from16 v30, v10

    move-object v15, v11

    move-object/from16 v37, v32

    const/16 v25, 0x0

    move-object v11, v8

    move/from16 v20, v29

    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v8    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v10    # "methods":[Ljava/lang/reflect/Method;
    .end local v29    # "ordinal":I
    .end local v32    # "methodName":Ljava/lang/String;
    .local v11, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v15    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v20    # "ordinal":I
    .restart local v30    # "methods":[Ljava/lang/reflect/Method;
    .restart local v37    # "methodName":Ljava/lang/String;
    .restart local v39    # "method":Ljava/lang/reflect/Method;
    :cond_19
    :goto_c
    const-string v0, "get"

    move-object/from16 v10, v37

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .end local v37    # "methodName":Ljava/lang/String;
    .local v10, "methodName":Ljava/lang/String;
    const/16 v9, 0x66

    const/16 v8, 0x5f

    if-eqz v0, :cond_2e

    .line 1943
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1a

    .line 1944
    nop

    .line 1829
    .end local v15    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v17    # "serialzeFeatures":I
    .end local v18    # "parserFeatures":I
    .end local v19    # "label":Ljava/lang/String;
    .end local v20    # "ordinal":I
    .end local v22    # "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    .end local v30    # "methods":[Ljava/lang/reflect/Method;
    .end local v39    # "method":Ljava/lang/reflect/Method;
    .local v10, "methods":[Ljava/lang/reflect/Method;
    .local v11, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :goto_d
    move-object v14, v15

    goto/16 :goto_1c

    .line 1946
    .local v10, "methodName":Ljava/lang/String;
    .local v11, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v15    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v17    # "serialzeFeatures":I
    .restart local v18    # "parserFeatures":I
    .restart local v19    # "label":Ljava/lang/String;
    .restart local v20    # "ordinal":I
    .restart local v22    # "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    .restart local v30    # "methods":[Ljava/lang/reflect/Method;
    .restart local v39    # "method":Ljava/lang/reflect/Method;
    :cond_1a
    const-string v0, "getClass"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1947
    goto :goto_d

    .line 1949
    :cond_1b
    const-string v0, "getDeclaringClass"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1950
    goto :goto_d

    .line 1952
    :cond_1c
    const/4 v0, 0x3

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1954
    .local v7, "c3":C
    const/4 v0, 0x0

    .line 1955
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-nez v2, :cond_22

    const/16 v2, 0x200

    if-le v7, v2, :cond_1d

    goto :goto_f

    .line 1964
    :cond_1d
    if-ne v7, v8, :cond_1f

    .line 1965
    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1966
    .restart local v1    # "propertyName":Ljava/lang/String;
    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/reflect/Field;

    .line 1967
    if-nez v0, :cond_24

    .line 1968
    move-object v2, v1

    .line 1969
    .local v2, "temp":Ljava/lang/String;
    const/4 v3, 0x3

    invoke-virtual {v10, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1970
    invoke-static {v1, v14}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1971
    if-nez v0, :cond_1e

    .line 1972
    move-object v1, v2

    .line 1974
    .end local v2    # "temp":Ljava/lang/String;
    :cond_1e
    goto :goto_11

    .line 1975
    .end local v1    # "propertyName":Ljava/lang/String;
    :cond_1f
    if-ne v7, v9, :cond_20

    .line 1976
    const/4 v2, 0x3

    invoke-virtual {v10, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "propertyName":Ljava/lang/String;
    :goto_e
    goto :goto_11

    .line 1977
    .end local v1    # "propertyName":Ljava/lang/String;
    :cond_20
    const/4 v2, 0x3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_21

    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1978
    invoke-virtual {v10, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 1980
    :cond_21
    invoke-virtual {v10, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1981
    .restart local v1    # "propertyName":Ljava/lang/String;
    invoke-static {v1, v14}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1982
    if-nez v0, :cond_24

    .line 1983
    goto :goto_d

    .line 1958
    .end local v1    # "propertyName":Ljava/lang/String;
    :cond_22
    :goto_f
    sget-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v2, :cond_23

    .line 1959
    const/4 v2, 0x3

    invoke-virtual {v10, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "propertyName":Ljava/lang/String;
    goto :goto_10

    .line 1961
    .end local v1    # "propertyName":Ljava/lang/String;
    :cond_23
    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1963
    .restart local v1    # "propertyName":Ljava/lang/String;
    :goto_10
    invoke-static {v14, v10, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getPropertyNameByCompatibleFieldName(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1986
    :cond_24
    :goto_11
    invoke-static {v12, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v21

    .line 1987
    .local v21, "ignore":Z
    if-eqz v21, :cond_25

    .line 1988
    goto/16 :goto_d

    .line 1991
    :cond_25
    if-nez v0, :cond_26

    .line 1993
    invoke-static {v1, v14}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1996
    :cond_26
    const/4 v2, 0x1

    if-nez v0, :cond_27

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_27

    .line 1997
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1998
    .local v3, "ch":C
    const/16 v4, 0x41

    if-lt v3, v4, :cond_27

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_27

    .line 1999
    const/4 v6, 0x3

    invoke-virtual {v10, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2000
    .local v4, "javaBeanCompatiblePropertyName":Ljava/lang/String;
    invoke-static {v4, v14}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    .end local v3    # "ch":C
    .end local v4    # "javaBeanCompatiblePropertyName":Ljava/lang/String;
    goto :goto_12

    .line 2003
    :cond_27
    const/4 v6, 0x3

    .end local v0    # "field":Ljava/lang/reflect/Field;
    .local v5, "field":Ljava/lang/reflect/Field;
    :goto_12
    move-object v5, v0

    const/4 v0, 0x0

    .line 2004
    .local v0, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v5, :cond_2b

    .line 2005
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v5, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 2006
    if-eqz v0, :cond_2b

    .line 2007
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v3

    if-nez v3, :cond_28

    .line 2008
    goto/16 :goto_d

    .line 2010
    :cond_28
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v3

    .line 2011
    .end local v20    # "ordinal":I
    .local v3, "ordinal":I
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v4

    .line 2012
    .end local v17    # "serialzeFeatures":I
    .local v4, "serialzeFeatures":I
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v6

    .line 2013
    .end local v18    # "parserFeatures":I
    .local v6, "parserFeatures":I
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_29

    .line 2014
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 2015
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .line 2016
    if-eqz v13, :cond_29

    .line 2017
    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 2018
    if-nez v1, :cond_29

    .line 2019
    goto/16 :goto_d

    .line 2023
    :cond_29
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2a

    .line 2024
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v2

    .line 2028
    .end local v19    # "label":Ljava/lang/String;
    .local v2, "label":Ljava/lang/String;
    move-object/from16 v17, v0

    move-object/from16 v19, v2

    goto :goto_13

    .end local v2    # "label":Ljava/lang/String;
    .restart local v19    # "label":Ljava/lang/String;
    :cond_2a
    move-object/from16 v17, v0

    .end local v0    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v3    # "ordinal":I
    .end local v4    # "serialzeFeatures":I
    .end local v6    # "parserFeatures":I
    .local v8, "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    .local v17, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v18, "serialzeFeatures":I
    .restart local v20    # "ordinal":I
    .local v22, "parserFeatures":I
    :goto_13
    move/from16 v20, v3

    move/from16 v18, v4

    move-object/from16 v8, v22

    move/from16 v22, v6

    goto :goto_14

    .end local v8    # "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    .restart local v0    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v17, "serialzeFeatures":I
    .local v18, "parserFeatures":I
    .local v22, "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    :cond_2b
    move-object/from16 v8, v22

    move/from16 v22, v18

    move/from16 v18, v17

    move-object/from16 v17, v0

    .end local v0    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v8    # "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    .local v17, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v18, "serialzeFeatures":I
    .local v22, "parserFeatures":I
    :goto_14
    if-eqz v13, :cond_2c

    .line 2029
    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 2030
    if-nez v1, :cond_2c

    .line 2031
    goto/16 :goto_d

    .line 2034
    :cond_2c
    move-object v6, v15

    move-object/from16 v15, p5

    if-eqz v15, :cond_2d

    .end local v15    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v6, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2035
    invoke-virtual {v15, v1}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2037
    .end local v1    # "propertyName":Ljava/lang/String;
    .local v0, "propertyName":Ljava/lang/String;
    move-object v4, v0

    goto :goto_15

    .end local v0    # "propertyName":Ljava/lang/String;
    .restart local v1    # "propertyName":Ljava/lang/String;
    :cond_2d
    move-object v4, v1

    .end local v1    # "propertyName":Ljava/lang/String;
    .local v4, "propertyName":Ljava/lang/String;
    :goto_15
    new-instance v23, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object v1, v4

    move-object/from16 v2, v39

    move-object v3, v5

    move-object v15, v4

    move-object v4, v12

    .end local v4    # "propertyName":Ljava/lang/String;
    .local v15, "propertyName":Ljava/lang/String;
    move-object/from16 v29, v5

    move-object/from16 v5, v24

    .end local v5    # "field":Ljava/lang/reflect/Field;
    .local v29, "field":Ljava/lang/reflect/Field;
    move-object/from16 v41, v6

    const/16 v24, 0x3

    move/from16 v6, v20

    .end local v6    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v41, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move/from16 v32, v7

    move/from16 v7, v18

    .end local v7    # "c3":C
    .local v32, "c3":C
    move-object/from16 v24, v8

    move/from16 v8, v22

    .end local v8    # "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    .local v24, "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    move-object v9, v11

    move-object/from16 v42, v10

    move-object/from16 v10, v17

    .end local v10    # "methodName":Ljava/lang/String;
    .local v42, "methodName":Ljava/lang/String;
    move-object/from16 v33, v11

    move-object/from16 v11, v19

    .end local v11    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v33, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    .line 2039
    .local v0, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v11, v41

    invoke-interface {v11, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2041
    .end local v0    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v15    # "propertyName":Ljava/lang/String;
    .end local v17    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v21    # "ignore":Z
    .end local v29    # "field":Ljava/lang/reflect/Field;
    .end local v32    # "c3":C
    .end local v41    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v11, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move/from16 v17, v18

    move/from16 v18, v22

    goto :goto_16

    .end local v24    # "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    .end local v33    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v42    # "methodName":Ljava/lang/String;
    .restart local v10    # "methodName":Ljava/lang/String;
    .local v11, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v15, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v17, "serialzeFeatures":I
    .local v18, "parserFeatures":I
    .local v22, "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    :cond_2e
    move-object/from16 v42, v10

    move-object/from16 v33, v11

    move-object v11, v15

    move-object/from16 v24, v22

    .end local v10    # "methodName":Ljava/lang/String;
    .end local v15    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v22    # "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    .local v11, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v24    # "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    .restart local v33    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v42    # "methodName":Ljava/lang/String;
    :goto_16
    const-string v0, "is"

    move-object/from16 v15, v42

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .end local v42    # "methodName":Ljava/lang/String;
    .local v15, "methodName":Ljava/lang/String;
    if-eqz v0, :cond_42

    .line 2042
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2f

    .line 2043
    nop

    .line 1829
    .end local v15    # "methodName":Ljava/lang/String;
    .end local v17    # "serialzeFeatures":I
    .end local v18    # "parserFeatures":I
    .end local v19    # "label":Ljava/lang/String;
    .end local v20    # "ordinal":I
    .end local v24    # "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    .end local v30    # "methods":[Ljava/lang/reflect/Method;
    .end local v33    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v39    # "method":Ljava/lang/reflect/Method;
    .local v10, "methods":[Ljava/lang/reflect/Method;
    :goto_17
    move-object v14, v11

    goto/16 :goto_1c

    .line 2045
    .end local v10    # "methods":[Ljava/lang/reflect/Method;
    .restart local v15    # "methodName":Ljava/lang/String;
    .restart local v17    # "serialzeFeatures":I
    .restart local v18    # "parserFeatures":I
    .restart local v19    # "label":Ljava/lang/String;
    .restart local v20    # "ordinal":I
    .restart local v24    # "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    .restart local v30    # "methods":[Ljava/lang/reflect/Method;
    .restart local v33    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v39    # "method":Ljava/lang/reflect/Method;
    :cond_2f
    move-object/from16 v10, v39

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .end local v39    # "method":Ljava/lang/reflect/Method;
    .local v10, "method":Ljava/lang/reflect/Method;
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_30

    .line 2046
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/Boolean;

    if-eq v0, v2, :cond_30

    .line 2047
    goto :goto_17

    .line 2049
    :cond_30
    const/4 v0, 0x2

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 2051
    .local v9, "c2":C
    const/4 v2, 0x0

    .line 2052
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-static {v9}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 2053
    sget-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v3, :cond_31

    .line 2054
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "propertyName":Ljava/lang/String;
    goto :goto_18

    .line 2056
    .end local v1    # "propertyName":Ljava/lang/String;
    :cond_31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2058
    .restart local v1    # "propertyName":Ljava/lang/String;
    :goto_18
    invoke-static {v14, v15, v1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getPropertyNameByCompatibleFieldName(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .end local v1    # "propertyName":Ljava/lang/String;
    .local v0, "propertyName":Ljava/lang/String;
    goto :goto_19

    .line 2059
    .end local v0    # "propertyName":Ljava/lang/String;
    :cond_32
    const/16 v3, 0x5f

    if-ne v9, v3, :cond_35

    .line 2060
    invoke-virtual {v15, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2061
    .restart local v1    # "propertyName":Ljava/lang/String;
    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/lang/reflect/Field;

    .line 2062
    if-nez v2, :cond_34

    .line 2063
    move-object v3, v1

    .line 2064
    .local v3, "temp":Ljava/lang/String;
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2065
    .end local v1    # "propertyName":Ljava/lang/String;
    .restart local v0    # "propertyName":Ljava/lang/String;
    invoke-static {v0, v14}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 2066
    if-nez v2, :cond_33

    .line 2067
    move-object v0, v3

    .line 2069
    .end local v3    # "temp":Ljava/lang/String;
    :cond_33
    goto :goto_19

    .line 2079
    .end local v0    # "propertyName":Ljava/lang/String;
    .restart local v1    # "propertyName":Ljava/lang/String;
    :cond_34
    move-object v0, v1

    goto :goto_19

    .line 2070
    .end local v1    # "propertyName":Ljava/lang/String;
    :cond_35
    const/16 v1, 0x66

    if-ne v9, v1, :cond_36

    .line 2071
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "propertyName":Ljava/lang/String;
    goto :goto_19

    .line 2073
    .end local v0    # "propertyName":Ljava/lang/String;
    :cond_36
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2074
    .restart local v0    # "propertyName":Ljava/lang/String;
    invoke-static {v0, v14}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 2075
    if-nez v2, :cond_37

    .line 2076
    goto/16 :goto_17

    .line 2079
    :cond_37
    :goto_19
    invoke-static {v12, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v21

    .line 2080
    .restart local v21    # "ignore":Z
    if-eqz v21, :cond_38

    .line 2081
    goto/16 :goto_17

    .line 2084
    :cond_38
    if-nez v2, :cond_39

    .line 2085
    invoke-static {v0, v14}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 2088
    :cond_39
    if-nez v2, :cond_3a

    .line 2089
    invoke-static {v15, v14}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 2091
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .local v1, "field":Ljava/lang/reflect/Field;
    move-object v8, v1

    goto :goto_1a

    .end local v1    # "field":Ljava/lang/reflect/Field;
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    :cond_3a
    move-object v8, v2

    .end local v2    # "field":Ljava/lang/reflect/Field;
    .local v8, "field":Ljava/lang/reflect/Field;
    :goto_1a
    const/4 v1, 0x0

    .line 2092
    .local v1, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v8, :cond_3e

    .line 2093
    const-class v2, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v8, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 2094
    if-eqz v1, :cond_3e

    .line 2095
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 2096
    goto/16 :goto_17

    .line 2098
    :cond_3b
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v2

    .line 2099
    .end local v20    # "ordinal":I
    .local v2, "ordinal":I
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v3

    .line 2100
    .end local v17    # "serialzeFeatures":I
    .local v3, "serialzeFeatures":I
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v4

    .line 2101
    .end local v18    # "parserFeatures":I
    .local v4, "parserFeatures":I
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3c

    .line 2102
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    .line 2103
    if-eqz v13, :cond_3c

    .line 2104
    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    .line 2105
    if-nez v0, :cond_3c

    .line 2106
    goto/16 :goto_17

    .line 2110
    :cond_3c
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3d

    .line 2111
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v5

    .line 2115
    .end local v19    # "label":Ljava/lang/String;
    .local v5, "label":Ljava/lang/String;
    move-object/from16 v17, v1

    move/from16 v20, v2

    move/from16 v18, v3

    move/from16 v22, v4

    move-object/from16 v19, v5

    goto :goto_1b

    .end local v5    # "label":Ljava/lang/String;
    .restart local v19    # "label":Ljava/lang/String;
    :cond_3d
    move-object/from16 v17, v1

    move/from16 v20, v2

    move/from16 v18, v3

    move/from16 v22, v4

    goto :goto_1b

    .end local v2    # "ordinal":I
    .end local v3    # "serialzeFeatures":I
    .end local v4    # "parserFeatures":I
    .restart local v17    # "serialzeFeatures":I
    .restart local v18    # "parserFeatures":I
    .restart local v20    # "ordinal":I
    :cond_3e
    move/from16 v22, v18

    move/from16 v18, v17

    move-object/from16 v17, v1

    .end local v1    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v17, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v18, "serialzeFeatures":I
    .local v22, "parserFeatures":I
    :goto_1b
    if-eqz v13, :cond_3f

    .line 2116
    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 2117
    if-nez v0, :cond_3f

    .line 2118
    goto/16 :goto_17

    .line 2121
    :cond_3f
    move-object/from16 v7, p5

    if-eqz v7, :cond_40

    .line 2122
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2125
    .end local v0    # "propertyName":Ljava/lang/String;
    .local v6, "propertyName":Ljava/lang/String;
    :cond_40
    move-object v6, v0

    invoke-interface {v11, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2126
    goto/16 :goto_17

    .line 2128
    :cond_41
    new-instance v23, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move-object v1, v6

    move-object v2, v10

    move-object v3, v8

    move-object v4, v12

    move-object/from16 v43, v6

    move/from16 v6, v20

    .end local v6    # "propertyName":Ljava/lang/String;
    .local v43, "propertyName":Ljava/lang/String;
    move/from16 v7, v18

    move-object/from16 v29, v8

    move/from16 v8, v22

    .end local v8    # "field":Ljava/lang/reflect/Field;
    .restart local v29    # "field":Ljava/lang/reflect/Field;
    move/from16 v32, v9

    move-object/from16 v9, v33

    .end local v9    # "c2":C
    .local v32, "c2":C
    move-object/from16 v35, v10

    move-object/from16 v10, v17

    .end local v10    # "method":Ljava/lang/reflect/Method;
    .local v35, "method":Ljava/lang/reflect/Method;
    move-object v14, v11

    move-object/from16 v11, v19

    .end local v11    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v14, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    .line 2130
    .local v0, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v1, v43

    invoke-interface {v14, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v15    # "methodName":Ljava/lang/String;
    .end local v17    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v18    # "serialzeFeatures":I
    .end local v19    # "label":Ljava/lang/String;
    .end local v20    # "ordinal":I
    .end local v21    # "ignore":Z
    .end local v22    # "parserFeatures":I
    .end local v24    # "fieldAnnotationAndNameExists":Ljava/lang/Boolean;
    .end local v29    # "field":Ljava/lang/reflect/Field;
    .end local v32    # "c2":C
    .end local v33    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v35    # "method":Ljava/lang/reflect/Method;
    .end local v43    # "propertyName":Ljava/lang/String;
    goto :goto_1c

    .line 1829
    .end local v14    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v11    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :cond_42
    move-object v14, v11

    .end local v30    # "methods":[Ljava/lang/reflect/Method;
    .local v10, "methods":[Ljava/lang/reflect/Method;
    :goto_1c
    move-object/from16 v3, v26

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    .end local v10    # "methods":[Ljava/lang/reflect/Method;
    .end local v11    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v26    # "paramNameMapping":[S
    .end local v31    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v34    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v36    # "paramNames":[Ljava/lang/String;
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;
    .local v1, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .local v2, "paramNames":[Ljava/lang/String;
    .local v3, "paramNameMapping":[S
    .restart local v14    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v30    # "methods":[Ljava/lang/reflect/Method;
    :goto_1d
    add-int/lit8 v7, v27, 0x1

    move-object v11, v14

    move/from16 v9, v28

    move-object/from16 v10, v30

    move-object/from16 v14, p3

    move-object/from16 v15, p5

    goto/16 :goto_0

    .line 2133
    .end local v14    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v30    # "methods":[Ljava/lang/reflect/Method;
    .restart local v10    # "methods":[Ljava/lang/reflect/Method;
    .restart local v11    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :cond_43
    move-object/from16 v21, v1

    move-object/from16 v26, v3

    move-object/from16 v30, v10

    move-object v14, v11

    .end local v1    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v3    # "paramNameMapping":[S
    .end local v10    # "methods":[Ljava/lang/reflect/Method;
    .end local v11    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v14    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v21, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v26    # "paramNameMapping":[S
    .restart local v30    # "methods":[Ljava/lang/reflect/Method;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 2134
    .local v1, "fields":[Ljava/lang/reflect/Field;
    move-object/from16 v3, p5

    invoke-static {v12, v13, v3, v14, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->computeFields(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/Map;[Ljava/lang/reflect/Field;)V

    .line 2135
    move/from16 v4, p4

    invoke-static {v12, v4, v14}, Lcom/alibaba/fastjson/util/TypeUtils;->getFieldInfos(Ljava/lang/Class;ZLjava/util/Map;)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method public static computeGetters(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .line 1804
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;
    .locals 8
    .param p2, "sorted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .line 1808
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1809
    .local v0, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v7, v1

    .line 1810
    .local v7, "fieldCacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    invoke-static {p0, v7}, Lcom/alibaba/fastjson/parser/ParserConfig;->parserAllFieldToCache(Ljava/lang/Class;Ljava/util/Map;)V

    .line 1811
    sget-object v6, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v4, v7

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static computeGettersWithFieldBase(Ljava/lang/Class;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;
    .locals 3
    .param p2, "sorted"    # Z
    .param p3, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .line 1795
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1796
    .local v0, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move-object v1, p0

    .local v1, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 1797
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1798
    .local v2, "fields":[Ljava/lang/reflect/Field;
    invoke-static {v1, p1, p3, v0, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->computeFields(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/Map;[Ljava/lang/reflect/Field;)V

    .line 1796
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 1800
    .end local v1    # "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-static {p0, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getFieldInfos(Ljava/lang/Class;ZLjava/util/Map;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static createActualTypeMap([Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Ljava/util/Map;
    .locals 5
    .param p0, "typeParameters"    # [Ljava/lang/reflect/TypeVariable;
    .param p1, "actualTypeArguments"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/TypeVariable;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 2504
    array-length v0, p0

    .line 2505
    .local v0, "length":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 2506
    .local v1, "actualTypeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/Type;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2507
    aget-object v3, p0, v2

    aget-object v4, p1, v2

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2506
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2509
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static createCollection(Ljava/lang/reflect/Type;)Ljava/util/Collection;
    .locals 5
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 2607
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 2609
    .local v0, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/AbstractCollection;

    if-eq v0, v1, :cond_9

    const-class v1, Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 2612
    :cond_0
    const-class v1, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2613
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto/16 :goto_3

    .line 2614
    :cond_1
    const-class v1, Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2615
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    goto/16 :goto_3

    .line 2616
    :cond_2
    const-class v1, Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2617
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    goto/16 :goto_3

    .line 2618
    :cond_3
    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2619
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    .line 2620
    :cond_4
    const-class v1, Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2622
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_5

    .line 2623
    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .local v1, "itemType":Ljava/lang/reflect/Type;
    goto :goto_0

    .line 2625
    .end local v1    # "itemType":Ljava/lang/reflect/Type;
    :cond_5
    const-class v1, Ljava/lang/Object;

    .line 2627
    .restart local v1    # "itemType":Ljava/lang/reflect/Type;
    :goto_0
    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 2628
    .local v1, "list":Ljava/util/Collection;
    goto :goto_3

    .end local v1    # "list":Ljava/util/Collection;
    :cond_6
    const-class v1, Ljava/util/Queue;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_8

    const-class v1, Ljava/util/Deque;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    .line 2632
    :cond_7
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2635
    .restart local v1    # "list":Ljava/util/Collection;
    goto :goto_3

    .line 2633
    .end local v1    # "list":Ljava/util/Collection;
    :catch_0
    move-exception v1

    .line 2634
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create instance error, class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2629
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    goto :goto_3

    .line 2611
    :cond_9
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2634
    .local v1, "list":Ljava/util/Collection;
    :goto_3
    nop

    .line 2637
    return-object v1
.end method

.method public static decapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 2429
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2432
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2433
    return-object p0

    .line 2435
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 2436
    .local v0, "chars":[C
    aget-char v1, v0, v2

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    aput-char v1, v0, v2

    .line 2437
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 2430
    .end local v0    # "chars":[C
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static fnv1a_64(Ljava/lang/String;)J
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .line 2898
    const-wide v0, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 2899
    .local v0, "hashCode":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2900
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2901
    .local v3, "ch":C
    int-to-long v4, v3

    xor-long/2addr v0, v4

    .line 2902
    const-wide v4, 0x100000001b3L

    mul-long/2addr v0, v4

    .line 2899
    .end local v3    # "ch":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2904
    .end local v2    # "i":I
    :cond_0
    return-wide v0
.end method

.method public static fnv1a_64_lower(Ljava/lang/String;)J
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .line 2882
    const-wide v0, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 2883
    .local v0, "hashCode":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 2884
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2885
    .local v3, "ch":C
    const/16 v4, 0x5f

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_0

    .line 2886
    goto :goto_1

    .line 2888
    :cond_0
    const/16 v4, 0x41

    if-lt v3, v4, :cond_1

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_1

    .line 2889
    add-int/lit8 v4, v3, 0x20

    int-to-char v3, v4

    .line 2891
    :cond_1
    int-to-long v4, v3

    xor-long/2addr v0, v4

    .line 2892
    const-wide v4, 0x100000001b3L

    mul-long/2addr v0, v4

    .line 2883
    .end local v3    # "ch":C
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2894
    .end local v2    # "i":I
    :cond_3
    return-wide v0
.end method

.method private static getActualType(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;
    .locals 2
    .param p0, "typeParameter"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 2522
    .local p1, "actualTypeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/Type;>;"
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    .line 2523
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0

    .line 2524
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 2525
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->makeParameterizedType(Ljava/lang/Class;[Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    return-object v0

    .line 2526
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_2

    .line 2527
    new-instance v0, Lcom/alibaba/fastjson/util/GenericArrayTypeImpl;

    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getActualType(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/util/GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0

    .line 2529
    :cond_2
    return-object p0
.end method

.method public static getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 3043
    .local p0, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 3045
    .local v0, "targetAnnotation":Ljava/lang/annotation/Annotation;, "TA;"
    const/4 v1, 0x0

    .line 3046
    .local v1, "mixInClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 3047
    .local v2, "type":Ljava/lang/reflect/Type;
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 3048
    move-object v1, v2

    check-cast v1, Ljava/lang/Class;

    .line 3051
    :cond_0
    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 3052
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    .line 3053
    .local v4, "mixInAnnotation":Ljava/lang/annotation/Annotation;, "TA;"
    if-nez v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_2

    .line 3054
    invoke-virtual {v1}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v5

    array-length v6, v5

    move-object v7, v4

    move v4, v3

    .end local v4    # "mixInAnnotation":Ljava/lang/annotation/Annotation;, "TA;"
    .local v7, "mixInAnnotation":Ljava/lang/annotation/Annotation;, "TA;"
    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v8, v5, v4

    .line 3055
    .local v8, "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v8}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    .line 3056
    if-eqz v7, :cond_1

    .line 3057
    goto :goto_1

    .line 3054
    .end local v8    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3061
    .end local v7    # "mixInAnnotation":Ljava/lang/annotation/Annotation;, "TA;"
    .restart local v4    # "mixInAnnotation":Ljava/lang/annotation/Annotation;, "TA;"
    :cond_2
    move-object v7, v4

    .end local v4    # "mixInAnnotation":Ljava/lang/annotation/Annotation;, "TA;"
    .restart local v7    # "mixInAnnotation":Ljava/lang/annotation/Annotation;, "TA;"
    :cond_3
    :goto_1
    if-eqz v7, :cond_4

    .line 3062
    return-object v7

    .line 3066
    .end local v7    # "mixInAnnotation":Ljava/lang/annotation/Annotation;, "TA;"
    :cond_4
    if-nez v0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_6

    .line 3067
    invoke-virtual {p0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    array-length v5, v4

    :goto_2
    if-ge v3, v5, :cond_6

    aget-object v6, v4, v3

    .line 3068
    .local v6, "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v6}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 3069
    if-eqz v0, :cond_5

    .line 3070
    goto :goto_3

    .line 3067
    .end local v6    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3074
    :cond_6
    :goto_3
    return-object v0
.end method

.method public static getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 8
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 3078
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 3080
    .local v0, "targetAnnotation":Ljava/lang/annotation/Annotation;, "TA;"
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 3082
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 3083
    .local v2, "mixInClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 3084
    .local v3, "type":Ljava/lang/reflect/Type;
    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_0

    .line 3085
    move-object v2, v3

    check-cast v2, Ljava/lang/Class;

    .line 3088
    :cond_0
    if-eqz v2, :cond_3

    .line 3089
    const/4 v4, 0x0

    .line 3090
    .local v4, "mixInField":Ljava/lang/reflect/Field;
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 3092
    .local v5, "fieldName":Ljava/lang/String;
    move-object v6, v2

    .local v6, "currClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v6, :cond_1

    const-class v7, Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    .line 3095
    :try_start_0
    invoke-virtual {v6, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v7

    .line 3096
    goto :goto_1

    .line 3097
    :catch_0
    move-exception v7

    .line 3093
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    goto :goto_0

    .line 3101
    .end local v6    # "currClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_1
    if-nez v4, :cond_2

    .line 3102
    return-object v0

    .line 3104
    :cond_2
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    .line 3105
    .local v6, "mixInAnnotation":Ljava/lang/annotation/Annotation;, "TA;"
    if-eqz v6, :cond_3

    .line 3106
    return-object v6

    .line 3109
    .end local v4    # "mixInField":Ljava/lang/reflect/Field;
    .end local v5    # "fieldName":Ljava/lang/String;
    .end local v6    # "mixInAnnotation":Ljava/lang/annotation/Annotation;, "TA;"
    :cond_3
    return-object v0
.end method

.method public static getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 9
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 3113
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 3115
    .local v0, "targetAnnotation":Ljava/lang/annotation/Annotation;, "TA;"
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 3117
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 3118
    .local v2, "mixInClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 3119
    .local v3, "type":Ljava/lang/reflect/Type;
    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_0

    .line 3120
    move-object v2, v3

    check-cast v2, Ljava/lang/Class;

    .line 3123
    :cond_0
    if-eqz v2, :cond_3

    .line 3124
    const/4 v4, 0x0

    .line 3125
    .local v4, "mixInMethod":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 3126
    .local v5, "methodName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 3128
    .local v6, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v7, v2

    .local v7, "currClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v7, :cond_1

    const-class v8, Ljava/lang/Object;

    if-eq v7, v8, :cond_1

    .line 3131
    :try_start_0
    invoke-virtual {v7, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v8

    .line 3132
    goto :goto_1

    .line 3133
    :catch_0
    move-exception v8

    .line 3129
    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    goto :goto_0

    .line 3137
    .end local v7    # "currClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_1
    if-nez v4, :cond_2

    .line 3138
    return-object v0

    .line 3140
    :cond_2
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    .line 3141
    .local v7, "mixInAnnotation":Ljava/lang/annotation/Annotation;, "TA;"
    if-eqz v7, :cond_3

    .line 3142
    return-object v7

    .line 3145
    .end local v4    # "mixInMethod":Ljava/lang/reflect/Method;
    .end local v5    # "methodName":Ljava/lang/String;
    .end local v6    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v7    # "mixInAnnotation":Ljava/lang/annotation/Annotation;, "TA;"
    :cond_3
    return-object v0
.end method

.method public static getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 4
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 2361
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 2362
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 2365
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 2366
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 2369
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2370
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v1

    .line 2371
    .local v0, "boundType":Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 2372
    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    return-object v1

    .line 2374
    :cond_2
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 2377
    .end local v0    # "boundType":Ljava/lang/reflect/Type;
    :cond_3
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_4

    .line 2378
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2379
    .local v0, "upperBounds":[Ljava/lang/reflect/Type;
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 2380
    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 2384
    .end local v0    # "upperBounds":[Ljava/lang/reflect/Type;
    :cond_4
    const-class v0, Ljava/lang/Object;

    return-object v0
.end method

.method public static getClassFromMapping(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1643
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static getCollectionItemClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 6
    .param p0, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 2542
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_3

    .line 2544
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 2545
    .local v0, "actualTypeArgument":Ljava/lang/reflect/Type;
    instance-of v2, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_0

    .line 2546
    move-object v2, v0

    check-cast v2, Ljava/lang/reflect/WildcardType;

    .line 2547
    .local v2, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v2}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 2548
    .local v3, "upperBounds":[Ljava/lang/reflect/Type;
    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 2549
    aget-object v0, v3, v1

    .line 2552
    .end local v2    # "wildcardType":Ljava/lang/reflect/WildcardType;
    .end local v3    # "upperBounds":[Ljava/lang/reflect/Type;
    :cond_0
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 2553
    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    .line 2554
    .local v1, "itemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2558
    nop

    .line 2560
    return-object v1

    .line 2555
    :cond_1
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "can not create ASMParser"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2558
    .end local v1    # "itemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "can not create ASMParser"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2562
    .end local v0    # "actualTypeArgument":Ljava/lang/reflect/Type;
    :cond_3
    const-class v0, Ljava/lang/Object;

    return-object v0
.end method

.method private static getCollectionItemType(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 2465
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/lang/Object;

    goto :goto_0

    .line 2467
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionSuperType(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2465
    :goto_0
    return-object v0
.end method

.method private static getCollectionItemType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;
    .locals 8
    .param p0, "parameterizedType"    # Ljava/lang/reflect/ParameterizedType;

    .line 2471
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2472
    .local v0, "rawType":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 2473
    .local v1, "actualTypeArguments":[Ljava/lang/reflect/Type;
    const-class v2, Ljava/util/Collection;

    if-ne v0, v2, :cond_0

    .line 2474
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getWildcardTypeUpperBounds(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    return-object v2

    .line 2476
    :cond_0
    move-object v2, v0

    check-cast v2, Ljava/lang/Class;

    .line 2477
    .local v2, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->createActualTypeMap([Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v3

    .line 2478
    .local v3, "actualTypeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/Type;>;"
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionSuperType(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 2479
    .local v4, "superType":Ljava/lang/reflect/Type;
    instance-of v5, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_2

    .line 2480
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    .line 2481
    .local v5, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v6, v4

    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    .line 2482
    .local v6, "superClassTypeParameters":[Ljava/lang/reflect/Type;
    array-length v7, v6

    if-lez v7, :cond_1

    .line 2483
    invoke-static {v5, v6, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->makeParameterizedType(Ljava/lang/Class;[Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v7

    goto :goto_0

    .line 2484
    :cond_1
    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 2482
    :goto_0
    return-object v7

    .line 2486
    .end local v5    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "superClassTypeParameters":[Ljava/lang/reflect/Type;
    :cond_2
    move-object v5, v4

    check-cast v5, Ljava/lang/Class;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v5

    return-object v5
.end method

.method public static getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "fieldType"    # Ljava/lang/reflect/Type;

    .line 2455
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 2456
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0

    .line 2458
    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 2459
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0

    .line 2461
    :cond_1
    const-class v0, Ljava/lang/Object;

    return-object v0
.end method

.method private static getCollectionSuperType(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 2490
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 2491
    .local v0, "assignable":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 2492
    .local v4, "type":Ljava/lang/reflect/Type;
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    .line 2493
    .local v5, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/util/Collection;

    if-ne v5, v6, :cond_0

    .line 2494
    return-object v4

    .line 2496
    :cond_0
    const-class v6, Ljava/util/Collection;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2497
    move-object v0, v4

    .line 2491
    .end local v4    # "type":Ljava/lang/reflect/Type;
    .end local v5    # "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2500
    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "declaredFields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 2388
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    .line 2389
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2390
    .local v4, "itemName":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2391
    return-object v3

    .line 2395
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    .line 2396
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v6, v5

    .local v6, "c0":C
    const/16 v7, 0x61

    if-lt v5, v7, :cond_1

    const/16 v5, 0x7a

    if-gt v6, v5, :cond_1

    .line 2397
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v7, v5

    .local v7, "c1":C
    const/16 v8, 0x41

    if-lt v5, v8, :cond_1

    const/16 v5, 0x5a

    if-gt v7, v5, :cond_1

    .line 2398
    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2399
    return-object v3

    .line 2388
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "itemName":Ljava/lang/String;
    .end local v6    # "c0":C
    .end local v7    # "c1":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2402
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 2403
    .local v0, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_3

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_3

    .line 2404
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v1

    return-object v1

    .line 2406
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getFieldInfos(Ljava/lang/Class;ZLjava/util/Map;)Ljava/util/List;
    .locals 9
    .param p1, "sorted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .line 2139
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2140
    .local v0, "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    const/4 v1, 0x0

    .line 2141
    .local v1, "orders":[Ljava/lang/String;
    const-class v2, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {p0, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 2142
    .local v2, "annotation":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v2, :cond_0

    .line 2143
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v1

    .line 2145
    :cond_0
    if-eqz v1, :cond_5

    array-length v3, v1

    if-lez v3, :cond_5

    .line 2146
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 2147
    .local v3, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 2148
    .local v5, "field":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v6, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2149
    .end local v5    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    goto :goto_0

    .line 2150
    :cond_1
    const/4 v4, 0x0

    .line 2151
    .local v4, "i":I
    array-length v5, v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v1, v6

    .line 2152
    .local v7, "item":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 2153
    .local v8, "field":Lcom/alibaba/fastjson/util/FieldInfo;
    if-eqz v8, :cond_2

    .line 2154
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2155
    invoke-virtual {v3, v7}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2151
    .end local v7    # "item":Ljava/lang/String;
    .end local v8    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2158
    :cond_3
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 2159
    .local v6, "field":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2160
    .end local v6    # "field":Lcom/alibaba/fastjson/util/FieldInfo;
    goto :goto_2

    .line 2161
    .end local v3    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v4    # "i":I
    :cond_4
    goto :goto_4

    .line 2162
    :cond_5
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 2163
    .local v4, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2164
    .end local v4    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    goto :goto_3

    .line 2165
    :cond_6
    if-eqz p1, :cond_7

    .line 2166
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2169
    :cond_7
    :goto_4
    return-object v0
.end method

.method public static getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 2332
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 2333
    return-object p0

    .line 2335
    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 2336
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0

    .line 2338
    :cond_1
    return-object p0
.end method

.method public static getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 12
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 2942
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    if-nez v0, :cond_0

    .line 2944
    :try_start_0
    const-string v0, "kotlin.reflect.jvm.internal.KClassImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2945
    .local v0, "class_kotlin_kclass":Ljava/lang/Class;
    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Class;

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2948
    .end local v0    # "class_kotlin_kclass":Ljava/lang/Class;
    goto :goto_0

    .line 2946
    :catch_0
    move-exception v0

    .line 2947
    .local v0, "e":Ljava/lang/Throwable;
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    .line 2950
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 2951
    return-object v3

    .line 2954
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    if-nez v0, :cond_2

    .line 2956
    :try_start_1
    const-string v0, "kotlin.reflect.jvm.internal.KClassImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2957
    .local v0, "class_kotlin_kclass":Ljava/lang/Class;
    const-string v4, "getConstructors"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2960
    .end local v0    # "class_kotlin_kclass":Ljava/lang/Class;
    goto :goto_1

    .line 2958
    :catch_1
    move-exception v0

    .line 2959
    .local v0, "e":Ljava/lang/Throwable;
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    .line 2963
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    if-nez v0, :cond_3

    .line 2965
    :try_start_2
    const-string v0, "kotlin.reflect.KFunction"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2966
    .local v0, "class_kotlin_kfunction":Ljava/lang/Class;
    const-string v4, "getParameters"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 2969
    .end local v0    # "class_kotlin_kfunction":Ljava/lang/Class;
    goto :goto_2

    .line 2967
    :catch_2
    move-exception v0

    .line 2968
    .local v0, "e":Ljava/lang/Throwable;
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    .line 2972
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_2
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kparameter_getName:Ljava/lang/reflect/Method;

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    if-nez v0, :cond_4

    .line 2974
    :try_start_3
    const-string v0, "kotlin.reflect.KParameter"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2975
    .local v0, "class_kotlinn_kparameter":Ljava/lang/Class;
    const-string v4, "getName"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kparameter_getName:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 2978
    .end local v0    # "class_kotlinn_kparameter":Ljava/lang/Class;
    goto :goto_3

    .line 2976
    :catch_3
    move-exception v0

    .line 2977
    .local v0, "e":Ljava/lang/Throwable;
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    .line 2981
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    :goto_3
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_error:Z

    if-eqz v0, :cond_5

    .line 2982
    return-object v3

    .line 2986
    :cond_5
    const/4 v0, 0x0

    .line 2987
    .local v0, "constructor":Ljava/lang/Object;
    :try_start_4
    sget-object v4, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p0, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2988
    .local v4, "kclassImpl":Ljava/lang/Object;
    sget-object v5, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 2989
    .local v5, "it":Ljava/lang/Iterable;
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2990
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 2991
    .local v7, "item":Ljava/lang/Object;
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

    new-array v9, v2, [Ljava/lang/Object;

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2992
    .local v8, "parameters":Ljava/util/List;
    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_6

    .line 2993
    goto :goto_5

    .line 2995
    :cond_6
    move-object v0, v7

    .line 2989
    .end local v7    # "item":Ljava/lang/Object;
    .end local v8    # "parameters":Ljava/util/List;
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    goto :goto_4

    .line 2998
    .end local v6    # "iterator":Ljava/util/Iterator;
    :cond_7
    if-nez v0, :cond_8

    .line 2999
    return-object v3

    .line 3002
    :cond_8
    sget-object v6, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 3003
    .local v6, "parameters":Ljava/util/List;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    .line 3004
    .local v7, "names":[Ljava/lang/String;
    move v8, v2

    .local v8, "i":I
    :goto_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_9

    .line 3005
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 3006
    .local v9, "param":Ljava/lang/Object;
    sget-object v10, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kparameter_getName:Ljava/lang/reflect/Method;

    new-array v11, v2, [Ljava/lang/Object;

    invoke-virtual {v10, v9, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v7, v8
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 3004
    .end local v9    # "param":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 3008
    .end local v8    # "i":I
    :cond_9
    return-object v7

    .line 3009
    .end local v0    # "constructor":Ljava/lang/Object;
    .end local v4    # "kclassImpl":Ljava/lang/Object;
    .end local v5    # "it":Ljava/lang/Iterable;
    .end local v6    # "parameters":Ljava/util/List;
    .end local v7    # "names":[Ljava/lang/String;
    :catch_4
    move-exception v0

    .line 3010
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3011
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_error:Z

    .line 3013
    .end local v0    # "e":Ljava/lang/Throwable;
    return-object v3
.end method

.method public static getKotlinConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 1
    .param p0, "constructors"    # [Ljava/lang/reflect/Constructor;

    .line 2919
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKotlinConstructor([Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public static getKotlinConstructor([Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Ljava/lang/reflect/Constructor;
    .locals 7
    .param p0, "constructors"    # [Ljava/lang/reflect/Constructor;
    .param p1, "paramNames"    # [Ljava/lang/String;

    .line 2923
    const/4 v0, 0x0

    .line 2924
    .local v0, "creatorConstructor":Ljava/lang/reflect/Constructor;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 2925
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 2926
    .local v4, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    array-length v5, v4

    array-length v6, p1

    if-eq v5, v6, :cond_0

    .line 2927
    goto :goto_1

    .line 2930
    :cond_0
    array-length v5, v4

    if-lez v5, :cond_1

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "kotlin.jvm.internal.DefaultConstructorMarker"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2931
    goto :goto_1

    .line 2933
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    array-length v6, v4

    if-lt v5, v6, :cond_2

    .line 2934
    goto :goto_1

    .line 2936
    :cond_2
    move-object v0, v3

    .line 2924
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2938
    :cond_3
    return-object v0
.end method

.method public static getParameterAnnotations(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;
    .locals 13
    .param p0, "constructor"    # Ljava/lang/reflect/Constructor;

    .line 3185
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 3187
    .local v0, "targetAnnotations":[[Ljava/lang/annotation/Annotation;
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 3189
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 3190
    .local v2, "mixInClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 3191
    .local v3, "type":Ljava/lang/reflect/Type;
    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_0

    .line 3192
    move-object v2, v3

    check-cast v2, Ljava/lang/Class;

    .line 3195
    :cond_0
    if-eqz v2, :cond_6

    .line 3196
    const/4 v4, 0x0

    .line 3197
    .local v4, "mixInConstructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 3199
    .local v5, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 3200
    .local v6, "enclosingClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v7

    .local v7, "enclosingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v7, :cond_1

    .line 3201
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3200
    invoke-virtual {v7}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v7

    goto :goto_0

    .line 3203
    .end local v7    # "enclosingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 3205
    .local v7, "level":I
    move v8, v7

    move-object v7, v2

    .local v7, "currClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v8, "level":I
    :goto_1
    if-eqz v7, :cond_4

    const-class v9, Ljava/lang/Object;

    if-eq v7, v9, :cond_4

    .line 3208
    if-eqz v8, :cond_3

    .line 3209
    :try_start_0
    array-length v9, v5

    add-int/2addr v9, v8

    new-array v9, v9, [Ljava/lang/Class;

    .line 3210
    .local v9, "outerClassAndParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v10, 0x0

    array-length v11, v5

    invoke-static {v5, v10, v9, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3211
    move v10, v8

    .local v10, "i":I
    :goto_2
    if-lez v10, :cond_2

    .line 3212
    add-int/lit8 v11, v10, -0x1

    add-int/lit8 v12, v10, -0x1

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Class;

    aput-object v12, v9, v11

    .line 3211
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 3214
    .end local v10    # "i":I
    :cond_2
    invoke-virtual {v2, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    move-object v4, v10

    .line 3215
    .end local v9    # "outerClassAndParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_3

    .line 3219
    :catch_0
    move-exception v9

    goto :goto_4

    .line 3216
    :cond_3
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v9

    .line 3218
    :goto_3
    goto :goto_5

    .line 3219
    :goto_4
    nop

    .line 3220
    .local v9, "e":Ljava/lang/NoSuchMethodException;
    add-int/lit8 v8, v8, -0x1

    .line 3206
    .end local v9    # "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    goto :goto_1

    .line 3223
    .end local v7    # "currClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    :goto_5
    if-nez v4, :cond_5

    .line 3224
    return-object v0

    .line 3226
    :cond_5
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v7

    .line 3227
    .local v7, "mixInAnnotations":[[Ljava/lang/annotation/Annotation;
    if-eqz v7, :cond_6

    .line 3228
    return-object v7

    .line 3231
    .end local v4    # "mixInConstructor":Ljava/lang/reflect/Constructor;
    .end local v5    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v6    # "enclosingClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v7    # "mixInAnnotations":[[Ljava/lang/annotation/Annotation;
    .end local v8    # "level":I
    :cond_6
    return-object v0
.end method

.method public static getParameterAnnotations(Ljava/lang/reflect/Method;)[[Ljava/lang/annotation/Annotation;
    .locals 9
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 3149
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 3151
    .local v0, "targetAnnotations":[[Ljava/lang/annotation/Annotation;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 3153
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 3154
    .local v2, "mixInClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 3155
    .local v3, "type":Ljava/lang/reflect/Type;
    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_0

    .line 3156
    move-object v2, v3

    check-cast v2, Ljava/lang/Class;

    .line 3159
    :cond_0
    if-eqz v2, :cond_3

    .line 3160
    const/4 v4, 0x0

    .line 3161
    .local v4, "mixInMethod":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 3162
    .local v5, "methodName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 3164
    .local v6, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v7, v2

    .local v7, "currClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v7, :cond_1

    const-class v8, Ljava/lang/Object;

    if-eq v7, v8, :cond_1

    .line 3167
    :try_start_0
    invoke-virtual {v7, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v8

    .line 3168
    goto :goto_1

    .line 3169
    :catch_0
    move-exception v8

    .line 3170
    .local v8, "e":Ljava/lang/NoSuchMethodException;
    nop

    .line 3165
    .end local v8    # "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    goto :goto_0

    .line 3173
    .end local v7    # "currClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_1
    if-nez v4, :cond_2

    .line 3174
    return-object v0

    .line 3176
    :cond_2
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v7

    .line 3177
    .local v7, "mixInAnnotations":[[Ljava/lang/annotation/Annotation;
    if-eqz v7, :cond_3

    .line 3178
    return-object v7

    .line 3181
    .end local v4    # "mixInMethod":Ljava/lang/reflect/Method;
    .end local v5    # "methodName":Ljava/lang/String;
    .end local v6    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v7    # "mixInAnnotations":[[Ljava/lang/annotation/Annotation;
    :cond_3
    return-object v0
.end method

.method public static getParserFeatures(Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 2421
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 2422
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONType;
    if-nez v0, :cond_0

    .line 2423
    const/4 v1, 0x0

    return v1

    .line 2425
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v1

    return v1
.end method

.method private static getPropertyNameByCompatibleFieldName(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "fromIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2219
    .local p0, "fieldCacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithFieldName:Z

    if-eqz v0, :cond_1

    .line 2220
    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2221
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2222
    .local v0, "tempPropertyName":Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1

    .line 2225
    .end local v0    # "tempPropertyName":Ljava/lang/String;
    :cond_1
    return-object p2
.end method

.method public static getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 4
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 2641
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 2642
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 2643
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 2644
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 2645
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3

    .line 2646
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 2647
    .local v0, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 2648
    .local v1, "upperBounds":[Ljava/lang/reflect/Type;
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2649
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    return-object v2

    .line 2651
    :cond_2
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "TODO"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2654
    .end local v0    # "wildcardType":Ljava/lang/reflect/WildcardType;
    .end local v1    # "upperBounds":[Ljava/lang/reflect/Type;
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "TODO"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSerializeFeatures(Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 2413
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 2414
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONType;
    if-nez v0, :cond_0

    .line 2415
    const/4 v1, 0x0

    return v1

    .line 2417
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v1

    return v1
.end method

.method public static getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;
    .locals 15
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/alibaba/fastjson/annotation/JSONField;"
        }
    .end annotation

    .line 2229
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 2230
    .local v0, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_7

    .line 2231
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 2232
    .local v1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_7

    aget-object v5, v0, v4

    .line 2233
    .local v5, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_6

    aget-object v9, v6, v8

    .line 2234
    .local v9, "interfaceMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 2235
    .local v10, "interfaceTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v11, v10

    array-length v12, v1

    if-eq v11, v12, :cond_0

    .line 2236
    goto :goto_4

    .line 2238
    :cond_0
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 2239
    goto :goto_4

    .line 2241
    :cond_1
    const/4 v11, 0x1

    .line 2242
    .local v11, "match":Z
    move v12, v2

    .local v12, "i":I
    :goto_2
    array-length v13, v1

    if-ge v12, v13, :cond_3

    .line 2243
    aget-object v13, v10, v12

    aget-object v14, v1, v12

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 2244
    const/4 v11, 0x0

    .line 2245
    goto :goto_3

    .line 2242
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 2248
    .end local v12    # "i":I
    :cond_3
    :goto_3
    if-nez v11, :cond_4

    .line 2249
    goto :goto_4

    .line 2251
    :cond_4
    const-class v12, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v9, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    check-cast v12, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 2252
    .local v12, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v12, :cond_5

    .line 2253
    return-object v12

    .line 2233
    .end local v9    # "interfaceMethod":Ljava/lang/reflect/Method;
    .end local v10    # "interfaceTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v11    # "match":Z
    .end local v12    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_5
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2232
    .end local v5    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2258
    .end local v1    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 2259
    .local v1, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    if-nez v1, :cond_8

    .line 2260
    return-object v3

    .line 2262
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2263
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 2264
    .local v4, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v6, v5

    move v7, v2

    :goto_5
    if-ge v7, v6, :cond_f

    aget-object v8, v5, v7

    .line 2265
    .local v8, "interfaceMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 2266
    .local v9, "interfaceTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v10, v9

    array-length v11, v4

    if-eq v10, v11, :cond_9

    .line 2267
    goto :goto_8

    .line 2269
    :cond_9
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 2270
    goto :goto_8

    .line 2272
    :cond_a
    const/4 v10, 0x1

    .line 2273
    .local v10, "match":Z
    move v11, v2

    .local v11, "i":I
    :goto_6
    array-length v12, v4

    if-ge v11, v12, :cond_c

    .line 2274
    aget-object v12, v9, v11

    aget-object v13, v4, v11

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 2275
    const/4 v10, 0x0

    .line 2276
    goto :goto_7

    .line 2273
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 2279
    .end local v11    # "i":I
    :cond_c
    :goto_7
    if-nez v10, :cond_d

    .line 2280
    goto :goto_8

    .line 2282
    :cond_d
    const-class v11, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v8, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 2283
    .local v11, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v11, :cond_e

    .line 2284
    return-object v11

    .line 2264
    .end local v8    # "interfaceMethod":Ljava/lang/reflect/Method;
    .end local v9    # "interfaceTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v10    # "match":Z
    .end local v11    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_e
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 2288
    .end local v4    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_f
    return-object v3
.end method

.method private static getWildcardTypeUpperBounds(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 3
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 2533
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_1

    .line 2534
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 2535
    .local v0, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 2536
    .local v1, "upperBounds":[Ljava/lang/reflect/Type;
    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v2, v1, v2

    goto :goto_0

    :cond_0
    const-class v2, Ljava/lang/Object;

    :goto_0
    return-object v2

    .line 2538
    .end local v0    # "wildcardType":Ljava/lang/reflect/WildcardType;
    .end local v1    # "upperBounds":[Ljava/lang/reflect/Type;
    :cond_1
    return-object p0
.end method

.method public static getXmlAccessorType(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 184
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessorType:Ljava/lang/Class;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    if-nez v0, :cond_0

    .line 187
    :try_start_0
    const-string v0, "javax.xml.bind.annotation.XmlAccessorType"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessorType:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "ex":Ljava/lang/Throwable;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    .line 193
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessorType:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 194
    const/4 v0, 0x0

    return-object v0

    .line 197
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessorType:Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public static intValue(Ljava/math/BigDecimal;)I
    .locals 2
    .param p0, "decimal"    # Ljava/math/BigDecimal;

    .line 878
    if-nez p0, :cond_0

    .line 879
    const/4 v0, 0x0

    return v0

    .line 882
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    .line 883
    .local v0, "scale":I
    const/16 v1, -0x64

    if-lt v0, v1, :cond_1

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    .line 884
    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    return v1

    .line 887
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValueExact()I

    move-result v1

    return v1
.end method

.method public static isAnnotationPresentManyToMany(Ljava/lang/reflect/Method;)Z
    .locals 3
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 2715
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2716
    return v0

    .line 2719
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany:Ljava/lang/Class;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany_error:Z

    if-nez v1, :cond_1

    .line 2721
    :try_start_0
    const-string v1, "javax.persistence.ManyToMany"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2725
    goto :goto_0

    .line 2722
    :catch_0
    move-exception v1

    .line 2724
    .local v1, "e":Ljava/lang/Throwable;
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany_error:Z

    .line 2727
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany:Ljava/lang/Class;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany:Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v0, v2

    nop

    :cond_3
    return v0
.end method

.method public static isAnnotationPresentOneToMany(Ljava/lang/reflect/Method;)Z
    .locals 3
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 2698
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2699
    return v0

    .line 2702
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany_error:Z

    if-nez v1, :cond_1

    .line 2704
    :try_start_0
    const-string v1, "javax.persistence.OneToMany"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2708
    goto :goto_0

    .line 2705
    :catch_0
    move-exception v1

    .line 2707
    .local v1, "e":Ljava/lang/Throwable;
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany_error:Z

    .line 2710
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    nop

    :cond_2
    return v0
.end method

.method public static isClob(Ljava/lang/Class;)Z
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 219
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_Clob:Ljava/lang/Class;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_Clob_error:Z

    if-nez v0, :cond_0

    .line 222
    :try_start_0
    const-string v0, "java.sql.Clob"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_Clob:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "ex":Ljava/lang/Throwable;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_Clob_error:Z

    .line 228
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_Clob:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 229
    const/4 v0, 0x0

    return v0

    .line 232
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_Clob:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static isGenericParamType(Ljava/lang/reflect/Type;)Z
    .locals 4
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 2321
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2322
    return v1

    .line 2324
    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2325
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2326
    .local v0, "superType":Ljava/lang/reflect/Type;
    const-class v3, Ljava/lang/Object;

    if-eq v0, v3, :cond_1

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->isGenericParamType(Ljava/lang/reflect/Type;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 2328
    .end local v0    # "superType":Ljava/lang/reflect/Type;
    :cond_2
    return v2
.end method

.method public static isHibernateInitialized(Ljava/lang/Object;)Z
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;

    .line 2732
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2733
    return v0

    .line 2735
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized_error:Z

    if-nez v1, :cond_1

    .line 2737
    :try_start_0
    const-string v1, "org.hibernate.Hibernate"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2738
    .local v1, "class_Hibernate":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "isInitialized"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2742
    .end local v1    # "class_Hibernate":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 2739
    :catch_0
    move-exception v1

    .line 2741
    .local v1, "e":Ljava/lang/Throwable;
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized_error:Z

    .line 2744
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    .line 2746
    :try_start_1
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2747
    .local v0, "initialized":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 2748
    .end local v0    # "initialized":Ljava/lang/Boolean;
    :catch_1
    move-exception v0

    .line 2752
    :cond_2
    return v2
.end method

.method private static isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 6
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 2292
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 2293
    .local v0, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2297
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->includes()[Ljava/lang/String;

    move-result-object v2

    .line 2298
    .local v2, "fields":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x1

    if-lez v3, :cond_2

    .line 2299
    move v3, v1

    .local v3, "i":I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_1

    .line 2300
    aget-object v5, v2, v3

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2301
    return v1

    .line 2299
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2304
    .end local v3    # "i":I
    :cond_1
    return v4

    .line 2306
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->ignores()[Ljava/lang/String;

    move-result-object v2

    .line 2307
    move v3, v1

    .restart local v3    # "i":I
    :goto_1
    array-length v5, v2

    if-ge v3, v5, :cond_4

    .line 2308
    aget-object v5, v2, v3

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2309
    return v4

    .line 2307
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2314
    .end local v2    # "fields":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    if-eq v2, v3, :cond_5

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2315
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 2317
    :cond_5
    return v1
.end method

.method public static isJacksonCreator(Ljava/lang/reflect/Method;)Z
    .locals 3
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 3235
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 3236
    return v0

    .line 3239
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_JacksonCreator:Ljava/lang/Class;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_JacksonCreator_error:Z

    if-nez v1, :cond_1

    .line 3241
    :try_start_0
    const-string v1, "com.fasterxml.jackson.annotation.JsonCreator"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_JacksonCreator:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3245
    goto :goto_0

    .line 3242
    :catch_0
    move-exception v1

    .line 3244
    .local v1, "e":Ljava/lang/Throwable;
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_JacksonCreator_error:Z

    .line 3247
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_JacksonCreator:Ljava/lang/Class;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_JacksonCreator:Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    nop

    :cond_2
    return v0
.end method

.method public static isKotlin(Ljava/lang/Class;)Z
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 2908
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata_error:Z

    if-nez v0, :cond_0

    .line 2910
    :try_start_0
    const-string v0, "kotlin.Metadata"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2913
    goto :goto_0

    .line 2911
    :catch_0
    move-exception v0

    .line 2912
    .local v0, "e":Ljava/lang/Throwable;
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata_error:Z

    .line 2915
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private static isKotlinIgnore(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 9
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;

    .line 3017
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores_error:Z

    if-nez v0, :cond_0

    .line 3019
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3020
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;[Ljava/lang/String;>;"
    const-string v2, "kotlin.ranges.CharRange"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 3021
    .local v2, "charRangeClass":Ljava/lang/Class;
    const-string v3, "getEndInclusive"

    const-string v4, "isEmpty"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3022
    const-string v3, "kotlin.ranges.IntRange"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 3023
    .local v3, "intRangeClass":Ljava/lang/Class;
    const-string v4, "getEndInclusive"

    const-string v5, "isEmpty"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3024
    const-string v4, "kotlin.ranges.LongRange"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 3025
    .local v4, "longRangeClass":Ljava/lang/Class;
    const-string v5, "getEndInclusive"

    const-string v6, "isEmpty"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3026
    const-string v5, "kotlin.ranges.ClosedFloatRange"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 3027
    .local v5, "floatRangeClass":Ljava/lang/Class;
    const-string v6, "getEndInclusive"

    const-string v7, "isEmpty"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3028
    const-string v6, "kotlin.ranges.ClosedDoubleRange"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 3029
    .local v6, "doubleRangeClass":Ljava/lang/Class;
    const-string v7, "getEndInclusive"

    const-string v8, "isEmpty"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3030
    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3033
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;[Ljava/lang/String;>;"
    .end local v2    # "charRangeClass":Ljava/lang/Class;
    .end local v3    # "intRangeClass":Ljava/lang/Class;
    .end local v4    # "longRangeClass":Ljava/lang/Class;
    .end local v5    # "floatRangeClass":Ljava/lang/Class;
    .end local v6    # "doubleRangeClass":Ljava/lang/Class;
    goto :goto_0

    .line 3031
    :catch_0
    move-exception v0

    .line 3032
    .local v0, "error":Ljava/lang/Throwable;
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores_error:Z

    .line 3035
    .end local v0    # "error":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3036
    return v2

    .line 3038
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 3039
    .local v0, "ignores":[Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 784
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 785
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 786
    .local v2, "ch":C
    const/16 v3, 0x2b

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 790
    :cond_0
    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    const/16 v3, 0x39

    if-le v2, v3, :cond_3

    .line 791
    :cond_1
    return v0

    .line 787
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 788
    return v0

    .line 784
    .end local v2    # "ch":C
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 794
    .end local v1    # "i":I
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public static isPath(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1629
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass_error:Z

    if-nez v0, :cond_0

    .line 1631
    :try_start_0
    const-string v0, "java.nio.file.Path"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1634
    goto :goto_0

    .line 1632
    :catch_0
    move-exception v0

    .line 1633
    .local v0, "ex":Ljava/lang/Throwable;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass_error:Z

    .line 1636
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 1637
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 1639
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isProxy(Ljava/lang/Class;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 2659
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    .line 2660
    .local v4, "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2661
    .local v5, "interfaceName":Ljava/lang/String;
    const-string v6, "net.sf.cglib.proxy.Factory"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_4

    const-string v6, "org.springframework.cglib.proxy.Factory"

    .line 2662
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    .line 2665
    :cond_0
    const-string v6, "javassist.util.proxy.ProxyObject"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "org.apache.ibatis.javassist.util.proxy.ProxyObject"

    .line 2666
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 2670
    :cond_1
    const-string v6, "org.hibernate.proxy.HibernateProxy"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2671
    return v7

    .line 2659
    .end local v4    # "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "interfaceName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2668
    .restart local v4    # "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "interfaceName":Ljava/lang/String;
    :cond_3
    :goto_1
    return v7

    .line 2663
    :cond_4
    :goto_2
    return v7

    .line 2674
    .end local v4    # "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "interfaceName":Ljava/lang/String;
    :cond_5
    return v2
.end method

.method public static isTransient(Ljava/lang/reflect/Method;)Z
    .locals 3
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 2678
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2679
    return v0

    .line 2681
    :cond_0
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->transientClassInited:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2683
    :try_start_0
    const-string v1, "java.beans.Transient"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->transientClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2687
    :catchall_0
    move-exception v0

    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->transientClassInited:Z

    throw v0

    .line 2684
    :catch_0
    move-exception v1

    .line 2687
    :goto_0
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->transientClassInited:Z

    .line 2688
    nop

    .line 2690
    :cond_1
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->transientClass:Ljava/lang/Class;

    if-eqz v1, :cond_3

    .line 2691
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->transientClass:Ljava/lang/Class;

    invoke-static {p0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 2692
    .local v1, "annotation":Ljava/lang/annotation/Annotation;
    if-eqz v1, :cond_2

    move v0, v2

    nop

    :cond_2
    return v0

    .line 2694
    .end local v1    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_3
    return v0
.end method

.method public static isXmlField(Ljava/lang/Class;)Z
    .locals 6
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 129
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessorType:Ljava/lang/Class;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    if-nez v0, :cond_0

    .line 131
    :try_start_0
    const-string v0, "javax.xml.bind.annotation.XmlAccessorType"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessorType:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "ex":Ljava/lang/Throwable;
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    .line 137
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessorType:Ljava/lang/Class;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 138
    return v2

    .line 141
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessorType:Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 142
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    if-nez v0, :cond_2

    .line 143
    return v2

    .line 146
    :cond_2
    sget-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->method_XmlAccessorType_value:Ljava/lang/reflect/Method;

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    if-nez v3, :cond_3

    .line 148
    :try_start_1
    sget-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessorType:Ljava/lang/Class;

    const-string v4, "value"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->method_XmlAccessorType_value:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    goto :goto_1

    .line 149
    :catch_1
    move-exception v3

    .line 150
    .local v3, "ex":Ljava/lang/Throwable;
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    .line 154
    .end local v3    # "ex":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    sget-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->method_XmlAccessorType_value:Ljava/lang/reflect/Method;

    if-nez v3, :cond_4

    .line 155
    return v2

    .line 158
    :cond_4
    const/4 v3, 0x0

    .line 159
    .local v3, "value":Ljava/lang/Object;
    sget-boolean v4, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    if-nez v4, :cond_5

    .line 161
    :try_start_2
    sget-object v4, Lcom/alibaba/fastjson/util/TypeUtils;->method_XmlAccessorType_value:Ljava/lang/reflect/Method;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .line 164
    goto :goto_2

    .line 162
    :catch_2
    move-exception v4

    .line 163
    .local v4, "ex":Ljava/lang/Throwable;
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    .line 166
    .end local v4    # "ex":Ljava/lang/Throwable;
    :cond_5
    :goto_2
    if-nez v3, :cond_6

    .line 167
    return v2

    .line 170
    :cond_6
    sget-object v4, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessType:Ljava/lang/Class;

    if-nez v4, :cond_7

    sget-boolean v4, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    if-nez v4, :cond_7

    .line 172
    :try_start_3
    const-string v4, "javax.xml.bind.annotation.XmlAccessType"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessType:Ljava/lang/Class;

    .line 173
    sget-object v4, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessType:Ljava/lang/Class;

    const-string v5, "FIELD"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Lcom/alibaba/fastjson/util/TypeUtils;->field_XmlAccessType_FIELD:Ljava/lang/reflect/Field;

    .line 174
    sget-object v4, Lcom/alibaba/fastjson/util/TypeUtils;->field_XmlAccessType_FIELD:Ljava/lang/reflect/Field;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sput-object v4, Lcom/alibaba/fastjson/util/TypeUtils;->field_XmlAccessType_FIELD_VALUE:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 177
    goto :goto_3

    .line 175
    :catch_3
    move-exception v4

    .line 176
    .restart local v4    # "ex":Ljava/lang/Throwable;
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    .line 180
    .end local v4    # "ex":Ljava/lang/Throwable;
    :cond_7
    :goto_3
    sget-object v4, Lcom/alibaba/fastjson/util/TypeUtils;->field_XmlAccessType_FIELD_VALUE:Ljava/lang/Object;

    if-ne v3, v4, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_4
    return v1
.end method

.method public static loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1625
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1647
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .locals 5
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "cache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1651
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    goto/16 :goto_2

    .line 1655
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1656
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    .line 1657
    return-object v0

    .line 1660
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    .line 1661
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 1662
    .local v2, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 1665
    .end local v2    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const-string v1, "L"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1666
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1667
    .local v1, "newClassName":Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    return-object v2

    .line 1671
    .end local v1    # "newClassName":Ljava/lang/String;
    :cond_3
    if-eqz p1, :cond_5

    .line 1672
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .line 1673
    if-eqz p2, :cond_4

    .line 1674
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1676
    :cond_4
    return-object v0

    .line 1678
    :catch_0
    move-exception v1

    .line 1679
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 1681
    :cond_5
    nop

    .line 1683
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1684
    .local v1, "contextClassLoader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_7

    if-eq v1, p1, :cond_7

    .line 1685
    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v0, v2

    .line 1686
    if-eqz p2, :cond_6

    .line 1687
    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1689
    :cond_6
    return-object v0

    .line 1693
    .end local v1    # "contextClassLoader":Ljava/lang/ClassLoader;
    :cond_7
    goto :goto_1

    .line 1691
    :catch_1
    move-exception v1

    .line 1695
    :goto_1
    :try_start_2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .line 1696
    if-eqz p2, :cond_8

    .line 1697
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1699
    :cond_8
    return-object v0

    .line 1700
    :catch_2
    move-exception v1

    .line 1703
    return-object v0

    .line 1652
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static longExtractValue(Ljava/lang/Number;)J
    .locals 2
    .param p0, "number"    # Ljava/lang/Number;

    .line 576
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    .line 577
    move-object v0, p0

    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v0

    return-wide v0

    .line 580
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static longValue(Ljava/math/BigDecimal;)J
    .locals 3
    .param p0, "decimal"    # Ljava/math/BigDecimal;

    .line 891
    if-nez p0, :cond_0

    .line 892
    const-wide/16 v0, 0x0

    return-wide v0

    .line 895
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    .line 896
    .local v0, "scale":I
    const/16 v1, -0x64

    if-lt v0, v1, :cond_1

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    .line 897
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 900
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v1

    return-wide v1
.end method

.method private static makeParameterizedType(Ljava/lang/Class;[Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/ParameterizedType;
    .locals 4
    .param p1, "typeParameters"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    .line 2513
    .local p0, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "actualTypeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/Type;>;"
    array-length v0, p1

    .line 2514
    .local v0, "length":I
    new-array v1, v0, [Ljava/lang/reflect/Type;

    .line 2515
    .local v1, "actualTypeArguments":[Ljava/lang/reflect/Type;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2516
    aget-object v3, p1, v2

    invoke-static {v3, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getActualType(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2515
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2518
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, p0}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-object v2
.end method

.method static num(CC)I
    .locals 2
    .param p0, "c0"    # C
    .param p1, "c1"    # C

    .line 718
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    if-lt p1, v0, :cond_0

    if-gt p1, v1, :cond_0

    .line 723
    add-int/lit8 v0, p0, -0x30

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, p1, -0x30

    add-int/2addr v0, v1

    return v0

    .line 727
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method static num(CCCC)I
    .locals 2
    .param p0, "c0"    # C
    .param p1, "c1"    # C
    .param p2, "c2"    # C
    .param p3, "c3"    # C

    .line 731
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    if-lt p1, v0, :cond_0

    if-gt p1, v1, :cond_0

    if-lt p2, v0, :cond_0

    if-gt p2, v1, :cond_0

    if-lt p3, v0, :cond_0

    if-gt p3, v1, :cond_0

    .line 740
    add-int/lit8 v0, p0, -0x30

    mul-int/lit16 v0, v0, 0x3e8

    add-int/lit8 v1, p1, -0x30

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    add-int/lit8 v1, p3, -0x30

    add-int/2addr v0, v1

    return v0

    .line 746
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method static num(CCCCCCCCC)I
    .locals 3
    .param p0, "c0"    # C
    .param p1, "c1"    # C
    .param p2, "c2"    # C
    .param p3, "c3"    # C
    .param p4, "c4"    # C
    .param p5, "c5"    # C
    .param p6, "c6"    # C
    .param p7, "c7"    # C
    .param p8, "c8"    # C

    .line 750
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    if-lt p1, v0, :cond_0

    if-gt p1, v1, :cond_0

    if-lt p2, v0, :cond_0

    if-gt p2, v1, :cond_0

    if-lt p3, v0, :cond_0

    if-gt p3, v1, :cond_0

    if-lt p4, v0, :cond_0

    if-gt p4, v1, :cond_0

    if-lt p5, v0, :cond_0

    if-gt p5, v1, :cond_0

    if-lt p6, v0, :cond_0

    if-gt p6, v1, :cond_0

    if-lt p7, v0, :cond_0

    if-gt p7, v1, :cond_0

    if-lt p8, v0, :cond_0

    if-gt p8, v1, :cond_0

    .line 769
    add-int/lit8 v0, p0, -0x30

    const v1, 0x5f5e100

    mul-int/2addr v0, v1

    add-int/lit8 v1, p1, -0x30

    const v2, 0x989680

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, -0x30

    const v2, 0xf4240

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, p3, -0x30

    const v2, 0x186a0

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, p4, -0x30

    mul-int/lit16 v1, v1, 0x2710

    add-int/2addr v0, v1

    add-int/lit8 v1, p5, -0x30

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    add-int/lit8 v1, p6, -0x30

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    add-int/lit8 v1, p7, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    add-int/lit8 v1, p8, -0x30

    add-int/2addr v0, v1

    return v0

    .line 780
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .locals 12
    .param p0, "str"    # Ljava/lang/String;

    .line 2756
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2757
    .local v0, "len":I
    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 2758
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    return-wide v1

    .line 2761
    :cond_0
    const/4 v1, 0x0

    .line 2763
    .local v1, "negative":Z
    const-wide/16 v2, 0x0

    .line 2764
    .local v2, "longValue":J
    const/4 v4, 0x0

    .line 2765
    .local v4, "scale":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_5

    .line 2766
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 2767
    .local v6, "ch":C
    const/16 v7, 0x2d

    if-ne v6, v7, :cond_1

    if-nez v5, :cond_1

    .line 2768
    const/4 v1, 0x1

    .line 2769
    goto :goto_1

    .line 2772
    :cond_1
    const/16 v7, 0x2e

    if-ne v6, v7, :cond_3

    .line 2773
    if-eqz v4, :cond_2

    .line 2774
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    return-wide v7

    .line 2776
    :cond_2
    sub-int v7, v0, v5

    add-int/lit8 v7, v7, -0x1

    .line 2777
    .end local v4    # "scale":I
    .local v7, "scale":I
    nop

    .line 2765
    move v4, v7

    goto :goto_1

    .line 2780
    .end local v7    # "scale":I
    .restart local v4    # "scale":I
    :cond_3
    const/16 v7, 0x30

    if-lt v6, v7, :cond_4

    const/16 v7, 0x39

    if-gt v6, v7, :cond_4

    .line 2781
    add-int/lit8 v7, v6, -0x30

    .line 2782
    .local v7, "digit":I
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v2

    int-to-long v10, v7

    add-long/2addr v8, v10

    .line 2783
    .end local v2    # "longValue":J
    .end local v7    # "digit":I
    .local v8, "longValue":J
    nop

    .line 2765
    move-wide v2, v8

    .end local v6    # "ch":C
    .end local v8    # "longValue":J
    .restart local v2    # "longValue":J
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2784
    .restart local v6    # "ch":C
    :cond_4
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    return-wide v7

    .line 2788
    .end local v5    # "i":I
    .end local v6    # "ch":C
    :cond_5
    if-eqz v1, :cond_6

    .line 2789
    neg-long v2, v2

    .line 2792
    :cond_6
    packed-switch v4, :pswitch_data_0

    .line 2815
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    return-wide v5

    .line 2812
    :pswitch_0
    long-to-double v5, v2

    const-wide v7, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v5, v7

    return-wide v5

    .line 2810
    :pswitch_1
    long-to-double v5, v2

    const-wide v7, 0x4197d78400000000L    # 1.0E8

    div-double/2addr v5, v7

    return-wide v5

    .line 2808
    :pswitch_2
    long-to-double v5, v2

    const-wide v7, 0x416312d000000000L    # 1.0E7

    div-double/2addr v5, v7

    return-wide v5

    .line 2806
    :pswitch_3
    long-to-double v5, v2

    const-wide v7, 0x412e848000000000L    # 1000000.0

    div-double/2addr v5, v7

    return-wide v5

    .line 2804
    :pswitch_4
    long-to-double v5, v2

    const-wide v7, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v5, v7

    return-wide v5

    .line 2802
    :pswitch_5
    long-to-double v5, v2

    const-wide v7, 0x40c3880000000000L    # 10000.0

    div-double/2addr v5, v7

    return-wide v5

    .line 2800
    :pswitch_6
    long-to-double v5, v2

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v7

    return-wide v5

    .line 2798
    :pswitch_7
    long-to-double v5, v2

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    div-double/2addr v5, v7

    return-wide v5

    .line 2796
    :pswitch_8
    long-to-double v5, v2

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    div-double/2addr v5, v7

    return-wide v5

    .line 2794
    :pswitch_9
    long-to-double v5, v2

    return-wide v5

    :pswitch_data_0
    .packed-switch 0x0
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
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .locals 12
    .param p0, "str"    # Ljava/lang/String;

    .line 2819
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2820
    .local v0, "len":I
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 2821
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    return v1

    .line 2824
    :cond_0
    const/4 v1, 0x0

    .line 2826
    .local v1, "negative":Z
    const-wide/16 v2, 0x0

    .line 2827
    .local v2, "longValue":J
    const/4 v4, 0x0

    .line 2828
    .local v4, "scale":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_5

    .line 2829
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 2830
    .local v6, "ch":C
    const/16 v7, 0x2d

    if-ne v6, v7, :cond_1

    if-nez v5, :cond_1

    .line 2831
    const/4 v1, 0x1

    .line 2832
    goto :goto_1

    .line 2835
    :cond_1
    const/16 v7, 0x2e

    if-ne v6, v7, :cond_3

    .line 2836
    if-eqz v4, :cond_2

    .line 2837
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    return v7

    .line 2839
    :cond_2
    sub-int v7, v0, v5

    add-int/lit8 v7, v7, -0x1

    .line 2840
    .end local v4    # "scale":I
    .local v7, "scale":I
    nop

    .line 2828
    move v4, v7

    goto :goto_1

    .line 2843
    .end local v7    # "scale":I
    .restart local v4    # "scale":I
    :cond_3
    const/16 v7, 0x30

    if-lt v6, v7, :cond_4

    const/16 v7, 0x39

    if-gt v6, v7, :cond_4

    .line 2844
    add-int/lit8 v7, v6, -0x30

    .line 2845
    .local v7, "digit":I
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v2

    int-to-long v10, v7

    add-long/2addr v8, v10

    .line 2846
    .end local v2    # "longValue":J
    .end local v7    # "digit":I
    .local v8, "longValue":J
    nop

    .line 2828
    move-wide v2, v8

    .end local v6    # "ch":C
    .end local v8    # "longValue":J
    .restart local v2    # "longValue":J
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2847
    .restart local v6    # "ch":C
    :cond_4
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    return v7

    .line 2851
    .end local v5    # "i":I
    .end local v6    # "ch":C
    :cond_5
    if-eqz v1, :cond_6

    .line 2852
    neg-long v2, v2

    .line 2855
    :cond_6
    packed-switch v4, :pswitch_data_0

    .line 2878
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    return v5

    .line 2875
    :pswitch_0
    long-to-float v5, v2

    const v6, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v5, v6

    return v5

    .line 2873
    :pswitch_1
    long-to-float v5, v2

    const v6, 0x4cbebc20    # 1.0E8f

    div-float/2addr v5, v6

    return v5

    .line 2871
    :pswitch_2
    long-to-float v5, v2

    const v6, 0x4b189680    # 1.0E7f

    div-float/2addr v5, v6

    return v5

    .line 2869
    :pswitch_3
    long-to-float v5, v2

    const v6, 0x49742400    # 1000000.0f

    div-float/2addr v5, v6

    return v5

    .line 2867
    :pswitch_4
    long-to-float v5, v2

    const v6, 0x47c35000    # 100000.0f

    div-float/2addr v5, v6

    return v5

    .line 2865
    :pswitch_5
    long-to-float v5, v2

    const v6, 0x461c4000    # 10000.0f

    div-float/2addr v5, v6

    return v5

    .line 2863
    :pswitch_6
    long-to-float v5, v2

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    return v5

    .line 2861
    :pswitch_7
    long-to-float v5, v2

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    return v5

    .line 2859
    :pswitch_8
    long-to-float v5, v2

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v5, v6

    return v5

    .line 2857
    :pswitch_9
    long-to-float v5, v2

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
.end method

.method static setAccessible(Ljava/lang/reflect/AccessibleObject;)V
    .locals 2
    .param p0, "obj"    # Ljava/lang/reflect/AccessibleObject;

    .line 2441
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    if-nez v0, :cond_0

    .line 2442
    return-void

    .line 2444
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2445
    return-void

    .line 2448
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2451
    goto :goto_0

    .line 2449
    :catch_0
    move-exception v0

    .line 2450
    .local v0, "error":Ljava/security/AccessControlException;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    .line 2452
    .end local v0    # "error":Ljava/security/AccessControlException;
    :goto_0
    return-void
.end method

.method public static shortValue(Ljava/math/BigDecimal;)S
    .locals 2
    .param p0, "decimal"    # Ljava/math/BigDecimal;

    .line 865
    if-nez p0, :cond_0

    .line 866
    const/4 v0, 0x0

    return v0

    .line 869
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    .line 870
    .local v0, "scale":I
    const/16 v1, -0x64

    if-lt v0, v1, :cond_1

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    .line 871
    invoke-virtual {p0}, Ljava/math/BigDecimal;->shortValue()S

    move-result v1

    return v1

    .line 874
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->shortValueExact()S

    move-result v1

    return v1
.end method

.method public static toLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 5
    .param p0, "strVal"    # Ljava/lang/String;

    .line 1193
    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1194
    .local v0, "items":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 1195
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 1197
    :cond_0
    array-length v1, v0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 1198
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v2

    aget-object v3, v0, v3

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 1200
    :cond_1
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v2

    aget-object v3, v0, v3

    aget-object v4, v0, v4

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static unwrapOptional(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 3
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 2342
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    if-nez v0, :cond_0

    .line 2344
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "java.util.Optional"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2348
    :catchall_0
    move-exception v1

    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    throw v1

    .line 2345
    :catch_0
    move-exception v1

    .line 2348
    :goto_0
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    .line 2349
    nop

    .line 2351
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 2352
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 2353
    .local v0, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClass:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    .line 2354
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    return-object v1

    .line 2357
    .end local v0    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_1
    return-object p0
.end method
