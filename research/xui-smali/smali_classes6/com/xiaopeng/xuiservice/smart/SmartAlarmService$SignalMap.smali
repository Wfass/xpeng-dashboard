.class Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;
.super Ljava/lang/Object;
.source "SmartAlarmService.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SignalMap"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private osd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Osd;",
            ">;"
        }
    .end annotation
.end field

.field private sound:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;",
            ">;"
        }
    .end annotation
.end field

.field private tts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;->name:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getOsdPolicy(I)Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Osd;
    .locals 3
    .param p1, "value"    # I

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;->osd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Osd;

    .line 291
    .local v1, "it":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Osd;
    iget v2, v1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Osd;->value:I

    if-ne v2, p1, :cond_0

    return-object v1

    .line 292
    .end local v1    # "it":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Osd;
    :cond_0
    goto :goto_0

    .line 293
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignalName()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSoundPolicy(I)Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;
    .locals 3
    .param p1, "value"    # I

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;->sound:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;

    .line 284
    .local v1, "it":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;
    iget v2, v1, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;->value:I

    if-ne v2, p1, :cond_0

    return-object v1

    .line 285
    .end local v1    # "it":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;
    :cond_0
    goto :goto_0

    .line 286
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTtsPolicy(I)Ljava/util/List;
    .locals 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;",
            ">;"
        }
    .end annotation

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;>;"
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SignalMap;->tts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;

    .line 275
    .local v2, "it":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;
    iget v3, v2, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;->value:I

    if-ne v3, p1, :cond_0

    .line 276
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    .end local v2    # "it":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Tts;
    :cond_0
    goto :goto_0

    .line 279
    :cond_1
    return-object v0
.end method
