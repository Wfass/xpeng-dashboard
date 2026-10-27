.class public Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;
.super Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;
.source "ATLv2Manager.java"


# static fields
.field private static final AMBIENT:Ljava/lang/String; = "{\"name\":\"run_ambient\",\"count\":-1,\"packets\":[{\"groups\":[2, 3, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24],\"colors\":[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20],\"bright\":100,\"fade\":3000,\"period\":1000}]}"

.field private static final BREATH:Ljava/lang/String; = "{\"name\":\"run_breath\",\"count\":-1,\"packets\":[{\"groups\":[3],\"colors\":[1],\"bright\":100,\"fade\":3000,\"period\":3000},{\"groups\":[3],\"colors\":[1],\"bright\":5,\"fade\":3000,\"period\":3000}]}"

.field private static final COLORS:Ljava/lang/String; = "[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]"

.field private static final FLASH:Ljava/lang/String; = "{\"name\":\"run_flash\",\"count\":-1,\"packets\":[{\"groups\":[3],\"colors\":[1],\"bright\":100,\"fade\":3000,\"period\":500},{\"groups\":[3],\"colors\":[1],\"bright\":5,\"fade\":3000,\"period\":500}]}"

.field private static final FRONT:Ljava/lang/String; = "{\"name\":\"run_front\",\"count\":1,\"packets\":[{\"groups\":[38],\"colors\":[1],\"bright\":100,\"fade\":3000,\"period\":1000}]}"

.field private static final GRADIENT:Ljava/lang/String; = "{\"name\":\"run_gradient\",\"count\":1,\"packets\":[{\"groups\":[3],\"colors\":[1],\"bright\":5,\"fade\":3000,\"period\":1000},{\"groups\":[3],\"colors\":[1],\"bright\":100,\"fade\":3000,\"period\":1000}]}"

.field private static final LEFT:Ljava/lang/String; = "{\"name\":\"run_left\",\"count\":1,\"packets\":[{\"groups\":[39],\"colors\":[1],\"bright\":100,\"fade\":3000,\"period\":1000}]}"

.field private static final LEFTRIGHT:Ljava/lang/String; = "{\"name\":\"run_music2\",\"count\":-1,\"hasRhythm\":true,\"packets\":[{\"groups\":[43],\"colors\":[1],\"bright\":100,\"fade\":3000,\"period\":1000}]}"

.field private static final LEFTTOP:Ljava/lang/String; = "{\"name\":\"run_lefttop\",\"count\":1,\"packets\":[{\"groups\":[41],\"colors\":[1],\"bright\":100,\"fade\":3000,\"period\":1000}]}"

.field private static final MAIN:Ljava/lang/String; = "{\"name\":\"run_main\",\"count\":1,\"packets\":[{\"groups\":[37],\"colors\":[1],\"bright\":100,\"fade\":3000,\"period\":1000}]}"

.field private static final MODULE_NAME:Ljava/lang/String; = "AmbientLightManager"

.field private static final MUSIC:Ljava/lang/String; = "{\"name\":\"run_music\",\"count\":-1,\"hasRhythm\":true,\"packets\":[{\"groups\":[3],\"colors\":[1],\"bright\":100,\"fade\":3000,\"period\":1000}]}"

.field private static final MUTIMYSTERY:Ljava/lang/String; = "{\"name\":\"run_mutimystery\",\"count\":-1,\"packets\":[{\"groups\":[3],\"colors\":[1],\"bright\":100,\"fade\":3000,\"period\":1000},{\"groups\":[111, 112, 113, 115, 116],\"colors\":[1],\"bright\":100,\"fade\":150,\"period\":1000}]}"

.field private static final MYSTERY:Ljava/lang/String; = "{\"name\":\"run_mystery\",\"count\":-1,\"packets\":[{\"groups\":[101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119],\"colors\":[3],\"bright\":100,\"fade\":3000,\"period\":500}]}"

.field private static final RIGHT:Ljava/lang/String; = "{\"name\":\"run_right\",\"count\":1,\"packets\":[{\"groups\":[40],\"colors\":[1],\"bright\":100,\"fade\":3000,\"period\":1000}]}"

