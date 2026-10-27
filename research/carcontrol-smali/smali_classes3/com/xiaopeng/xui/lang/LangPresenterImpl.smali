.class public Lcom/xiaopeng/xui/lang/LangPresenterImpl;
.super Ljava/lang/Object;
.source "LangPresenterImpl.java"

# interfaces
.implements Lcom/xiaopeng/xui/lang/LangPresenter;


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
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mHasRegisterReceiver:Z

    const-string v0, "LangPresenterImpl"

    const-string v1, "LangPresenter..."

    .line 68
    invoke-static {v0, v1}, Lcom/xiaopeng/xui/lang/infrastucture/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcom/xiaopeng/xui/lang/LangView;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/lang/LangView;-><init>(Lcom/xiaopeng/xui/lang/LangPresenterImpl;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mView:Lcom/xiaopeng/xui/lang/LangView;

    .line 70
    new-instance v0, Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;

    invoke-direct {v0}, Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mResult:Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;

    return-void
.end method

.method static synthetic access$002(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 38
    sput-object p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mIsSwitchOn:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/lang/LangPresenterImpl;Landroid/content/Intent;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->onLangModified(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/lang/LangPresenterImpl;)Lcom/xiaopeng/xui/lang/LangView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mView:Lcom/xiaopeng/xui/lang/LangView;

    return-object p0
.end method

.method private initBroadcastReceiver(Landroid/content/Context;)V
    .locals 3

    .line 200
    iget-boolean v0, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mHasRegisterReceiver:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "LangPresenterImpl"

    const-string v1, "initBroadcastReceiver."

    .line 203
    invoke-static {v0, v1}, Lcom/xiaopeng/xui/lang/infrastucture/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 204
    iput-boolean v0, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mHasRegisterReceiver:Z

    .line 205
    new-instance v0, Lcom/xiaopeng/xui/lang/LangPresenterImpl$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/lang/LangPresenterImpl$1;-><init>(Lcom/xiaopeng/xui/lang/LangPresenterImpl;)V

    .line 225
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.xiaopeng.xputils.lang.modified"

    .line 226
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.xiaopeng.xputils.lang.switch.close"

    .line 227
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    .line 228
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

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
    .locals 2

    .line 48
    sget-object v0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mIsSwitchOn:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "persist.debug.xp.resources.append_eo_resource"

    .line 49
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mIsSwitchOn:Ljava/lang/Boolean;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEnable. mIsSwitchOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mIsSwitchOn:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LangPresenterImpl"

    invoke-static {v1, v0}, Lcom/xiaopeng/xui/lang/infrastucture/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    sget-object v0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mIsSwitchOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private onLangModified(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "LangPresenterImpl"

    if-nez p1, :cond_0

    const-string p1, "onLangModified. No intent"

    .line 235
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/lang/infrastucture/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "KEY_REMOTE_MODIFY_RESULT_INFO_BEAN"

    .line 238
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 239
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "onLangModified. No Str"

    .line 240
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/lang/infrastucture/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 244
    :cond_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/xiaopeng/xui/lang/infrastucture/view/ModifyResult4ClientBean;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/lang/infrastucture/view/ModifyResult4ClientBean;

    if-eqz p1, :cond_4

    .line 245
    iget-object v1, p1, Lcom/xiaopeng/xui/lang/infrastucture/view/ModifyResult4ClientBean;->stringList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 249
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLangModified. bean:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/lang/infrastucture/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mResult:Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;

    iget-object v1, p1, Lcom/xiaopeng/xui/lang/infrastucture/view/ModifyResult4ClientBean;->stringList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;->addModifiedString(Ljava/util/List;)V

    .line 253
    iget-object v0, p1, Lcom/xiaopeng/xui/lang/infrastucture/view/ModifyResult4ClientBean;->stringList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 254
    iget-object p1, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mView:Lcom/xiaopeng/xui/lang/LangView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/lang/LangView;->onCancelModify()V

    goto :goto_0

    .line 256
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mView:Lcom/xiaopeng/xui/lang/LangView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/lang/LangView;->onLangModified(Lcom/xiaopeng/xui/lang/infrastucture/view/ModifyResult4ClientBean;)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    const-string p1, "onLangModified. No stringList"

    .line 246
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/lang/infrastucture/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addLongClickAction(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 78
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->initBroadcastReceiver(Landroid/content/Context;)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mView:Lcom/xiaopeng/xui/lang/LangView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/lang/LangView;->addLongClickAction(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getStrWithEOLang(Landroid/content/Context;Landroid/content/res/TypedArray;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 190
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p4

    .line 193
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils;->getStrWithEOLang(Landroid/content/Context;Landroid/content/res/TypedArray;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getStrWithEOLang(Landroid/content/Context;Landroid/content/res/TypedArray;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 183
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p4

    .line 186
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils;->getStrWithEOLang(Landroid/content/Context;Landroid/content/res/TypedArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handleCustomString(Landroid/view/View;)V
    .locals 8

    if-eqz p1, :cond_6

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 119
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 122
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils;->handleCustomString(Landroid/view/View;)V

    .line 124
    invoke-static {p1}, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils;->getEOLangCode(Landroid/view/View;)Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 128
    iget-object v3, v0, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo;->data:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 129
    iget-object v0, v0, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo$Data;

    .line 130
    iget-object v5, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mResult:Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;

    iget-object v6, v4, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo$Data;->eoLang:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;->getModifiedStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 131
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 134
    iget-object v3, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mResult:Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;

    iget-object v4, v4, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo$Data;->eoLang:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;->isRecentlyModify(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 136
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v4, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo$Data;->text:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move v3, v2

    .line 140
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 141
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_6

    if-eqz v3, :cond_5

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/xiaopeng/xpui/R$color;->x_mark_land_modifying:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 146
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/xiaopeng/xpui/R$color;->x_mark_land_modified:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public parseStringArray(Landroid/content/Context;Landroid/content/res/TypedArray;I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 176
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p4

    .line 179
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils;->parseStringArray(Landroid/content/Context;Landroid/content/res/TypedArray;I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parseTextArray(Landroid/content/Context;Landroid/content/res/TypedArray;I[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 1

    .line 168
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p4

    .line 171
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils;->parseTextArray(Landroid/content/Context;Landroid/content/res/TypedArray;I[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public sendModifyRequest(Landroid/view/View;)V
    .locals 8

    .line 87
    invoke-static {p1}, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils;->getEOLangCode(Landroid/view/View;)Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo;

    move-result-object v0

    const-string v1, "LangPresenterImpl"

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendModifyRequest.  NO eo lang. view:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/xui/lang/infrastucture/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 92
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 94
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 95
    iget-object v0, v0, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo$Data;

    .line 96
    new-instance v5, Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;

    invoke-direct {v5}, Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;-><init>()V

    .line 97
    iget-object v6, v4, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo$Data;->eoLang:Ljava/lang/String;

    iput-object v6, v5, Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;->eoLang:Ljava/lang/String;

    .line 98
    iget-object v6, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->mResult:Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;

    iget-object v7, v4, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo$Data;->eoLang:Ljava/lang/String;

    iget-object v4, v4, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils$StrInfo$Data;->text:Ljava/lang/String;

    invoke-virtual {v6, v7, v4}, Lcom/xiaopeng/xui/lang/infrastucture/ModifiedResult;->getModifiedStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean$StringItem;->targetLang:Ljava/lang/String;

    .line 99
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    :cond_1
    new-instance v0, Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean;

    invoke-direct {v0}, Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean;-><init>()V

    .line 103
    iput-object v2, v0, Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean;->langType:Ljava/lang/String;

    .line 104
    iput-object v3, v0, Lcom/xiaopeng/xui/lang/infrastucture/view/ClientInfoBean;->stringList:Ljava/util/List;

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendModifyRequest. bean:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/lang/infrastucture/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.xiaopeng.xputils.modify.lang"

    .line 109
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.xiaopeng.xputils"

    .line 110
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "KEY_REMOTE_MODIFY_INFO_BEAN"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setCustomEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/content/res/TypedArray;I)V
    .locals 1

    .line 161
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils;->setCustomEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/content/res/TypedArray;I)V

    return-void
.end method

.method public setOriginEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;)V
    .locals 1

    .line 154
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/xiaopeng/xui/lang/infrastucture/utils/EOLangUtils;->setOriginEOLang(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;)V

    return-void
.end method
