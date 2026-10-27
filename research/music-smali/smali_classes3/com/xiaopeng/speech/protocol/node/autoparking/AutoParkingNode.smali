.class public Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;
.super Lbut;
.source "AutoParkingNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbut<",
        "Lcom/xiaopeng/speech/protocol/node/autoparking/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:[Ljava/lang/String;


# instance fields
.field private volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->e:Ljava/util/List;

    const-string/jumbo v1, "\u7b2c\u4e00\u4e2a|\u6cca\u5165\u7b2c\u4e00\u4e2a|\u4e00\u53f7|\u7b2c\u4e00\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u4e00\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u4e00\u4e2a|\u6cca\u5165\u7b2c\u4e00\u4e2a\u8f66\u4f4d"

    const-string/jumbo v2, "\u7b2c\u4e8c\u4e2a|\u6cca\u5165\u7b2c\u4e8c\u4e2a|\u4e8c\u53f7|\u7b2c\u4e8c\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u4e8c\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u4e8c\u4e2a|\u6cca\u5165\u7b2c\u4e8c\u4e2a\u8f66\u4f4d"

    const-string/jumbo v3, "\u7b2c\u4e09\u4e2a|\u6cca\u5165\u7b2c\u4e09\u4e2a|\u4e09\u53f7|\u7b2c\u4e09\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u4e09\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u4e09\u4e2a|\u6cca\u5165\u7b2c\u4e09\u4e2a\u8f66\u4f4d"

    const-string/jumbo v4, "\u7b2c\u56db\u4e2a|\u6cca\u5165\u7b2c\u56db\u4e2a|\u56db\u53f7|\u7b2c\u56db\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u56db\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u56db\u4e2a|\u6cca\u5165\u7b2c\u56db\u4e2a\u8f66\u4f4d"

    const-string/jumbo v5, "\u7b2c\u4e94\u4e2a|\u6cca\u5165\u7b2c\u4e94\u4e2a|\u4e94\u53f7|\u7b2c\u4e94\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u4e94\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u4e94\u4e2a|\u6cca\u5165\u7b2c\u4e94\u4e2a\u8f66\u4f4d"

    const-string/jumbo v6, "\u7b2c\u516d\u4e2a|\u6cca\u5165\u7b2c\u516d\u4e2a|\u516d\u53f7|\u7b2c\u516d\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u516d\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u516d\u4e2a|\u6cca\u5165\u7b2c\u516d\u4e2a\u8f66\u4f4d"

    const-string/jumbo v7, "\u7b2c\u4e03\u4e2a|\u6cca\u5165\u7b2c\u4e03\u4e2a|\u4e03\u53f7|\u7b2c\u4e03\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u4e03\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u4e03\u4e2a|\u6cca\u5165\u7b2c\u4e03\u4e2a\u8f66\u4f4d"

    const-string/jumbo v8, "\u7b2c\u516b\u4e2a|\u6cca\u5165\u7b2c\u516b\u4e2a|\u516b\u53f7|\u7b2c\u516b\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u516b\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u516b\u4e2a|\u6cca\u5165\u7b2c\u516b\u4e2a\u8f66\u4f4d"

    const-string/jumbo v9, "\u7b2c\u4e5d\u4e2a|\u6cca\u5165\u7b2c\u4e5d\u4e2a|\u4e5d\u53f7|\u7b2c\u4e5d\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u4e5d\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u4e5d\u4e2a|\u6cca\u5165\u7b2c\u4e5d\u4e2a\u8f66\u4f4d"

    const-string/jumbo v10, "\u7b2c\u5341\u4e2a|\u6cca\u5165\u7b2c\u5341\u4e2a|\u5341\u53f7|\u7b2c\u5341\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u5341\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u5341\u4e2a|\u6cca\u5165\u7b2c\u5341\u4e2a\u8f66\u4f4d"

    const-string/jumbo v11, "\u7b2c\u5341\u4e00\u4e2a|\u6cca\u5165\u7b2c\u5341\u4e00\u4e2a|\u5341\u4e00\u53f7|\u7b2c\u5341\u4e00\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u5341\u4e00\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u5341\u4e00\u4e2a|\u6cca\u5165\u7b2c\u5341\u4e00\u4e2a\u8f66\u4f4d"

    const-string/jumbo v12, "\u7b2c\u5341\u4e8c\u4e2a|\u6cca\u5165\u7b2c\u5341\u4e8c\u4e2a|\u5341\u4e8c\u53f7|\u7b2c\u5341\u4e8c\u4e2a\u8f66\u4f4d|\u9009\u62e9\u7b2c\u5341\u4e8c\u4e2a\u8f66\u4f4d|\u9009\u7b2c\u5341\u4e8c\u4e2a|\u6cca\u5165\u7b2c\u5341\u4e8c\u4e2a\u8f66\u4f4d"

    const-string/jumbo v13, "\u7b2c\u5341\u4e09\u4e2a|\u6cca\u5165\u7b2c\u5341\u4e09\u4e2a|\u5341\u4e09\u53f7"

    const-string/jumbo v14, "\u7b2c\u5341\u56db\u4e2a|\u6cca\u5165\u7b2c\u5341\u56db\u4e2a|\u5341\u56db\u53f7"

    const-string/jumbo v15, "\u7b2c\u5341\u4e94\u4e2a|\u6cca\u5165\u7b2c\u5341\u4e94\u4e2a|\u5341\u4e94\u53f7"

    const-string/jumbo v16, "\u7b2c\u5341\u516d\u4e2a|\u6cca\u5165\u7b2c\u5341\u516d\u4e2a|\u5341\u516d\u53f7"

    const-string/jumbo v17, "\u7b2c\u5341\u4e03\u4e2a|\u6cca\u5165\u7b2c\u5341\u4e03\u4e2a|\u5341\u4e03\u53f7"

    const-string/jumbo v18, "\u7b2c\u5341\u516b\u4e2a|\u6cca\u5165\u7b2c\u5341\u516b\u4e2a|\u5341\u516b\u53f7"

    const-string/jumbo v19, "\u7b2c\u5341\u4e5d\u4e2a|\u6cca\u5165\u7b2c\u5341\u4e5d\u4e2a|\u5341\u4e5d\u53f7"

    const-string/jumbo v20, "\u7b2c\u4e8c\u5341\u4e2a|\u6cca\u5165\u7b2c\u4e8c\u5341\u4e2a|\u4e8c\u5341\u53f7"

    .line 49
    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->f:[Ljava/lang/String;

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/16 v0, 0x14

    if-gt v2, v0, :cond_0

    .line 74
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "command"

    const-string v4, "command://autoparking.park.start"

    .line 76
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "position"

    .line 78
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "param"

    .line 79
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "tts"

    const-string v4, ""

    .line 80
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    sget-object v3, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 83
    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "AutoParkingNode"

    const-string v4, "error: %s"

    invoke-static {v0, v4, v3}, Lcom/xiaopeng/speech/common/util/c;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 261
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 263
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    .line 264
    check-cast v1, Lcom/xiaopeng/speech/protocol/node/autoparking/a;

    invoke-interface {v1}, Lcom/xiaopeng/speech/protocol/node/autoparking/a;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    const/4 p1, 0x0

    .line 271
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->d:Z

    .line 272
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 274
    array-length v0, p2

    :goto_0
    if-ge p1, v0, :cond_0

    aget-object v1, p2, p1

    .line 275
    check-cast v1, Lcom/xiaopeng/speech/protocol/node/autoparking/a;

    invoke-interface {v1}, Lcom/xiaopeng/speech/protocol/node/autoparking/a;->b()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    const/4 p1, 0x0

    .line 282
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->d:Z

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    array-length v1, v0

    :goto_0
    if-ge p1, v1, :cond_0

    aget-object v2, v0, p1

    .line 286
    check-cast v2, Lcom/xiaopeng/speech/protocol/node/autoparking/a;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/autoparking/a;->a(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 293
    invoke-static {p2}, Lbwf;->a(Ljava/lang/String;)Lbwf;

    move-result-object p1

    .line 294
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 296
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 297
    check-cast v2, Lcom/xiaopeng/speech/protocol/node/autoparking/a;

    invoke-interface {v2, p1}, Lcom/xiaopeng/speech/protocol/node/autoparking/a;->a(Lbwf;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 304
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 306
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 307
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/autoparking/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/autoparking/a;->c()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
    .end annotation

    .line 314
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingNode;->b:Lcom/xiaopeng/speech/common/util/e;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/e;->a()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 316
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 317
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/autoparking/a;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/autoparking/a;->c()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
