.class public Lcom/xiaopeng/xuiservice/smart/SmartScenesService;
.super Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
.source "SmartScenesService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/SmartScenesService$InstanceHolder;
    }
.end annotation


# static fields
.field private static final PROP_IS_ATL_EXIST:Ljava/lang/String; = "persist.sys.xiaopeng.ATLS"

.field private static StoredEffectColor:I = 0x0

.field private static StoredEffectType:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SmartScenesService"

.field private static savedAtlOpenStatus:Z


# instance fields
.field private mAmbientLightManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

.field private mCommonMsgController:Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;

.field private mInternalCommonEventListener:Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$InternalCommonEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->savedAtlOpenStatus:Z

    .line 37
    const-string v0, "stable_effect"

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->StoredEffectType:Ljava/lang/String;

    .line 38
    const/4 v0, -0x1

    sput v0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->StoredEffectColor:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/smart/SmartScenesService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/smart/SmartScenesService$1;

    .line 26
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/smart/SmartScenesService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartScenesService;

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->restoreAmbientLight()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/smart/SmartScenesService;Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartScenesService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->setAmbientLightStatus(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/smart/SmartScenesService;
    .locals 1

    .line 166
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartScenesService$InstanceHolder;->access$200()Lcom/xiaopeng/xuiservice/smart/SmartScenesService;

    move-result-object v0

    return-object v0
.end method

.method private hasAtl()Z
    .locals 1

    .line 122
    const-string v0, "ATLS"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->mAmbientLightManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private restoreAmbientLight()I
    .locals 3

    .line 145
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->hasAtl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    const-string v0, "SmartScenesService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreAmbientLight "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->savedAtlOpenStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->StoredEffectType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :try_start_0
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->savedAtlOpenStatus:Z

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->mAmbientLightManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->getAmbientLightOpen()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->mAmbientLightManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    sget-boolean v1, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->savedAtlOpenStatus:Z

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->setAmbientLightOpen(Z)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->mAmbientLightManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "curEffect":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->mAmbientLightManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->getAmbientLightMonoColor(Ljava/lang/String;)I

    move-result v1

    sget v2, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->StoredEffectColor:I

    if-eq v1, v2, :cond_1

    .line 153
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->mAmbientLightManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    sget v2, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->StoredEffectColor:I

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->setAmbientLightMonoColor(Ljava/lang/String;I)V

    .line 155
    :cond_1
    sget-object v1, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->StoredEffectType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->mAmbientLightManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    sget-object v2, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->StoredEffectType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->setAmbientLightEffectType(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v0    # "curEffect":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 160
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 162
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method private setAmbientLightStatus(Ljava/lang/String;I)I
    .locals 4
    .param p1, "effect"    # Ljava/lang/String;
    .param p2, "color"    # I

    .line 126
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->hasAtl()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 127
    const-string v0, "SmartScenesService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAmbientLightEffect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|color "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->mAmbientLightManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->getAmbientLightOpen()Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->savedAtlOpenStatus:Z

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->mAmbientLightManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->StoredEffectType:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->mAmbientLightManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->setAmbientLightOpen(Z)V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->mAmbientLightManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->setAmbientLightEffectType(Ljava/lang/String;)V

    .line 133
    if-eq p2, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->mAmbientLightManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->getAmbientLightMonoColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->StoredEffectColor:I

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->mAmbientLightManager:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->setAmbientLightMonoColor(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_0
    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 139
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 141
    :cond_1
    return v1
.end method


# virtual methods
.method public bridge synthetic debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "SmartScenesService"

    return-object v0
.end method

.method protected initCarListener()V
    .locals 0

    .line 72
    return-void
.end method

.method protected initXUIManager()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 82
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->initXUIManager()V

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->getXuiManager()Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    .line 84
    .local v0, "xuiManager":Lcom/xiaopeng/xuimanager/XUIManager;
    if-nez v0, :cond_0

    .line 85
    const-string v1, "SmartScenesService"

    const-string/jumbo v2, "xuiManager is null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->mCommonMsgController:Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;

    .line 89
    new-instance v1, Lcom/xiaopeng/xuiservice/smart/SmartScenesService$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/SmartScenesService$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartScenesService;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->mInternalCommonEventListener:Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$InternalCommonEventListener;

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->mCommonMsgController:Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->mInternalCommonEventListener:Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$InternalCommonEventListener;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;->registerListener(Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$InternalCommonEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected needConnectXUI()Z
    .locals 1

    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method protected onCarManagerInited()V
    .locals 2

    .line 76
    const-string v0, "SmartScenesService"

    const-string v1, "onCarManagerInited"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method protected onInit()V
    .locals 0

    .line 56
    return-void
.end method

.method protected onRelease()V
    .locals 2

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->mCommonMsgController:Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->mCommonMsgController:Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->mInternalCommonEventListener:Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$InternalCommonEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;->unregisterListener(Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$InternalCommonEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
