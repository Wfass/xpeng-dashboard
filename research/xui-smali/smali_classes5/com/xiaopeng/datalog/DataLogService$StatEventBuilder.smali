.class Lcom/xiaopeng/datalog/DataLogService$StatEventBuilder;
.super Ljava/lang/Object;
.source "DataLogService.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/datalog/DataLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatEventBuilder"
.end annotation


# instance fields
.field private event:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

.field final synthetic this$0:Lcom/xiaopeng/datalog/DataLogService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/datalog/DataLogService;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 154
    iput-object p1, p0, Lcom/xiaopeng/datalog/DataLogService$StatEventBuilder;->this$0:Lcom/xiaopeng/datalog/DataLogService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance p1, Lcom/xiaopeng/datalog/StatEvent;

    invoke-direct {p1, p2}, Lcom/xiaopeng/datalog/StatEvent;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaopeng/datalog/DataLogService$StatEventBuilder;->event:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    .line 156
    return-void
.end method


# virtual methods
.method public build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogService$StatEventBuilder;->event:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogService$StatEventBuilder;->event:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    return-object v0

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please call setEventName first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEventName(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogService$StatEventBuilder;->event:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;->setEventName(Ljava/lang/String;)V

    .line 162
    return-object p0
.end method

.method public setProperty(Ljava/lang/String;C)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # C

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogService$StatEventBuilder;->event:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;->put(Ljava/lang/String;Ljava/lang/Character;)V

    .line 188
    return-object p0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogService$StatEventBuilder;->event:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;->put(Ljava/lang/String;Ljava/lang/Number;)V

    .line 175
    return-object p0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogService$StatEventBuilder;->event:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-object p0
.end method

.method public setProperty(Ljava/lang/String;Z)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEventBuilder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogService$StatEventBuilder;->event:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 182
    return-object p0
.end method
