.class public Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;
.super Ljava/lang/Object;
.source "VuiElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/vui/commons/model/VuiElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private actions:Lcom/google/gson/JsonObject;

.field private enable:Ljava/lang/Boolean;

.field private id:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private props:Lcom/google/gson/JsonObject;

.field private resourceName:Ljava/lang/String;

.field private timeStamp:J

.field private type:Ljava/lang/String;

.field private values:Ljava/lang/Object;

.field private visible:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 381
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->type:Ljava/lang/String;

    const-string v1, ""

    .line 382
    iput-object v1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->label:Ljava/lang/String;

    .line 383
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->id:Ljava/lang/String;

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->timeStamp:J

    .line 385
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->actions:Lcom/google/gson/JsonObject;

    .line 386
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->visible:Ljava/lang/Boolean;

    .line 387
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->enable:Ljava/lang/Boolean;

    .line 388
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->values:Ljava/lang/Object;

    .line 389
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->props:Lcom/google/gson/JsonObject;

    .line 390
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->resourceName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;)Ljava/lang/String;
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->type:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;)Ljava/lang/String;
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->label:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;)Ljava/lang/String;
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;)J
    .locals 2

    .line 380
    iget-wide v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->timeStamp:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;)Lcom/google/gson/JsonObject;
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->actions:Lcom/google/gson/JsonObject;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->visible:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->enable:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;)Lcom/google/gson/JsonObject;
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->props:Lcom/google/gson/JsonObject;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;)Ljava/lang/Object;
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->values:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;)Ljava/lang/String;
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->resourceName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public action(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;
    .locals 0

    .line 410
    invoke-static {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElementAction(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->actions:Lcom/google/gson/JsonObject;

    return-object p0
.end method

.method public build()Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 1

    .line 444
    new-instance v0, Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-direct {v0, p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;-><init>(Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;)V

    return-object v0
.end method

.method public enable(Z)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;
    .locals 0

    return-object p0
.end method

.method public id(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public label(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->label:Ljava/lang/String;

    return-object p0
.end method

.method public props(Lcom/google/gson/JsonObject;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->props:Lcom/google/gson/JsonObject;

    return-object p0
.end method

.method public resourceName(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->resourceName:Ljava/lang/String;

    return-object p0
.end method

.method public timestamp(J)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;
    .locals 0

    .line 405
    iput-wide p1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->timeStamp:J

    return-object p0
.end method

.method public type(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->type:Ljava/lang/String;

    return-object p0
.end method

.method public value(Ljava/lang/Object;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->values:Ljava/lang/Object;

    return-object p0
.end method

.method public visible(I)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 416
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->visible:Ljava/lang/Boolean;

    :cond_0
    return-object p0
.end method
