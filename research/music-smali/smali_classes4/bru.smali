.class public Lbru;
.super Ljava/lang/Object;
.source "AiSuggestStatUtil.java"


# direct methods
.method private static a(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 67
    invoke-static {}, Lbeb;->a()Lbeb;

    move-result-object v0

    invoke-virtual {v0}, Lbeb;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openid"

    invoke-interface {p0, v1, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "B0010"

    .line 22
    invoke-static {v0, p0}, Lbru;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "page_id"

    const-string v2, "P0001"

    .line 43
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "button_id"

    .line 44
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "collectId"

    .line 45
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {}, Lbrz;->a()Lbrz;

    move-result-object p0

    invoke-virtual {p0, v0}, Lbrz;->a(Ljava/util/Map;)V

    .line 47
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-static {}, Lbsa;->b()Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object p1

    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {p1, v0}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 50
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildStat()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v0

    const-string v1, "para"

    .line 51
    invoke-interface {v0, v1, p0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object p0

    const-string v0, "music_aisuggest"

    .line 52
    invoke-interface {p0, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setEventName(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object p0

    .line 53
    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    move-result-object p0

    .line 54
    invoke-static {p0}, Lbru;->a(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    .line 55
    new-instance v0, Lbru$1;

    invoke-direct {v0, p1, p0}, Lbru$1;-><init>(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    invoke-static {v0}, Lbql;->d(Ljava/lang/Runnable;)V

    .line 62
    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;->toJson()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AiSuggestStatUtil"

    invoke-static {p1, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "B0009"

    .line 26
    invoke-static {v0, p0}, Lbru;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "B0006"

    .line 30
    invoke-static {v0, p0}, Lbru;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "B0007"

    .line 34
    invoke-static {v0, p0}, Lbru;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "B0008"

    .line 38
    invoke-static {v0, p0}, Lbru;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
