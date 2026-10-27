.class public Lcom/xiaopeng/track/NonStaticBIHelper;
.super Ljava/lang/Object;
.source "NonStaticBIHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;
    }
.end annotation


# instance fields
.field private BID:Ljava/lang/String;

.field private MODULE:Ljava/lang/String;

.field private PID:Ljava/lang/String;

.field private SOURCE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private sCtx:Landroid/content/Context;

.field private sIsInit:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BIHelperLib"

    .line 20
    iput-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->sIsInit:Z

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->MODULE:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->PID:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->BID:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->SOURCE:Ljava/lang/String;

    return-void
.end method

.method private getDataLog()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;
    .locals 2

    .line 158
    const-class v0, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "BIHelperLib"

    const-string v1, "moduleEntry is null, please check if DataLogModuleEntry is registered"

    .line 160
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 163
    :cond_0
    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    return-object v0
.end method

.method private sendBIData(Ljava/lang/String;Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "event",
            "value",
            "source",
            "extra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 138
    iget-boolean v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->sIsInit:Z

    if-nez v0, :cond_0

    const-string p1, "BIHelperLib"

    const-string p2, "BIHelper is not init, please call init first!!!"

    .line 139
    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p5, :cond_1

    .line 143
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    :cond_1
    const-string v0, "id"

    .line 145
    invoke-interface {p5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-virtual {p2}, Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;->name()Ljava/lang/String;

    move-result-object p1

    const-string p2, "event"

    invoke-interface {p5, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    const-string p1, "value"

    .line 148
    invoke-interface {p5, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p4, :cond_3

    goto :goto_0

    :cond_3
    const-string p4, ""

    :goto_0
    const-string p1, "source"

    .line 150
    invoke-interface {p5, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object p1, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->sCtx:Landroid/content/Context;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    goto :goto_1

    :cond_4
    const/4 p1, -0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "screen"

    invoke-interface {p5, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-direct {p0, p5}, Lcom/xiaopeng/track/NonStaticBIHelper;->sendStatistic(Ljava/util/Map;)V

    return-void
.end method

.method private sendStatistic(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->MODULE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "BIHelperLib"

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->PID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->BID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/track/NonStaticBIHelper;->getDataLog()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "dataLog is null, please check if DataLogModuleEntry is registered"

    .line 174
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 177
    :cond_1
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildMoleEvent()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->MODULE:Ljava/lang/String;

    .line 178
    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setModule(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->PID:Ljava/lang/String;

    .line 179
    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setPageId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->BID:Ljava/lang/String;

    .line 180
    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setButtonId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    if-eqz p1, :cond_6

    .line 182
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 183
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 184
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    goto :goto_0

    .line 185
    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Number;

    if-eqz v4, :cond_3

    .line 186
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-interface {v2, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    goto :goto_0

    .line 187
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Character;

    if-eqz v4, :cond_4

    .line 188
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-interface {v2, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;C)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    goto :goto_0

    .line 189
    :cond_4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_5

    .line 190
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Z)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    goto :goto_0

    :cond_5
    const-string v3, " params type invalid"

    .line 192
    invoke-static {v1, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_6
    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;

    move-result-object p1

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uploader:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;)V

    return-void

    :cond_7
    :goto_1
    const-string p1, "param invalid, please init first!!!"

    .line 168
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "current",
            "extra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 124
    iget-boolean v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->sIsInit:Z

    if-nez v0, :cond_0

    const-string p1, "BIHelperLib"

    const-string p2, "BIHelper is not init, please call init first!!!"

    .line 125
    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 128
    :cond_0
    sget-object v2, Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;->collect:Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;

    iget-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->sCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/track/NonStaticBIHelper;->sendBIData(Ljava/lang/String;Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public expose(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 48
    iget-boolean v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->sIsInit:Z

    if-nez v0, :cond_0

    const-string p1, "BIHelperLib"

    const-string v0, "BIHelper is not init, please call init first!!!"

    .line 49
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 52
    :cond_0
    sget-object v3, Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;->expose:Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->SOURCE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->sCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->SOURCE:Ljava/lang/String;

    :goto_0
    move-object v5, v0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/track/NonStaticBIHelper;->sendBIData(Ljava/lang/String;Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public expose(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "source",
            "extra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 67
    iget-boolean v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->sIsInit:Z

    if-nez v0, :cond_0

    const-string p1, "BIHelperLib"

    const-string p2, "BIHelper is not init, please call init first!!!"

    .line 68
    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 71
    :cond_0
    sget-object v2, Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;->expose:Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/track/NonStaticBIHelper;->sendBIData(Ljava/lang/String;Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public expose(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "extra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 57
    iget-boolean v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->sIsInit:Z

    if-nez v0, :cond_0

    const-string p1, "BIHelperLib"

    const-string p2, "BIHelper is not init, please call init first!!!"

    .line 58
    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 61
    :cond_0
    sget-object v2, Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;->expose:Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->SOURCE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->sCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->SOURCE:Ljava/lang/String;

    :goto_0
    move-object v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/track/NonStaticBIHelper;->sendBIData(Ljava/lang/String;Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public init(Lcom/xiaopeng/track/BIConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 38
    invoke-virtual {p1}, Lcom/xiaopeng/track/BIConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->sCtx:Landroid/content/Context;

    .line 39
    invoke-virtual {p1}, Lcom/xiaopeng/track/BIConfig;->getModuleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->MODULE:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/xiaopeng/track/BIConfig;->getPID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->PID:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/xiaopeng/track/BIConfig;->getBID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->BID:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Lcom/xiaopeng/track/BIConfig;->getSource()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->SOURCE:Ljava/lang/String;

    .line 43
    const-class p1, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    new-instance v0, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    iget-object v1, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->sCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaopeng/datalog/DataLogModuleEntry;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->sIsInit:Z

    return-void
.end method

.method public interact(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 75
    iget-boolean v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->sIsInit:Z

    if-nez v0, :cond_0

    const-string p1, "BIHelperLib"

    const-string v0, "BIHelper is not init, please call init first!!!"

    .line 76
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 79
    :cond_0
    sget-object v3, Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;->interact:Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->SOURCE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->sCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->SOURCE:Ljava/lang/String;

    :goto_0
    move-object v5, v0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/track/NonStaticBIHelper;->sendBIData(Ljava/lang/String;Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public interact(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "target"
        }
    .end annotation

    .line 93
    iget-boolean v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->sIsInit:Z

    if-nez v0, :cond_0

    const-string p1, "BIHelperLib"

    const-string p2, "BIHelper is not init, please call init first!!!"

    .line 94
    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 97
    :cond_0
    sget-object v2, Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;->interact:Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;

    iget-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->SOURCE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->sCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->SOURCE:Ljava/lang/String;

    :goto_0
    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/track/NonStaticBIHelper;->sendBIData(Ljava/lang/String;Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public interact(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "target",
            "source",
            "extra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 114
    iget-boolean v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->sIsInit:Z

    if-nez v0, :cond_0

    const-string p1, "BIHelperLib"

    const-string p2, "BIHelper is not init, please call init first!!!"

    .line 115
    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 118
    :cond_0
    sget-object v2, Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;->interact:Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/track/NonStaticBIHelper;->sendBIData(Ljava/lang/String;Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public interact(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "target",
            "extra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 103
    iget-boolean v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->sIsInit:Z

    if-nez v0, :cond_0

    const-string p1, "BIHelperLib"

    const-string p2, "BIHelper is not init, please call init first!!!"

    .line 104
    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 107
    :cond_0
    sget-object v2, Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;->interact:Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;

    iget-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->SOURCE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->sCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->SOURCE:Ljava/lang/String;

    :goto_0
    move-object v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/track/NonStaticBIHelper;->sendBIData(Ljava/lang/String;Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public interact(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "extra"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 84
    iget-boolean v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->sIsInit:Z

    if-nez v0, :cond_0

    const-string p1, "BIHelperLib"

    const-string p2, "BIHelper is not init, please call init first!!!"

    .line 85
    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 88
    :cond_0
    sget-object v2, Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;->interact:Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->SOURCE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->sCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/track/NonStaticBIHelper;->SOURCE:Ljava/lang/String;

    :goto_0
    move-object v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/track/NonStaticBIHelper;->sendBIData(Ljava/lang/String;Lcom/xiaopeng/track/NonStaticBIHelper$EVENT;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
