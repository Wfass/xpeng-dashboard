.class public Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;
.super Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;
.source "MessageRouterService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MessageRouterService"

.field private static final mInstance:Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;->mInstance:Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;->mUidMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;-><init>()V

    .line 170
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;
    .locals 1

    .line 173
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;->mInstance:Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;

    return-object v0
.end method

.method private handleGetMessage([Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "params"    # [Ljava/lang/String;
    .param p2, "results"    # [Ljava/lang/String;

    .line 58
    const/4 v0, -0x1

    return v0
.end method

.method private handleIoControl(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x16616dc1

    const/4 v2, -0x1

    if-eq v0, v1, :cond_1

    const v1, 0xfa1cdd8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "messageRouterSend"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "messageRouterRequest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 69
    return v2

    .line 66
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;->handleRequestMessage([Ljava/lang/String;)I

    move-result v0

    return v0

    .line 64
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;->handleSendMessage([Ljava/lang/String;)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleIoControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "results"    # [Ljava/lang/String;

    .line 73
    const-string v0, "messageRouterGet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;->handleGetMessage([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private handleRequestMessage([Ljava/lang/String;)I
    .locals 1
    .param p1, "params"    # [Ljava/lang/String;

    .line 54
    const/4 v0, -0x1

    return v0
.end method

.method private handleSendMessage([Ljava/lang/String;)I
    .locals 9
    .param p1, "params"    # [Ljava/lang/String;

    .line 26
    const-string v0, "MessageRouterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSendMessage, params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const/4 v0, -0x1

    if-eqz p1, :cond_2

    array-length v1, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 32
    :cond_0
    const/4 v1, 0x0

    aget-object v2, p1, v1

    const-string v3, "poiMessage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 34
    .local v2, "poi":Lcom/google/gson/JsonObject;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 36
    .local v3, "gson":Lcom/google/gson/Gson;
    invoke-static {}, Lcom/xiaopeng/xuimanager/XUIManager;->getInstance()Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v4

    const-string v5, "contextinfo"

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xuimanager/XUIManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    .line 39
    .local v4, "manager":Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;
    const/4 v5, 0x1

    :try_start_0
    aget-object v5, p1, v5

    const-class v6, Lcom/google/gson/JsonObject;

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gson/JsonObject;

    .line 41
    .local v5, "content":Lcom/google/gson/JsonObject;
    aget-object v6, p1, v1

    invoke-virtual {v2, v6, v5}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 42
    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->setNavigationInfo(Ljava/lang/String;)V

    .line 43
    const-string v6, "MessageRouterService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setNavigationInfo, poiMessage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v5    # "content":Lcom/google/gson/JsonObject;
    goto :goto_0

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "MessageRouterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSendMessage failed, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return v0

    .line 50
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "poi":Lcom/google/gson/JsonObject;
    .end local v3    # "gson":Lcom/google/gson/Gson;
    .end local v4    # "manager":Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;
    :cond_1
    :goto_0
    return v1

    .line 29
    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public addListener(Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    .line 100
    sput-object p1, Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    .line 101
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 115
    const/4 v0, -0x1

    .line 116
    .local v0, "ret":I
    const-string v1, "*dump-MessageRouterService"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    if-eqz p2, :cond_7

    .line 119
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .line 119
    .local v0, "i":I
    .local v2, "ret":I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_6

    .line 120
    aget-object v3, p2, v0

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x2da468f

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v5, v6, :cond_2

    const v6, 0x3c7e2418

    if-eq v5, v6, :cond_1

    const v6, 0x7078f5bf

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "--sendMessage"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v4, v1

    goto :goto_1

    :cond_1
    const-string v5, "--requestMessage"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v4, v7

    goto :goto_1

    :cond_2
    const-string v5, "--getMessage"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v4, v8

    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    goto :goto_2

    .line 122
    :cond_4
    array-length v3, p2

    sub-int/2addr v3, v8

    if-ge v0, v3, :cond_5

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p2, v3

    const-string v4, "poiMessage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 123
    const-string/jumbo v3, "{\n  \"dest\": {\n    \"type\": \"\",\n    \"lat\": 31.237326,\n    \"lon\": 121.455544,\n    \"name\": \"\u4e0a\u6d77\u5e02\u5eb7\u5b9a\u82b1\u56ed(\u4e0a\u6d77\u5e02\u9759\u5b89\u533a\u5eb7\u5b9a\u8def2)\",\n    \"address\": \"\u4e0a\u6d77\u5e02xx\u8857xx\u53f7\",\n    \"poi_id\": \"\",\n    \"extra\": {}\n  },\n  \"navi_pois\": [\n    {\n      \"lat\": 31.237326,\n      \"lon\": 121.455544,\n      \"name\": \"\u897f\u95e8\",\n      \"address\": \"\u4e0a\u6d77\u5e02xx\u8857xx\u53f7\u897f\u95e8\",\n      \"poi_id\": \"\",\n      \"priority\": 1\n    },\n    {\n      \"lat\": 31.237326,\n      \"lon\": 121.455544,\n      \"name\": \"\u5317\u95e8\",\n      \"address\": \"\u4e0a\u6d77\u5e02xx\u8857xx\u53f7\u5317\u95e8\",\n      \"poi_id\": \"tyuuiu777\",\n      \"priority\": 0\n    }\n  ],\n  \"function_id\": 5,\n  \"uuid\": \"550e8400e29b41d4a716446655440000\",\n  \"ts\": 1725434513\n}"

    .line 156
    .local v3, "poiMessage":Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "poiMessage"

    aput-object v5, v4, v1

    aput-object v3, v4, v8

    .line 157
    .local v4, "params":[Ljava/lang/String;
    const-string v5, "messageRouterSend"

    invoke-direct {p0, v5, v4}, Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;->handleIoControl(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send poiMessage, ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    .end local v3    # "poiMessage":Ljava/lang/String;
    .end local v4    # "params":[Ljava/lang/String;
    nop

    .line 119
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    .end local v0    # "i":I
    :cond_6
    move v0, v2

    .line 167
    .end local v2    # "ret":I
    .local v0, "ret":I
    :cond_7
    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 110
    const-string v0, "MessageRouter"

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 78
    const-string v0, "MessageRouterService"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "MessageRouterService"

    new-instance v1, Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$rcOFn7Fw8d9KGTlreDuTsHBCRJw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$rcOFn7Fw8d9KGTlreDuTsHBCRJw;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 80
    return-void
.end method

.method public ioControl(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 84
    const-string v0, "MessageRouterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioControl, cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;->mUidMap:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;->handleIoControl(Ljava/lang/String;[Ljava/lang/String;)I

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

    .line 92
    const-string v0, "MessageRouterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioControlWithPocket, cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;->mUidMap:Ljava/util/Map;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;->handleIoControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public removeListener()V
    .locals 1

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    .line 106
    return-void
.end method
