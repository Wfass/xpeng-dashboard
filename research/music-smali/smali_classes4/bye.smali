.class public Lbye;
.super Ljava/lang/Object;
.source "VuiElement.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbye$a;
    }
.end annotation


# instance fields
.field public actions:Lcom/google/gson/JsonObject;

.field public animation:Lbyd;

.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbye;",
            ">;"
        }
    .end annotation
.end field

.field private enabled:Ljava/lang/Boolean;

.field public fatherElementId:Ljava/lang/String;

.field public fatherLabel:Ljava/lang/String;

.field private feedbackType:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field private layoutLoadable:Ljava/lang/Boolean;

.field private mode:Ljava/lang/String;

.field private position:I

.field private priority:I

.field private props:Lcom/google/gson/JsonObject;

.field private resourceName:Ljava/lang/String;

.field public resultActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:J

.field public type:Ljava/lang/String;

.field public values:Ljava/lang/Object;

.field private visible:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lbye;->id:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lbye;->fatherElementId:Ljava/lang/String;

    const-string v1, ""

    .line 21
    iput-object v1, p0, Lbye;->label:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lbye;->fatherLabel:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lbye;->values:Ljava/lang/Object;

    .line 25
    iput-object v0, p0, Lbye;->props:Lcom/google/gson/JsonObject;

    .line 26
    iput-object v0, p0, Lbye;->type:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lbye;->actions:Lcom/google/gson/JsonObject;

    .line 45
    iput-object v0, p0, Lbye;->layoutLoadable:Ljava/lang/Boolean;

    .line 47
    iput-object v0, p0, Lbye;->resourceName:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lbye;->mode:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lbye;->resultActions:Ljava/util/List;

    .line 50
    iput-object v0, p0, Lbye;->animation:Lbyd;

    const/4 v1, -0x1

    .line 109
    iput v1, p0, Lbye;->position:I

    .line 110
    iput-object v0, p0, Lbye;->visible:Ljava/lang/Boolean;

    .line 111
    iput-object v0, p0, Lbye;->enabled:Ljava/lang/Boolean;

    .line 112
    iput-object v0, p0, Lbye;->feedbackType:Ljava/lang/String;

    const-wide/16 v2, -0x1

    .line 113
    iput-wide v2, p0, Lbye;->timestamp:J

    .line 123
    iput v1, p0, Lbye;->priority:I

    .line 199
    iput-object v0, p0, Lbye;->elements:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lbye$a;)V
    .locals 4

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lbye;->id:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lbye;->fatherElementId:Ljava/lang/String;

    const-string v1, ""

    .line 21
    iput-object v1, p0, Lbye;->label:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lbye;->fatherLabel:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lbye;->values:Ljava/lang/Object;

    .line 25
    iput-object v0, p0, Lbye;->props:Lcom/google/gson/JsonObject;

    .line 26
    iput-object v0, p0, Lbye;->type:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lbye;->actions:Lcom/google/gson/JsonObject;

    .line 45
    iput-object v0, p0, Lbye;->layoutLoadable:Ljava/lang/Boolean;

    .line 47
    iput-object v0, p0, Lbye;->resourceName:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lbye;->mode:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lbye;->resultActions:Ljava/util/List;

    .line 50
    iput-object v0, p0, Lbye;->animation:Lbyd;

    const/4 v1, -0x1

    .line 109
    iput v1, p0, Lbye;->position:I

    .line 110
    iput-object v0, p0, Lbye;->visible:Ljava/lang/Boolean;

    .line 111
    iput-object v0, p0, Lbye;->enabled:Ljava/lang/Boolean;

    .line 112
    iput-object v0, p0, Lbye;->feedbackType:Ljava/lang/String;

    const-wide/16 v2, -0x1

    .line 113
    iput-wide v2, p0, Lbye;->timestamp:J

    .line 123
    iput v1, p0, Lbye;->priority:I

    .line 199
    iput-object v0, p0, Lbye;->elements:Ljava/util/List;

    .line 320
    invoke-static {p1}, Lbye$a;->a(Lbye$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbye;->type:Ljava/lang/String;

    .line 321
    invoke-static {p1}, Lbye$a;->b(Lbye$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbye;->label:Ljava/lang/String;

    .line 322
    invoke-static {p1}, Lbye$a;->c(Lbye$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbye;->id:Ljava/lang/String;

    .line 323
    invoke-static {p1}, Lbye$a;->d(Lbye$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lbye;->timestamp:J

    .line 324
    invoke-static {p1}, Lbye$a;->e(Lbye$a;)Lcom/google/gson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lbye;->actions:Lcom/google/gson/JsonObject;

    .line 325
    invoke-static {p1}, Lbye$a;->f(Lbye$a;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lbye;->visible:Ljava/lang/Boolean;

    .line 326
    invoke-static {p1}, Lbye$a;->g(Lbye$a;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lbye;->enabled:Ljava/lang/Boolean;

    .line 327
    invoke-static {p1}, Lbye$a;->h(Lbye$a;)Lcom/google/gson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lbye;->props:Lcom/google/gson/JsonObject;

    .line 328
    invoke-static {p1}, Lbye$a;->i(Lbye$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lbye;->values:Ljava/lang/Object;

    .line 329
    invoke-static {p1}, Lbye$a;->j(Lbye$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbye;->resourceName:Ljava/lang/String;

    return-void
.end method

.method public static getElementAction(Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "\\|"

    .line 334
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 335
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 336
    invoke-static {}, Lbxx;->b()Ljava/util/List;

    move-result-object v2

    .line 337
    invoke-static {}, Lbxw;->b()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    .line 338
    :goto_0
    array-length v6, p0

    if-ge v5, v6, :cond_5

    .line 339
    aget-object v6, p0, v5

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 340
    aget-object v6, p0, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 341
    aget-object v7, p0, v5

    invoke-virtual {v7, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 342
    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 343
    aget-object v8, p0, v5

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 344
    array-length v8, v6

    const/4 v9, 0x2

    if-ge v8, v9, :cond_1

    return-object v0

    .line 349
    :cond_1
    :try_start_0
    aget-object v8, v6, v4

    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 350
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "actType"

    .line 351
    aget-object v10, v6, v4

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "bizType"

    const/4 v10, 0x1

    .line 352
    aget-object v6, v6, v10

    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 353
    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_2
    return-object v0

    .line 366
    :cond_3
    :try_start_1
    aget-object v6, p0, v5

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 367
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 368
    aget-object v7, p0, v5

    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_1
    :cond_4
    return-object v0

    .line 377
    :cond_5
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonObject;

    return-object p0
.end method

.method private isEqualsOfBoolean(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 294
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-ne p1, p2, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method private isEqualsOfJson(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 308
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method private isEqualsOfString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 277
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 279
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v2
.end method


# virtual methods
.method public clone()Lbye;
    .locals 1

    .line 453
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbye;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 455
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lbye;->clone()Lbye;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 243
    :cond_0
    instance-of v1, p1, Lbye;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 244
    :cond_1
    check-cast p1, Lbye;

    .line 245
    iget-object v1, p0, Lbye;->type:Ljava/lang/String;

    invoke-virtual {p1}, Lbye;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lbye;->isEqualsOfString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 246
    :cond_2
    iget-object v1, p0, Lbye;->label:Ljava/lang/String;

    invoke-virtual {p1}, Lbye;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lbye;->isEqualsOfString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 247
    :cond_3
    iget-object v1, p0, Lbye;->fatherElementId:Ljava/lang/String;

    invoke-virtual {p1}, Lbye;->getFatherElementId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lbye;->isEqualsOfString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 248
    :cond_4
    iget-object v1, p0, Lbye;->fatherLabel:Ljava/lang/String;

    invoke-virtual {p1}, Lbye;->getFatherLabel()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lbye;->isEqualsOfString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 249
    :cond_5
    iget-object v1, p0, Lbye;->mode:Ljava/lang/String;

    invoke-virtual {p1}, Lbye;->getMode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lbye;->isEqualsOfString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 250
    :cond_6
    iget-object v1, p0, Lbye;->resourceName:Ljava/lang/String;

    invoke-virtual {p1}, Lbye;->getResourceName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lbye;->isEqualsOfString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 251
    :cond_7
    iget v1, p0, Lbye;->position:I

    invoke-virtual {p1}, Lbye;->getPosition()I

    move-result v3

    if-eq v1, v3, :cond_8

    return v2

    .line 252
    :cond_8
    iget v1, p0, Lbye;->priority:I

    invoke-virtual {p1}, Lbye;->getPriority()I

    move-result v3

    if-eq v1, v3, :cond_9

    return v2

    .line 253
    :cond_9
    iget-object v1, p0, Lbye;->layoutLoadable:Ljava/lang/Boolean;

    iget-object v3, p1, Lbye;->layoutLoadable:Ljava/lang/Boolean;

    invoke-direct {p0, v1, v3}, Lbye;->isEqualsOfBoolean(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 254
    :cond_a
    iget-object v1, p0, Lbye;->visible:Ljava/lang/Boolean;

    iget-object v3, p1, Lbye;->visible:Ljava/lang/Boolean;

    invoke-direct {p0, v1, v3}, Lbye;->isEqualsOfBoolean(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 255
    :cond_b
    iget-object v1, p0, Lbye;->actions:Lcom/google/gson/JsonObject;

    iget-object v3, p1, Lbye;->actions:Lcom/google/gson/JsonObject;

    invoke-direct {p0, v1, v3}, Lbye;->isEqualsOfJson(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 256
    :cond_c
    iget-object v1, p0, Lbye;->props:Lcom/google/gson/JsonObject;

    iget-object v3, p1, Lbye;->props:Lcom/google/gson/JsonObject;

    invoke-direct {p0, v1, v3}, Lbye;->isEqualsOfJson(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 257
    :cond_d
    iget-object v1, p0, Lbye;->values:Ljava/lang/Object;

    iget-object v3, p1, Lbye;->values:Ljava/lang/Object;

    invoke-direct {p0, v1, v3}, Lbye;->isEqualsOfJson(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 258
    :cond_e
    iget-object v1, p0, Lbye;->elements:Ljava/util/List;

    if-nez v1, :cond_f

    invoke-virtual {p1}, Lbye;->getElements()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_f

    return v0

    .line 260
    :cond_f
    iget-object v1, p0, Lbye;->elements:Ljava/util/List;

    if-eqz v1, :cond_13

    invoke-virtual {p1}, Lbye;->getElements()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 261
    iget-object v1, p0, Lbye;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1}, Lbye;->getElements()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    move v1, v2

    .line 264
    :goto_0
    iget-object v3, p0, Lbye;->elements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_12

    .line 265
    iget-object v3, p0, Lbye;->elements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbye;

    iget-object v4, p1, Lbye;->elements:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbye;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    return v2

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_12
    return v0

    :cond_13
    return v2
.end method

.method public getActions()Lcom/google/gson/JsonObject;
    .locals 1

    .line 180
    iget-object v0, p0, Lbye;->actions:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public getAnimation()Lbyd;
    .locals 1

    .line 53
    iget-object v0, p0, Lbye;->animation:Lbyd;

    return-object v0
.end method

.method public getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbye;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lbye;->elements:Ljava/util/List;

    return-object v0
.end method

.method public getFatherElementId()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lbye;->fatherElementId:Ljava/lang/String;

    return-object v0
.end method

.method public getFatherLabel()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lbye;->fatherLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedbackType()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lbye;->feedbackType:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lbye;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lbye;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lbye;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 134
    iget v0, p0, Lbye;->position:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 120
    iget v0, p0, Lbye;->priority:I

    return v0
.end method

.method public getProps()Lcom/google/gson/JsonObject;
    .locals 1

    .line 126
    iget-object v0, p0, Lbye;->props:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public getResourceName()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lbye;->resourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getResultActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lbye;->resultActions:Ljava/util/List;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 196
    iget-wide v0, p0, Lbye;->timestamp:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lbye;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValues()Ljava/lang/Object;
    .locals 1

    .line 37
    iget-object v0, p0, Lbye;->values:Ljava/lang/Object;

    return-object v0
.end method

.method public isEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 188
    iget-object v0, p0, Lbye;->enabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isLayoutLoadable()Ljava/lang/Boolean;
    .locals 1

    .line 41
    iget-object v0, p0, Lbye;->layoutLoadable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isVisible()Ljava/lang/Boolean;
    .locals 1

    .line 184
    iget-object v0, p0, Lbye;->visible:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setActions(Ljava/lang/String;)V
    .locals 0

    .line 89
    invoke-static {p1}, Lbye;->getElementAction(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lbye;->actions:Lcom/google/gson/JsonObject;

    return-void
.end method

.method public setAnimation(Lbyd;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lbye;->animation:Lbyd;

    return-void
.end method

.method public setElements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbye;",
            ">;)V"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lbye;->elements:Ljava/util/List;

    return-void
.end method

.method public setEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lbye;->enabled:Ljava/lang/Boolean;

    return-void
.end method

.method public setFatherElementId(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lbye;->fatherElementId:Ljava/lang/String;

    return-void
.end method

.method public setFatherLabel(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lbye;->fatherLabel:Ljava/lang/String;

    return-void
.end method

.method public setFeedbackType(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lbye;->feedbackType:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lbye;->id:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lbye;->label:Ljava/lang/String;

    return-void
.end method

.method public setLayoutLoadable(Ljava/lang/Boolean;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lbye;->layoutLoadable:Ljava/lang/Boolean;

    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lbye;->mode:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 139
    iput p1, p0, Lbye;->position:I

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 116
    iput p1, p0, Lbye;->priority:I

    return-void
.end method

.method public setProps(Lcom/google/gson/JsonObject;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lbye;->props:Lcom/google/gson/JsonObject;

    return-void
.end method

.method public setResourceName(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lbye;->resourceName:Ljava/lang/String;

    return-void
.end method

.method public setResultActions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lbye;->resultActions:Ljava/util/List;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 106
    iput-wide p1, p0, Lbye;->timestamp:J

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lbye;->type:Ljava/lang/String;

    return-void
.end method

.method public setValues(Ljava/lang/Object;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lbye;->values:Ljava/lang/Object;

    return-void
.end method

.method public setVisible(Ljava/lang/Boolean;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lbye;->visible:Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VuiElement{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbye;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fatherElementId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbye;->fatherElementId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", label=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbye;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fatherLabel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbye;->fatherLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", values="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbye;->values:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", props="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbye;->props:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbye;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", actions="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbye;->actions:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", layoutLoadable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbye;->layoutLoadable:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", resourceName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbye;->resourceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbye;->mode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", resultActions="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbye;->resultActions:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", animation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbye;->animation:Lbyd;

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {v2}, Lbyd;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lbye;->position:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", visible="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbye;->visible:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", enabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbye;->enabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", feedbackType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbye;->feedbackType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lbye;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbye;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", elements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbye;->elements:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
