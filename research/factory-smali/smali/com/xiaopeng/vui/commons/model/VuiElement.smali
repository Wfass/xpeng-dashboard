.class public Lcom/xiaopeng/vui/commons/model/VuiElement;
.super Ljava/lang/Object;
.source "VuiElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;
    }
.end annotation


# instance fields
.field public actions:Lcom/google/gson/JsonObject;

.field public animation:Lcom/xiaopeng/vui/commons/model/AnimationObj;

.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
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

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->id:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->fatherElementId:Ljava/lang/String;

    .line 20
    const-string v1, ""

    iput-object v1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->label:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->fatherLabel:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->values:Ljava/lang/Object;

    .line 24
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->props:Lcom/google/gson/JsonObject;

    .line 25
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->type:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->actions:Lcom/google/gson/JsonObject;

    .line 44
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->layoutLoadable:Ljava/lang/Boolean;

    .line 46
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->resourceName:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->mode:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->resultActions:Ljava/util/List;

    .line 49
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->animation:Lcom/xiaopeng/vui/commons/model/AnimationObj;

    .line 108
    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->position:I

    .line 109
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->visible:Ljava/lang/Boolean;

    .line 110
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->enabled:Ljava/lang/Boolean;

    .line 111
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->feedbackType:Ljava/lang/String;

    .line 112
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->timestamp:J

    .line 122
    iput v1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->priority:I

    .line 198
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->elements:Ljava/util/List;

    .line 211
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;)V
    .locals 4
    .param p1, "builder"    # Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->id:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->fatherElementId:Ljava/lang/String;

    .line 20
    const-string v1, ""

    iput-object v1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->label:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->fatherLabel:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->values:Ljava/lang/Object;

    .line 24
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->props:Lcom/google/gson/JsonObject;

    .line 25
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->type:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->actions:Lcom/google/gson/JsonObject;

    .line 44
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->layoutLoadable:Ljava/lang/Boolean;

    .line 46
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->resourceName:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->mode:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->resultActions:Ljava/util/List;

    .line 49
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->animation:Lcom/xiaopeng/vui/commons/model/AnimationObj;

    .line 108
    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->position:I

    .line 109
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->visible:Ljava/lang/Boolean;

    .line 110
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->enabled:Ljava/lang/Boolean;

    .line 111
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->feedbackType:Ljava/lang/String;

    .line 112
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->timestamp:J

    .line 122
    iput v1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->priority:I

    .line 198
    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->elements:Ljava/util/List;

    .line 319
    invoke-static {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->access$000(Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->type:Ljava/lang/String;

    .line 320
    invoke-static {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->access$100(Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->label:Ljava/lang/String;

    .line 321
    invoke-static {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->access$200(Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->id:Ljava/lang/String;

    .line 322
    invoke-static {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->access$300(Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->timestamp:J

    .line 323
    invoke-static {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->access$400(Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;)Lcom/google/gson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->actions:Lcom/google/gson/JsonObject;

    .line 324
    invoke-static {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->access$500(Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->visible:Ljava/lang/Boolean;

    .line 325
    invoke-static {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->access$600(Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->enabled:Ljava/lang/Boolean;

    .line 326
    invoke-static {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->access$700(Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;)Lcom/google/gson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->props:Lcom/google/gson/JsonObject;

    .line 327
    invoke-static {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->access$800(Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->values:Ljava/lang/Object;

    .line 328
    invoke-static {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->access$900(Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->resourceName:Ljava/lang/String;

    .line 329
    return-void
.end method

.method public static getElementAction(Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .locals 13
    .param p0, "actionStr"    # Ljava/lang/String;

    .line 332
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 333
    :cond_0
    const-string v1, "\\|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "actionStrs":[Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 335
    .local v2, "actionObj":Lorg/json/JSONObject;
    invoke-static {}, Lcom/xiaopeng/vui/commons/VuiAction;->getVuiActionList()Ljava/util/List;

    move-result-object v3

    .line 336
    .local v3, "actionEnumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaopeng/vui/commons/VuiActType;->getVuiActTypeList()Ljava/util/List;

    move-result-object v4

    .line 337
    .local v4, "actTypeEnumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_6

    .line 338
    aget-object v7, v1, v6

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 339
    aget-object v7, v1, v6

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 340
    .local v7, "index":I
    aget-object v8, v1, v6

    invoke-virtual {v8, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 341
    .local v8, "name":Ljava/lang/String;
    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 342
    aget-object v9, v1, v6

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 343
    .local v9, "actExtends":[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x2

    if-ge v10, v11, :cond_1

    .line 345
    return-object v0

    .line 348
    :cond_1
    :try_start_0
    aget-object v10, v9, v5

    invoke-interface {v4, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 349
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 350
    .local v10, "extActionObj":Lorg/json/JSONObject;
    const-string v11, "actType"

    aget-object v12, v9, v5

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    const-string v11, "bizType"

    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    invoke-virtual {v2, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    .end local v10    # "extActionObj":Lorg/json/JSONObject;
    nop

    .line 358
    nop

    .line 360
    .end local v9    # "actExtends":[Ljava/lang/String;
    nop

    .line 363
    .end local v7    # "index":I
    .end local v8    # "name":Ljava/lang/String;
    goto :goto_1

    .line 354
    .restart local v7    # "index":I
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v9    # "actExtends":[Ljava/lang/String;
    :cond_2
    return-object v0

    .line 356
    :catch_0
    move-exception v5

    .line 357
    .local v5, "e":Ljava/lang/Exception;
    return-object v0

    .line 361
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v9    # "actExtends":[Ljava/lang/String;
    :cond_3
    return-object v0

    .line 365
    .end local v7    # "index":I
    .end local v8    # "name":Ljava/lang/String;
    :cond_4
    :try_start_1
    aget-object v7, v1, v6

    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 366
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 367
    .local v7, "extActionObj":Lorg/json/JSONObject;
    aget-object v8, v1, v6

    invoke-virtual {v2, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 368
    .end local v7    # "extActionObj":Lorg/json/JSONObject;
    nop

    .line 373
    nop

    .line 337
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 369
    :cond_5
    return-object v0

    .line 371
    :catch_1
    move-exception v5

    .line 372
    .restart local v5    # "e":Ljava/lang/Exception;
    return-object v0

    .line 376
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "i":I
    :cond_6
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method private isEqualsOfBoolean(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 4
    .param p1, "newOne"    # Ljava/lang/Boolean;
    .param p2, "oldOne"    # Ljava/lang/Boolean;

    .line 290
    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 291
    return v0

    .line 292
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 293
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v2, v3, :cond_1

    .line 294
    return v0

    .line 296
    :cond_1
    return v1

    .line 299
    :cond_2
    return v1
.end method

.method private isEqualsOfJson(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "newOne"    # Ljava/lang/Object;
    .param p2, "oldOne"    # Ljava/lang/Object;

    .line 304
    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 305
    return v0

    .line 306
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 307
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 308
    return v0

    .line 310
    :cond_1
    return v1

    .line 313
    :cond_2
    return v1
.end method

.method private isEqualsOfString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "newOne"    # Ljava/lang/String;
    .param p2, "oldOne"    # Ljava/lang/String;

    .line 276
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    return v1

    .line 278
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 279
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    return v1

    .line 282
    :cond_1
    return v2

    .line 285
    :cond_2
    return v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 241
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 242
    :cond_0
    instance-of v1, p1, Lcom/xiaopeng/vui/commons/model/VuiElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 243
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 244
    .local v1, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    iget-object v3, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->type:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/xiaopeng/vui/commons/model/VuiElement;->isEqualsOfString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    .line 245
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->label:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/xiaopeng/vui/commons/model/VuiElement;->isEqualsOfString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    .line 246
    :cond_3
    iget-object v3, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->fatherElementId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getFatherElementId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/xiaopeng/vui/commons/model/VuiElement;->isEqualsOfString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    .line 247
    :cond_4
    iget-object v3, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->fatherLabel:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getFatherLabel()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/xiaopeng/vui/commons/model/VuiElement;->isEqualsOfString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    .line 248
    :cond_5
    iget-object v3, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->mode:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/xiaopeng/vui/commons/model/VuiElement;->isEqualsOfString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    .line 249
    :cond_6
    iget-object v3, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->resourceName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResourceName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/xiaopeng/vui/commons/model/VuiElement;->isEqualsOfString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    .line 250
    :cond_7
    iget v3, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->position:I

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getPosition()I

    move-result v4

    if-eq v3, v4, :cond_8

    return v2

    .line 251
    :cond_8
    iget v3, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->priority:I

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getPriority()I

    move-result v4

    if-eq v3, v4, :cond_9

    return v2

    .line 252
    :cond_9
    iget-object v3, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->layoutLoadable:Ljava/lang/Boolean;

    iget-object v4, v1, Lcom/xiaopeng/vui/commons/model/VuiElement;->layoutLoadable:Ljava/lang/Boolean;

    invoke-direct {p0, v3, v4}, Lcom/xiaopeng/vui/commons/model/VuiElement;->isEqualsOfBoolean(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result v3

    if-nez v3, :cond_a

    return v2

    .line 253
    :cond_a
    iget-object v3, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->visible:Ljava/lang/Boolean;

    iget-object v4, v1, Lcom/xiaopeng/vui/commons/model/VuiElement;->visible:Ljava/lang/Boolean;

    invoke-direct {p0, v3, v4}, Lcom/xiaopeng/vui/commons/model/VuiElement;->isEqualsOfBoolean(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result v3

    if-nez v3, :cond_b

    return v2

    .line 254
    :cond_b
    iget-object v3, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->actions:Lcom/google/gson/JsonObject;

    iget-object v4, v1, Lcom/xiaopeng/vui/commons/model/VuiElement;->actions:Lcom/google/gson/JsonObject;

    invoke-direct {p0, v3, v4}, Lcom/xiaopeng/vui/commons/model/VuiElement;->isEqualsOfJson(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    return v2

    .line 255
    :cond_c
    iget-object v3, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->props:Lcom/google/gson/JsonObject;

    iget-object v4, v1, Lcom/xiaopeng/vui/commons/model/VuiElement;->props:Lcom/google/gson/JsonObject;

    invoke-direct {p0, v3, v4}, Lcom/xiaopeng/vui/commons/model/VuiElement;->isEqualsOfJson(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    return v2

    .line 256
    :cond_d
    iget-object v3, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->values:Ljava/lang/Object;

    iget-object v4, v1, Lcom/xiaopeng/vui/commons/model/VuiElement;->values:Ljava/lang/Object;

    invoke-direct {p0, v3, v4}, Lcom/xiaopeng/vui/commons/model/VuiElement;->isEqualsOfJson(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    return v2

    .line 257
    :cond_e
    iget-object v3, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->elements:Ljava/util/List;

    if-nez v3, :cond_f

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_f

    .line 258
    return v0

    .line 259
    :cond_f
    iget-object v3, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->elements:Ljava/util/List;

    if-eqz v3, :cond_13

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 260
    iget-object v3, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->elements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_10

    .line 261
    return v2

    .line 263
    :cond_10
    move v3, v2

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->elements:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_12

    .line 264
    iget-object v4, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->elements:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/vui/commons/model/VuiElement;

    iget-object v5, v1, Lcom/xiaopeng/vui/commons/model/VuiElement;->elements:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/vui/commons/model/VuiElement;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 265
    return v2

    .line 263
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 272
    .end local v3    # "i":I
    :cond_12
    return v0

    .line 270
    :cond_13
    return v2
.end method

.method public getActions()Lcom/google/gson/JsonObject;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->actions:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public getAnimation()Lcom/xiaopeng/vui/commons/model/AnimationObj;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->animation:Lcom/xiaopeng/vui/commons/model/AnimationObj;

    return-object v0
.end method

.method public getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->elements:Ljava/util/List;

    return-object v0
.end method

.method public getFatherElementId()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->fatherElementId:Ljava/lang/String;

    return-object v0
.end method

.method public getFatherLabel()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->fatherLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedbackType()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->feedbackType:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->position:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->priority:I

    return v0
.end method

.method public getProps()Lcom/google/gson/JsonObject;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->props:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public getResourceName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->resourceName:Ljava/lang/String;

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

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->resultActions:Ljava/util/List;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 195
    iget-wide v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->timestamp:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValues()Ljava/lang/Object;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->values:Ljava/lang/Object;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->enabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isLayoutLoadable()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->layoutLoadable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->layoutLoadable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->visible:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setActions(Ljava/lang/String;)V
    .locals 1
    .param p1, "actions"    # Ljava/lang/String;

    .line 88
    invoke-static {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElementAction(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->actions:Lcom/google/gson/JsonObject;

    .line 89
    return-void
.end method

.method public setAnimation(Lcom/xiaopeng/vui/commons/model/AnimationObj;)V
    .locals 0
    .param p1, "animation"    # Lcom/xiaopeng/vui/commons/model/AnimationObj;

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->animation:Lcom/xiaopeng/vui/commons/model/AnimationObj;

    .line 57
    return-void
.end method

.method public setElements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;)V"
        }
    .end annotation

    .line 206
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    iput-object p1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->elements:Ljava/util/List;

    .line 207
    return-void
.end method

.method public setEnabled(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "enabled"    # Ljava/lang/Boolean;

    .line 96
    iput-object p1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->enabled:Ljava/lang/Boolean;

    .line 97
    return-void
.end method

.method public setFatherElementId(Ljava/lang/String;)V
    .locals 0
    .param p1, "fatherElementId"    # Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->fatherElementId:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setFatherLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "fatherLabel"    # Ljava/lang/String;

    .line 163
    iput-object p1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->fatherLabel:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setFeedbackType(Ljava/lang/String;)V
    .locals 0
    .param p1, "feedbackType"    # Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->feedbackType:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 155
    iput-object p1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->id:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 159
    iput-object p1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->label:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setLayoutLoadable(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "layoutLoadable"    # Ljava/lang/Boolean;

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->layoutLoadable:Ljava/lang/Boolean;

    .line 33
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->mode:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 138
    iput p1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->position:I

    .line 139
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .line 115
    iput p1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->priority:I

    .line 116
    return-void
.end method

.method public setProps(Lcom/google/gson/JsonObject;)V
    .locals 0
    .param p1, "props"    # Lcom/google/gson/JsonObject;

    .line 167
    iput-object p1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->props:Lcom/google/gson/JsonObject;

    .line 168
    return-void
.end method

.method public setResourceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->resourceName:Ljava/lang/String;

    .line 81
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

    .line 60
    .local p1, "resultActions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->resultActions:Ljava/util/List;

    .line 61
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .line 105
    iput-wide p1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->timestamp:J

    .line 106
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 171
    iput-object p1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->type:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setValues(Ljava/lang/Object;)V
    .locals 0
    .param p1, "values"    # Ljava/lang/Object;

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->values:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public setVisible(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "visible"    # Ljava/lang/Boolean;

    .line 92
    iput-object p1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->visible:Ljava/lang/Boolean;

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VuiElement{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fatherElementId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->fatherElementId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", label=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fatherLabel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->fatherLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", values="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->values:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", props="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->props:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", actions="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->actions:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", layoutLoadable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->layoutLoadable:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", resourceName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->resourceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->mode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", resultActions="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->resultActions:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", animation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->animation:Lcom/xiaopeng/vui/commons/model/AnimationObj;

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->animation:Lcom/xiaopeng/vui/commons/model/AnimationObj;

    .line 228
    invoke-virtual {v2}, Lcom/xiaopeng/vui/commons/model/AnimationObj;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->position:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", visible="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->visible:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", enabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->enabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", feedbackType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->feedbackType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", elements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->elements:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    return-object v0
.end method