.field private static final RIGHTTOP:Ljava/lang/String; = "{\"name\":\"run_righttop\",\"count\":1,\"packets\":[{\"groups\":[42],\"colors\":[1],\"bright\":100,\"fade\":3000,\"period\":1000}]}"

.field private static final SPEED:Ljava/lang/String; = "{\"name\":\"run_speed\",\"count\":-1,\"packets\":[{\"groups\":[3],\"colors\":[1],\"bright\":-1,\"fade\":3000,\"period\":1000}]}"

.field private static final STABLE:Ljava/lang/String; = "{\"name\":\"run_stable\",\"count\":-1,\"packets\":[{\"groups\":[3],\"colors\":[1],\"bright\":100,\"fade\":3000,\"period\":3000}]}"

.field private static final TAG:Ljava/lang/String; = "ATLv2Manager"

.field private static final TURNOFF:Ljava/lang/String; = "{\"name\":\"run_turnoff\",\"count\":1,\"packets\":[{\"groups\":[0],\"colors\":[0],\"bright\":0,\"fade\":0,\"period\":1000}]}"

.field private static instance:Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;

.field private static final mEffectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

.field private static mUidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;


# instance fields
.field private mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->mEffectMap:Ljava/util/Map;

    .line 116
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;

    .line 117
    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    .line 118
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->mUidMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 121
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;-><init>()V

    .line 122
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    if-nez v0, :cond_0

    .line 124
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager$2;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;)V

    .line 123
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/XUIManager;->createXUIManager(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    .line 143
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->connect()V

    .line 145
    const-string v0, "ambient"

    new-instance v1, Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$ATLv2Manager$ujxg5Rhp1IfnjBcfdVt_TnikmeI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$ATLv2Manager$ujxg5Rhp1IfnjBcfdVt_TnikmeI;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 149
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;Lcom/xiaopeng/xuimanager/ambient/AmbientManager;)Lcom/xiaopeng/xuimanager/ambient/AmbientManager;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;
    .param p1, "x1"    # Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    return-object p1
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuimanager/XUIManager;
    .locals 1

    .line 45
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;
    .locals 2

    .line 152
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;

    if-nez v0, :cond_1

    .line 153
    const-class v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;

    monitor-enter v0

    .line 154
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;

    if-nez v1, :cond_0

    .line 155
    new-instance v1, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;

    .line 157
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 160
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;

    return-object v0
.end method

