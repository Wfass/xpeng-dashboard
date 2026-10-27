.class public Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;
.super Lcom/xiaopeng/xuiservice/smart/action/ActionBase;
.source "ActionLightLanguage.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;


# instance fields
.field private final effect:Ljava/lang/String;

.field private final file:Ljava/lang/String;

.field private volatile lluPlayed:Z

.field private final repeat:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "effect"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;
    .param p3, "repeat"    # I

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->effect:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->file:Ljava/lang/String;

    .line 29
    iput p3, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->repeat:I

    .line 30
    return-void
.end method

.method public static synthetic lambda$5YgHtf361ly0Z-Un7vg2n8nRZCs(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->startLLU()V

    return-void
.end method

.method public static synthetic lambda$LEhKUe9-2zoT7NFxH8LJNTgIgcQ(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->stopLLU()V

    return-void
.end method

.method private startLLU()V
    .locals 5

    .line 45
    const-string v0, "LLU"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isInternationalEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 55
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    move-result-object v0

    .line 57
    .local v0, "lluService":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
    const/4 v1, 0x0

    .line 58
    .local v1, "loaded":Z
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->effect:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 60
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->effect:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->isLightEffectLoaded(Ljava/lang/String;)Z

    move-result v1

    .line 62
    if-nez v1, :cond_3

    .line 63
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->file:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->file:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->file:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->loadLightEffect(Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->effect:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->isLightEffectLoaded(Ljava/lang/String;)Z

    move-result v1

    .line 66
    if-nez v1, :cond_3

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load llu fail, invalid json file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->file:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->ERROR(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "llu json file not exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->file:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->ERROR(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LightLanguageAction must have an effect name. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->ERROR(Ljava/lang/String;)V

    .line 78
    :cond_3
    :goto_0
    if-nez v1, :cond_4

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->stop()V

    .line 80
    return-void

    .line 84
    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->lluPlayed:Z

    .line 85
    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->setLightEffectListener(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;)V

    .line 86
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->effect:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->repeat:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->playEffect(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start llu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->effect:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->repeat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 88
    return-void

    .line 46
    .end local v0    # "lluService":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
    .end local v1    # "loaded":Z
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LLU not supported in this car! car type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/miniprog/manager/HttpManagerUtil;->getCarType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", international = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isInternationalEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->ERROR(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->stop()V

    .line 49
    return-void
.end method

.method private stopLLU()V
    .locals 2

    .line 91
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->lluPlayed:Z

    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    move-result-object v0

    .line 94
    .local v0, "lluService":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->effect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->stopEffect(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->unsetLightEffectListener(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffectListener;)V

    .line 97
    .end local v0    # "lluService":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
    :cond_0
    return-void
.end method


# virtual methods
.method public onErrorEffect(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "errCode"    # I

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->effect:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    return-void

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onErrorEffect: name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public onFinishEffect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->effect:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinishEffect: name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->stop()V

    .line 127
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 34
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionLightLanguage$5YgHtf361ly0Z-Un7vg2n8nRZCs;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionLightLanguage$5YgHtf361ly0Z-Un7vg2n8nRZCs;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 35
    return-void
.end method

.method public onStartEffect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->effect:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    return-void

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartEffect: name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 39
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionLightLanguage$LEhKUe9-2zoT7NFxH8LJNTgIgcQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionLightLanguage$LEhKUe9-2zoT7NFxH8LJNTgIgcQ;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 40
    return-void
.end method

.method public onStopEffect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->effect:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    return-void

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopEffect: name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->stop()V

    .line 116
    return-void
.end method

.method public onUpgradeEffect(II)V
    .locals 2
    .param p1, "name"    # I
    .param p2, "mode"    # I

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpgradeEffect: name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{effect=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->effect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", file=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->file:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", repeat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionLightLanguage;->repeat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
