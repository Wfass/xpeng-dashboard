.class Lanz$a;
.super Ljava/lang/Object;
.source "DataLogService.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Laoa;

.field final synthetic b:Lanz;


# direct methods
.method private constructor <init>(Lanz;Landroid/content/Context;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lanz$a;->b:Lanz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance p1, Laoa;

    invoke-direct {p1, p2}, Laoa;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lanz$a;->a:Laoa;

    return-void
.end method

.method synthetic constructor <init>(Lanz;Landroid/content/Context;Lanz$1;)V
    .locals 0

    .line 201
    invoke-direct {p0, p1, p2}, Lanz$a;-><init>(Lanz;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;
    .locals 1

    .line 261
    iget-object v0, p0, Lanz$a;->a:Laoa;

    invoke-virtual {v0}, Laoa;->a()V

    .line 262
    iget-object v0, p0, Lanz$a;->a:Laoa;

    return-object v0
.end method

.method public setButtonId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 2

    .line 217
    iget-object v0, p0, Lanz$a;->a:Laoa;

    const-string v1, "button_id"

    invoke-virtual {v0, v1, p1}, Laoa;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setEvent(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 3

    .line 230
    iget-object v0, p0, Lanz$a;->a:Laoa;

    invoke-static {p1}, Laob;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_module"

    invoke-virtual {v0, v2, v1}, Laoa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lanz$a;->a:Laoa;

    const-string v1, "_event"

    invoke-virtual {v0, v1, p1}, Laoa;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setModule(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 2

    .line 223
    iget-object v0, p0, Lanz$a;->a:Laoa;

    const-string v1, "_module"

    invoke-virtual {v0, v1, p1}, Laoa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lanz$a;->a:Laoa;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_page_button"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "_event"

    invoke-virtual {v0, v1, p1}, Laoa;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPageId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 2

    .line 211
    iget-object v0, p0, Lanz$a;->a:Laoa;

    const-string v1, "page_id"

    invoke-virtual {v0, v1, p1}, Laoa;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setProperty(Ljava/lang/String;C)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 1

    .line 255
    iget-object v0, p0, Lanz$a;->a:Laoa;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Laoa;->a(Ljava/lang/String;Ljava/lang/Character;)V

    return-object p0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 1

    .line 243
    iget-object v0, p0, Lanz$a;->a:Laoa;

    invoke-virtual {v0, p1, p2}, Laoa;->a(Ljava/lang/String;Ljava/lang/Number;)V

    return-object p0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 1

    .line 237
    iget-object v0, p0, Lanz$a;->a:Laoa;

    invoke-virtual {v0, p1, p2}, Laoa;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setProperty(Ljava/lang/String;Z)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;
    .locals 1

    .line 249
    iget-object v0, p0, Lanz$a;->a:Laoa;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Laoa;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object p0
.end method
