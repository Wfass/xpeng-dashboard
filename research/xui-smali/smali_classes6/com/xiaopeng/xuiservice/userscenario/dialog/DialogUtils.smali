.class public Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;
    }
.end annotation


# static fields
.field private static BUTTON_NUM_THREE:I = 0x0

.field private static BUTTON_NUM_TWO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ScenarioDialogUtils"

.field private static mScreenDialogMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static mUserScenarioService:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils;->mScreenDialogMap:Ljava/util/Map;

    .line 31
    const/4 v0, 0x2

    sput v0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils;->BUTTON_NUM_TWO:I

    .line 32
    const/4 v0, 0x3

    sput v0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils;->BUTTON_NUM_THREE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getInstance()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils;->mUserScenarioService:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    .line 36
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 27
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils;->mScreenDialogMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
    .locals 1

    .line 27
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils;->mUserScenarioService:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized showDialog(Landroid/content/Context;ILcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;Ljava/lang/String;)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screenId"    # I
    .param p3, "configer"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .param p4, "exitDialogConfig"    # Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;
    .param p5, "jsonStr"    # Ljava/lang/String;

    move-object/from16 v14, p1

    move/from16 v6, p2

    move-object/from16 v5, p4

    move-object/from16 v4, p5

    monitor-enter p0

    .line 40
    const/4 v3, 0x2

    if-eqz v5, :cond_0

    :try_start_0
    iget-object v0, v5, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;->buttonConfigs:[Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;

    array-length v0, v0

    if-le v0, v3, :cond_0

    .line 41
    iget-object v0, v5, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;->buttonConfigs:[Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;

    array-length v0, v0

    .local v0, "mButtonNum":I
    goto :goto_0

    .line 39
    .end local v0    # "mButtonNum":I
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "screenId":I
    .end local p3    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .end local p4    # "exitDialogConfig":Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;
    .end local p5    # "jsonStr":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto/16 :goto_9

    .line 43
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "screenId":I
    .restart local p3    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .restart local p4    # "exitDialogConfig":Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;
    .restart local p5    # "jsonStr":Ljava/lang/String;
    :cond_0
    move v0, v3

    .restart local v0    # "mButtonNum":I
    :goto_0
    move v2, v0

    .line 45
    .end local v0    # "mButtonNum":I
    .local v2, "mButtonNum":I
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils;->mScreenDialogMap:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;

    .line 46
    .local v0, "mXDialogImpl":Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;
    if-nez v0, :cond_1

    .line 47
    new-instance v1, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;

    invoke-direct {v1, v14}, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .line 48
    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils;->mScreenDialogMap:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "ScenarioDialogUtils"

    const-string v7, "showExitXDialog,create scenario DialogImpl"

    invoke-static {v1, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_1
    move-object v1, v0

    .end local v0    # "mXDialogImpl":Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;
    .local v1, "mXDialogImpl":Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;
    const-string v0, "ScenarioDialogUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "##showDialog,screenId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",scenario="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",exitDialogConfig="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ",mButtonNum="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",mXDialogImpl="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ",jsonStr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    const-string v0, "ScenarioDialogUtils"

    const-string v7, "showExitXDialog, close last window first"

    invoke-static {v0, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->dismiss()V

    .line 57
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mode_exit_"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 59
    .local v13, "resId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/util/LocaleStrings;->getInstance()Lcom/xiaopeng/util/LocaleStrings;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/xiaopeng/util/LocaleStrings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "exitStr":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 61
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Confirm exit "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getScenarioName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 63
    :cond_3
    const-string v7, ""

    .line 65
    .local v7, "title":Ljava/lang/String;
    new-array v8, v2, [Ljava/lang/CharSequence;

    move-object v15, v8

    .line 66
    .local v15, "buttonArray":[Ljava/lang/CharSequence;
    new-array v8, v2, [Ljava/lang/CharSequence;

    move-object/from16 v16, v8

    .line 67
    .local v16, "vuiButtonArray":[Ljava/lang/CharSequence;
    new-array v8, v2, [Ljava/lang/CharSequence;

    move-object/from16 v17, v8

    .line 68
    .local v17, "mDialogMessageArray":[Ljava/lang/CharSequence;
    new-array v8, v2, [Ljava/lang/Boolean;

    move-object/from16 v18, v8

    .line 69
    .local v18, "buttonTypeArray":[Ljava/lang/Boolean;
    const/4 v12, 0x0

    move v8, v12

    .local v8, "i":I
    :goto_1
    const/4 v11, 0x1

    if-ge v8, v2, :cond_5

    .line 70
    if-nez v8, :cond_4

    .line 71
    const v9, 0x7f0e0042

    invoke-virtual {v14, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v15, v8

    .line 72
    const v10, 0x7f0e00c7

    invoke-virtual {v14, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v16, v8

    .line 73
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v18, v8

    .line 74
    invoke-virtual {v14, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v17, v8

    goto :goto_2

    .line 76
    :cond_4
    const v9, 0x7f0e003f

    invoke-virtual {v14, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v15, v8

    .line 77
    invoke-virtual {v14, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v16, v8

    .line 78
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v18, v8

    .line 79
    invoke-virtual {v14, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v17, v8

    .line 69
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 82
    .end local v8    # "i":I
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->getDialogConfig()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;

    move-result-object v8

    move-object v10, v8

    .line 83
    .local v10, "dialogConfig":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;
    if-eqz v5, :cond_9

    .line 84
    iget-object v8, v5, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;->content:Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 85
    iget-object v8, v5, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;->content:Ljava/lang/String;

    move-object v0, v8

    .line 87
    :cond_6
    iget-object v8, v5, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;->title:Ljava/lang/String;

    if-eqz v8, :cond_7

    .line 88
    iget-object v8, v5, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;->title:Ljava/lang/String;

    move-object v7, v8

    .line 90
    :cond_7
    iget-object v8, v5, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;->buttonConfigs:[Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;

    if-eqz v8, :cond_8

    .line 91
    iget-object v8, v5, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;->buttonConfigs:[Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;

    array-length v9, v8

    move v3, v12

    :goto_3
    if-ge v3, v9, :cond_8

    aget-object v19, v8, v3

    move-object/from16 v20, v19

    .line 92
    .local v20, "buttonConfig":Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;
    move-object/from16 v11, v20

    iget v12, v11, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;->order:I

    .end local v20    # "buttonConfig":Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;
    .local v11, "buttonConfig":Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;
    move-object/from16 v23, v0

    iget-object v0, v11, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;->text:Ljava/lang/String;

    .end local v0    # "exitStr":Ljava/lang/String;
    .local v23, "exitStr":Ljava/lang/String;
    aput-object v0, v15, v12

    .line 93
    iget v0, v11, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;->order:I

    iget-object v12, v11, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;->text:Ljava/lang/String;

    aput-object v12, v16, v0

    .line 94
    iget v0, v11, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;->order:I

    iget-boolean v12, v11, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;->isPositive:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v18, v0

    .line 95
    iget v0, v11, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;->order:I

    iget-object v12, v11, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;->text:Ljava/lang/String;

    aput-object v12, v17, v0

    .line 91
    .end local v11    # "buttonConfig":Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig$ButtonConfig;
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v23

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_3

    .line 126
    .end local v23    # "exitStr":Ljava/lang/String;
    .restart local v0    # "exitStr":Ljava/lang/String;
    :cond_8
    move-object/from16 v23, v0

    .end local v0    # "exitStr":Ljava/lang/String;
    .restart local v23    # "exitStr":Ljava/lang/String;
    move-object/from16 v19, v7

    move-object/from16 v3, v23

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_6

    .line 98
    .end local v23    # "exitStr":Ljava/lang/String;
    .restart local v0    # "exitStr":Ljava/lang/String;
    :cond_9
    if-eqz v10, :cond_10

    .line 99
    iget-object v3, v10, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;->content:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 100
    iget-object v3, v10, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;->content:Ljava/lang/String;

    move-object v0, v3

    .line 102
    :cond_a
    iget-object v3, v10, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;->title:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 103
    iget-object v3, v10, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;->title:Ljava/lang/String;

    move-object v7, v3

    .line 105
    :cond_b
    iget-object v3, v10, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;->confirmText:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 106
    iget-object v3, v10, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;->confirmText:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v3, v15, v8

    .line 107
    iget-object v3, v10, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;->confirmText:Ljava/lang/String;

    aput-object v3, v16, v8

    .line 108
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v18, v8

    .line 109
    iget-object v3, v10, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;->confirmText:Ljava/lang/String;

    aput-object v3, v17, v8

    .line 111
    :cond_c
    iget-object v3, v10, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;->cancelText:Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 112
    iget-object v3, v10, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;->cancelText:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v3, v15, v8

    .line 113
    iget-object v3, v10, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;->cancelText:Ljava/lang/String;

    aput-object v3, v16, v8

    .line 114
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v18, v8

    .line 115
    iget-object v3, v10, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;->cancelText:Ljava/lang/String;

    aput-object v3, v17, v8

    .line 117
    :cond_d
    iget-object v3, v10, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;->confirmVuiText:Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 118
    iget-object v3, v10, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;->confirmVuiText:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v3, v16, v12

    goto :goto_4

    .line 120
    :cond_e
    const/4 v12, 0x0

    :goto_4
    iget-object v3, v10, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;->cancelVuiText:Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 121
    iget-object v3, v10, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;->cancelVuiText:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v3, v16, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 126
    :cond_f
    const/4 v11, 0x1

    goto :goto_5

    :cond_10
    const/4 v11, 0x1

    const/4 v12, 0x0

    .end local v0    # "exitStr":Ljava/lang/String;
    .end local v7    # "title":Ljava/lang/String;
    .local v3, "exitStr":Ljava/lang/String;
    .local v19, "title":Ljava/lang/String;
    :goto_5
    move-object v3, v0

    move-object/from16 v19, v7

    :goto_6
    const/4 v7, 0x0

    .line 127
    .local v7, "jsonData":Lorg/json/JSONObject;
    const/4 v8, 0x0

    .line 128
    .local v8, "sourceType":I
    if-eqz v4, :cond_11

    .line 130
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 131
    nop

    .line 132
    const-string v0, "sourceType"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    move v8, v0

    .line 133
    const-string v0, "ScenarioDialogUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exit sourceType="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    goto :goto_7

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v9, "ScenarioDialogUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleExitScenario jsonData,e="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v7    # "jsonData":Lorg/json/JSONObject;
    .end local v8    # "sourceType":I
    .local v0, "sourceType":I
    .local v20, "jsonData":Lorg/json/JSONObject;
    :cond_11
    :goto_7
    move-object/from16 v20, v7

    move v0, v8

    move v12, v0

    .line 140
    .local v12, "sSourceType":I
    move-object v7, v1

    move-object v8, v14

    move-object/from16 v9, v19

    move-object/from16 v21, v10

    move-object v10, v3

    .end local v10    # "dialogConfig":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;
    .local v21, "dialogConfig":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;
    const/4 v14, 0x1

    move-object v11, v15

    move v14, v12

    const/16 v22, 0x0

    move-object v12, v5

    .end local v12    # "sSourceType":I
    .local v14, "sSourceType":I
    move-object/from16 v23, v13

    move-object/from16 v13, p3

    .end local v13    # "resId":Ljava/lang/String;
    .local v23, "resId":Ljava/lang/String;
    invoke-virtual/range {v7 .. v13}, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->setDialogContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/CharSequence;Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)V

    .line 141
    invoke-virtual {v1, v6}, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->setScreenId(I)V

    .line 143
    new-instance v7, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;

    move-object v8, v1

    move-object v1, v7

    .end local v1    # "mXDialogImpl":Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;
    .local v8, "mXDialogImpl":Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;
    move v9, v2

    move-object/from16 v2, p0

    .end local v2    # "mButtonNum":I
    .local v9, "mButtonNum":I
    move-object v10, v3

    const/4 v11, 0x2

    move-object/from16 v3, p3

    .end local v3    # "exitStr":Ljava/lang/String;
    .local v10, "exitStr":Ljava/lang/String;
    move-object v12, v4

    move-object v4, v5

    move v5, v6

    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;-><init>(Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;I[Ljava/lang/CharSequence;)V

    move-object v1, v7

    .line 145
    .local v1, "comboListener":Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;
    invoke-virtual {v8, v1, v14}, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->onDismissUnSubscribe(Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;I)V

    .line 146
    const/16 v2, 0x7d8

    invoke-virtual {v8, v2}, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->setSystemDialog(I)V

    .line 147
    const/4 v2, 0x1

    if-ne v14, v2, :cond_13

    .line 148
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/speech/SpeechClient;->getNodeManager()Lcom/xiaopeng/speech/NodeManager;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-virtual {v2, v3, v1}, Lcom/xiaopeng/speech/NodeManager;->subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V

    .line 149
    sget v2, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils;->BUTTON_NUM_TWO:I

    if-ne v9, v2, :cond_12

    .line 150
    const-class v2, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->getNode(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    aget-object v3, v16, v22

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v5, v16, v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v10, v3, v4, v12}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->sendTrigger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v2, "ScenarioDialogUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendTrigger,exitStr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",vuiButtonArray[0]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v16, v22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",vuiButtonArray[1]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-object v4, v16, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 152
    :cond_12
    sget v2, Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils;->BUTTON_NUM_THREE:I

    if-ne v9, v2, :cond_13

    .line 153
    const-class v2, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->getNode(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;

    aget-object v3, v16, v22

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v16, v11

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v6, v16, v5

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v10, v3, v4, v5}, Lcom/xiaopeng/speech/protocol/node/combo/ComboNode;->sendTrigger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v2, "ScenarioDialogUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendTrigger,exitStr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",vuiButtonArray[0]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v16, v22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",vuiButtonArray[2]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v16, v11

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",vuiButtonArray[1]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-object v4, v16, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_13
    :goto_8
    invoke-virtual {v8}, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->show()V

    .line 158
    const-string v2, "ScenarioDialogUtils"

    const-string v3, "init vui scene for dialog..."

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v2, "DialogUtils_SysDialog"

    invoke-static/range {p1 .. p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->initVuiScene(Ljava/lang/String;Lcom/xiaopeng/speech/vui/VuiEngine;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 39
    .end local v0    # "sourceType":I
    .end local v1    # "comboListener":Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;
    .end local v8    # "mXDialogImpl":Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;
    .end local v9    # "mButtonNum":I
    .end local v10    # "exitStr":Ljava/lang/String;
    .end local v14    # "sSourceType":I
    .end local v15    # "buttonArray":[Ljava/lang/CharSequence;
    .end local v16    # "vuiButtonArray":[Ljava/lang/CharSequence;
    .end local v17    # "mDialogMessageArray":[Ljava/lang/CharSequence;
    .end local v18    # "buttonTypeArray":[Ljava/lang/Boolean;
    .end local v19    # "title":Ljava/lang/String;
    .end local v20    # "jsonData":Lorg/json/JSONObject;
    .end local v21    # "dialogConfig":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$DialogConfig;
    .end local v23    # "resId":Ljava/lang/String;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "screenId":I
    .end local p3    # "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .end local p4    # "exitDialogConfig":Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;
    .end local p5    # "jsonStr":Ljava/lang/String;
    :goto_9
    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils;
    throw v0
.end method
