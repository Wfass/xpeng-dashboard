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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;->this$0:Lcom/xiaopeng/datalog/DataLogService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance p1, Lcom/xiaopeng/datalog/MoleEvent;

    invoke-direct {p1, p2}, Lcom/xiaopeng/datalog/MoleEvent;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;->event:Lcom/xiaopeng/datalog/MoleEvent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/datalog/DataLogService;Landroid/content/Context;Lcom/xiaopeng/datalog/DataLogService$1;)V
    .locals 0

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonId"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;->event:Lcom/xiaopeng/datalog/MoleEvent;

    const-string v1, "button_id"

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/datalog/MoleEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setEvent(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventName"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;->event:Lcom/xiaopeng/datalog/MoleEvent;

    invoke-static {p1}, Lcom/xiaopeng/datalog/StatEvent;->getModuleNameFromEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_module"

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/datalog/MoleEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;->event:Lcom/xiaopeng/datalog/MoleEvent;

    const-string v1, "_event"

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/datalog/MoleEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setModule(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;->event:Lcom/xiaopeng/datalog/MoleEvent;

    const-string v1, "_module"

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/datalog/MoleEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;->event:Lcom/xiaopeng/datalog/MoleEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "_page_button"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "_event"

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/datalog/MoleEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPageId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pageId"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;->event:Lcom/xiaopeng/datalog/MoleEvent;

    const-string v1, "page_id"

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/datalog/MoleEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setProperty(Ljava/lang/String;C)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "c"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;->event:Lcom/xiaopeng/datalog/MoleEvent;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/datalog/MoleEvent;->put(Ljava/lang/String;Ljava/lang/Character;)V

    return-object p0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "number"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;->event:Lcom/xiaopeng/datalog/MoleEvent;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/datalog/MoleEvent;->put(Ljava/lang/String;Ljava/lang/Number;)V

    return-object p0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "s1"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;->event:Lcom/xiaopeng/datalog/MoleEvent;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/datalog/MoleEvent;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setProperty(Ljava/lang/String;Z)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "b"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/datalog/DataLogService$MoleEventBuilder;->event:Lcom/xiaopeng/datalog/MoleEvent;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/datalog/MoleEvent;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object p0
.end method
