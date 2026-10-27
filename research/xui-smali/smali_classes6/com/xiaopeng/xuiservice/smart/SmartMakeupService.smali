.class public Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;
.super Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
.source "SmartMakeupService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/SmartMakeupService$InstanceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartMakeupService"


# instance fields
.field private hasIgOn:Z

.field private mBcmCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

.field private mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

.field private mProxy:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 238
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->hasIgOn:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 40
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->mBcmCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 41
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->mProxy:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;

    .line 239
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;

    .line 35
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->hasIgOn:Z

    return v0
.end method

.method static synthetic access$002(Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->hasIgOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;)Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->mProxy:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->sendBroadcast()V

    return-void
.end method

.method private addBcmManagerCallback()V
    .locals 1

    .line 85
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService$2;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->mBcmCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->mBcmCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->addBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 101
    return-void
.end method

.method private addMcuManagerCallback()V
    .locals 1

    .line 62
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 82
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;
    .locals 1

    .line 247
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService$InstanceHolder;->access$300()Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;

    move-result-object v0

    return-object v0
.end method

.method private removeCarListener()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->mMcuCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->removeMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 105
    return-void
.end method

.method private sendBroadcast()V
    .locals 5

    .line 44
    const-string v0, "SmartMakeupService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcast makeuplight, hasIgOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->hasIgOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->hasIgOn:Z

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAKEUPLIGHT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 51
    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 52
    const-string v1, "com.xiaopeng.homespace.makeup"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Application;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SmartMakeupService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendBroadcast failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->mProxy:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->getColorTemperature()Ljava/util/List;

    move-result-object v0

    .line 151
    .local v0, "colorTemp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 152
    .local v2, "temperature":I
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->mProxy:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->getLuminance()I

    move-result v3

    .line 153
    .local v3, "luminance":I
    const/4 v4, -0x1

    .line 155
    .local v4, "ret":I
    const-string v5, "*dump-SmartMakeupService"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    if-eqz p2, :cond_a

    .line 158
    const/4 v5, 0x0

    move v6, v2

    move v2, v5

    .local v2, "i":I
    .local v6, "temperature":I
    :goto_0
    array-length v7, p2

    if-ge v2, v7, :cond_9

    .line 159
    aget-object v7, p2, v2

    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v9, "--getTemperature"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v1

    goto :goto_2

    :sswitch_1
    const-string v9, "--getStatus"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v5

    goto :goto_2

    :sswitch_2
    const-string v9, "--setLuminance"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    goto :goto_2

    :sswitch_3
    const-string v9, "--setTemperature"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x3

    goto :goto_2

    :sswitch_4
    const-string v9, "--getLuminance"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x2

    goto :goto_2

    :sswitch_5
    const-string v9, "--runLuminance"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x6

    goto :goto_2

    :sswitch_6
    const-string v9, "--runTemperature"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x5

    goto :goto_2

    :cond_0
    :goto_1
    move v7, v8

    :goto_2
    const-wide/16 v8, 0x64

    const/16 v10, 0x3f

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_e

    .line 211
    :pswitch_0
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v10, :cond_2

    .line 213
    :try_start_0
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->mProxy:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;

    invoke-virtual {v7, v2}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->setLuminance(I)I

    move-result v7

    if-gez v7, :cond_1

    .line 214
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "runLuminance ("

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") failed"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    goto :goto_5

    .line 217
    :cond_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    goto :goto_4

    .line 218
    :catch_0
    move-exception v7

    .line 211
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 221
    :cond_2
    :goto_5
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->mProxy:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;

    invoke-virtual {v7, v3}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->setLuminance(I)I

    .line 223
    const-string v7, "runLuminance finished"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    goto/16 :goto_e

    .line 196
    :pswitch_1
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v10, :cond_4

    .line 198
    :try_start_1
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->mProxy:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;

    invoke-virtual {v7, v5, v2}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->setColorTemperature(II)I

    move-result v7

    if-gez v7, :cond_3

    .line 199
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "runTemperature ("

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") failed"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    goto :goto_8

    .line 202
    :cond_3
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 204
    goto :goto_7

    .line 203
    :catch_1
    move-exception v7

    .line 196
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 206
    :cond_4
    :goto_8
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->mProxy:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;

    invoke-virtual {v7, v5, v6}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->setColorTemperature(II)I

    .line 208
    const-string v7, "runTemperature finished"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    goto/16 :goto_e

    .line 184
    :pswitch_2
    array-length v7, p2

    sub-int/2addr v7, v1

    if-ge v2, v7, :cond_8

    .line 186
    add-int/lit8 v7, v2, 0x1

    :try_start_2
    aget-object v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v3, v7

    .line 188
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->mProxy:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;

    invoke-virtual {v7, v3}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->setLuminance(I)I

    move-result v7

    move v4, v7

    .line 190
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setLuminance "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez v4, :cond_5

    const-string v8, "failed"

    goto :goto_9

    :cond_5
    const-string v8, "succeed"

    :goto_9
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_a

    .line 191
    :catch_2
    move-exception v7

    .line 192
    :goto_a
    goto/16 :goto_e

    .line 172
    :pswitch_3
    array-length v7, p2

    sub-int/2addr v7, v1

    if-ge v2, v7, :cond_8

    .line 174
    add-int/lit8 v7, v2, 0x1

    :try_start_3
    aget-object v7, p2, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v6, v7

    .line 176
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->mProxy:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;

    invoke-virtual {v7, v5, v6}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->setColorTemperature(II)I

    move-result v7

    move v4, v7

    .line 178
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setTemperature "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez v4, :cond_6

    const-string v8, "failed"

    goto :goto_b

    :cond_6
    const-string v8, "succeed"

    :goto_b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_c

    .line 179
    :catch_3
    move-exception v7

    .line 180
    :goto_c
    goto :goto_e

    .line 169
    :pswitch_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLuminance: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    goto :goto_e

    .line 166
    :pswitch_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTemperature: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 167
    goto :goto_e

    .line 161
    :pswitch_6
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->mProxy:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;

    invoke-virtual {v7}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->getMakeupAvailable()I

    move-result v4

    .line 163
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMakeupStatus: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_7

    const-string v8, "on"

    goto :goto_d

    :cond_7
    const-string v8, "off"

    :goto_d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    nop

    .line 158
    :cond_8
    :goto_e
    add-int/2addr v2, v1

    goto/16 :goto_0

    .line 230
    .end local v2    # "i":I
    :cond_9
    move v2, v6

    .end local v6    # "temperature":I
    .local v2, "temperature":I
    :cond_a
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x32391477 -> :sswitch_6
        -0x302113b3 -> :sswitch_5
        -0x1955b41e -> :sswitch_4
        -0xa61d2ae -> :sswitch_3
        0x42fe0c56 -> :sswitch_2
        0x4d014148 -> :sswitch_1
        0x5f38b9de -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 234
    const-string v0, "SmartMakeupService"

    return-object v0
.end method

.method protected initCarListener()V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->addMcuManagerCallback()V

    .line 128
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->addBcmManagerCallback()V

    .line 129
    return-void
.end method

.method protected initXUIManager()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 133
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->initXUIManager()V

    .line 134
    return-void
.end method

.method protected onCarManagerInited()V
    .locals 5

    .line 109
    const-string/jumbo v0, "xp_mcu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    .line 112
    .local v0, "mcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/car/hardware/mcu/CarMcuManager;->getIgStatusFromMcu()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->hasIgOn:Z

    .line 114
    const-string v1, "SmartMakeupService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCarManagerInited, hasIgOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->hasIgOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->mProxy:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->getMakeupAvailable()I

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->mProxy:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->hasIgOn:Z

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->setMakeupLightStatus(Z)I

    .line 118
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->sendBroadcast()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_1
    goto :goto_1

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SmartMakeupService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIgStatusFromMcu failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method protected onInit()V
    .locals 2

    .line 138
    const-string v0, "SmartMakeupService"

    const-string v1, "onInit"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method protected onRelease()V
    .locals 2

    .line 143
    const-string v0, "SmartMakeupService"

    const-string v1, "onRelease"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartMakeupService;->removeCarListener()V

    .line 146
    return-void
.end method
