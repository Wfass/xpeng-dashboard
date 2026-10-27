.class public Lcom/xiaopeng/xuiservice/xapp/policy/XAppResizeManager;
.super Ljava/lang/Object;
.source "XAppResizeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/policy/XAppResizeManager$Holder;
    }
.end annotation


# static fields
.field private static RESIZE_DENIED:I = 0x0

.field private static RESIZE_DENIED_MODE:I = 0x0

.field private static RESIZE_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "XAppCheckPolicyResize"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const/4 v0, 0x0

    sput v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppResizeManager;->RESIZE_SUCCESS:I

    .line 18
    const/16 v0, 0xbb8

    sput v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppResizeManager;->RESIZE_DENIED:I

    .line 19
    sget v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppResizeManager;->RESIZE_DENIED:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppResizeManager;->RESIZE_DENIED_MODE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppResizeManager;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/xapp/policy/XAppResizeManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/xapp/policy/XAppResizeManager$1;

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppResizeManager;-><init>()V

    return-void
.end method

.method public static get()Lcom/xiaopeng/xuiservice/xapp/policy/XAppResizeManager;
    .locals 1

    .line 27
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppResizeManager$Holder;->instance:Lcom/xiaopeng/xuiservice/xapp/policy/XAppResizeManager;

    return-object v0
.end method

.method private isFullScreen(Ljava/lang/String;)Z
    .locals 1
    .param p1, "areaType"    # Ljava/lang/String;

    .line 35
    const-string v0, "immersion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "logical"

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 35
    :goto_1
    return v0
.end method


# virtual methods
.method public check(ILandroid/os/Bundle;)I
    .locals 8
    .param p1, "screenId"    # I
    .param p2, "params"    # Landroid/os/Bundle;

    .line 40
    const-string v0, "fromAreaType"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "fromAreaType":Ljava/lang/String;
    const-string v1, "toAreaType"

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "toAreaType":Ljava/lang/String;
    const-string/jumbo v2, "withAnimation"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 43
    .local v2, "withAnimation":Z
    const-string v4, "isFromUserScenario"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 44
    .local v4, "isFromUserScenario":Z
    const-string v5, "XAppCheckPolicyResize"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check fromAreaType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", toAreaType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", withAnimation = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isFromUserScenario = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 v5, -0x1

    .line 47
    .local v5, "requestArea":I
    if-eqz v1, :cond_0

    .line 48
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppResizeManager;->isFullScreen(Ljava/lang/String;)Z

    move-result v6

    move v5, v6

    goto :goto_0

    .line 49
    :cond_0
    if-eqz v0, :cond_1

    .line 50
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppResizeManager;->isFullScreen(Ljava/lang/String;)Z

    move-result v6

    xor-int/2addr v6, v3

    move v5, v6

    .line 53
    :cond_1
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getInstance()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v6

    invoke-virtual {v6, p1, v5, v4, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->canAppResize(IIZZ)Z

    move-result v6

    if-nez v6, :cond_2

    .line 54
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/xapp/policy/XAppResizeManager;->mContext:Landroid/content/Context;

    const v7, 0x7f0e00f4

    invoke-static {v6, v7, v3, p1}, Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;III)V

    .line 55
    const-string v3, "XAppCheckPolicyResize"

    const-string v6, "check RESIZE_DENIED_MODE"

    invoke-static {v3, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget v3, Lcom/xiaopeng/xuiservice/xapp/policy/XAppResizeManager;->RESIZE_DENIED_MODE:I

    return v3

    .line 58
    :cond_2
    const-string v3, "XAppCheckPolicyResize"

    const-string v6, "check RESIZE_SUCCESS"

    invoke-static {v3, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget v3, Lcom/xiaopeng/xuiservice/xapp/policy/XAppResizeManager;->RESIZE_SUCCESS:I

    return v3
.end method
