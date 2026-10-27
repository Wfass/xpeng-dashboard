.class Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;
.super Ljava/lang/Object;
.source "DataLogService.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/datalog/DataLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoleEventBuilder"
.end annotation


# instance fields
.field event:Lcom/xiaopeng/datalog/MoleEvent;

.field final synthetic this$0:Lcom/xiaopeng/datalog/DataLogService;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/datalog/DataLogService;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 205
    iput-object p1, p0, Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;->this$0:Lcom/xiaopeng/datalog/DataLogService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance p1, Lcom/xiaopeng/datalog/MoleEvent;

    invoke-direct {p1, p2}, Lcom/xiaopeng/datalog/MoleEvent;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;->event:Lcom/xiaopeng/datalog/MoleEvent;

    .line 207
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/datalog/DataLogService;Landroid/content/Context;Lcom/xiaopeng/datalog/DataLogService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/datalog/DataLogService;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/xiaopeng/datalog/DataLogService$1;

    .line 201
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;-><init>(Lcom/xiaopeng/datalog/DataLogService;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;->event:Lcom/xiaopeng/datalog/MoleEvent;

    invoke-virtual {v0}, Lcom/xiaopeng/datalog/MoleEvent;->checkValid()V

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;->event:Lcom/xiaopeng/datalog/MoleEvent;

    return-object v0
.end method

.method public setButtonId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 2
    .param p1, "buttonId"    # Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;->event:Lcom/xiaopeng/datalog/MoleEvent;

    const-string v1, "button_id"

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/datalog/MoleEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-object p0
.end method

.method public setEvent(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 3
    .param p1, "eventName"    # Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;->event:Lcom/xiaopeng/datalog/MoleEvent;

    const-string v1, "_module"

    invoke-static {p1}, Lcom/xiaopeng/datalog/StatEvent;->getModuleNameFromEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/datalog/MoleEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;->event:Lcom/xiaopeng/datalog/MoleEvent;

    const-string v1, "_event"

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/datalog/MoleEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-object p0
.end method

.method public setModule(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 4
    .param p1, "module"    # Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;->event:Lcom/xiaopeng/datalog/MoleEvent;

    const-string v1, "_module"

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/datalog/MoleEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;->event:Lcom/xiaopeng/datalog/MoleEvent;

    const-string v1, "_event"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_page_button"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/datalog/MoleEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-object p0
.end method

.method public setPageId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 2
    .param p1, "pageId"    # Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;->event:Lcom/xiaopeng/datalog/MoleEvent;

    const-string v1, "page_id"

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/datalog/MoleEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-object p0
.end method

.method public setProperty(Ljava/lang/String;C)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "c"    # C

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;->event:Lcom/xiaopeng/datalog/MoleEvent;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/datalog/MoleEvent;->put(Ljava/lang/String;Ljava/lang/Character;)V

    .line 256
    return-object p0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/Number;

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;->event:Lcom/xiaopeng/datalog/MoleEvent;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/datalog/MoleEvent;->put(Ljava/lang/String;Ljava/lang/Number;)V

    .line 244
    return-object p0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;->event:Lcom/xiaopeng/datalog/MoleEvent;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/datalog/MoleEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-object p0
.end method

.method public setProperty(Ljava/lang/String;Z)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "b"    # Z

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;->event:Lcom/xiaopeng/datalog/MoleEvent;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/datalog/MoleEvent;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 250
    return-object p0
.end method
