.class public Lcom/xiaopeng/xui/lang/LangPresenterImpl;
.super Ljava/lang/Object;
.source "LangPresenterImpl.java"

# interfaces
.implements Lcom/xiaopeng/xui/lang/LangPresenter;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "LangPresenterImpl"

.field private static mIsSwitchOn:Ljava/lang/Boolean;

.field private static volatile sLangPresenter:Lcom/xiaopeng/xui/lang/LangPresenter;


# instance fields
.field private mHasRegisterReceiver:Z

.field private mResult:Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;

.field private mView:Lcom/xiaopeng/xui/lang/LangView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mIsSwitchOn:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mHasRegisterReceiver:Z

    .line 68
    const-string v0, "LangPresenterImpl"

    const-string v1, "LangPresenter..."

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/lang/infrastucture/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcom/xiaopeng/xui/lang/LangView;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/lang/LangView;-><init>(Lcom/xiaopeng/xui/lang/LangPresenterImpl;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mView:Lcom/xiaopeng/xui/lang/LangView;

    .line 70
    new-instance v0, Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;

    invoke-direct {v0}, Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mResult:Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;

    .line 71
    return-void
.end method

.method static synthetic access$002(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Boolean;

    .line 38
    sput-object p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mIsSwitchOn:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/lang/LangPresenterImpl;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/lang/LangPresenterImpl;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 38
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->onLangModified(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/lang/LangPresenterImpl;)Lcom/xiaopeng/xui/lang/LangView;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/lang/LangPresenterImpl;

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mView:Lcom/xiaopeng/xui/lang/LangView;

    return-object v0
.end method

.method private initBroadcastReceiver(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 200
    iget-boolean v0, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mHasRegisterReceiver:Z

    if-eqz v0, :cond_0

    .line 201
    return-void

    .line 203
    :cond_0
    const-string v0, "LangPresenterImpl"

    const-string v1, "initBroadcastReceiver."

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/lang/infrastucture/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mHasRegisterReceiver:Z

    .line 205
    new-instance v0, Lcom/xiaopeng/xui/lang/LangPresenterImpl$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/lang/LangPresenterImpl$1;-><init>(Lcom/xiaopeng/xui/lang/LangPresenterImpl;)V

    .line 225
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 226
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.xiaopeng.xputils.lang.modified"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    const-string v2, "com.xiaopeng.xputils.lang.switch.close"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    return-void
.end method

.method public static instance()Lcom/xiaopeng/xui/lang/LangPresenter;
    .locals 2

    .line 57
    sget-object v0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->sLangPresenter:Lcom/xiaopeng/xui/lang/LangPresenter;

    if-nez v0, :cond_1

    .line 58
    const-class v0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->sLangPresenter:Lcom/xiaopeng/xui/lang/LangPresenter;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/xiaopeng/xui/lang/LangPresenterImpl;

    invoke-direct {v1}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;-><init>()V

    sput-object v1, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->sLangPresenter:Lcom/xiaopeng/xui/lang/LangPresenter;

    .line 62
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 64
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->sLangPresenter:Lcom/xiaopeng/xui/lang/LangPresenter;

    return-object v0
.end method

.method public static isEnable()Z
    .locals 3

    .line 48
    sget-object v0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mIsSwitchOn:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 49
    const-string v0, "persist.debug.xp.resources.append_eo_resource"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mIsSwitchOn:Ljava/lang/Boolean;

    .line 51
    const-string v0, "LangPresenterImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnable. mIsSwitchOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mIsSwitchOn:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/lang/infrastucture/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    sget-object v0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mIsSwitchOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private onLangModified(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 234
    if-nez p1, :cond_0

    .line 235
    const-string v0, "LangPresenterImpl"

    const-string v1, "onLangModified. No intent"

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/lang/infrastucture/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void

    .line 238
    :cond_0
    const-string v0, "KEY_REMOTE_MODIFY_RESULT_INFO_BEAN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "newStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    const-string v1, "LangPresenterImpl"

    const-string v2, "onLangModified. No Str"

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/lang/infrastucture/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void

    .line 244
    :cond_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/xiaopeng/xui/lang/infrastucture/view/ModifyResult4ClientBean;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/lang/infrastucture/view/ModifyResult4ClientBean;

    .line 245
    .local v1, "bean":Lcom/xiaopeng/xui/lang/infrastucture/view/ModifyResult4ClientBean;
    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/xiaopeng/xui/lang/infrastucture/view/ModifyResult4ClientBean;->stringList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 249
    :cond_2
    const-string v2, "LangPresenterImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLangModified. bean:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/lang/infrastucture/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v2, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mResult:Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;

    iget-object v3, v1, Lcom/xiaopeng/xui/lang/infrastucture/view/ModifyResult4ClientBean;->stringList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;->addModifiedString(Ljava/util/List;)V

    .line 253
    iget-object v2, v1, Lcom/xiaopeng/xui/lang/infrastucture/view/ModifyResult4ClientBean;->stringList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 254
    iget-object v2, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mView:Lcom/xiaopeng/xui/lang/LangView;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/lang/LangView;->onCancelModify()V

    goto :goto_0

    .line 256
    :cond_3
    iget-object v2, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mView:Lcom/xiaopeng/xui/lang/LangView;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xui/lang/LangView;->onLangModified(Lcom/xiaopeng/xui/lang/infrastucture/view/ModifyResult4ClientBean;)V

    .line 258
    :goto_0
    return-void

    .line 246
    :cond_4
    :goto_1
    const-string v2, "LangPresenterImpl"

    const-string v3, "onLangModified. No stringList"

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/lang/infrastucture/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method


# virtual methods
.method public addLongClickAction(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 74
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    return-void

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->initBroadcastReceiver(Landroid/content/Context;)V

    .line 83
    iget-object v1, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mView:Lcom/xiaopeng/xui/lang/LangView;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/lang/LangView;->addLongClickAction(Landroid/view/View;)V

    .line 84
    return-void

    .line 75
    .end local v0    # "context":Landroid/content/Context;
    :cond_2
    :goto_0
    return-void
.end method

.method public getStrWithEOLang(Landroid/content/Context;Landroid/content/res/TypedArray;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ta"    # Landroid/content/res/TypedArray;
    .param p3, "styleableRes"    # I
    .param p4, "def"    # Ljava/lang/CharSequence;

    .line 190
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    return-object p4

    .line 193
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils;->getStrWithEOLang(Landroid/content/Context;Landroid/content/res/TypedArray;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getStrWithEOLang(Landroid/content/Context;Landroid/content/res/TypedArray;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ta"    # Landroid/content/res/TypedArray;
    .param p3, "styleableRes"    # I
    .param p4, "def"    # Ljava/lang/String;

    .line 183
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    return-object p4

    .line 186
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils;->getStrWithEOLang(Landroid/content/Context;Landroid/content/res/TypedArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleCustomString(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .line 116
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 119
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    return-void

    .line 122
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils;->handleCustomString(Landroid/view/View;)V

    .line 124
    invoke-static {p1}, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils;->getEOLangCode(Landroid/view/View;)Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo;

    move-result-object v0

    .line 125
    .local v0, "info":Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo;
    const-string v1, ""

    .line 126
    .local v1, "result":Ljava/lang/String;
    const/4 v2, 0x0

    .line 127
    .local v2, "hasModified":Z
    const/4 v3, 0x0

    .line 128
    .local v3, "isRecentlyModify":Z
    if-eqz v0, :cond_3

    iget-object v4, v0, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo;->data:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 129
    iget-object v4, v0, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo;->data:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo$Data;

    .line 130
    .local v5, "data":Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo$Data;
    iget-object v6, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mResult:Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;

    iget-object v7, v5, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo$Data;->eoLang:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;->getModifiedStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, "stringItem":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 132
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    const/4 v2, 0x1

    .line 134
    iget-object v7, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mResult:Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;

    iget-object v8, v5, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo$Data;->eoLang:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;->isRecentlyModify(Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    .line 136
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo$Data;->text:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    .end local v5    # "data":Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo$Data;
    .end local v6    # "stringItem":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 140
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_5

    .line 141
    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    if-eqz v2, :cond_5

    .line 143
    if-eqz v3, :cond_4

    .line 144
    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/xiaopeng/xpui/R$color;->x_mark_land_modifying:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 146
    :cond_4
    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/xiaopeng/xpui/R$color;->x_mark_land_modified:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    :cond_5
    :goto_2
    return-void

    .line 117
    .end local v0    # "info":Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo;
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "hasModified":Z
    .end local v3    # "isRecentlyModify":Z
    :cond_6
    :goto_3
    return-void
.end method

.method public parseStringArray(Landroid/content/Context;Landroid/content/res/TypedArray;I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ta"    # Landroid/content/res/TypedArray;
    .param p3, "resId"    # I
    .param p4, "def"    # [Ljava/lang/String;

    .line 176
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    return-object p4

    .line 179
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils;->parseStringArray(Landroid/content/Context;Landroid/content/res/TypedArray;I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseTextArray(Landroid/content/Context;Landroid/content/res/TypedArray;I[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ta"    # Landroid/content/res/TypedArray;
    .param p3, "resId"    # I
    .param p4, "def"    # [Ljava/lang/CharSequence;

    .line 168
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    return-object p4

    .line 171
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils;->parseTextArray(Landroid/content/Context;Landroid/content/res/TypedArray;I[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public sendModifyRequest(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .line 87
    invoke-static {p1}, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils;->getEOLangCode(Landroid/view/View;)Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo;

    move-result-object v0

    .line 88
    .local v0, "info":Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo;
    if-nez v0, :cond_0

    .line 89
    const-string v1, "LangPresenterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendModifyRequest.  NO eo lang. view:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/lang/infrastucture/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void

    .line 92
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "langType":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v2, "stringList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;>;"
    iget-object v3, v0, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo;->data:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo$Data;

    .line 96
    .local v4, "data":Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo$Data;
    new-instance v5, Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;

    invoke-direct {v5}, Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;-><init>()V

    .line 97
    .local v5, "stringItem":Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;
    iget-object v6, v4, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo$Data;->eoLang:Ljava/lang/String;

    iput-object v6, v5, Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;->eoLang:Ljava/lang/String;

    .line 98
    iget-object v6, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mResult:Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;

    iget-object v7, v4, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo$Data;->eoLang:Ljava/lang/String;

    iget-object v8, v4, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo$Data;->text:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;->getModifiedStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;->targetLang:Ljava/lang/String;

    .line 99
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v4    # "data":Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo$Data;
    .end local v5    # "stringItem":Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;
    goto :goto_0

    .line 102
    :cond_1
    new-instance v3, Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean;

    invoke-direct {v3}, Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean;-><init>()V

    .line 103
    .local v3, "bean":Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean;
    iput-object v1, v3, Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean;->langType:Ljava/lang/String;

    .line 104
    iput-object v2, v3, Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean;->stringList:Ljava/util/List;

    .line 105
    const-string v4, "LangPresenterImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendModifyRequest. bean:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xui/lang/infrastucture/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 109
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "com.xiaopeng.xputils.modify.lang"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v5, "com.xiaopeng.xputils"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v5, "KEY_REMOTE_MODIFY_INFO_BEAN"

    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v6, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 113
    return-void
.end method

.method public setCustomEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/content/res/TypedArray;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "ta"    # Landroid/content/res/TypedArray;
    .param p4, "styleableRes"    # I

    .line 161
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    return-void

    .line 164
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils;->setCustomEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/content/res/TypedArray;I)V

    .line 165
    return-void
.end method

.method public setOriginEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 154
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    return-void

    .line 157
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils;->setOriginEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;)V

    .line 158
    return-void
.end method
