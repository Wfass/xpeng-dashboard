.class public Lcom/xiaopeng/commonfunc/utils/BuriedPointUtils;
.super Ljava/lang/Object;
.source "BuriedPointUtils.java"


# static fields
.field public static final COUNT_KEY:Ljava/lang/String; = "count"

.field public static final MODULE:Ljava/lang/String; = "cardiagnosis"

.field public static final SIZE_KEY:Ljava/lang/String; = "size"

.field public static final STORAGE_CLEAN_BUTTONID:Ljava/lang/String; = "B002"

.field public static final STORAGE_CLEAN_PAGEID:Ljava/lang/String; = "P11113"

.field private static final TAG:Ljava/lang/String; = "BuriedPointUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$sendDataLog$0(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "pageID"    # Ljava/lang/String;
    .param p1, "buttonID"    # Ljava/lang/String;
    .param p2, "iMoleEventBuilder"    # Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/Object;

    .line 56
    const-string v0, "BuriedPointUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDataLog:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    instance-of v0, p4, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 58
    move-object v0, p4

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, p3, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    goto :goto_0

    .line 59
    :cond_0
    instance-of v0, p4, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 60
    move-object v0, p4

    check-cast v0, Ljava/lang/Number;

    invoke-interface {p2, p3, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    goto :goto_0

    .line 61
    :cond_1
    instance-of v0, p4, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 62
    move-object v0, p4

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2, p3, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Z)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    goto :goto_0

    .line 63
    :cond_2
    instance-of v0, p4, Ljava/lang/Character;

    if-eqz v0, :cond_3

    .line 64
    move-object v0, p4

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-interface {p2, p3, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;C)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    goto :goto_0

    .line 66
    :cond_3
    const-string v0, "BuriedPointUtils"

    const-string v1, "sendDataLog: can not case type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    return-void
.end method

.method static synthetic lambda$sendDataLog$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "pageID"    # Ljava/lang/String;
    .param p2, "buttonID"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/util/Map;

    .line 50
    const-class v0, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 51
    .local v0, "dataLog":Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildMoleEvent()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v1

    .line 52
    invoke-interface {v1, p0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setModule(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v1

    .line 53
    invoke-interface {v1, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setPageId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v1

    .line 54
    invoke-interface {v1, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setButtonId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v1

    .line 55
    .local v1, "iMoleEventBuilder":Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    new-instance v2, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$BuriedPointUtils$LpbgJT1JUuCtuCFaDqjy6LZKO2c;

    invoke-direct {v2, p1, p2, v1}, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$BuriedPointUtils$LpbgJT1JUuCtuCFaDqjy6LZKO2c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;)V

    invoke-interface {p3, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 69
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;

    move-result-object v2

    .line 71
    .local v2, "event":Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;
    if-eqz v2, :cond_0

    .line 72
    invoke-interface {v0, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;)V

    .line 74
    :cond_0
    return-void
.end method

.method public static sendDataLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "pageID"    # Ljava/lang/String;
    .param p2, "buttonID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p3, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "BuriedPointUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDataLog:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$BuriedPointUtils$297da_jkwQCERyx2wvnp6TMf8kQ;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$BuriedPointUtils$297da_jkwQCERyx2wvnp6TMf8kQ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method public static sendPageStateDataLog(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 3
    .param p0, "pageID"    # Ljava/lang/String;
    .param p1, "buttonID"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "value"    # I

    .line 32
    const-string v0, "BuriedPointUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPageStateDataLog:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "size"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v1, "count"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "cardiagnosis"

    invoke-static {v1, p0, p1, v0}, Lcom/xiaopeng/commonfunc/utils/BuriedPointUtils;->sendDataLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 37
    return-void
.end method
