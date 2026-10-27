.class Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;
.super Ljava/lang/Object;
.source "XpSeatMassagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BiMassager"
.end annotation


# static fields
.field private static final TOP_LIMIT:I = 0xa


# instance fields
.field private bilog:Lcom/xiaopeng/biutil/BiLog;

.field private intensitys:Lorg/json/JSONArray;

.field private patterns:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "pattern"    # Ljava/lang/String;
    .param p5, "intensity"    # I

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;->patterns:Lorg/json/JSONArray;

    .line 320
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;->intensitys:Lorg/json/JSONArray;

    .line 321
    const-string v0, "P10141"

    const-string v1, "B007"

    .line 322
    invoke-static {v0, v1}, Lcom/xiaopeng/biutil/BiLogFactory;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/biutil/BiLog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;->bilog:Lcom/xiaopeng/biutil/BiLog;

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v1, "id"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v1, "pattern"

    invoke-virtual {v0, v1, p4}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v1, "intensity"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v1, "source"

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, p3

    goto :goto_0

    :cond_0
    const-string v2, "unknown"

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v1, "startTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    return-void
.end method


# virtual methods
.method public addIntensity(I)V
    .locals 4
    .param p1, "intensity"    # I

    .line 339
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;->intensitys:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 340
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 343
    .local v0, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 344
    const-string v1, "intensity"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    goto :goto_0

    .line 345
    :catch_0
    move-exception v1

    .line 348
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;->intensitys:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 350
    .end local v0    # "obj":Lorg/json/JSONObject;
    :cond_0
    return-void
.end method

.method public addPattern(Ljava/lang/String;)V
    .locals 4
    .param p1, "pattern"    # Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;->patterns:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 326
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 329
    .local v0, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 330
    const-string v1, "pattern"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    goto :goto_0

    .line 331
    :catch_0
    move-exception v1

    .line 334
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;->patterns:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 336
    .end local v0    # "obj":Lorg/json/JSONObject;
    :cond_0
    return-void
.end method

.method public submit()V
    .locals 4

    .line 353
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v1, "endTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v1, "changePatterns"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;->patterns:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v1, "changeIntensitys"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;->intensitys:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v0, "XpSeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BiMassager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;->bilog:Lcom/xiaopeng/biutil/BiLog;

    invoke-virtual {v2}, Lcom/xiaopeng/biutil/BiLog;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mBiMassager.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$700()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;->getInstance()Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$BiMassager;->bilog:Lcom/xiaopeng/biutil/BiLog;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;->submit(Lcom/xiaopeng/biutil/BiLog;)V

    .line 360
    return-void
.end method