.method private handleIoControl(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;

    .line 254
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const v2, -0xc6d0329

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ambientRequest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 259
    return v1

    .line 256
    :cond_2
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->requestAmbientLightPermission([Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private handleIoControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "results"    # [Ljava/lang/String;

    .line 263
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7eec3d4a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const v1, 0x316e3a4a

    if-eq v0, v1, :cond_1

    const v1, 0x66343656

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "stopPlay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "pausePlay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "startPlay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 269
    :pswitch_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->stopAmbientLightEffect()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    goto :goto_2

    .line 265
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->playAmbientLightEffect([Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    .line 266
    nop

    .line 273
    :goto_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method private playAmbientLightEffect([Ljava/lang/String;)I
    .locals 21
    .param p1, "params"    # [Ljava/lang/String;

    .line 290
    move-object/from16 v1, p1

    if-eqz v1, :cond_b

    :try_start_0
    array-length v0, v1

    if-lez v0, :cond_b

    .line 291
    new-instance v0, Lorg/json/JSONObject;

    const/4 v3, 0x0

    aget-object v4, v1, v3

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 292
    .local v0, "param":Lorg/json/JSONObject;
    const/4 v4, 0x1

    aget-object v5, v1, v4

    .line 294
    .local v5, "name":Ljava/lang/String;
    sget-object v6, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->mEffectMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 295
    new-instance v6, Lcom/google/gson/GsonBuilder;

    invoke-direct {v6}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v6

    .line 296
    .local v6, "gson":Lcom/google/gson/Gson;
    sget-object v7, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->mEffectMap:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    .line 297
    .local v7, "element":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Lorg/json/JSONObject;

    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 298
    .local v8, "obj":Lorg/json/JSONObject;
    const-string v9, "packets"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 299
    .local v9, "packets":Lorg/json/JSONArray;
    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/json/JSONObject;

    .line 300
    .local v10, "first":Lorg/json/JSONObject;
    iget-object v11, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 301
    .local v11, "limit":I
    const-string v12, "color"

    .line 302
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "color"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v12}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v12

    const-class v13, [I

    .line 301
    invoke-virtual {v6, v12, v13}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [I

    .line 304
    .local v12, "color":[I
    const-string v13, "bright"

    .line 305
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "bright"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    invoke-virtual {v13}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v13

    const-class v14, [I

    .line 304
    invoke-virtual {v6, v13, v14}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    .line 307
    .local v13, "bright":[I
    const-string v14, "fade"

    .line 308
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "fade"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    invoke-virtual {v14}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v14

    const-class v15, [I

    .line 307
    invoke-virtual {v6, v14, v15}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [I

    .line 310
    .local v14, "fade":[I
    const-string v15, "timeInterval"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 311
    .local v15, "period":I
    array-length v2, v12

    array-length v3, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    array-length v3, v14

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 313
    .local v2, "len":I
    if-eqz v11, :cond_a

    .line 314
    if-lez v11, :cond_0

    .line 315
    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v3

    .line 318
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_9

    .line 319
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v3, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 320
    .local v4, "append":Z
    :goto_1
    if-eqz v4, :cond_2

    move-object/from16 v17, v0

    new-instance v0, Lorg/json/JSONObject;

    .end local v0    # "param":Lorg/json/JSONObject;
    .local v17, "param":Lorg/json/JSONObject;
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_2

    .end local v17    # "param":Lorg/json/JSONObject;
    .restart local v0    # "param":Lorg/json/JSONObject;
    :cond_2
    move-object/from16 v17, v0

    .end local v0    # "param":Lorg/json/JSONObject;
    .restart local v17    # "param":Lorg/json/JSONObject;
    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 322
    .local v0, "packet":Lorg/json/JSONObject;
    :goto_2
    const-string v1, "colors"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    move/from16 v18, v2

    const/4 v2, 0x1

    if-gt v1, v2, :cond_5

    .line 323
    .end local v2    # "len":I
    .local v18, "len":I
    array-length v1, v12

    if-le v1, v3, :cond_3

    aget v1, v12, v3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    aget v16, v12, v1

    move/from16 v1, v16

    .line 325
    .local v1, "data":I
    :goto_3
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 326
    const-string v2, "colors"

    move-object/from16 v19, v5

    new-instance v5, Lorg/json/JSONArray;

    .end local v5    # "name":Ljava/lang/String;
    .local v19, "name":Ljava/lang/String;
    move-object/from16 v20, v7

    const-string v7, "[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]"

    .end local v7    # "element":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .local v20, "element":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v5, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 328
    .end local v19    # "name":Ljava/lang/String;
    .end local v20    # "element":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v7    # "element":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v19, v5

    move-object/from16 v20, v7

    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "element":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "name":Ljava/lang/String;
    .restart local v20    # "element":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 330
    .local v2, "array":Lorg/json/JSONArray;
    const-string v5, "colors"

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .end local v1    # "data":I
    .end local v2    # "array":Lorg/json/JSONArray;
    goto :goto_4

    .line 334
    .end local v19    # "name":Ljava/lang/String;
    .end local v20    # "element":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v7    # "element":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    move-object/from16 v19, v5

    move-object/from16 v20, v7

    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "element":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "name":Ljava/lang/String;
    .restart local v20    # "element":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_4
    const-string v1, "bright"

    array-length v2, v13

    if-le v2, v3, :cond_6

    aget v2, v13, v3

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    aget v5, v13, v2

    move v2, v5

    :goto_5
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 335
    const-string v1, "fade"

    array-length v2, v14

    if-le v2, v3, :cond_7

    aget v2, v14, v3

    move v5, v2

    const/4 v2, 0x0

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    aget v5, v14, v2

    :goto_6
    mul-int/lit8 v5, v5, 0x14

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 337
    const-string v1, "period"

    invoke-virtual {v0, v1, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 339
    if-eqz v4, :cond_8

    .line 340
    const-string v1, "groups"

    const-string v5, "groups"

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 318
    .end local v0    # "packet":Lorg/json/JSONObject;
    .end local v4    # "append":Z
    :cond_8
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v17

    move/from16 v2, v18

    move-object/from16 v5, v19

    move-object/from16 v7, v20

    move-object/from16 v1, p1

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 346
    .end local v3    # "i":I
    .end local v17    # "param":Lorg/json/JSONObject;
    .end local v18    # "len":I
    .end local v19    # "name":Ljava/lang/String;
    .end local v20    # "element":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .local v0, "param":Lorg/json/JSONObject;
    .local v2, "len":I
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v7    # "element":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    move-object/from16 v17, v0

    move/from16 v18, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v7

    .end local v0    # "param":Lorg/json/JSONObject;
    .end local v2    # "len":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "element":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v17    # "param":Lorg/json/JSONObject;
    .restart local v18    # "len":I
    .restart local v19    # "name":Ljava/lang/String;
    .restart local v20    # "element":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_7

    .end local v17    # "param":Lorg/json/JSONObject;
    .end local v18    # "len":I
    .end local v19    # "name":Ljava/lang/String;
    .end local v20    # "element":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v0    # "param":Lorg/json/JSONObject;
    .restart local v2    # "len":I
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v7    # "element":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    move-object/from16 v17, v0

    move-object/from16 v19, v5

    move-object/from16 v20, v7

    .end local v0    # "param":Lorg/json/JSONObject;
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "element":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v17    # "param":Lorg/json/JSONObject;
    .restart local v19    # "name":Ljava/lang/String;
    .restart local v20    # "element":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_7
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;

    invoke-virtual {v6, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;

    .line 348
    .local v0, "effect":Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;
    const-string v1, "ATLv2Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playAmbientLightEffect, effect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;->toJson()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 350
    move-object/from16 v1, p0

    :try_start_1
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    const-string v4, "all"

    invoke-virtual {v3, v4, v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->playAmbientLightEffect(Ljava/lang/String;Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    .line 353
    .end local v0    # "effect":Lcom/xiaopeng/xuimanager/ambient/AmbientEffect;
    .end local v2    # "len":I
    .end local v6    # "gson":Lcom/google/gson/Gson;
    .end local v8    # "obj":Lorg/json/JSONObject;
    .end local v9    # "packets":Lorg/json/JSONArray;
    .end local v10    # "first":Lorg/json/JSONObject;
    .end local v11    # "limit":I
    .end local v12    # "color":[I
    .end local v13    # "bright":[I
    .end local v14    # "fade":[I
    .end local v15    # "period":I
    .end local v17    # "param":Lorg/json/JSONObject;
    .end local v19    # "name":Ljava/lang/String;
    .end local v20    # "element":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    .line 354
    .local v0, "e":Ljava/lang/Exception;
    :goto_8
    const-string v2, "ATLv2Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playAmbientLightEffect failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_9

    .line 355
    :cond_b
    move-object/from16 v1, p0

    .line 357
    :goto_9
    const/4 v2, -0x1

    return v2
.end method

.method private requestAmbientLightPermission([Ljava/lang/String;)I
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .line 278
    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    const-string v1, "1"

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->requestAmbientLightPermission(Z)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ATLv2Manager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestAmbientLightPermission failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 283
    :cond_0
    nop

    .line 285
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private stopAmbientLightEffect()I
    .locals 4

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->mManager:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->stopAmbientLightEffect()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ATLv2Manager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopAmbientLightEffect failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    monitor-enter p0

    .line 187
    :try_start_0
    const-string v0, "ATLv2Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addListener, listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    sput-object p1, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 186
    .end local p1    # "listener":Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;
    throw p1
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 218
    const/4 v0, -0x1

    .line 219
    .local v0, "ret":I
    const-string v1, "*dump-ATLv2Manager"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    if-eqz p2, :cond_a

    .line 222
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .line 222
    .local v0, "i":I
    .local v2, "ret":I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_9

    .line 223
    aget-object v3, p2, v0

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x6c14a711

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v5, v6, :cond_2

    const v6, -0x33e2887b    # -4.1278996E7f

    if-eq v5, v6, :cond_1

    const v6, 0x1d55a1d3

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "--stopEffect"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v4, v7

    goto :goto_1

    :cond_1
    const-string v5, "--playEffect"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v4, v8

    goto :goto_1

    :cond_2
    const-string v5, "--request"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v4, v1

    :cond_3
    :goto_1
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_7

    .line 244
    :pswitch_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->stopAmbientLightEffect()I

    move-result v2

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopEffect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_4

    const-string v4, "succeed"

    goto :goto_2

    :cond_4
    const-string v4, "failed"

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 236
    :pswitch_1
    const-string/jumbo v3, "{\"color\":{\"color\":[1,2]},\"bright\":{\"bright\":[80,5]},\"fade\":{\"fade\":[150]},\"executeTime\":10000,\"timeInterval\":1000}"

    .line 238
    .local v3, "jsonStr":Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/String;

    aput-object v3, v4, v1

    const-string v5, "effect_gentle_breathing"

    aput-object v5, v4, v8

    .line 239
    .local v4, "params":[Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->playAmbientLightEffect([Ljava/lang/String;)I

    move-result v2

    .line 241
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playEffect "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_5

    const-string v6, "succeed"

    goto :goto_3

    :cond_5
    const-string v6, "failed"

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    goto :goto_7

    .line 225
    .end local v3    # "jsonStr":Ljava/lang/String;
    .end local v4    # "params":[Ljava/lang/String;
    :pswitch_2
    array-length v3, p2

    sub-int/2addr v3, v8

    if-ge v0, v3, :cond_8

    .line 227
    add-int/lit8 v3, v0, 0x1

    :try_start_0
    aget-object v3, p2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v8, :cond_6

    const-string v3, "apply"

    goto :goto_4

    :cond_6
    const-string v3, "release"

    .line 228
    .local v3, "apply":Ljava/lang/String;
    :goto_4
    new-array v4, v8, [Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    aget-object v5, p2, v5

    aput-object v5, v4, v1

    invoke-direct {p0, v4}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->requestAmbientLightPermission([Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_7

    const-string v5, "succeed"

    goto :goto_5

    :cond_7
    const-string v5, "failed"

    :goto_5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "apply":Ljava/lang/String;
    goto :goto_6

    .line 231
    :catch_0
    move-exception v3

    .line 232
    :goto_6
    nop

    .line 222
    :cond_8
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 251
    .end local v0    # "i":I
    :cond_9
    move v0, v2

    .line 251
    .end local v2    # "ret":I
    .local v0, "ret":I
    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 201
    const-string v0, "AmbientLightManager"

    return-object v0
.end method

.method public init()V
    .locals 0

    .line 165
    return-void
.end method

.method public ioControl(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 169
    const-string v0, "ATLv2Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioControl, cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->mUidMap:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->handleIoControl(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public ioControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "results"    # [Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 179
    const-string v0, "ATLv2Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioControlWithPocket, cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->mUidMap:Ljava/util/Map;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->handleIoControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onClientDied(I)V
    .locals 4
    .param p1, "pid"    # I

    .line 206
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->mUidMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 207
    .local v1, "uid":I
    sget-object v2, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->mUidMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 208
    const-string v0, "ATLv2Manager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClientDied, pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", releaseAmbientLightPermission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v0, "0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->requestAmbientLightPermission([Ljava/lang/String;)I

    .line 211
    goto :goto_1

    .line 213
    .end local v1    # "uid":I
    :cond_0
    goto :goto_0

    .line 214
    :cond_1
    :goto_1
    return-void
.end method

.method public declared-synchronized removeListener()V
    .locals 2

    monitor-enter p0

    .line 194
    :try_start_0
    const-string v0, "ATLv2Manager"

    const-string v1, "removeListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;
    throw v0
.end method
