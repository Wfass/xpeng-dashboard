.class Lbrv$1;
.super Ljava/lang/Object;
.source "CommonStat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbrv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lbrv;


# direct methods
.method constructor <init>(Lbrv;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lbrv$1;->f:Lbrv;

    iput-object p2, p0, Lbrv$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lbrv$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lbrv$1;->c:Ljava/util/Map;

    iput p5, p0, Lbrv$1;->d:I

    iput-object p6, p0, Lbrv$1;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    iget-object v1, p0, Lbrv$1;->a:Ljava/lang/String;

    const-string v2, "page_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v1, p0, Lbrv$1;->b:Ljava/lang/String;

    const-string v2, "button_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "triggerTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v1, p0, Lbrv$1;->f:Lbrv;

    iget-object v2, p0, Lbrv$1;->c:Ljava/util/Map;

    iget v3, p0, Lbrv$1;->d:I

    invoke-virtual {v1, v2, v0, v3}, Lbrv;->a(Ljava/util/Map;Ljava/util/Map;I)V

    .line 49
    invoke-static {}, Lbrz;->a()Lbrz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbrz;->a(Ljava/util/Map;)V

    .line 50
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lbrv$1;->f:Lbrv;

    invoke-virtual {v1}, Lbrv;->a()Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 53
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildStat()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v2

    const-string v3, "para"

    .line 54
    invoke-interface {v2, v3, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v0

    iget-object v2, p0, Lbrv$1;->e:Ljava/lang/String;

    .line 55
    invoke-interface {v0, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->setEventName(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;

    move-result-object v0

    .line 56
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    move-result-object v0

    .line 57
    iget-object v2, p0, Lbrv$1;->f:Lbrv;

    invoke-virtual {v2, v0}, Lbrv;->a(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    .line 59
    invoke-interface {v1, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    .line 61
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;->toJson()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatUtil"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
