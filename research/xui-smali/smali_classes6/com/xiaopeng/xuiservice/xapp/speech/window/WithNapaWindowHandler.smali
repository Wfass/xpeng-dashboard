.class public Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler;
.super Lcom/xiaopeng/xuiservice/xapp/speech/window/TopWindowHandler;
.source "WithNapaWindowHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler$DialogInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WithNapaWindowHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/speech/window/TopWindowHandler;-><init>()V

    .line 21
    return-void
.end method

.method private closeNapaInnerDialog(I)I
    .locals 1
    .param p1, "displayId"    # I

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method private closeNapaInnerWindow(I)I
    .locals 1
    .param p1, "displayId"    # I

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method private closeSystemDialog(ILcom/xiaopeng/app/xpDialogInfo;)I
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "dialogInfo"    # Lcom/xiaopeng/app/xpDialogInfo;

    .line 52
    const-string v0, "WithNapaWindowHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeSystemDialog displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &dialogInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xiaopeng/app/xpDialogInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    if-eqz p2, :cond_0

    iget-boolean v0, p2, Lcom/xiaopeng/app/xpDialogInfo;->closeOutside:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->dismissDialogAsync(I)V

    .line 55
    const/4 v0, 0x1

    return v0

    .line 57
    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method private getNapaDialogInfo(I)Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler$DialogInfo;
    .locals 6
    .param p1, "displayId"    # I

    .line 77
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->getNapaDialogString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "dialogString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 80
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 82
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 83
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "id"

    const/4 v5, -0x2

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 84
    new-instance v4, Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler$DialogInfo;

    invoke-direct {v4, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler$DialogInfo;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler;)V

    .line 85
    .local v4, "dialogInfo":Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler$DialogInfo;
    invoke-virtual {v4, v3}, Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler$DialogInfo;->set(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    return-object v4

    .line 81
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "dialogInfo":Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler$DialogInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :cond_1
    goto :goto_1

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 93
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private isNapaTop(I)Z
    .locals 4
    .param p1, "displayId"    # I

    .line 61
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getTopPackage(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "topPackage":Ljava/lang/String;
    const-string v1, "WithNapaWindowHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNapaTop topPackage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "com.xiaopeng.napa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public closeDialog(I)I
    .locals 3
    .param p1, "displayId"    # I

    .line 42
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getShowDialogByWms(I)Lcom/xiaopeng/app/xpDialogInfo;

    move-result-object v0

    .line 43
    .local v0, "dialogInfo":Lcom/xiaopeng/app/xpDialogInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/xiaopeng/app/xpDialogInfo;->hasFocus:Z

    if-eqz v1, :cond_0

    const-string v1, "com.xiaopeng.napa"

    iget-object v2, v0, Lcom/xiaopeng/app/xpDialogInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler;->closeSystemDialog(ILcom/xiaopeng/app/xpDialogInfo;)I

    move-result v1

    return v1

    .line 45
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler;->getNapaDialogInfo(I)Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler$DialogInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 46
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler;->closeNapaInnerDialog(I)I

    move-result v1

    return v1

    .line 48
    :cond_1
    const/4 v1, 0x2

    return v1
.end method

.method public closeTopWindow(I)I
    .locals 3
    .param p1, "displayId"    # I

    .line 25
    const-string v0, "WithNapaWindowHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeTopWindow displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getShowDialogByWms(I)Lcom/xiaopeng/app/xpDialogInfo;

    move-result-object v0

    .line 27
    .local v0, "dialogInfo":Lcom/xiaopeng/app/xpDialogInfo;
    if-eqz v0, :cond_0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler;->closeSystemDialog(ILcom/xiaopeng/app/xpDialogInfo;)I

    move-result v1

    return v1

    .line 29
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler;->isNapaTop(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 30
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler;->closeTopActivity(I)I

    move-result v1

    return v1

    .line 32
    :cond_1
    const/4 v1, 0x4

    return v1
.end method

.method public isHaveNotCancelableDialog(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/window/WithNapaWindowHandler;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->isHaveNotCancelableDialog(I)Z

    move-result v0

    return v0
.end method
