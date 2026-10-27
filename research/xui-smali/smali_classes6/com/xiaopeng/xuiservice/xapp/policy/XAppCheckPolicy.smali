.class public Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;
.super Ljava/lang/Object;
.source "XAppCheckPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy$InstanceHolder;
    }
.end annotation


# static fields
.field public static final CHECK_ALLOW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "XAppCheckPolicy"

.field public static final TYPE_DEFAULT_EVENT:I = 0x0

.field public static final TYPE_EXCHANGE_TASK:I = 0x3

.field public static final TYPE_LUNCH_HOME:I = 0x5

.field public static final TYPE_RESIZE_TASK:I = 0x2

.field public static final TYPE_SHOW_DIALOG:I = 0x6

.field public static final TYPE_START_ACTIVITY:I = 0x1

.field public static final TYPE_STOP_ACTIVITY:I = 0x4

.field public static final TYPE_TRANSFER_ACTIVITY:I = 0x7


# instance fields
.field private mAppStartManager:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy$1;

    .line 16
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static get()Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;
    .locals 1

    .line 40
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy$InstanceHolder;->access$000()Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkAppPolicy(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    move-object/from16 v0, p1

    .line 49
    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 50
    .local v2, "checkResult":I
    const/4 v3, 0x0

    .line 51
    .local v3, "policyType":I
    const-string v4, "defaultEvent"

    .line 52
    .local v4, "policyName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 53
    .local v5, "screenId":I
    const/4 v6, -0x1

    .line 54
    .local v6, "mode":I
    const/4 v7, -0x1

    .line 55
    .local v7, "type":I
    const-string v8, ""

    .line 56
    .local v8, "mixedType":Ljava/lang/String;
    const-string v9, ""

    .line 57
    .local v9, "from":Ljava/lang/String;
    const/4 v10, 0x0

    .line 58
    .local v10, "transferEvent":Z
    const/4 v11, 0x0

    .line 59
    .local v11, "isForce":Z
    if-eqz v1, :cond_1

    .line 60
    const-string v12, "policyType"

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 61
    const-string v12, "policyName"

    const-string v14, "defaultEvent"

    invoke-virtual {v1, v12, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    const-string v12, "screenId"

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 63
    const/4 v12, -0x1

    if-ne v5, v12, :cond_0

    .line 64
    const/4 v5, 0x0

    .line 66
    :cond_0
    const-string v14, "mode"

    invoke-virtual {v1, v14, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 67
    const-string v14, "type"

    invoke-virtual {v1, v14, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 68
    const-string v12, "from"

    const-string v14, ""

    invoke-virtual {v1, v12, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 69
    const-string v12, "mixedType"

    const-string v14, ""

    invoke-virtual {v1, v12, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 70
    const-string v12, "intent"

    const/4 v14, 0x0

    invoke-static {v1, v12, v14}, Lcom/xiaopeng/util/xpTextUtils;->getBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 71
    .local v12, "intent":Landroid/content/Intent;
    invoke-static {v12}, Lcom/xiaopeng/xuiservice/xapp/util/IntentParamUtil;->isTransferEvent(Landroid/content/Intent;)Z

    move-result v10

    .line 72
    const-string v14, "isForce"

    invoke-virtual {v1, v14, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 73
    const-string v14, "moveToScreenByGesture"

    invoke-static {v12, v14, v13}, Lcom/xiaopeng/xuiservice/xapp/util/IntentParamUtil;->getBoolean(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v14

    .line 74
    .local v14, "isGestureMove":Z
    if-eqz v14, :cond_1

    .line 75
    const-string v15, "currentScreenId"

    invoke-static {v12, v15, v13}, Lcom/xiaopeng/xuiservice/xapp/util/IntentParamUtil;->getInt(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v13

    .line 76
    .local v13, "currentScreenId":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppTransferManager;->get()Lcom/xiaopeng/xuiservice/xapp/policy/XAppTransferManager;

    move-result-object v15

    invoke-virtual {v15, v13, v0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppTransferManager;->transfer(ILjava/lang/String;)I

    move-result v15

    return v15

    .line 80
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "currentScreenId":I
    .end local v14    # "isGestureMove":Z
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasScreen(I)Z

    move-result v12

    if-nez v12, :cond_2

    .line 81
    const/4 v2, 0x0

    .line 122
    :goto_0
    move-object/from16 v12, p0

    goto :goto_1

    .line 83
    :cond_2
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 114
    :pswitch_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppTransferManager;->get()Lcom/xiaopeng/xuiservice/xapp/policy/XAppTransferManager;

    move-result-object v12

    invoke-virtual {v12, v5, v0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppTransferManager;->transfer(ILjava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 106
    :pswitch_2
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppDialogManager;->get()Lcom/xiaopeng/xuiservice/xapp/policy/XAppDialogManager;

    move-result-object v12

    invoke-virtual {v12, v5, v0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppDialogManager;->checkAppShow(ILjava/lang/String;)I

    move-result v2

    .line 107
    goto :goto_0

    .line 90
    :pswitch_3
    move-object v12, v0

    .line 91
    .local v12, "checkPackageName":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 92
    const-string v12, "home"

    .line 93
    if-eqz v11, :cond_3

    .line 94
    const/4 v2, 0x0

    .line 95
    goto :goto_0

    .line 98
    :cond_3
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;->get()Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;

    move-result-object v13

    invoke-virtual {v13, v5, v12}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;->exitApp(ILjava/lang/String;)I

    move-result v2

    .line 99
    goto :goto_0

    .line 102
    .end local v12    # "checkPackageName":Ljava/lang/String;
    :pswitch_4
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;->get()Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;

    move-result-object v12

    invoke-virtual {v12, v5, v0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppExitManager;->exitApp(ILjava/lang/String;)I

    move-result v2

    .line 103
    goto :goto_0

    .line 110
    :pswitch_5
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppResizeManager;->get()Lcom/xiaopeng/xuiservice/xapp/policy/XAppResizeManager;

    move-result-object v12

    invoke-virtual {v12, v5, v1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppResizeManager;->check(ILandroid/os/Bundle;)I

    move-result v2

    .line 111
    goto :goto_0

    .line 86
    :pswitch_6
    move-object/from16 v12, p0

    iget-object v13, v12, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->mAppStartManager:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    invoke-virtual {v13, v0, v5, v1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->checkAppPolicy(Ljava/lang/String;ILandroid/os/Bundle;)I

    move-result v2

    .line 87
    nop

    .line 122
    :goto_1
    const-string v13, "XAppCheckPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "pType:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " &screen:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "&transfer :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " &pkg:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " &ret:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public checkAppResume(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->mAppStartManager:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->checkAppResume(Ljava/lang/String;I)V

    .line 145
    return-void
.end method

.method public checkAppStartStatus(Ljava/lang/String;ZI)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "checkStore"    # Z
    .param p3, "displayId"    # I

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->mAppStartManager:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->checkAppStartStatus(Ljava/lang/String;Landroid/os/Bundle;ZIZZZ)I

    move-result v0

    return v0
.end method

.method public checkAppStartStatus(Ljava/lang/String;ZIZZ)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "checkStore"    # Z
    .param p3, "displayId"    # I
    .param p4, "checkMultiScreen"    # Z
    .param p5, "checkScreen"    # Z

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->mAppStartManager:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->checkAppStartStatus(Ljava/lang/String;Landroid/os/Bundle;ZIZZZ)I

    move-result v0

    return v0
.end method

.method public checkAppStartWithPrompt(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->mAppStartManager:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->checkAppStartWithPrompt(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public checkAppStartWithPrompt(Ljava/lang/String;IIZ)I
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "showType"    # I
    .param p3, "displayId"    # I
    .param p4, "checkMultiScreen"    # Z

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->mAppStartManager:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object v1, p1

    move v4, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->checkAppStartWithPrompt(Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;IZIZZ)I

    move-result v0

    return v0
.end method

.method public getAppUsedLimitEnable()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->mAppStartManager:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->getAppUsedLimitEnable()Z

    move-result v0

    return v0
.end method

.method public getCarGearLevel()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->mAppStartManager:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->getCarGearLevel()I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 1

    .line 35
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->get()Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->mAppStartManager:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->mAppStartManager:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->init()V

    .line 37
    return-void
.end method

.method public isInPGearLevel()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->mAppStartManager:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->isInPGearLevel()Z

    move-result v0

    return v0
.end method

.method public isInSpecialDeniedStatus(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->mAppStartManager:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->isInSpecialDeniedStatus(I)Z

    move-result v0

    return v0
.end method

.method public setAppUsedLimitEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->mAppStartManager:Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->setAppUsedLimitEnable(Z)V

    .line 133
    return-void
.end method
