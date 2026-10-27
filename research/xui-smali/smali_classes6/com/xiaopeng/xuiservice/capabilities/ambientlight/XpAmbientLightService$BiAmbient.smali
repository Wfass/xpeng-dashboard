.class Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$BiAmbient;
.super Ljava/lang/Object;
.source "XpAmbientLightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BiAmbient"
.end annotation


# instance fields
.field private bilog:Lcom/xiaopeng/biutil/BiLog;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/String;
    .param p4, "source"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 228
    iput-object v0, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$BiAmbient;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const-string v4, "P10141"

    const-string v5, "B012"

    invoke-static {v4, v5}, Lcom/xiaopeng/biutil/BiLogFactory;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/biutil/BiLog;

    move-result-object v4

    iput-object v4, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$BiAmbient;->bilog:Lcom/xiaopeng/biutil/BiLog;

    .line 229
    iget-object v4, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$BiAmbient;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v5, "event"

    invoke-virtual {v4, v5, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v4, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$BiAmbient;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v5, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v4, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$BiAmbient;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v5, "result"

    invoke-virtual {v4, v5, v3}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v4, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$BiAmbient;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v5, "source"

    move-object/from16 v6, p4

    invoke-virtual {v4, v5, v6}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v4, "power"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "on"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 235
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 238
    .local v4, "params":Lorg/json/JSONArray;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 239
    .local v7, "partition":Ljava/lang/String;
    invoke-static {v0, v7}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 240
    .local v8, "mode":Ljava/lang/String;
    invoke-static {v0, v7, v8}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$200(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 241
    .local v9, "colorType":Ljava/lang/String;
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 243
    .local v10, "object":Lorg/json/JSONObject;
    const-string v11, "partition"

    invoke-virtual {v10, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string v11, "mode"

    invoke-virtual {v10, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    const-string v11, "bright"

    invoke-static {v0, v7}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string v11, "colorType"

    invoke-virtual {v10, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v12

    const v13, -0x5069748f

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/4 v11, 0x2

    if-eq v12, v13, :cond_3

    const v13, -0x4f08842f

    if-eq v12, v13, :cond_2

    const v13, 0x333ae3

    if-eq v12, v13, :cond_1

    const v13, 0x69375c9

    if-eq v12, v13, :cond_0

    goto :goto_1

    :cond_0
    const-string v12, "theme"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v12, v11

    goto :goto_2

    :cond_1
    const-string v12, "mono"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v12, v15

    goto :goto_2

    :cond_2
    const-string v12, "double"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v12, v14

    goto :goto_2

    :cond_3
    const-string v12, "custom"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x3

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v12, -0x1

    :goto_2
    packed-switch v12, :pswitch_data_0

    goto :goto_3

    .line 262
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 264
    .local v11, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v12

    sget-object v13, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/-$$Lambda$XpAmbientLightService$BiAmbient$9rYavh4rGTCRLjKsWYib__RP7ak;->INSTANCE:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/-$$Lambda$XpAmbientLightService$BiAmbient$9rYavh4rGTCRLjKsWYib__RP7ak;

    new-instance v14, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/-$$Lambda$XpAmbientLightService$BiAmbient$kO2fqm01b62oZpugACxkUvYvfQ8;

    invoke-direct {v14, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/-$$Lambda$XpAmbientLightService$BiAmbient$kO2fqm01b62oZpugACxkUvYvfQ8;-><init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$BiAmbient;)V

    invoke-static {v13, v14}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 267
    const-string v12, "customColor"

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .end local v11    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_3

    .line 259
    :pswitch_1
    const-string v11, "themeColor"

    invoke-static {v0, v7}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$700(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    goto :goto_3

    .line 253
    :pswitch_2
    invoke-static {v0, v7}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v12

    .line 254
    .local v12, "colors":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-array v11, v11, [Ljava/lang/String;

    iget-object v13, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v0, v13}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v15

    iget-object v13, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v0, v13}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v14

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 256
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v13, "doubleColor"

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    goto :goto_3

    .line 250
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "colors":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :pswitch_3
    const-string v11, "monoColor"

    invoke-static {v0, v7}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;)I

    move-result v12

    invoke-static {v0, v12}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    nop

    .line 271
    :goto_3
    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .end local v7    # "partition":Ljava/lang/String;
    .end local v8    # "mode":Ljava/lang/String;
    .end local v9    # "colorType":Ljava/lang/String;
    .end local v10    # "object":Lorg/json/JSONObject;
    goto/16 :goto_0

    .line 274
    :cond_5
    goto :goto_4

    .line 273
    :catch_0
    move-exception v0

    .line 276
    :goto_4
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$BiAmbient;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v5, "params"

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .end local v4    # "params":Lorg/json/JSONArray;
    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$new$0(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 1
    .param p0, "entry"    # Ljava/util/Map$Entry;

    .line 265
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic lambda$new$1(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$BiAmbient;Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 2
    .param p1, "entry"    # Ljava/util/Map$Entry;

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$BiAmbient;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public submit()V
    .locals 3

    .line 223
    const-string v0, "XpAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BiAmbient: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$BiAmbient;->bilog:Lcom/xiaopeng/biutil/BiLog;

    invoke-virtual {v2}, Lcom/xiaopeng/biutil/BiLog;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;->getInstance()Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$BiAmbient;->bilog:Lcom/xiaopeng/biutil/BiLog;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;->submit(Lcom/xiaopeng/biutil/BiLog;)V

    .line 226
    return-void
.end method
