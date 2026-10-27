.class public Lcom/alibaba/fastjson/parser/ParserConfig;
.super Ljava/lang/Object;
.source "ParserConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;
    }
.end annotation


# static fields
.field public static final AUTOTYPE_ACCEPT:Ljava/lang/String; = "fastjson.parser.autoTypeAccept"

.field public static final AUTOTYPE_SUPPORT_PROPERTY:Ljava/lang/String; = "fastjson.parser.autoTypeSupport"

.field public static final AUTO_SUPPORT:Z

.field private static final AUTO_TYPE_ACCEPT_LIST:[Ljava/lang/String;

.field public static final DENYS:[Ljava/lang/String;

.field public static final DENYS_INTERNAL:[Ljava/lang/String;

.field public static final DENY_PROPERTY:Ljava/lang/String; = "fastjson.parser.deny"

.field public static final DENY_PROPERTY_INTERNAL:Ljava/lang/String; = "fastjson.parser.deny.internal"

.field private static final INTERNAL_WHITELIST_HASHCODES:[J

.field public static final SAFE_MODE:Z

.field public static final SAFE_MODE_PROPERTY:Ljava/lang/String; = "fastjson.parser.safeMode"

.field private static awtError:Z

.field public static global:Lcom/alibaba/fastjson/parser/ParserConfig;

.field private static guavaError:Z

.field private static jdk8Error:Z

.field private static jodaError:Z


# instance fields
.field private acceptHashCodes:[J

.field private asmEnable:Z

.field protected asmFactory:Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

.field private volatile autoTypeCheckHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;",
            ">;"
        }
    .end annotation
.end field

.field private autoTypeSupport:Z

.field public compatibleWithJavaBean:Z

.field protected defaultClassLoader:Ljava/lang/ClassLoader;

.field private denyHashCodes:[J

.field private final deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/util/IdentityHashMap<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;",
            ">;"
        }
    .end annotation
.end field

.field public final fieldBased:Z

.field private internalDenyHashCodes:[J

.field private jacksonCompatible:Z

.field private final mixInDeserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/util/IdentityHashMap<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/util/IdentityHashMap<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;",
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

.field private safeMode:Z

.field public final symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

.field private final typeMapping:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 80
    const-string v0, "fastjson.parser.deny.internal"

    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "property":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->splitItemsFormProperty(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/ParserConfig;->DENYS_INTERNAL:[Ljava/lang/String;

    .line 84
    .end local v0    # "property":Ljava/lang/String;
    const-string v0, "fastjson.parser.deny"

    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .restart local v0    # "property":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->splitItemsFormProperty(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/ParserConfig;->DENYS:[Ljava/lang/String;

    .line 88
    .end local v0    # "property":Ljava/lang/String;
    const-string v0, "fastjson.parser.autoTypeSupport"

    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .restart local v0    # "property":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/alibaba/fastjson/parser/ParserConfig;->AUTO_SUPPORT:Z

    .line 92
    .end local v0    # "property":Ljava/lang/String;
    const-string v0, "fastjson.parser.safeMode"

    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .restart local v0    # "property":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/alibaba/fastjson/parser/ParserConfig;->SAFE_MODE:Z

    .line 96
    .end local v0    # "property":Ljava/lang/String;
    const-string v0, "fastjson.parser.autoTypeAccept"

    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .restart local v0    # "property":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->splitItemsFormProperty(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "items":[Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 99
    new-array v1, v2, [Ljava/lang/String;

    .line 101
    :cond_0
    sput-object v1, Lcom/alibaba/fastjson/parser/ParserConfig;->AUTO_TYPE_ACCEPT_LIST:[Ljava/lang/String;

    .line 104
    .end local v0    # "property":Ljava/lang/String;
    .end local v1    # "items":[Ljava/lang/String;
    const/16 v0, 0x39

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->INTERNAL_WHITELIST_HASHCODES:[J

    .line 168
    new-instance v0, Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/ParserConfig;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 184
    sput-boolean v2, Lcom/alibaba/fastjson/parser/ParserConfig;->awtError:Z

    .line 185
    sput-boolean v2, Lcom/alibaba/fastjson/parser/ParserConfig;->jdk8Error:Z

    .line 186
    sput-boolean v2, Lcom/alibaba/fastjson/parser/ParserConfig;->jodaError:Z

    .line 187
    sput-boolean v2, Lcom/alibaba/fastjson/parser/ParserConfig;->guavaError:Z

    return-void

    :array_0
    .array-data 8
        -0x7d171ecfe948c062L
        -0x79c2d22e17d46127L
        -0x74df7e34c5af42bcL    # -4.397461274202915E-255
        -0x6fffcbe90d753277L    # -1.304612425320331E-231
        -0x6d0dad3c673fd6baL
        -0x61bfb1a7c0dab02cL    # -5.663184347754154E-163
        -0x60d1df049fb65c8fL
        -0x575556d6bb90031cL    # -8.660931078614971E-113
        -0x546472f8c6b73563L    # -1.2596128630232586E-98
        -0x5034ac668c315c09L    # -1.8437248463066885E-78
        -0x4aeeb38feca3bac8L    # -4.515141395732244E-53
        -0x3f01cd4723768217L    # -123691.55384205993
        -0x3a6557b2656b39c0L    # -2.062519066697081E27
        -0x36d2706ed650cc65L    # -3.296140319984399E44
        -0x338dfabc23a18f70L    # -1.8098708904816462E60
        -0x2f18e591eaa9fc3fL    # -5.478753662882175E81
        -0x2ee2d56becc85844L    # -5.533252572810275E82
        -0x2484003e68c96caeL    # -4.9684551070599265E132
        -0x236a7c0ff7833d39L    # -1.0008455900325936E138
        -0x22555ee0135884a2L    # -1.6236380893367258E143
        -0x1f71178b5d90a151L    # -1.3261085623344647E157
        -0x186b0a08232c537bL    # -9.33910802048915E190
        -0x1482b8793b8cc973L    # -6.016157181125066E209
        -0xb5597c6d7fd8326L    # -9.680269230194381E253
        -0x7381064ecdce04aL    # -6.47436122473038E273
        0xd45d6f8c9017faL
        0x6b949ce6c2fe009L
        0x76566c052e83815L
        0x9df9341f0c76702L
        0xb81ba299273d4e6L
        0xd4788669a13ae74L
        0x111d12921c5466daL    # 3.06807714530297E-226
        0x178b0e2dc3ae9fe5L
        0x19dcaf4adc37d6d4L    # 4.21923310396035E-184
        0x1f10a70ee4065963L    # 4.737874920000775E-159
        0x21082dfbf63fbcc1L
        0x24ae2d07fb5d7497L
        0x26c5d923af21e2e1L    # 6.610091059703345E-122
        0x34cc8e52316fa0cbL    # 2.32920267187095E-54
        0x3f64bc3933a6a2dfL    # 0.002531158182325618
        0x42646e60ec7e5189L    # 7.02009533426548E11
        0x44d57a1b1ef53451L    # 4.0568861274459394E23
        0x4a39c6c7acb6aa18L    # 3.7672373999660865E49
        0x4bb3c59964a2fc50L    # 4.848048869469194E56
        0x4f0c3688e8a18f9fL    # 6.231012896022775E72
        0x5449ec9b0280b9efL    # 1.1074768222926346E98
        0x54dc66a59269bae1L    # 6.212002893406516E100
        0x552d9fb02ffc9defL    # 2.0734284478065116E102
        0x557f642131553498L    # 7.030812168447344E103
        0x604d6657082c1ee9L    # 7.883728180658543E155
        0x61d10af54471e5deL    # 1.533482208710523E163
        0x64dc636f343516dcL    # 7.18982986180002E177
        0x73a0be903f2bcbf4L    # 9.36603387325164E248
        0x73fba1e41c4c3553L    # 4.946007966433693E250
        0x7b606f16a261e1e6L    # 1.9550036277967994E286
        0x7f36112f218143b6L    # 6.053149392081782E304
        0x7fe2b8e675da0cefL    # 1.0517778137125186E308
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 339
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;-><init>(Z)V

    .line 340
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;)V
    .locals 2
    .param p1, "asmFactory"    # Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

    .line 351
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;-><init>(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;Ljava/lang/ClassLoader;Z)V

    .line 352
    return-void
.end method

.method private constructor <init>(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;Ljava/lang/ClassLoader;Z)V
    .locals 5
    .param p1, "asmFactory"    # Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;
    .param p2, "parentClassLoader"    # Ljava/lang/ClassLoader;
    .param p3, "fieldBased"    # Z

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-direct {v0}, Lcom/alibaba/fastjson/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    .line 171
    new-instance v0, Lcom/alibaba/fastjson/util/IdentityHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/util/IdentityHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->mixInDeserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    .line 172
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x1

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->typeMapping:Ljava/util/concurrent/ConcurrentMap;

    .line 174
    sget-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmEnable:Z

    .line 176
    new-instance v0, Lcom/alibaba/fastjson/parser/SymbolTable;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/parser/SymbolTable;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 189
    sget-boolean v0, Lcom/alibaba/fastjson/parser/ParserConfig;->AUTO_SUPPORT:Z

    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->autoTypeSupport:Z

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->jacksonCompatible:Z

    .line 198
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    iput-boolean v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->compatibleWithJavaBean:Z

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->modules:Ljava/util/List;

    .line 201
    sget-boolean v1, Lcom/alibaba/fastjson/parser/ParserConfig;->SAFE_MODE:Z

    iput-boolean v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->safeMode:Z

    .line 204
    const/16 v1, 0x7a

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->denyHashCodes:[J

    .line 329
    sget-object v1, Lcom/alibaba/fastjson/parser/ParserConfig;->AUTO_TYPE_ACCEPT_LIST:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [J

    .line 330
    .local v1, "hashCodes":[J
    move v2, v0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/alibaba/fastjson/parser/ParserConfig;->AUTO_TYPE_ACCEPT_LIST:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 331
    sget-object v3, Lcom/alibaba/fastjson/parser/ParserConfig;->AUTO_TYPE_ACCEPT_LIST:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 330
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 334
    .end local v2    # "i":I
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    .line 335
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->acceptHashCodes:[J

    .line 355
    .end local v1    # "hashCodes":[J
    iput-boolean p3, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->fieldBased:Z

    .line 356
    if-nez p1, :cond_2

    sget-boolean v1, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-nez v1, :cond_2

    .line 358
    if-nez p2, :cond_1

    .line 359
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

    new-instance v2, Lcom/alibaba/fastjson/util/ASMClassLoader;

    invoke-direct {v2}, Lcom/alibaba/fastjson/util/ASMClassLoader;-><init>()V

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;-><init>(Ljava/lang/ClassLoader;)V

    move-object p1, v1

    goto :goto_1

    .line 367
    :catch_0
    move-exception v1

    goto :goto_2

    .line 365
    :catch_1
    move-exception v1

    goto :goto_3

    .line 363
    :catch_2
    move-exception v1

    goto :goto_4

    .line 361
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

    invoke-direct {v1, p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;-><init>(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    .line 369
    :goto_1
    goto :goto_5

    .line 367
    :goto_2
    goto :goto_5

    .line 365
    :goto_3
    goto :goto_1

    .line 363
    :goto_4
    goto :goto_1

    .line 372
    :cond_2
    :goto_5
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmFactory:Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

    .line 374
    if-nez p1, :cond_3

    .line 375
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmEnable:Z

    .line 378
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/ParserConfig;->initDeserializers()V

    .line 380
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->DENYS:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->addItemsToDeny([Ljava/lang/String;)V

    .line 381
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->DENYS_INTERNAL:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->addItemsToDeny0([Ljava/lang/String;)V

    .line 382
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->AUTO_TYPE_ACCEPT_LIST:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->addItemsToAccept([Ljava/lang/String;)V

    .line 384
    return-void

    :array_0
    .array-data 8
        -0x7f2f38f433d015feL    # -9.556794763479643E-305
        -0x7903d40641508511L    # -5.085553800937495E-275
        -0x780ad5e4f815cc5aL
        -0x71522bf34d56bbbdL
        -0x708a0605f20fc080L    # -3.455901468587826E-234
        -0x6e8d5ac0ea86cf51L
        -0x6dedd28ef1c9b048L    # -1.257180119856368E-221
        -0x6be79918c4100b37L    # -7.248495544345653E-212
        -0x6bcfa3d9a7f08c3bL    # -1.943861383644949E-211
        -0x6bc886d7ce2082c1L
        -0x5edc59d06ce874e0L    # -4.802155510082355E-149
        -0x57a77d31efbb3bb0L
        -0x55c250024ef3b6c9L
        -0x539d9d0ad36755c7L    # -6.886391444241167E-95
        -0x526c85bb67ce1760L    # -3.824696155682281E-89
        -0x51af25e0529f5f6aL    # -1.3554199460470375E-85
        -0x5000b36a4665ccb3L    # -1.6894051133204177E-77
        -0x4bf0cbe38b9136b1L    # -6.213767217225293E-58
        -0x4817128a80a2ec5eL    # -2.2892361373052172E-39
        -0x467494ac696cd017L    # -1.6898413909066546E-31
        -0x4322623ed8990f32L    # -1.644030941651994E-15
        -0x41458d04e3345bdaL    # -1.5764918430089148E-6
        -0x3ff41e21450d7f75L    # -3.485288105512216
        -0x3d99b2f6a71301b4L    # -7.662539098639468E11
        -0x3be00836378383fbL    # -1.4742602222991634E20
        -0x38a661401c18dbfaL    # -5.3210898116926836E35
        -0x372b61a9fe199e57L    # -7.184498624325357E42
        -0x369c96af7d028d72L    # -3.463106763999075E45
        -0x2e10320b4cce92ccL    # -4.9428513655242083E86
        -0x2ab46e33884dc613L    # -7.718587662525667E102
        -0x2a6116e0f4f615ffL    # -2.769276834562512E104
        -0x2735c2a6a167d454L    # -5.293540616952125E119
        -0x232729ea59bb61c2L    # -1.8485208306343955E139
        -0x21dc5f7f6574642aL    # -3.063522061072579E145
        -0x2103df70dc82befcL    # -3.5965336067206575E149
        -0x20d2200cef324c8bL    # -3.0559968239287952E150
        -0x1f651b9fb7bda7d1L    # -2.3076098125244163E157
        -0x1e6e67fb2a40b971L    # -9.894137060283861E161
        -0x1d14c5381a93b982L    # -3.211360471030518E168
        -0x19fc295ae05296d5L    # -2.6342395696172524E183
        -0x16e7b41aa4e269d6L    # -1.816185970555075E198
        -0x160df452da09f7f9L    # -2.2100835374064227E202
        -0xc8fd5b5ab6f4718L
        -0xb8b1bbae70d98caL    # -9.573036758577548E252
        -0x816918b205a7244L
        -0x388c51df37d896fL
        -0x2a4039effa928e0L    # -7.14947811210233E295
        -0x5ea40fde0e1c84L
        -0x22e57f0e12cbfbL
        0x10e067cd55c5e5L
        0x761619136cc13eL
        0x22baa234c5bfb8aL
        0x3085068cb7201b8L
        0x45b11bc78a3aba3L
        0x55cfca0f2281c07L
        0xb6e292fa5955adeL
        0xee6511b66fd5ef0L    # 6.854342740564376E-237
        0x100150a253996624L    # 1.394104277479804E-231
        0x10b2bdca849d9b3eL    # 3.09032861507223E-228
        0x10dbc48446e0dae5L
        0x144277b467723158L    # 4.388573993986807E-211
        0x14db2e6fead04af0L    # 3.307156557815155E-208
        0x154b6cb22d294cfaL    # 4.271035506616844E-206
        0x17924cca5227622aL
        0x193b2697eaaed41aL    # 3.9000001662652114E-187
        0x1cd6f11c6a358bb7L    # 9.498405308272427E-170
        0x1e0a8c3358ff3daeL    # 5.762601583556236E-164
        0x24d2f6048fef4e49L
        0x24ec99d5e7dc5571L    # 8.058828264835688E-131
        0x25e962f1c28f71a2L
        0x275d0732b877af29L
        0x2ad1ce3a112f015dL
        0x2adfefbbfe29d931L
        0x2b3a37467a344cdfL
        0x2b6dd8b3229d6837L    # 1.7057077092413725E-99
        0x2d308dbbc851b0d8L    # 5.078962391870398E-91
        0x313bb4abd8d4554cL    # 1.56808971921097E-71
        0x327c8ed7c8706905L    # 1.6948389662237084E-65
        0x332f0b5369a18310L
        0x339a3e0b6beebee9L    # 4.0826654570968825E-60
        0x33c64b921f523f2fL    # 2.77486720533494E-59
        0x34a81ee78429fdf1L    # 4.918595094295287E-55
        0x3826f4b2380c8b9bL    # 3.373058177088523E-38
        0x398f942e01920cf0L    # 1.9461954727645544E-31
        0x3adba40367f73264L    # 3.5724737671988184E-25
        0x3b0b51ecbf6db221L    # 2.8248237289442712E-24
        0x42d11a560fc9fba9L    # 7.521924278884664E13
        0x43320dc9d2ae0892L    # 5.08171005500021E15
        0x440e89208f445fb9L    # 7.041042216469549E19
        0x46c808a4b5841f57L    # 9.749252615377375E32
        0x49312bdafb0077d9L    # 3.829330118647328E44
        0x4a3797b30328202cL    # 3.448058737338662E49
        0x4ba3e254e758d70dL    # 2.4377845509161763E56
        0x4bf881e49d37f530L    # 9.614713083096315E57
        0x4da972745feb30c1L    # 1.339945589251118E66
        0x4ef08c90ff16c675L    # 1.8274816638330285E72
        0x4fd10ddc6d13821fL    # 3.085523505057036E76
        0x527db6b46ce3bcbcL    # 2.3643694017797754E89
        0x535e552d6f9700c1L    # 3.954486474370437E93
        0x5728504a6d454ffcL    # 7.309005913296069E111
        0x599b5c1213a099acL    # 4.521565120980506E123
        0x5a5bd85c072e5efeL
        0x5ab0cb3071ab40d1L    # 7.275532043244496E128
        0x5d74d3e5b9370476L    # 1.5873759122766088E142
        0x5d92e6ddde40ed84L    # 5.762376793011253E142
        0x5f215622fb630753L    # 1.773407570959078E150
        0x62db241274397c34L
        0x63a220e60a17c7b9L    # 8.757288450874107E171
        0x647ab0224e149ebeL    # 1.0561215288164044E176
        0x65f81b84c1d920cdL    # 1.6005507777082922E183
        0x665c53c311193973L    # 1.2036519694555594E185
        0x6749835432e0f0d2L
        0x69b6e0175084b377L    # 1.750995289311963E201
        0x6a47501ebb2afdb2L    # 9.136601149026956E203
        0x6fcabf6fa54cafffL    # 3.244253068846464E230
        0x746bd4a53ec195fbL    # 6.376313675246868E252
        0x74b50bb9260e31ffL    # 1.5429848812177576E254
        0x75cc60f5871d0fd3L    # 2.7270901325332595E259
        0x767a586a5107feefL    # 5.184902282980218E262
        0x7aa7ee3627a19cf3L    # 6.950210684357695E282
        0x7ed9311d28bf1a65L    # 1.0797314149657436E303
        0x7ed9481d28bf417aL    # 1.0835821490243428E303
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "parentClassLoader"    # Ljava/lang/ClassLoader;

    .line 347
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;-><init>(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;Ljava/lang/ClassLoader;Z)V

    .line 348
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "fieldBase"    # Z

    .line 343
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;-><init>(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;Ljava/lang/ClassLoader;Z)V

    .line 344
    return-void
.end method

.method private addItemsToAccept([Ljava/lang/String;)V
    .locals 2
    .param p1, "items"    # [Ljava/lang/String;

    .line 520
    if-nez p1, :cond_0

    .line 521
    return-void

    .line 524
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 525
    aget-object v1, p1, v0

    .line 526
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->addAccept(Ljava/lang/String;)V

    .line 524
    .end local v1    # "item":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 528
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private addItemsToDeny([Ljava/lang/String;)V
    .locals 2
    .param p1, "items"    # [Ljava/lang/String;

    .line 509
    if-nez p1, :cond_0

    .line 510
    return-void

    .line 513
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 514
    aget-object v1, p1, v0

    .line 515
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->addDeny(Ljava/lang/String;)V

    .line 513
    .end local v1    # "item":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 517
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private addItemsToDeny0([Ljava/lang/String;)V
    .locals 2
    .param p1, "items"    # [Ljava/lang/String;

    .line 498
    if-nez p1, :cond_0

    .line 499
    return-void

    .line 502
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 503
    aget-object v1, p1, v0

    .line 504
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->addDenyInternal(Ljava/lang/String;)V

    .line 502
    .end local v1    # "item":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 506
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;
    .locals 7
    .param p0, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1136
    .local p1, "fieldCacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 1138
    .local v0, "field":Ljava/lang/reflect/Field;
    if-nez v0, :cond_0

    .line 1139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/reflect/Field;

    .line 1142
    :cond_0
    if-nez v0, :cond_1

    .line 1143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/reflect/Field;

    .line 1146
    :cond_1
    if-nez v0, :cond_4

    .line 1147
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1148
    .local v2, "c0":C
    const/16 v3, 0x7a

    const/16 v4, 0x61

    if-lt v2, v4, :cond_2

    if-gt v2, v3, :cond_2

    .line 1149
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 1150
    .local v5, "chars":[C
    aget-char v6, v5, v1

    add-int/lit8 v6, v6, -0x20

    int-to-char v6, v6

    aput-char v6, v5, v1

    .line 1151
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([C)V

    .line 1152
    .local v1, "fieldNameX":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/reflect/Field;

    .line 1155
    .end local v1    # "fieldNameX":Ljava/lang/String;
    .end local v5    # "chars":[C
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x2

    if-le v1, v5, :cond_4

    .line 1156
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1157
    .local v1, "c1":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v5, :cond_4

    if-lt v2, v4, :cond_4

    if-gt v2, v3, :cond_4

    const/16 v3, 0x41

    if-lt v1, v3, :cond_4

    const/16 v3, 0x5a

    if-gt v1, v3, :cond_4

    .line 1160
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1161
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1162
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/reflect/Field;

    .line 1163
    goto :goto_1

    .line 1165
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    :cond_3
    goto :goto_0

    .line 1170
    .end local v1    # "c1":C
    .end local v2    # "c0":C
    :cond_4
    :goto_1
    return-object v0
.end method

.method public static getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;
    .locals 1

    .line 166
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    return-object v0
.end method

.method private initDeserializers()V
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 388
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/sql/Timestamp;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;->instance_timestamp:Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 389
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/sql/Date;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 390
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/sql/Time;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 391
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/Date;

    sget-object v2, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 392
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/Calendar;

    sget-object v2, Lcom/alibaba/fastjson/serializer/CalendarCodec;->instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljavax/xml/datatype/XMLGregorianCalendar;

    sget-object v2, Lcom/alibaba/fastjson/serializer/CalendarCodec;->instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 395
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Lcom/alibaba/fastjson/JSONObject;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 396
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Lcom/alibaba/fastjson/JSONArray;

    sget-object v2, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 398
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/Map;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 399
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/HashMap;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 400
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 401
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/TreeMap;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 402
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/concurrent/ConcurrentMap;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 403
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 405
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/Collection;

    sget-object v2, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 406
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/List;

    sget-object v2, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 407
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 409
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Object;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 410
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 411
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/StringBuffer;

    sget-object v2, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 412
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 413
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/serializer/CharacterCodec;->instance:Lcom/alibaba/fastjson/serializer/CharacterCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 414
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Character;

    sget-object v2, Lcom/alibaba/fastjson/serializer/CharacterCodec;->instance:Lcom/alibaba/fastjson/serializer/CharacterCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 415
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 416
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 417
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 418
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Short;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 419
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 420
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 421
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/serializer/LongCodec;->instance:Lcom/alibaba/fastjson/serializer/LongCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 422
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Lcom/alibaba/fastjson/serializer/LongCodec;->instance:Lcom/alibaba/fastjson/serializer/LongCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 423
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/alibaba/fastjson/serializer/BigIntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/BigIntegerCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 424
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/alibaba/fastjson/serializer/BigDecimalCodec;->instance:Lcom/alibaba/fastjson/serializer/BigDecimalCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 425
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/serializer/FloatCodec;->instance:Lcom/alibaba/fastjson/serializer/FloatCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 426
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Float;

    sget-object v2, Lcom/alibaba/fastjson/serializer/FloatCodec;->instance:Lcom/alibaba/fastjson/serializer/FloatCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 427
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 428
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Double;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 429
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/serializer/BooleanCodec;->instance:Lcom/alibaba/fastjson/serializer/BooleanCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 430
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lcom/alibaba/fastjson/serializer/BooleanCodec;->instance:Lcom/alibaba/fastjson/serializer/BooleanCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 431
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 432
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, [C

    new-instance v2, Lcom/alibaba/fastjson/serializer/CharArrayCodec;

    invoke-direct {v2}, Lcom/alibaba/fastjson/serializer/CharArrayCodec;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 434
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v2, Lcom/alibaba/fastjson/serializer/BooleanCodec;->instance:Lcom/alibaba/fastjson/serializer/BooleanCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 435
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v2, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 436
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v2, Lcom/alibaba/fastjson/serializer/LongCodec;->instance:Lcom/alibaba/fastjson/serializer/LongCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 437
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/alibaba/fastjson/serializer/ReferenceCodec;->instance:Lcom/alibaba/fastjson/serializer/ReferenceCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 439
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/ref/WeakReference;

    sget-object v2, Lcom/alibaba/fastjson/serializer/ReferenceCodec;->instance:Lcom/alibaba/fastjson/serializer/ReferenceCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 440
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/ref/SoftReference;

    sget-object v2, Lcom/alibaba/fastjson/serializer/ReferenceCodec;->instance:Lcom/alibaba/fastjson/serializer/ReferenceCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 442
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/UUID;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 443
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/TimeZone;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 444
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/Locale;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 445
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/Currency;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 447
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/net/Inet4Address;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 448
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/net/Inet6Address;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 449
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/net/InetSocketAddress;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 450
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/io/File;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 451
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/net/URI;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 452
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/net/URL;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 453
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/regex/Pattern;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 454
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/nio/charset/Charset;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 455
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Lcom/alibaba/fastjson/JSONPath;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 456
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Number;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 457
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    sget-object v2, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 458
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/concurrent/atomic/AtomicLongArray;

    sget-object v2, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 459
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/StackTraceElement;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 461
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/io/Serializable;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 462
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Cloneable;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 463
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Comparable;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 464
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/io/Closeable;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 466
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Lcom/alibaba/fastjson/JSONPObject;

    new-instance v2, Lcom/alibaba/fastjson/parser/deserializer/JSONPDeserializer;

    invoke-direct {v2}, Lcom/alibaba/fastjson/parser/deserializer/JSONPDeserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 467
    return-void
.end method

.method public static isPrimitive2(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1096
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Boolean;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Character;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Byte;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Long;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Double;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/math/BigInteger;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/math/BigDecimal;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/String;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/util/Date;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/sql/Date;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/sql/Time;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/sql/Timestamp;

    if-eq p0, v0, :cond_1

    .line 1112
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1096
    :goto_1
    return v0
.end method

.method public static parserAllFieldToCache(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .line 1123
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "fieldCacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1124
    .local v0, "fields":[Ljava/lang/reflect/Field;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1125
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1126
    .local v4, "fieldName":Ljava/lang/String;
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1127
    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "fieldName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1130
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_2

    .line 1131
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->parserAllFieldToCache(Ljava/lang/Class;Ljava/util/Map;)V

    .line 1133
    :cond_2
    return-void
.end method

.method private static splitItemsFormProperty(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "property"    # Ljava/lang/String;

    .line 470
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 471
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 473
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addAccept(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .line 1221
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1225
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    .line 1226
    .local v0, "hash":J
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->acceptHashCodes:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    if-ltz v2, :cond_1

    .line 1227
    return-void

    .line 1230
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->acceptHashCodes:[J

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [J

    .line 1231
    .local v2, "hashCodes":[J
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aput-wide v0, v2, v3

    .line 1232
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->acceptHashCodes:[J

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->acceptHashCodes:[J

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1233
    invoke-static {v2}, Ljava/util/Arrays;->sort([J)V

    .line 1234
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->acceptHashCodes:[J

    .line 1235
    return-void

    .line 1222
    .end local v0    # "hash":J
    .end local v2    # "hashCodes":[J
    :cond_2
    :goto_0
    return-void
.end method

.method public addAutoTypeCheckHandler(Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;)V
    .locals 2
    .param p1, "h"    # Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;

    .line 1498
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->autoTypeCheckHandlers:Ljava/util/List;

    .line 1499
    .local v0, "autoTypeCheckHandlers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;>;"
    if-nez v0, :cond_0

    .line 1500
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->autoTypeCheckHandlers:Ljava/util/List;

    .line 1505
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1506
    return-void
.end method

.method public addDeny(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .line 1204
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1208
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    .line 1209
    .local v0, "hash":J
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->denyHashCodes:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    if-ltz v2, :cond_1

    .line 1210
    return-void

    .line 1213
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->denyHashCodes:[J

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [J

    .line 1214
    .local v2, "hashCodes":[J
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aput-wide v0, v2, v3

    .line 1215
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->denyHashCodes:[J

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->denyHashCodes:[J

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1216
    invoke-static {v2}, Ljava/util/Arrays;->sort([J)V

    .line 1217
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->denyHashCodes:[J

    .line 1218
    return-void

    .line 1205
    .end local v0    # "hash":J
    .end local v2    # "hashCodes":[J
    :cond_2
    :goto_0
    return-void
.end method

.method public addDenyInternal(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .line 1182
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1186
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    .line 1187
    .local v0, "hash":J
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->internalDenyHashCodes:[J

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 1188
    new-array v2, v4, [J

    aput-wide v0, v2, v3

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->internalDenyHashCodes:[J

    .line 1189
    return-void

    .line 1192
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->internalDenyHashCodes:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    if-ltz v2, :cond_2

    .line 1193
    return-void

    .line 1196
    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->internalDenyHashCodes:[J

    array-length v2, v2

    add-int/2addr v2, v4

    new-array v2, v2, [J

    .line 1197
    .local v2, "hashCodes":[J
    array-length v5, v2

    sub-int/2addr v5, v4

    aput-wide v0, v2, v5

    .line 1198
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->internalDenyHashCodes:[J

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->internalDenyHashCodes:[J

    array-length v5, v5

    invoke-static {v4, v3, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1199
    invoke-static {v2}, Ljava/util/Arrays;->sort([J)V

    .line 1200
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->internalDenyHashCodes:[J

    .line 1201
    return-void

    .line 1183
    .end local v0    # "hash":J
    .end local v2    # "hashCodes":[J
    :cond_3
    :goto_0
    return-void
.end method

.method public checkAutoType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1238
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1239
    return-object p1

    .line 1242
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public checkAutoType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .param p1, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1246
    .local p2, "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;
    .locals 41
    .param p1, "typeName"    # Ljava/lang/String;
    .param p3, "features"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .local p2, "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1250
    move/from16 v4, p3

    const/4 v0, 0x0

    if-nez v2, :cond_0

    .line 1251
    return-object v0

    .line 1254
    :cond_0
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/ParserConfig;->autoTypeCheckHandlers:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 1255
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/ParserConfig;->autoTypeCheckHandlers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;

    .line 1256
    .local v6, "h":Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;
    invoke-interface {v6, v2, v3, v4}, Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;->handler(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v7

    .line 1257
    .local v7, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v7, :cond_1

    .line 1258
    return-object v7

    .line 1260
    .end local v6    # "h":Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;
    .end local v7    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    goto :goto_0

    .line 1263
    :cond_2
    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->SafeMode:Lcom/alibaba/fastjson/parser/Feature;

    iget v5, v5, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 1264
    .local v5, "safeModeMask":I
    iget-boolean v6, v1, Lcom/alibaba/fastjson/parser/ParserConfig;->safeMode:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_4

    and-int v6, v4, v5

    if-nez v6, :cond_4

    sget v6, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    and-int/2addr v6, v5

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    move v6, v7

    goto :goto_2

    :cond_4
    :goto_1
    move v6, v8

    .line 1267
    .local v6, "safeMode":Z
    :goto_2
    if-nez v6, :cond_30

    .line 1271
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0xc0

    if-ge v9, v10, :cond_2f

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_2f

    .line 1276
    if-nez v3, :cond_5

    .line 1277
    const/4 v9, 0x0

    .local v9, "expectClassFlag":Z
    :goto_3
    goto :goto_5

    .line 1279
    .end local v9    # "expectClassFlag":Z
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v11

    .line 1280
    .local v11, "expectHash":J
    const-wide v13, -0x6f5da0a455dead62L    # -1.514751450580626E-228

    cmp-long v9, v11, v13

    if-eqz v9, :cond_7

    const-wide v13, 0x2d10a5801b9d6136L    # 1.2768618085266423E-91

    cmp-long v9, v11, v13

    if-eqz v9, :cond_7

    const-wide v13, -0x50a795a8e1cfd395L    # -1.2869594668238042E-80

    cmp-long v9, v11, v13

    if-eqz v9, :cond_7

    const-wide v13, -0x12ff8cff584dd83aL    # -1.1341028219519378E217

    cmp-long v9, v11, v13

    if-eqz v9, :cond_7

    const-wide v13, 0x295c4605fd1eaa95L

    cmp-long v9, v11, v13

    if-eqz v9, :cond_7

    const-wide v13, 0x47ef269aadc650b4L    # 3.312520992710671E38

    cmp-long v9, v11, v13

    if-eqz v9, :cond_7

    const-wide v13, 0x6439c4dff712ae8bL    # 6.373467611436065E174

    cmp-long v9, v11, v13

    if-eqz v9, :cond_7

    const-wide v13, -0x1c22678a5d23ad7dL    # -1.1437309411088266E173

    cmp-long v9, v11, v13

    if-eqz v9, :cond_7

    const-wide v13, -0x1d572245fc1961f3L    # -1.8328867399748285E167

    cmp-long v9, v11, v13

    if-eqz v9, :cond_7

    const-wide v13, -0x28cb314b3c162e26L    # -1.2509996135591577E112

    cmp-long v9, v11, v13

    if-nez v9, :cond_6

    goto :goto_4

    .line 1293
    :cond_6
    nop

    .end local v11    # "expectHash":J
    move v9, v8

    goto :goto_5

    .line 1291
    .restart local v11    # "expectHash":J
    :cond_7
    :goto_4
    const/4 v9, 0x0

    goto :goto_3

    .line 1293
    .end local v11    # "expectHash":J
    .restart local v9    # "expectClassFlag":Z
    :goto_5
    nop

    .line 1297
    const/16 v11, 0x24

    const/16 v12, 0x2e

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    .line 1300
    .local v11, "className":Ljava/lang/String;
    const-wide v13, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 1301
    .local v13, "BASIC":J
    const-wide v15, 0x100000001b3L

    .line 1303
    .local v15, "PRIME":J
    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move-wide/from16 v18, v13

    int-to-long v12, v10

    .end local v13    # "BASIC":J
    .local v18, "BASIC":J
    const-wide v20, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    xor-long v12, v20, v12

    const-wide v22, 0x100000001b3L

    mul-long v12, v12, v22

    .line 1304
    .local v12, "h1":J
    const-wide v24, -0x509be9b379fdb0e6L    # -2.1176223865607047E-80

    cmp-long v10, v12, v24

    if-eqz v10, :cond_2e

    .line 1308
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v8

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    int-to-long v0, v10

    xor-long/2addr v0, v12

    mul-long v0, v0, v22

    const-wide v24, 0x9198507b5af98f0L

    cmp-long v0, v0, v24

    if-eqz v0, :cond_2d

    .line 1312
    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-long v0, v0

    xor-long v0, v20, v0

    mul-long v0, v0, v22

    .line 1314
    invoke-virtual {v11, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    int-to-long v7, v10

    xor-long/2addr v0, v7

    mul-long v0, v0, v22

    const/4 v7, 0x2

    .line 1316
    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-long v7, v7

    xor-long/2addr v0, v7

    mul-long v7, v0, v22

    .line 1319
    .local v7, "h3":J
    move/from16 v26, v5

    move/from16 v27, v6

    invoke-static {v11}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v5

    .line 1320
    .end local v6    # "safeMode":Z
    .local v5, "fullHash":J
    .local v26, "safeModeMask":I
    .local v27, "safeMode":Z
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->INTERNAL_WHITELIST_HASHCODES:[J

    invoke-static {v0, v5, v6}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    :goto_6
    move v1, v0

    .line 1322
    .local v1, "internalWhite":Z
    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/alibaba/fastjson/parser/ParserConfig;->internalDenyHashCodes:[J

    if-eqz v0, :cond_a

    .line 1323
    move-wide/from16 v20, v7

    .line 1324
    .local v20, "hash":J
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_7
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v0, v14, :cond_a

    .line 1325
    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move-wide/from16 v28, v12

    int-to-long v12, v14

    .end local v12    # "h1":J
    .local v28, "h1":J
    xor-long v12, v20, v12

    .line 1326
    .end local v20    # "hash":J
    .local v12, "hash":J
    mul-long v12, v12, v22

    .line 1327
    iget-object v14, v10, Lcom/alibaba/fastjson/parser/ParserConfig;->internalDenyHashCodes:[J

    invoke-static {v14, v12, v13}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v14

    if-gez v14, :cond_9

    .line 1324
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v20, v12

    move-wide/from16 v12, v28

    goto :goto_7

    .line 1328
    :cond_9
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    move/from16 v30, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "i":I
    .local v30, "i":I
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v31, v12

    const-string v12, "autoType is not support. "

    .end local v12    # "hash":J
    .local v31, "hash":J
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1333
    .end local v28    # "h1":J
    .end local v30    # "i":I
    .end local v31    # "hash":J
    .local v12, "h1":J
    :cond_a
    move-wide/from16 v28, v12

    .end local v12    # "h1":J
    .restart local v28    # "h1":J
    if-nez v1, :cond_10

    iget-boolean v0, v10, Lcom/alibaba/fastjson/parser/ParserConfig;->autoTypeSupport:Z

    if-nez v0, :cond_c

    if-eqz v9, :cond_b

    goto :goto_8

    .line 1354
    :cond_b
    move-wide/from16 v35, v5

    move-wide/from16 v33, v15

    goto :goto_b

    .line 1334
    :cond_c
    :goto_8
    move-wide v12, v7

    .line 1335
    .local v12, "hash":J
    const/4 v0, 0x3

    .restart local v0    # "i":I
    :goto_9
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v0, v14, :cond_10

    .line 1336
    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move-wide/from16 v33, v15

    int-to-long v14, v14

    .end local v15    # "PRIME":J
    .local v33, "PRIME":J
    xor-long/2addr v12, v14

    .line 1337
    mul-long v12, v12, v22

    .line 1338
    iget-object v14, v10, Lcom/alibaba/fastjson/parser/ParserConfig;->acceptHashCodes:[J

    invoke-static {v14, v12, v13}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v14

    if-ltz v14, :cond_d

    .line 1339
    iget-object v14, v10, Lcom/alibaba/fastjson/parser/ParserConfig;->defaultClassLoader:Ljava/lang/ClassLoader;

    const/4 v15, 0x1

    invoke-static {v2, v14, v15}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v14

    .line 1340
    .local v14, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v14, :cond_d

    .line 1341
    return-object v14

    .line 1344
    .end local v14    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_d
    iget-object v14, v10, Lcom/alibaba/fastjson/parser/ParserConfig;->denyHashCodes:[J

    invoke-static {v14, v12, v13}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v14

    if-ltz v14, :cond_f

    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getClassFromMapping(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    if-nez v14, :cond_f

    .line 1345
    iget-object v14, v10, Lcom/alibaba/fastjson/parser/ParserConfig;->acceptHashCodes:[J

    invoke-static {v14, v5, v6}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v14

    if-ltz v14, :cond_e

    .line 1346
    nop

    .line 1335
    move-wide/from16 v35, v5

    goto :goto_a

    .line 1349
    :cond_e
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v35, v5

    const-string v5, "autoType is not support. "

    .end local v5    # "fullHash":J
    .local v35, "fullHash":J
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v14, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1335
    .end local v35    # "fullHash":J
    .restart local v5    # "fullHash":J
    :cond_f
    move-wide/from16 v35, v5

    .end local v5    # "fullHash":J
    .restart local v35    # "fullHash":J
    :goto_a
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v15, v33

    move-wide/from16 v5, v35

    goto :goto_9

    .line 1354
    .end local v0    # "i":I
    .end local v12    # "hash":J
    .end local v33    # "PRIME":J
    .end local v35    # "fullHash":J
    .restart local v5    # "fullHash":J
    .restart local v15    # "PRIME":J
    :cond_10
    move-wide/from16 v35, v5

    move-wide/from16 v33, v15

    .end local v5    # "fullHash":J
    .end local v15    # "PRIME":J
    .restart local v33    # "PRIME":J
    .restart local v35    # "fullHash":J
    :goto_b
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getClassFromMapping(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1356
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_11

    .line 1357
    iget-object v5, v10, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1360
    :cond_11
    if-nez v0, :cond_12

    .line 1361
    iget-object v5, v10, Lcom/alibaba/fastjson/parser/ParserConfig;->typeMapping:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/Class;

    .line 1364
    :cond_12
    if-eqz v1, :cond_13

    .line 1365
    iget-object v5, v10, Lcom/alibaba/fastjson/parser/ParserConfig;->defaultClassLoader:Ljava/lang/ClassLoader;

    const/4 v6, 0x1

    invoke-static {v2, v5, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v0

    .line 1368
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_13
    move-object v5, v0

    if-eqz v5, :cond_16

    .line 1369
    if-eqz v3, :cond_15

    const-class v0, Ljava/util/HashMap;

    if-eq v5, v0, :cond_15

    .line 1371
    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_c

    .line 1372
    :cond_14
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "type not match. "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " -> "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1375
    :cond_15
    :goto_c
    return-object v5

    .line 1378
    :cond_16
    iget-boolean v0, v10, Lcom/alibaba/fastjson/parser/ParserConfig;->autoTypeSupport:Z

    if-nez v0, :cond_1c

    .line 1379
    move-wide v12, v7

    .line 1380
    .restart local v12    # "hash":J
    const/16 v17, 0x3

    .local v17, "i":I
    :goto_d
    move/from16 v0, v17

    .end local v17    # "i":I
    .local v0, "i":I
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_1c

    .line 1381
    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1382
    .local v6, "c":C
    int-to-long v14, v6

    xor-long/2addr v12, v14

    .line 1383
    mul-long v12, v12, v22

    .line 1385
    iget-object v14, v10, Lcom/alibaba/fastjson/parser/ParserConfig;->denyHashCodes:[J

    invoke-static {v14, v12, v13}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v14

    if-gez v14, :cond_1b

    .line 1390
    iget-object v14, v10, Lcom/alibaba/fastjson/parser/ParserConfig;->acceptHashCodes:[J

    invoke-static {v14, v12, v13}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v14

    if-ltz v14, :cond_1a

    .line 1391
    iget-object v14, v10, Lcom/alibaba/fastjson/parser/ParserConfig;->defaultClassLoader:Ljava/lang/ClassLoader;

    const/4 v15, 0x1

    invoke-static {v2, v14, v15}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v5

    .line 1393
    if-nez v5, :cond_17

    .line 1394
    return-object v3

    .line 1397
    :cond_17
    if-eqz v3, :cond_19

    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-nez v14, :cond_18

    .line 1401
    move/from16 v37, v1

    goto :goto_e

    .line 1398
    :cond_18
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v37, v1

    const-string v1, "type not match. "

    .end local v1    # "internalWhite":Z
    .local v37, "internalWhite":Z
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1401
    .end local v37    # "internalWhite":Z
    .restart local v1    # "internalWhite":Z
    :cond_19
    move/from16 v37, v1

    .end local v1    # "internalWhite":Z
    .restart local v37    # "internalWhite":Z
    :goto_e
    return-object v5

    .line 1380
    .end local v6    # "c":C
    .end local v37    # "internalWhite":Z
    .restart local v1    # "internalWhite":Z
    :cond_1a
    move/from16 v37, v1

    .end local v1    # "internalWhite":Z
    .restart local v37    # "internalWhite":Z
    add-int/lit8 v17, v0, 0x1

    .end local v0    # "i":I
    .restart local v17    # "i":I
    goto :goto_d

    .line 1386
    .end local v17    # "i":I
    .end local v37    # "internalWhite":Z
    .restart local v0    # "i":I
    .restart local v1    # "internalWhite":Z
    .restart local v6    # "c":C
    :cond_1b
    move/from16 v37, v1

    .end local v1    # "internalWhite":Z
    .restart local v37    # "internalWhite":Z
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "autoType is not support. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1406
    .end local v0    # "i":I
    .end local v6    # "c":C
    .end local v12    # "hash":J
    .end local v37    # "internalWhite":Z
    .restart local v1    # "internalWhite":Z
    :cond_1c
    move/from16 v37, v1

    .end local v1    # "internalWhite":Z
    .restart local v37    # "internalWhite":Z
    const/4 v1, 0x0

    .line 1407
    .local v1, "jsonType":Z
    const/4 v0, 0x0

    move-object v6, v0

    .line 1409
    .local v6, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x2f

    const/16 v13, 0x2e

    invoke-virtual {v2, v13, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".class"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1410
    .local v0, "resource":Ljava/lang/String;
    iget-object v12, v10, Lcom/alibaba/fastjson/parser/ParserConfig;->defaultClassLoader:Ljava/lang/ClassLoader;

    if-eqz v12, :cond_1d

    .line 1411
    iget-object v12, v10, Lcom/alibaba/fastjson/parser/ParserConfig;->defaultClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v12, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    move-object v6, v12

    goto :goto_f

    .line 1413
    :cond_1d
    const-class v12, Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    move-object v6, v12

    .line 1415
    :goto_f
    if-eqz v6, :cond_1e

    .line 1416
    new-instance v12, Lcom/alibaba/fastjson/asm/ClassReader;

    const/4 v15, 0x1

    invoke-direct {v12, v6, v15}, Lcom/alibaba/fastjson/asm/ClassReader;-><init>(Ljava/io/InputStream;Z)V

    .line 1417
    .local v12, "classReader":Lcom/alibaba/fastjson/asm/ClassReader;
    new-instance v13, Lcom/alibaba/fastjson/asm/TypeCollector;

    const-string v14, "<clinit>"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v39, v0

    const/4 v15, 0x0

    :try_start_1
    new-array v0, v15, [Ljava/lang/Class;

    .end local v0    # "resource":Ljava/lang/String;
    .local v39, "resource":Ljava/lang/String;
    invoke-direct {v13, v14, v0}, Lcom/alibaba/fastjson/asm/TypeCollector;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    move-object v0, v13

    .line 1418
    .local v0, "visitor":Lcom/alibaba/fastjson/asm/TypeCollector;
    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/asm/ClassReader;->accept(Lcom/alibaba/fastjson/asm/TypeCollector;)V

    .line 1419
    invoke-virtual {v0}, Lcom/alibaba/fastjson/asm/TypeCollector;->hasJsonType()Z

    move-result v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v13

    .line 1424
    .end local v1    # "jsonType":Z
    .end local v12    # "classReader":Lcom/alibaba/fastjson/asm/ClassReader;
    .end local v39    # "resource":Ljava/lang/String;
    .local v0, "jsonType":Z
    move v1, v0

    goto :goto_10

    .line 1421
    .end local v0    # "jsonType":Z
    .restart local v1    # "jsonType":Z
    :catch_0
    move-exception v0

    goto :goto_10

    .line 1424
    :cond_1e
    const/4 v15, 0x0

    goto :goto_10

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/alibaba/fastjson/util/IOUtils;->close(Ljava/io/Closeable;)V

    throw v0

    .line 1421
    :catch_1
    move-exception v0

    const/4 v15, 0x0

    .line 1424
    :goto_10
    invoke-static {v6}, Lcom/alibaba/fastjson/util/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1425
    nop

    .line 1427
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->SupportAutoType:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 1428
    .local v0, "mask":I
    iget-boolean v12, v10, Lcom/alibaba/fastjson/parser/ParserConfig;->autoTypeSupport:Z

    if-nez v12, :cond_20

    and-int v12, v4, v0

    if-nez v12, :cond_20

    sget v12, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    and-int/2addr v12, v0

    if-eqz v12, :cond_1f

    goto :goto_11

    :cond_1f
    move v12, v15

    goto :goto_12

    :cond_20
    :goto_11
    const/4 v12, 0x1

    .line 1432
    .local v12, "autoTypeSupport":Z
    :goto_12
    if-nez v12, :cond_21

    if-nez v1, :cond_21

    if-eqz v9, :cond_24

    .line 1433
    :cond_21
    if-nez v12, :cond_23

    if-eqz v1, :cond_22

    goto :goto_13

    :cond_22
    move/from16 v38, v15

    goto :goto_14

    :cond_23
    :goto_13
    const/16 v38, 0x1

    :goto_14
    move/from16 v13, v38

    .line 1434
    .local v13, "cacheClass":Z
    iget-object v14, v10, Lcom/alibaba/fastjson/parser/ParserConfig;->defaultClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v2, v14, v13}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v5

    .line 1437
    .end local v13    # "cacheClass":Z
    :cond_24
    if-eqz v5, :cond_2a

    .line 1438
    if-eqz v1, :cond_25

    .line 1439
    invoke-static {v2, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->addMapping(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1440
    return-object v5

    .line 1443
    :cond_25
    const-class v13, Ljava/lang/ClassLoader;

    invoke-virtual {v13, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-nez v13, :cond_29

    const-class v13, Ljavax/sql/DataSource;

    .line 1444
    invoke-virtual {v13, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-nez v13, :cond_29

    const-class v13, Ljavax/sql/RowSet;

    .line 1445
    invoke-virtual {v13, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-nez v13, :cond_29

    .line 1450
    if-eqz v3, :cond_27

    .line 1451
    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_26

    .line 1452
    invoke-static {v2, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->addMapping(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1453
    return-object v5

    .line 1455
    :cond_26
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "type not match. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " -> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1459
    :cond_27
    iget-object v13, v10, Lcom/alibaba/fastjson/parser/ParserConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-static {v5, v5, v13}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v13

    .line 1460
    .local v13, "beanInfo":Lcom/alibaba/fastjson/util/JavaBeanInfo;
    iget-object v14, v13, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v14, :cond_2a

    if-nez v12, :cond_28

    .line 1465
    .end local v13    # "beanInfo":Lcom/alibaba/fastjson/util/JavaBeanInfo;
    move/from16 v40, v0

    goto :goto_15

    .line 1461
    .restart local v13    # "beanInfo":Lcom/alibaba/fastjson/util/JavaBeanInfo;
    :cond_28
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v40, v0

    const-string v0, "autoType is not support. "

    .end local v0    # "mask":I
    .local v40, "mask":I
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1447
    .end local v13    # "beanInfo":Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .end local v40    # "mask":I
    .restart local v0    # "mask":I
    :cond_29
    move/from16 v40, v0

    .end local v0    # "mask":I
    .restart local v40    # "mask":I
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "autoType is not support. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1465
    .end local v40    # "mask":I
    .restart local v0    # "mask":I
    :cond_2a
    move/from16 v40, v0

    .end local v0    # "mask":I
    .restart local v40    # "mask":I
    :goto_15
    if-eqz v12, :cond_2c

    .line 1469
    if-eqz v5, :cond_2b

    .line 1470
    invoke-static {v2, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->addMapping(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1473
    :cond_2b
    return-object v5

    .line 1466
    :cond_2c
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "autoType is not support. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1309
    .end local v1    # "jsonType":Z
    .end local v7    # "h3":J
    .end local v26    # "safeModeMask":I
    .end local v27    # "safeMode":Z
    .end local v28    # "h1":J
    .end local v33    # "PRIME":J
    .end local v35    # "fullHash":J
    .end local v37    # "internalWhite":Z
    .end local v40    # "mask":I
    .local v5, "safeModeMask":I
    .local v6, "safeMode":Z
    .local v12, "h1":J
    .restart local v15    # "PRIME":J
    :cond_2d
    move/from16 v26, v5

    move/from16 v27, v6

    move-wide/from16 v28, v12

    move-wide/from16 v33, v15

    move-object/from16 v10, p0

    .end local v5    # "safeModeMask":I
    .end local v6    # "safeMode":Z
    .end local v12    # "h1":J
    .end local v15    # "PRIME":J
    .restart local v26    # "safeModeMask":I
    .restart local v27    # "safeMode":Z
    .restart local v28    # "h1":J
    .restart local v33    # "PRIME":J
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "autoType is not support. "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1305
    .end local v26    # "safeModeMask":I
    .end local v27    # "safeMode":Z
    .end local v28    # "h1":J
    .end local v33    # "PRIME":J
    .restart local v5    # "safeModeMask":I
    .restart local v6    # "safeMode":Z
    .restart local v12    # "h1":J
    .restart local v15    # "PRIME":J
    :cond_2e
    move-object v10, v1

    move/from16 v26, v5

    move/from16 v27, v6

    move-wide/from16 v28, v12

    move-wide/from16 v33, v15

    .end local v5    # "safeModeMask":I
    .end local v6    # "safeMode":Z
    .end local v12    # "h1":J
    .end local v15    # "PRIME":J
    .restart local v26    # "safeModeMask":I
    .restart local v27    # "safeMode":Z
    .restart local v28    # "h1":J
    .restart local v33    # "PRIME":J
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "autoType is not support. "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1272
    .end local v9    # "expectClassFlag":Z
    .end local v11    # "className":Ljava/lang/String;
    .end local v18    # "BASIC":J
    .end local v26    # "safeModeMask":I
    .end local v27    # "safeMode":Z
    .end local v28    # "h1":J
    .end local v33    # "PRIME":J
    .restart local v5    # "safeModeMask":I
    .restart local v6    # "safeMode":Z
    :cond_2f
    move-object v10, v1

    move/from16 v26, v5

    move/from16 v27, v6

    .end local v5    # "safeModeMask":I
    .end local v6    # "safeMode":Z
    .restart local v26    # "safeModeMask":I
    .restart local v27    # "safeMode":Z
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "autoType is not support. "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1268
    .end local v26    # "safeModeMask":I
    .end local v27    # "safeMode":Z
    .restart local v5    # "safeModeMask":I
    .restart local v6    # "safeMode":Z
    :cond_30
    move-object v10, v1

    move/from16 v26, v5

    move/from16 v27, v6

    .end local v5    # "safeModeMask":I
    .end local v6    # "safeMode":Z
    .restart local v26    # "safeModeMask":I
    .restart local v27    # "safeMode":Z
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "safeMode not support autoType : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearDeserializers()V
    .locals 1

    .line 1477
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/IdentityHashMap;->clear()V

    .line 1478
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/ParserConfig;->initDeserializers()V

    .line 1479
    return-void
.end method

.method public configFromPropety(Ljava/util/Properties;)V
    .locals 2
    .param p1, "properties"    # Ljava/util/Properties;

    .line 478
    const-string v0, "fastjson.parser.deny"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "property":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->splitItemsFormProperty(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, "items":[Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->addItemsToDeny([Ljava/lang/String;)V

    .line 483
    .end local v0    # "property":Ljava/lang/String;
    .end local v1    # "items":[Ljava/lang/String;
    const-string v0, "fastjson.parser.autoTypeAccept"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    .restart local v0    # "property":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->splitItemsFormProperty(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 485
    .restart local v1    # "items":[Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->addItemsToAccept([Ljava/lang/String;)V

    .line 488
    .end local v0    # "property":Ljava/lang/String;
    .end local v1    # "items":[Ljava/lang/String;
    const-string v0, "fastjson.parser.autoTypeSupport"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    .restart local v0    # "property":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->autoTypeSupport:Z

    goto :goto_0

    .line 491
    :cond_0
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 492
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->autoTypeSupport:Z

    .line 495
    .end local v0    # "property":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method public createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 5
    .param p1, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p2, "beanInfo"    # Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .param p3, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1035
    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->clazz:Ljava/lang/Class;

    .line 1036
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1038
    .local v1, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 1039
    .local v2, "deserializeUsing":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v3

    .line 1040
    .local v3, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v3, :cond_0

    .line 1041
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->deserializeUsing()Ljava/lang/Class;

    move-result-object v2

    .line 1042
    const-class v4, Ljava/lang/Void;

    if-ne v2, v4, :cond_0

    .line 1043
    const/4 v2, 0x0

    .line 1047
    :cond_0
    if-nez v2, :cond_2

    const-class v4, Ljava/util/List;

    if-eq v1, v4, :cond_1

    const-class v4, Ljava/util/ArrayList;

    if-ne v1, v4, :cond_2

    .line 1048
    :cond_1
    new-instance v4, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;

    invoke-direct {v4, p1, v0, p3}, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    return-object v4

    .line 1051
    :cond_2
    new-instance v4, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    invoke-direct {v4, p1, v0, p3}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    return-object v4
.end method

.method public createJavaBeanDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .locals 12
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;"
        }
    .end annotation

    .line 883
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmEnable:Z

    iget-boolean v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->fieldBased:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    and-int/2addr v0, v1

    .line 884
    .local v0, "asmEnable":Z
    if-eqz v0, :cond_5

    .line 885
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {p1, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 887
    .local v1, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v1, :cond_2

    .line 888
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONType;->deserializer()Ljava/lang/Class;

    move-result-object v3

    .line 889
    .local v3, "deserializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/lang/Void;

    if-eq v3, v4, :cond_1

    .line 891
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 892
    .local v4, "deseralizer":Ljava/lang/Object;
    instance-of v5, v4, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    if-eqz v5, :cond_0

    .line 893
    move-object v5, v4

    check-cast v5, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 897
    .end local v4    # "deseralizer":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 895
    :catch_0
    move-exception v4

    .line 900
    :cond_1
    :goto_0
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONType;->asm()Z

    move-result v0

    .line 903
    .end local v3    # "deserializerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    if-eqz v0, :cond_5

    .line 904
    invoke-static {p1, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getBuilderClass(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;

    move-result-object v3

    .line 905
    .local v3, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v3, :cond_3

    .line 906
    move-object v3, p1

    .line 910
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 911
    const/4 v0, 0x0

    .line 912
    goto :goto_1

    .line 915
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 916
    const-class v4, Ljava/lang/Object;

    if-eq v3, v4, :cond_5

    if-nez v3, :cond_3

    .line 917
    nop

    .line 923
    .end local v1    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .end local v3    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_6

    .line 924
    const/4 v0, 0x0

    .line 927
    :cond_6
    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmFactory:Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmFactory:Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/util/ASMClassLoader;->isExternalClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 928
    const/4 v0, 0x0

    .line 931
    :cond_7
    if-eqz v0, :cond_8

    .line 932
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->checkName(Ljava/lang/String;)Z

    move-result v0

    .line 935
    :cond_8
    if-eqz v0, :cond_14

    .line 936
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 937
    const/4 v0, 0x0

    .line 939
    :cond_9
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const/4 v6, 0x0

    sget-boolean v7, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    iget-boolean v8, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->jacksonCompatible:Z

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v3 .. v8}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;ZZZ)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v1

    .line 947
    .local v1, "beanInfo":Lcom/alibaba/fastjson/util/JavaBeanInfo;
    if-eqz v0, :cond_a

    iget-object v3, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v3, v3

    const/16 v4, 0xc8

    if-le v3, v4, :cond_a

    .line 948
    const/4 v0, 0x0

    .line 951
    :cond_a
    iget-object v3, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 952
    .local v3, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-eqz v0, :cond_b

    if-nez v3, :cond_b

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_b

    .line 953
    const/4 v0, 0x0

    .line 956
    :cond_b
    iget-object v4, v1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_14

    aget-object v7, v4, v6

    .line 957
    .local v7, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-boolean v8, v7, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-eqz v8, :cond_c

    .line 958
    const/4 v0, 0x0

    .line 959
    goto/16 :goto_3

    .line 962
    :cond_c
    iget-object v8, v7, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 963
    .local v8, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v8}, Ljava/lang/Class;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v9

    if-nez v9, :cond_d

    .line 964
    const/4 v0, 0x0

    .line 965
    goto/16 :goto_3

    .line 968
    :cond_d
    invoke-virtual {v8}, Ljava/lang/Class;->isMemberClass()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v8}, Ljava/lang/Class;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-nez v9, :cond_e

    .line 969
    const/4 v0, 0x0

    .line 970
    goto :goto_3

    .line 973
    :cond_e
    invoke-virtual {v7}, Lcom/alibaba/fastjson/util/FieldInfo;->getMember()Ljava/lang/reflect/Member;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 974
    invoke-virtual {v7}, Lcom/alibaba/fastjson/util/FieldInfo;->getMember()Ljava/lang/reflect/Member;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/fastjson/util/ASMUtils;->checkName(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 975
    const/4 v0, 0x0

    .line 976
    goto :goto_3

    .line 979
    :cond_f
    invoke-virtual {v7}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v9

    .line 980
    .local v9, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v9, :cond_10

    .line 981
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/fastjson/util/ASMUtils;->checkName(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 982
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_11

    .line 983
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->deserializeUsing()Ljava/lang/Class;

    move-result-object v10

    const-class v11, Ljava/lang/Void;

    if-ne v10, v11, :cond_11

    .line 984
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v10

    array-length v10, v10

    if-nez v10, :cond_11

    .line 985
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->unwrapped()Z

    move-result v10

    if-nez v10, :cond_11

    :cond_10
    iget-object v10, v7, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v10, :cond_12

    iget-object v10, v7, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 986
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    array-length v10, v10

    if-le v10, v2, :cond_12

    .line 987
    :cond_11
    const/4 v0, 0x0

    .line 988
    goto :goto_3

    .line 991
    :cond_12
    invoke-virtual {v8}, Ljava/lang/Class;->isEnum()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 992
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v10

    .line 993
    .local v10, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v11, v10, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    if-nez v11, :cond_13

    .line 994
    const/4 v0, 0x0

    .line 995
    goto :goto_3

    .line 956
    .end local v7    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v8    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v10    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 1001
    .end local v1    # "beanInfo":Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .end local v3    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_14
    :goto_3
    if-eqz v0, :cond_15

    .line 1002
    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1003
    const/4 v0, 0x0

    .line 1007
    :cond_15
    if-eqz v0, :cond_16

    .line 1008
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isXmlField(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1009
    const/4 v0, 0x0

    .line 1013
    :cond_16
    if-nez v0, :cond_17

    .line 1014
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v1

    .line 1017
    :cond_17
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-static {p1, p2, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v1

    .line 1019
    .restart local v1    # "beanInfo":Lcom/alibaba/fastjson/util/JavaBeanInfo;
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmFactory:Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

    invoke-virtual {v2, p0, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->createJavaBeanDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 1027
    :catch_1
    move-exception v2

    .line 1028
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create asm deserializer error, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1025
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 1026
    .local v2, "asmError":Lcom/alibaba/fastjson/JSONException;
    new-instance v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;)V

    return-object v3

    .line 1023
    .end local v2    # "asmError":Lcom/alibaba/fastjson/JSONException;
    :catch_3
    move-exception v2

    .line 1024
    .local v2, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-direct {v3, p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v3
.end method

.method public get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .line 1070
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1071
    .local v0, "mixin":Ljava/lang/reflect/Type;
    if-nez v0, :cond_0

    .line 1072
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    return-object v1

    .line 1074
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->mixInDeserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/IdentityHashMap;

    .line 1075
    .local v1, "mixInClasses":Lcom/alibaba/fastjson/util/IdentityHashMap;, "Lcom/alibaba/fastjson/util/IdentityHashMap<Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;>;"
    if-nez v1, :cond_1

    .line 1076
    const/4 v2, 0x0

    return-object v2

    .line 1078
    :cond_1
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    return-object v2
.end method

.method public getDefaultClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 1174
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->defaultClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getDerializers()Lcom/alibaba/fastjson/util/IdentityHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/fastjson/util/IdentityHashMap<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;",
            ">;"
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    return-object v0
.end method

.method public getDeserializer(Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .locals 2
    .param p1, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1082
    iget-object v0, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    iget-object v1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    return-object v0
.end method

.method public getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .locals 20
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;"
        }
    .end annotation

    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 603
    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    .line 604
    .local v3, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    if-eqz v3, :cond_0

    .line 605
    return-object v3

    .line 608
    :cond_0
    if-nez v0, :cond_1

    .line 609
    move-object v0, v2

    .line 612
    .end local p2    # "type":Ljava/lang/reflect/Type;
    .local v4, "type":Ljava/lang/reflect/Type;
    :cond_1
    move-object v4, v0

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 613
    .end local v3    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .local v0, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    if-eqz v0, :cond_2

    .line 614
    return-object v0

    .line 618
    :cond_2
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 619
    .local v3, "annotation":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v3, :cond_3

    .line 620
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONType;->mappingTo()Ljava/lang/Class;

    move-result-object v5

    .line 621
    .local v5, "mappingTo":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/lang/Void;

    if-eq v5, v6, :cond_3

    .line 622
    invoke-virtual {v1, v5, v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v6

    return-object v6

    .line 627
    .end local v3    # "annotation":Lcom/alibaba/fastjson/annotation/JSONType;
    .end local v5    # "mappingTo":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    instance-of v3, v4, Ljava/lang/reflect/WildcardType;

    if-nez v3, :cond_4

    instance-of v3, v4, Ljava/lang/reflect/TypeVariable;

    if-nez v3, :cond_4

    instance-of v3, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_5

    .line 628
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 631
    :cond_5
    if-eqz v0, :cond_6

    .line 632
    return-object v0

    .line 635
    :cond_6
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/ParserConfig;->modules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v5, v0

    .end local v0    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .local v5, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/spi/Module;

    .line 636
    .local v0, "module":Lcom/alibaba/fastjson/spi/Module;
    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/spi/Module;->createDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v5

    .line 637
    if-eqz v5, :cond_7

    .line 638
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V

    .line 639
    return-object v5

    .line 641
    .end local v0    # "module":Lcom/alibaba/fastjson/spi/Module;
    :cond_7
    goto :goto_0

    .line 643
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 644
    .local v0, "className":Ljava/lang/String;
    const/16 v3, 0x24

    const/16 v6, 0x2e

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 646
    .end local v0    # "className":Ljava/lang/String;
    .local v3, "className":Ljava/lang/String;
    const-string v0, "java.awt."

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_b

    .line 647
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/AwtCodec;->support(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 648
    sget-boolean v0, Lcom/alibaba/fastjson/parser/ParserConfig;->awtError:Z

    if-nez v0, :cond_b

    .line 649
    const-string v0, "java.awt.Point"

    const-string v8, "java.awt.Font"

    const-string v9, "java.awt.Rectangle"

    const-string v10, "java.awt.Color"

    filled-new-array {v0, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 657
    .local v8, "names":[Ljava/lang/String;
    :try_start_0
    array-length v0, v8

    move v9, v6

    :goto_1
    if-ge v9, v0, :cond_a

    aget-object v10, v8, v9

    .line 658
    .local v10, "name":Ljava/lang/String;
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 659
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v9, Lcom/alibaba/fastjson/serializer/AwtCodec;->instance:Lcom/alibaba/fastjson/serializer/AwtCodec;

    move-object v5, v9

    invoke-virtual {v1, v0, v9}, Lcom/alibaba/fastjson/parser/ParserConfig;->putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    return-object v5

    .line 657
    .end local v10    # "name":Ljava/lang/String;
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 666
    :cond_a
    goto :goto_2

    .line 663
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Ljava/lang/Throwable;
    sput-boolean v7, Lcom/alibaba/fastjson/parser/ParserConfig;->awtError:Z

    .line 668
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    sget-object v5, Lcom/alibaba/fastjson/serializer/AwtCodec;->instance:Lcom/alibaba/fastjson/serializer/AwtCodec;

    .line 672
    .end local v8    # "names":[Ljava/lang/String;
    :cond_b
    sget-boolean v0, Lcom/alibaba/fastjson/parser/ParserConfig;->jdk8Error:Z

    if-nez v0, :cond_11

    .line 674
    :try_start_1
    const-string v0, "java.time."

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 675
    const-string v8, "java.time.LocalDateTime"

    const-string v9, "java.time.LocalDate"

    const-string v10, "java.time.LocalTime"

    const-string v11, "java.time.ZonedDateTime"

    const-string v12, "java.time.OffsetDateTime"

    const-string v13, "java.time.OffsetTime"

    const-string v14, "java.time.ZoneOffset"

    const-string v15, "java.time.ZoneRegion"

    const-string v16, "java.time.ZoneId"

    const-string v17, "java.time.Period"

    const-string v18, "java.time.Duration"

    const-string v19, "java.time.Instant"

    filled-new-array/range {v8 .. v19}, [Ljava/lang/String;

    move-result-object v0

    .line 690
    .local v0, "names":[Ljava/lang/String;
    array-length v8, v0

    move v9, v6

    :goto_3
    if-ge v9, v8, :cond_d

    aget-object v10, v0, v9

    .line 691
    .restart local v10    # "name":Ljava/lang/String;
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 692
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    move-object v5, v9

    invoke-virtual {v1, v8, v9}, Lcom/alibaba/fastjson/parser/ParserConfig;->putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V

    .line 693
    return-object v5

    .line 690
    .end local v10    # "name":Ljava/lang/String;
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 696
    .end local v0    # "names":[Ljava/lang/String;
    :cond_d
    goto :goto_5

    :cond_e
    const-string v0, "java.util.Optional"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 697
    const-string v0, "java.util.Optional"

    const-string v8, "java.util.OptionalDouble"

    const-string v9, "java.util.OptionalInt"

    const-string v10, "java.util.OptionalLong"

    filled-new-array {v0, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v0

    .line 703
    .restart local v0    # "names":[Ljava/lang/String;
    array-length v8, v0

    move v9, v6

    :goto_4
    if-ge v9, v8, :cond_10

    aget-object v10, v0, v9

    .line 704
    .restart local v10    # "name":Ljava/lang/String;
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 705
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;

    move-object v5, v9

    invoke-virtual {v1, v8, v9}, Lcom/alibaba/fastjson/parser/ParserConfig;->putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 706
    return-object v5

    .line 703
    .end local v10    # "name":Ljava/lang/String;
    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 713
    .end local v0    # "names":[Ljava/lang/String;
    :cond_10
    :goto_5
    goto :goto_6

    .line 710
    :catch_1
    move-exception v0

    .line 712
    .local v0, "e":Ljava/lang/Throwable;
    sput-boolean v7, Lcom/alibaba/fastjson/parser/ParserConfig;->jdk8Error:Z

    .line 716
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_11
    :goto_6
    sget-boolean v0, Lcom/alibaba/fastjson/parser/ParserConfig;->jodaError:Z

    if-nez v0, :cond_14

    .line 718
    :try_start_2
    const-string v0, "org.joda.time."

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 719
    const-string v8, "org.joda.time.DateTime"

    const-string v9, "org.joda.time.LocalDate"

    const-string v10, "org.joda.time.LocalDateTime"

    const-string v11, "org.joda.time.LocalTime"

    const-string v12, "org.joda.time.Instant"

    const-string v13, "org.joda.time.Period"

    const-string v14, "org.joda.time.Duration"

    const-string v15, "org.joda.time.DateTimeZone"

    const-string v16, "org.joda.time.format.DateTimeFormatter"

    filled-new-array/range {v8 .. v16}, [Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, "names":[Ljava/lang/String;
    array-length v8, v0

    move v9, v6

    :goto_7
    if-ge v9, v8, :cond_13

    aget-object v10, v0, v9

    .line 732
    .restart local v10    # "name":Ljava/lang/String;
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 733
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Lcom/alibaba/fastjson/serializer/JodaCodec;->instance:Lcom/alibaba/fastjson/serializer/JodaCodec;

    move-object v5, v9

    invoke-virtual {v1, v8, v9}, Lcom/alibaba/fastjson/parser/ParserConfig;->putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 734
    return-object v5

    .line 731
    .end local v10    # "name":Ljava/lang/String;
    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 741
    .end local v0    # "names":[Ljava/lang/String;
    :cond_13
    goto :goto_8

    .line 738
    :catch_2
    move-exception v0

    .line 740
    .local v0, "e":Ljava/lang/Throwable;
    sput-boolean v7, Lcom/alibaba/fastjson/parser/ParserConfig;->jodaError:Z

    .line 744
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_14
    :goto_8
    sget-boolean v0, Lcom/alibaba/fastjson/parser/ParserConfig;->guavaError:Z

    if-nez v0, :cond_17

    const-string v0, "com.google.common.collect."

    .line 745
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 747
    :try_start_3
    const-string v0, "com.google.common.collect.HashMultimap"

    const-string v8, "com.google.common.collect.LinkedListMultimap"

    const-string v9, "com.google.common.collect.LinkedHashMultimap"

    const-string v10, "com.google.common.collect.ArrayListMultimap"

    const-string v11, "com.google.common.collect.TreeMultimap"

    filled-new-array {v0, v8, v9, v10, v11}, [Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, "names":[Ljava/lang/String;
    array-length v8, v0

    move v9, v6

    :goto_9
    if-ge v9, v8, :cond_16

    aget-object v10, v0, v9

    .line 756
    .restart local v10    # "name":Ljava/lang/String;
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 757
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Lcom/alibaba/fastjson/serializer/GuavaCodec;->instance:Lcom/alibaba/fastjson/serializer/GuavaCodec;

    move-object v5, v9

    invoke-virtual {v1, v8, v9}, Lcom/alibaba/fastjson/parser/ParserConfig;->putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 758
    return-object v5

    .line 755
    .end local v10    # "name":Ljava/lang/String;
    :cond_15
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 764
    .end local v0    # "names":[Ljava/lang/String;
    :cond_16
    goto :goto_a

    .line 761
    :catch_3
    move-exception v0

    .line 763
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sput-boolean v7, Lcom/alibaba/fastjson/parser/ParserConfig;->guavaError:Z

    .line 767
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_17
    :goto_a
    const-string v0, "java.nio.ByteBuffer"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 768
    sget-object v0, Lcom/alibaba/fastjson/serializer/ByteBufferCodec;->instance:Lcom/alibaba/fastjson/serializer/ByteBufferCodec;

    move-object v5, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V

    .line 771
    :cond_18
    const-string v0, "java.nio.file.Path"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 772
    sget-object v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    move-object v5, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V

    .line 775
    :cond_19
    const-class v0, Ljava/util/Map$Entry;

    if-ne v2, v0, :cond_1a

    .line 776
    sget-object v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    move-object v5, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V

    .line 779
    :cond_1a
    const-string v0, "org.javamoney.moneta.Money"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 780
    sget-object v0, Lcom/alibaba/fastjson/support/moneta/MonetaCodec;->instance:Lcom/alibaba/fastjson/support/moneta/MonetaCodec;

    move-object v5, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V

    .line 783
    :cond_1b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    move-object v7, v0

    .line 785
    .local v7, "classLoader":Ljava/lang/ClassLoader;
    :try_start_4
    const-class v0, Lcom/alibaba/fastjson/parser/deserializer/AutowiredObjectDeserializer;

    invoke-static {v0, v7}, Lcom/alibaba/fastjson/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/fastjson/parser/deserializer/AutowiredObjectDeserializer;

    .line 787
    .local v8, "autowired":Lcom/alibaba/fastjson/parser/deserializer/AutowiredObjectDeserializer;
    invoke-interface {v8}, Lcom/alibaba/fastjson/parser/deserializer/AutowiredObjectDeserializer;->getAutowiredFor()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/reflect/Type;

    .line 788
    .local v10, "forType":Ljava/lang/reflect/Type;
    invoke-virtual {v1, v10, v8}, Lcom/alibaba/fastjson/parser/ParserConfig;->putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 789
    .end local v10    # "forType":Ljava/lang/reflect/Type;
    goto :goto_c

    .line 790
    .end local v8    # "autowired":Lcom/alibaba/fastjson/parser/deserializer/AutowiredObjectDeserializer;
    :cond_1c
    goto :goto_b

    .line 793
    :cond_1d
    goto :goto_d

    .line 791
    :catch_4
    move-exception v0

    .line 795
    :goto_d
    if-nez v5, :cond_1e

    .line 796
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v5

    .line 799
    :cond_1e
    if-eqz v5, :cond_1f

    .line 800
    return-object v5

    .line 803
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 804
    iget-boolean v0, v1, Lcom/alibaba/fastjson/parser/ParserConfig;->jacksonCompatible:Z

    if-eqz v0, :cond_21

    .line 805
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 806
    .local v0, "methods":[Ljava/lang/reflect/Method;
    array-length v8, v0

    :goto_e
    if-ge v6, v8, :cond_21

    aget-object v9, v0, v6

    .line 807
    .local v9, "method":Ljava/lang/reflect/Method;
    invoke-static {v9}, Lcom/alibaba/fastjson/util/TypeUtils;->isJacksonCreator(Ljava/lang/reflect/Method;)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 808
    invoke-virtual {v1, v2, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->createJavaBeanDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v5

    .line 809
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V

    .line 810
    return-object v5

    .line 806
    .end local v9    # "method":Ljava/lang/reflect/Method;
    :cond_20
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 815
    .end local v0    # "methods":[Ljava/lang/reflect/Method;
    :cond_21
    const/4 v0, 0x0

    .line 816
    .local v0, "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {v2, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 817
    .local v6, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v6, :cond_22

    .line 818
    invoke-interface {v6}, Lcom/alibaba/fastjson/annotation/JSONType;->deserializer()Ljava/lang/Class;

    move-result-object v8

    .line 820
    .end local v0    # "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v8, "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-object v5, v0

    .line 821
    invoke-virtual {v1, v2, v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 822
    return-object v5

    .line 823
    :catch_5
    move-exception v0

    .line 828
    move-object v0, v8

    .end local v8    # "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_22
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getEnumDeserializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 829
    .end local v5    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v6    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .local v0, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    goto :goto_11

    .end local v0    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v5    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_23
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 830
    sget-object v0, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;->instance:Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;

    .end local v5    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v0    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :goto_f
    goto :goto_11

    .line 831
    .end local v0    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v5    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_24
    const-class v0, Ljava/util/Set;

    if-eq v2, v0, :cond_2b

    const-class v0, Ljava/util/HashSet;

    if-eq v2, v0, :cond_2b

    const-class v0, Ljava/util/Collection;

    if-eq v2, v0, :cond_2b

    const-class v0, Ljava/util/List;

    if-eq v2, v0, :cond_2b

    const-class v0, Ljava/util/ArrayList;

    if-ne v2, v0, :cond_25

    goto :goto_10

    .line 834
    :cond_25
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 835
    sget-object v0, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    goto :goto_f

    .line 836
    :cond_26
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 837
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    goto :goto_f

    .line 838
    :cond_27
    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 839
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V

    goto :goto_f

    .line 840
    :cond_28
    const-class v0, Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 841
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessableDeserializer;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessableDeserializer;-><init>(Ljava/lang/Class;)V

    goto :goto_f

    .line 842
    :cond_29
    const-class v0, Ljava/net/InetAddress;

    if-ne v2, v0, :cond_2a

    .line 843
    sget-object v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    goto :goto_f

    .line 845
    :cond_2a
    invoke-virtual {v1, v2, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->createJavaBeanDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    goto :goto_f

    .line 833
    :cond_2b
    :goto_10
    sget-object v0, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    goto :goto_f

    .line 848
    .end local v5    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v0    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :goto_11
    invoke-virtual {v1, v4, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V

    .line 850
    return-object v0
.end method

.method public getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .locals 5
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .line 572
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 573
    .local v0, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    if-eqz v0, :cond_0

    .line 574
    return-object v0

    .line 577
    :cond_0
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 578
    move-object v1, p1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p0, v1, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    return-object v1

    .line 581
    :cond_1
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_3

    .line 582
    move-object v1, p1

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 583
    .local v1, "rawType":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_2

    .line 584
    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {p0, v2, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2

    return-object v2

    .line 586
    :cond_2
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2

    return-object v2

    .line 590
    .end local v1    # "rawType":Ljava/lang/reflect/Type;
    :cond_3
    instance-of v1, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_4

    .line 591
    move-object v1, p1

    check-cast v1, Ljava/lang/reflect/WildcardType;

    .line 592
    .local v1, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 593
    .local v2, "upperBounds":[Ljava/lang/reflect/Type;
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 594
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 595
    .local v3, "upperBoundType":Ljava/lang/reflect/Type;
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v4

    return-object v4

    .line 599
    .end local v1    # "wildcardType":Ljava/lang/reflect/WildcardType;
    .end local v2    # "upperBounds":[Ljava/lang/reflect/Type;
    .end local v3    # "upperBoundType":Ljava/lang/reflect/Type;
    :cond_4
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    return-object v1
.end method

.method public getDeserializers()Lcom/alibaba/fastjson/util/IdentityHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/fastjson/util/IdentityHashMap<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;",
            ">;"
        }
    .end annotation

    .line 568
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    return-object v0
.end method

.method protected getEnumDeserializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;"
        }
    .end annotation

    .line 861
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public varargs initJavaBeanDeserializers([Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 869
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 870
    return-void

    .line 873
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 874
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v2, :cond_1

    .line 875
    goto :goto_1

    .line 877
    :cond_1
    invoke-virtual {p0, v2, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->createJavaBeanDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    .line 878
    .local v3, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V

    .line 873
    .end local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 880
    :cond_2
    return-void
.end method

.method public isAsmEnable()Z
    .locals 1

    .line 553
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmEnable:Z

    return v0
.end method

.method public isAutoTypeSupport()Z
    .locals 1

    .line 545
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->autoTypeSupport:Z

    return v0
.end method

.method public isJacksonCompatible()Z
    .locals 1

    .line 1482
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->jacksonCompatible:Z

    return v0
.end method

.method public isPrimitive(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1089
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isSafeMode()Z
    .locals 1

    .line 534
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->safeMode:Z

    return v0
.end method

.method public putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "deserializer"    # Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 1055
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1056
    .local v0, "mixin":Ljava/lang/reflect/Type;
    if-eqz v0, :cond_1

    .line 1057
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->mixInDeserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/IdentityHashMap;

    .line 1058
    .local v1, "mixInClasses":Lcom/alibaba/fastjson/util/IdentityHashMap;, "Lcom/alibaba/fastjson/util/IdentityHashMap<Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;>;"
    if-nez v1, :cond_0

    .line 1060
    new-instance v2, Lcom/alibaba/fastjson/util/IdentityHashMap;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap;-><init>(I)V

    move-object v1, v2

    .line 1061
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->mixInDeserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v2, p1, v1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1063
    :cond_0
    invoke-virtual {v1, v0, p2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1064
    .end local v1    # "mixInClasses":Lcom/alibaba/fastjson/util/IdentityHashMap;, "Lcom/alibaba/fastjson/util/IdentityHashMap<Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;>;"
    goto :goto_0

    .line 1065
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1067
    :goto_0
    return-void
.end method

.method public register(Lcom/alibaba/fastjson/spi/Module;)V
    .locals 1
    .param p1, "module"    # Lcom/alibaba/fastjson/spi/Module;

    .line 1494
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->modules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1495
    return-void
.end method

.method public register(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "typeName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;

    .line 1490
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->typeMapping:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1491
    return-void
.end method

.method public setAsmEnable(Z)V
    .locals 0
    .param p1, "asmEnable"    # Z

    .line 557
    iput-boolean p1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmEnable:Z

    .line 558
    return-void
.end method

.method public setAutoTypeSupport(Z)V
    .locals 0
    .param p1, "autoTypeSupport"    # Z

    .line 549
    iput-boolean p1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->autoTypeSupport:Z

    .line 550
    return-void
.end method

.method public setDefaultClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "defaultClassLoader"    # Ljava/lang/ClassLoader;

    .line 1178
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->defaultClassLoader:Ljava/lang/ClassLoader;

    .line 1179
    return-void
.end method

.method public setJacksonCompatible(Z)V
    .locals 0
    .param p1, "jacksonCompatible"    # Z

    .line 1486
    iput-boolean p1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->jacksonCompatible:Z

    .line 1487
    return-void
.end method

.method public setSafeMode(Z)V
    .locals 0
    .param p1, "safeMode"    # Z

    .line 541
    iput-boolean p1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->safeMode:Z

    .line 542
    return-void
.end method
