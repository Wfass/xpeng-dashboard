.class Lcom/xiaopeng/datalog/b$a;
.super Ljava/lang/Object;
.source "DataLogService.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/datalog/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field pT:Lcom/xiaopeng/datalog/c;

.field final synthetic pU:Lcom/xiaopeng/datalog/b;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/datalog/b;Landroid/content/Context;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/xiaopeng/datalog/b$a;->pU:Lcom/xiaopeng/datalog/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance p1, Lcom/xiaopeng/datalog/c;

    invoke-direct {p1, p2}, Lcom/xiaopeng/datalog/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaopeng/datalog/b$a;->pT:Lcom/xiaopeng/datalog/c;

    .line 207
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/datalog/b;Landroid/content/Context;Lcom/xiaopeng/datalog/b$1;)V
    .locals 0

    .line 201
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/datalog/b$a;-><init>(Lcom/xiaopeng/datalog/b;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/datalog/b$a;->pT:Lcom/xiaopeng/datalog/c;

    invoke-virtual {v0}, Lcom/xiaopeng/datalog/c;->checkValid()V

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/datalog/b$a;->pT:Lcom/xiaopeng/datalog/c;

    return-object v0
.end method

.method public setButtonId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/datalog/b$a;->pT:Lcom/xiaopeng/datalog/c;

    const-string v1, "button_id"

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/datalog/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-object p0
.end method

.method public setEvent(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/datalog/b$a;->pT:Lcom/xiaopeng/datalog/c;

    const-string v1, "_module"

    invoke-static {p1}, Lcom/xiaopeng/datalog/d;->bg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/datalog/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/datalog/b$a;->pT:Lcom/xiaopeng/datalog/c;

    const-string v1, "_event"

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/datalog/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-object p0
.end method

.method public setModule(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/datalog/b$a;->pT:Lcom/xiaopeng/datalog/c;

    const-string v1, "_module"

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/datalog/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/datalog/b$a;->pT:Lcom/xiaopeng/datalog/c;

    const-string v1, "_event"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_page_button"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/datalog/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-object p0
.end method

.method public setPageId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/datalog/b$a;->pT:Lcom/xiaopeng/datalog/c;

    const-string v1, "page_id"

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/datalog/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-object p0
.end method

.method public setProperty(Ljava/lang/String;C)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/datalog/b$a;->pT:Lcom/xiaopeng/datalog/c;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/datalog/c;->put(Ljava/lang/String;Ljava/lang/Character;)V

    .line 256
    return-object p0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/datalog/b$a;->pT:Lcom/xiaopeng/datalog/c;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/datalog/c;->put(Ljava/lang/String;Ljava/lang/Number;)V

    .line 244
    return-object p0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/datalog/b$a;->pT:Lcom/xiaopeng/datalog/c;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/datalog/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-object p0
.end method

.method public setProperty(Ljava/lang/String;Z)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/datalog/b$a;->pT:Lcom/xiaopeng/datalog/c;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/datalog/c;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 250
    return-object p0
.end method
