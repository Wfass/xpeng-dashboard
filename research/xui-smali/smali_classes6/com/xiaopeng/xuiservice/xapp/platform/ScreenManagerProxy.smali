.class public Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;
.super Ljava/lang/Object;
.source "ScreenManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$SubScreenUidListCallback;,
        Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$WindowStatusCallback;,
        Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$Holder;
    }
.end annotation


# static fields
.field public static final EXCHANGE_WINDOW_DIALOG_DENIED:I = 0x1

.field public static final EXCHANGE_WINDOW_FULL_DENIED:I = 0x2

.field public static final EXCHANGE_WINDOW_SUCCESS:I = 0x0

.field public static final ID_SCREEN_ICM:I = 0x2

.field public static final ID_SCREEN_IVI:I = 0x0

.field public static final ID_SCREEN_PSG:I = 0x1

.field public static final ID_SCREEN_RES:I = 0x3

.field public static final REAR_SCREEN_CONTROL:Ljava/lang/String; = "screen_state_control_3"

.field public static final REAR_SCREEN_LOCK:Ljava/lang/String; = "res_lock"

.field private static final TAG:Ljava/lang/String; = "ScreenManagerProxy"


# instance fields
.field private isHasCNSLScreen:Z

.field private isHasMultiScreen:Z

.field private isHasPsnScreen:Z

.field private isHasResScreen:Z

.field private mCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$WindowStatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLastXAppActivityChangeInfo:Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

.field private mScreenTaskListener:Lcom/xiaopeng/screen/ScreenTaskListener;

.field private mSubScreenDeviceId:I

.field private mSubScreenUidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSubScreenUidListCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$SubScreenUidListCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mXAppActivityChangeInfoSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasMultiScreen:Z

    .line 50
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasPsnScreen:Z

    .line 51
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasResScreen:Z

    .line 52
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasCNSLScreen:Z

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mSubScreenUidList:Ljava/util/List;

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mSubScreenUidListCallbacks:Ljava/util/List;

    .line 56
    const/4 v1, 0x1

    iput v1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mSubScreenDeviceId:I

    .line 254
    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;)V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mScreenTaskListener:Lcom/xiaopeng/screen/ScreenTaskListener;

    .line 211
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mXAppActivityChangeInfoSparseArray:Landroid/util/SparseArray;

    .line 212
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mXAppActivityChangeInfoSparseArray:Landroid/util/SparseArray;

    new-instance v3, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    invoke-direct {v3}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;-><init>()V

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 213
    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    invoke-direct {v2}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mLastXAppActivityChangeInfo:Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    .line 214
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mCallbackList:Ljava/util/List;

    .line 215
    invoke-static {}, Lcom/xiaopeng/screen/ScreenManagerFactory;->get()Lcom/xiaopeng/screen/ScreenManagerFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaopeng/screen/ScreenManagerFactory;->hasScreen(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasPsnScreen:Z

    .line 216
    invoke-static {}, Lcom/xiaopeng/screen/ScreenManagerFactory;->get()Lcom/xiaopeng/screen/ScreenManagerFactory;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/screen/ScreenManagerFactory;->hasScreen(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasResScreen:Z

    .line 217
    invoke-static {}, Lcom/xiaopeng/screen/ScreenManagerFactory;->get()Lcom/xiaopeng/screen/ScreenManagerFactory;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/xiaopeng/screen/ScreenManagerFactory;->hasScreen(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasCNSLScreen:Z

    .line 218
    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasPsnScreen:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasResScreen:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasCNSLScreen:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasMultiScreen:Z

    .line 219
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasResScreen:Z

    if-eqz v0, :cond_2

    .line 220
    iput v3, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mSubScreenDeviceId:I

    goto :goto_2

    .line 221
    :cond_2
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasCNSLScreen:Z

    if-eqz v0, :cond_3

    .line 222
    iput v4, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mSubScreenDeviceId:I

    .line 224
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasMultiScreen:Z

    if-eqz v0, :cond_4

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mXAppActivityChangeInfoSparseArray:Landroid/util/SparseArray;

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mSubScreenDeviceId:I

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    invoke-direct {v2}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 227
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v0, "eventIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    const/16 v1, 0x403

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    const/16 v1, 0x606

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    const/16 v1, 0x610

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mScreenTaskListener:Lcom/xiaopeng/screen/ScreenTaskListener;

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->registerTaskListener(Lcom/xiaopeng/screen/IScreenTaskListener;Ljava/util/List;)V

    .line 233
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mContext:Landroid/content/Context;

    .line 234
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->updateScreenScreenUidList()V

    .line 235
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$1;

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mXAppActivityChangeInfoSparseArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;
    .param p2, "x2"    # I

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->notifyClientEventChanged(Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->updateScreenScreenUidList()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->notifySubScreenUidChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;)Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mLastXAppActivityChangeInfo:Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    .line 35
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->notifyClientActivityChanged(Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;)V

    return-void
.end method

.method public static get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;
    .locals 1

    .line 238
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$Holder;->instance:Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    return-object v0
.end method

.method private getActivityInfo(Ljava/lang/String;I)Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    .locals 8
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "screenId"    # I

    .line 434
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 436
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 437
    .local v0, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 438
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 439
    .local v2, "object":Lorg/json/JSONObject;
    nop

    .line 440
    new-instance v3, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    invoke-direct {v3}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;-><init>()V

    .line 441
    .local v3, "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    const-string v4, "component"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 442
    .local v4, "component":Ljava/lang/String;
    const-string v5, "areaType"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 443
    .local v5, "areaType":Ljava/lang/String;
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 444
    .local v6, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->setActivityName(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->setPkgName(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v3, v5}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->setAreaType(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v3, p2}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->setScreenId(I)V

    .line 448
    invoke-virtual {v3, v6}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->setComponentName(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    return-object v3

    .line 454
    .end local v0    # "jsonArray":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "object":Lorg/json/JSONObject;
    .end local v3    # "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    .end local v4    # "component":Ljava/lang/String;
    .end local v5    # "areaType":Ljava/lang/String;
    .end local v6    # "componentName":Landroid/content/ComponentName;
    :cond_0
    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 456
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getActivityInfoList(Ljava/lang/String;I)Ljava/util/List;
    .locals 9
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "screenId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;",
            ">;"
        }
    .end annotation

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .local v0, "XAppActivityInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 399
    :try_start_0
    const-string v1, "ScreenManagerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActivityInfoList property:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 401
    .local v1, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 402
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 403
    .local v3, "object":Lorg/json/JSONObject;
    nop

    .line 404
    new-instance v4, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    invoke-direct {v4}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;-><init>()V

    .line 405
    .local v4, "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    const-string v5, "component"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 407
    .local v5, "component":Ljava/lang/String;
    const-string v6, "areaType"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 408
    .local v6, "areaType":Ljava/lang/String;
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 409
    .local v7, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->setActivityName(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->setPkgName(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v4, v6}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->setAreaType(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v4, p2}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->setScreenId(I)V

    .line 413
    invoke-virtual {v4, v7}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->setComponentName(Landroid/content/ComponentName;)V

    .line 414
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    .end local v3    # "object":Lorg/json/JSONObject;
    .end local v4    # "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    .end local v5    # "component":Ljava/lang/String;
    .end local v6    # "areaType":Ljava/lang/String;
    .end local v7    # "componentName":Landroid/content/ComponentName;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 419
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    .line 417
    :catch_0
    move-exception v1

    .line 418
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 421
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_1
    return-object v0
.end method

.method private getActivityInfos(Ljava/lang/String;I)[Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    .locals 9
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "screenId"    # I

    .line 460
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 462
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 463
    .local v0, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    .line 464
    .local v1, "infos":[Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 465
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 466
    .local v3, "object":Lorg/json/JSONObject;
    nop

    .line 467
    new-instance v4, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    invoke-direct {v4}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;-><init>()V

    .line 468
    .local v4, "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    const-string v5, "component"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 469
    .local v5, "component":Ljava/lang/String;
    const-string v6, "areaType"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 470
    .local v6, "areaType":Ljava/lang/String;
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 471
    .local v7, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->setActivityName(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->setPkgName(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v4, v6}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->setAreaType(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v4, p2}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->setScreenId(I)V

    .line 475
    invoke-virtual {v4, v7}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->setComponentName(Landroid/content/ComponentName;)V

    .line 476
    aput-object v4, v1, v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    return-object v1

    .line 482
    .end local v0    # "jsonArray":Lorg/json/JSONArray;
    .end local v1    # "infos":[Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    .end local v2    # "i":I
    .end local v3    # "object":Lorg/json/JSONObject;
    .end local v4    # "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    .end local v5    # "component":Ljava/lang/String;
    .end local v6    # "areaType":Ljava/lang/String;
    .end local v7    # "componentName":Landroid/content/ComponentName;
    :cond_0
    goto :goto_0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 484
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private isActivitySupportArea(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "areaType"    # Ljava/lang/String;

    .line 539
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getAppConfigurations(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "config":Ljava/lang/String;
    const-string v1, "ScreenManagerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activityConfig pkgName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " &activityName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " &config:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 543
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 544
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "areas"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, "supportArea":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 546
    invoke-virtual {v2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 550
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "supportArea":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 548
    :catch_0
    move-exception v1

    .line 549
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 552
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private notifyClientActivityChanged(Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    .line 384
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$WindowStatusCallback;

    .line 385
    .local v1, "callback":Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$WindowStatusCallback;
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$WindowStatusCallback;->onTopAppChanged(Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;)V

    .line 386
    .end local v1    # "callback":Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$WindowStatusCallback;
    goto :goto_0

    .line 387
    :cond_0
    return-void
.end method

.method private notifyClientEventChanged(Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;I)V
    .locals 2
    .param p1, "info"    # Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;
    .param p2, "event"    # I

    .line 390
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$WindowStatusCallback;

    .line 391
    .local v1, "callback":Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$WindowStatusCallback;
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$WindowStatusCallback;->onEventChanged(Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;I)V

    .line 392
    .end local v1    # "callback":Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$WindowStatusCallback;
    goto :goto_0

    .line 393
    :cond_0
    return-void
.end method

.method private notifySubScreenUidChanged()V
    .locals 4

    .line 317
    const-string v0, "ScreenManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySubScreenUidChanged :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mSubScreenUidList:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mSubScreenUidListCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mSubScreenUidListCallbacks:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mSubScreenUidListCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mSubScreenUidListCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$SubScreenUidListCallback;

    .line 321
    .local v2, "callback":Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$SubScreenUidListCallback;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mSubScreenUidList:Ljava/util/List;

    invoke-interface {v2, v3}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$SubScreenUidListCallback;->onUidListChanged(Ljava/util/List;)V

    .line 322
    .end local v2    # "callback":Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$SubScreenUidListCallback;
    goto :goto_0

    .line 324
    :cond_0
    monitor-exit v0

    .line 325
    return-void

    .line 324
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateScreenScreenUidList()V
    .locals 8

    .line 296
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mSubScreenUidList:Ljava/util/List;

    monitor-enter v0

    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mSubScreenUidList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 298
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasMultiScreen:Z

    if-eqz v1, :cond_1

    .line 299
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mSubScreenDeviceId:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getPackageList(I)Ljava/util/List;

    move-result-object v1

    .line 300
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 301
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 302
    .local v3, "content":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 304
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 305
    .local v4, "object":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mSubScreenUidList:Ljava/util/List;

    const-string v6, "uid"

    const/4 v7, -0x1

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    .end local v4    # "object":Lorg/json/JSONObject;
    goto :goto_1

    .line 306
    :catch_0
    move-exception v4

    .line 307
    .local v4, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 310
    .end local v3    # "content":Ljava/lang/String;
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_1
    goto :goto_0

    .line 313
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v0

    .line 314
    return-void

    .line 313
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public addSubScreenUidListCallback(Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$SubScreenUidListCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$SubScreenUidListCallback;

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mSubScreenUidListCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mSubScreenUidListCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mSubScreenUidListCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    monitor-exit v0

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addView(Landroid/content/Context;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;ILandroid/os/Bundle;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "screenId"    # I
    .param p5, "extras"    # Landroid/os/Bundle;

    .line 199
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->addView(Landroid/content/Context;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;ILandroid/os/Bundle;)V

    .line 200
    return-void
.end method

.method public addWindowStatusCallback(Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$WindowStatusCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$WindowStatusCallback;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    return-void
.end method

.method public closeApplication(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 108
    const-string v0, "ScreenManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeApplication pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &className:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->stopActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 112
    :cond_0
    return-void
.end method

.method public dismissDialog(I)V
    .locals 1
    .param p1, "screenId"    # I

    .line 130
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->dismissDialog(I)Z

    .line 131
    return-void
.end method

.method public exchangeWindow()V
    .locals 3

    .line 160
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 161
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "exchangeType"

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v1, "permission"

    const-string v2, "com.xiaopeng.permission.EXCHANGE_TASK"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->exchange(Landroid/os/Bundle;)I

    .line 164
    return-void
.end method

.method public gePositionAreaType(I)Ljava/lang/String;
    .locals 5
    .param p1, "areaPosition"    # I

    .line 150
    const-string v0, "secondary"

    .line 151
    .local v0, "areaType":Ljava/lang/String;
    const-string v1, "primary"

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getAreaTypePosition(Ljava/lang/String;)I

    move-result v1

    .line 152
    .local v1, "primaryPosition":I
    if-ne p1, v1, :cond_0

    .line 153
    const-string v0, "primary"

    .line 155
    :cond_0
    const-string v2, "ScreenManagerProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gePositionAreaType areaPosition:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " &areaType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-object v0
.end method

.method public getActivityChangeInfo()Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mXAppActivityChangeInfoSparseArray:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    return-object v0
.end method

.method public getActivityInfo(I)Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    .locals 2
    .param p1, "screenId"    # I

    .line 334
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManager;->getInstance()Lcom/xiaopeng/screen/ScreenTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/screen/ScreenTaskManager;->getTopActivity(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "info":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getActivityInfo(Ljava/lang/String;I)Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    move-result-object v1

    return-object v1
.end method

.method public getActivityInfoList(I)Ljava/util/List;
    .locals 2
    .param p1, "screenId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;",
            ">;"
        }
    .end annotation

    .line 329
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getTopActivity(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "info":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getActivityInfoList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getActivityInfos(I)[Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    .locals 2
    .param p1, "screenId"    # I

    .line 339
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManager;->getInstance()Lcom/xiaopeng/screen/ScreenTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/screen/ScreenTaskManager;->getTopActivity(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "info":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getActivityInfos(Ljava/lang/String;I)[Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    move-result-object v1

    return-object v1
.end method

.method public getAreaTypePosition(Ljava/lang/String;)I
    .locals 4
    .param p1, "areaType"    # Ljava/lang/String;

    .line 144
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getAreaPosition(ILjava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    .line 145
    .local v0, "areaPosition":I
    const-string v1, "ScreenManagerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAreaTypePosition areaType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " &areaPosition:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return v0
.end method

.method public getLastActivityChangeInfo()Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mLastXAppActivityChangeInfo:Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    return-object v0
.end method

.method public getPackageScreenId(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 512
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getScreenId(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public getPackageTopActivityScreenId(Ljava/lang/String;)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 365
    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getPackageScreenId(Ljava/lang/String;)I

    move-result v1

    .line 366
    .local v1, "pkgScreenId":I
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getActivityInfos(I)[Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    move-result-object v2

    .line 367
    .local v2, "infos":[Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    if-eqz v2, :cond_3

    array-length v3, v2

    if-nez v3, :cond_0

    goto :goto_1

    .line 370
    :cond_0
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 371
    .local v5, "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_1

    .line 372
    return v1

    .line 370
    .end local v5    # "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 375
    :cond_2
    return v0

    .line 368
    :cond_3
    :goto_1
    return v0

    .line 377
    .end local v1    # "pkgScreenId":I
    .end local v2    # "infos":[Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    :catch_0
    move-exception v1

    .line 378
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ScreenManagerProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPackageTopActivity error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    return v0
.end method

.method public getScreenAreaType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getScreenAreaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 122
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSubScreenDeviceId()I
    .locals 1

    .line 251
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mSubScreenDeviceId:I

    return v0
.end method

.method public getSubScreenUidList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mSubScreenUidList:Ljava/util/List;

    return-object v0
.end method

.method public getSupportExchangeWindowStatus(I)I
    .locals 4
    .param p1, "screenId"    # I

    .line 601
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getTopDialog(I)Lcom/xiaopeng/app/xpDialogInfo;

    move-result-object v0

    .line 602
    .local v0, "dialogInfo":Lcom/xiaopeng/app/xpDialogInfo;
    if-eqz v0, :cond_0

    .line 603
    const-string v1, "ScreenManagerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialogInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/app/xpDialogInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget v1, v0, Lcom/xiaopeng/app/xpDialogInfo;->windowType:I

    const/16 v2, 0x7d8

    if-ne v1, v2, :cond_0

    iget-boolean v1, v0, Lcom/xiaopeng/app/xpDialogInfo;->visible:Z

    if-eqz v1, :cond_0

    .line 605
    const/4 v1, 0x1

    return v1

    .line 610
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getTopFullScreenActivityInfo(I)Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    move-result-object v1

    .line 611
    .local v1, "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 612
    return v2

    .line 614
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isSplitScreenMode(I)Z

    move-result v3

    .line 615
    .local v3, "splitMode":Z
    if-nez v3, :cond_2

    .line 616
    return v2

    .line 618
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public getTopActivityInfo(I)Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;
    .locals 5
    .param p1, "screenId"    # I

    .line 134
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;-><init>()V

    .line 135
    .local v0, "changeInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->setDisplayId(I)V

    .line 136
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getTopActivity(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "infoString":Ljava/lang/String;
    const-string v2, "ScreenManagerProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScreenTaskManagerFactory getTopActivityInfo screenId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " &info:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0, v1, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getActivityInfoList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 139
    .local v2, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;>;"
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->setTopActivityInfo(Ljava/util/List;)V

    .line 140
    return-object v0
.end method

.method public getTopActivityInfoByAreaType(ILjava/lang/String;)Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    .locals 5
    .param p1, "screenId"    # I
    .param p2, "areaType"    # Ljava/lang/String;

    .line 184
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getTopActivityInfo(I)Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    move-result-object v0

    .line 185
    .local v0, "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;
    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getTopActivityInfo()Ljava/util/List;

    move-result-object v1

    .line 187
    .local v1, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 188
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    .line 189
    .local v3, "activityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getAreaType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    return-object v3

    .line 192
    .end local v3    # "activityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    :cond_0
    goto :goto_0

    .line 195
    .end local v1    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;>;"
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTopDialogInfo(I)Lcom/xiaopeng/app/xpDialogInfo;
    .locals 1
    .param p1, "screenId"    # I

    .line 126
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getTopDialog(I)Lcom/xiaopeng/app/xpDialogInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTopFullScreenActivityInfo(I)Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    .locals 6
    .param p1, "screenId"    # I

    .line 167
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getTopActivityInfo(I)Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    move-result-object v0

    .line 168
    .local v0, "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;
    if-eqz v0, :cond_2

    .line 169
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getTopActivityInfo()Ljava/util/List;

    move-result-object v1

    .line 170
    .local v1, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 171
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    .line 172
    .local v3, "activityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    const-string v4, "logical"

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getAreaType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "immersion"

    .line 173
    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getAreaType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "physical"

    .line 174
    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getAreaType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 177
    .end local v3    # "activityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    :cond_0
    goto :goto_0

    .line 175
    .restart local v3    # "activityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    :cond_1
    :goto_1
    return-object v3

    .line 180
    .end local v1    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;>;"
    .end local v3    # "activityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public isChildLockClosed()Z
    .locals 6

    .line 582
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 583
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "res_lock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 584
    .local v1, "value":I
    const-string v3, "ScreenManagerProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isChildLockClosed value :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v2, v3

    nop

    :cond_0
    return v2
.end method

.method public isCurrentAppTop(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "screenId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "pageUri"    # Ljava/lang/String;

    .line 96
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getTopActivity(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "infoString":Ljava/lang/String;
    const-string v1, "ScreenManagerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCurrentAppTop screenId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " &info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getActivityInfoList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 99
    .local v1, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    .line 100
    .local v3, "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getActivityName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    const/4 v2, 0x1

    return v2

    .line 103
    .end local v3    # "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    :cond_0
    goto :goto_0

    .line 104
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public isHasMultiScreen()Z
    .locals 1

    .line 492
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasMultiScreen:Z

    return v0
.end method

.method public isHasPsnScreen()Z
    .locals 1

    .line 496
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasPsnScreen:Z

    return v0
.end method

.method public isHasResScreen()Z
    .locals 1

    .line 504
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasResScreen:Z

    return v0
.end method

.method public isHasScreen(I)Z
    .locals 1
    .param p1, "screenId"    # I

    .line 500
    invoke-static {}, Lcom/xiaopeng/screen/ScreenManagerFactory;->get()Lcom/xiaopeng/screen/ScreenManagerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/screen/ScreenManagerFactory;->hasScreen(I)Z

    move-result v0

    return v0
.end method

.method public isPackageTopActivity(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 345
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getPackageScreenId(Ljava/lang/String;)I

    move-result v1

    .line 346
    .local v1, "pkgScreenId":I
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getActivityInfos(I)[Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    move-result-object v2

    .line 347
    .local v2, "infos":[Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    if-eqz v2, :cond_3

    array-length v3, v2

    if-nez v3, :cond_0

    goto :goto_1

    .line 350
    :cond_0
    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 351
    .local v5, "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_1

    .line 352
    const/4 v0, 0x1

    return v0

    .line 350
    .end local v5    # "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 355
    :cond_2
    return v0

    .line 348
    :cond_3
    :goto_1
    return v0

    .line 357
    .end local v1    # "pkgScreenId":I
    .end local v2    # "infos":[Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    :catch_0
    move-exception v1

    .line 358
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ScreenManagerProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPackageTopActivity error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return v0
.end method

.method public isScreenMediaSupport(I)Z
    .locals 1
    .param p1, "screenId"    # I

    .line 425
    if-nez p1, :cond_0

    .line 426
    const/4 v0, 0x1

    return v0

    .line 427
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 428
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasResScreen:Z

    return v0

    .line 430
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isScreenOpened(I)Z
    .locals 2
    .param p1, "screenId"    # I

    .line 508
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->get()Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->getScreenState(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSplitScreen()Z
    .locals 3

    .line 593
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->inSplitMode(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public isSplitScreenMode(I)Z
    .locals 2
    .param p1, "screenId"    # I

    .line 597
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->inSplitMode(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public isSupportFullScreen(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;

    .line 534
    const-string v0, "immersion"

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isActivitySupportArea(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSupportSplitScreen(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;

    .line 516
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getAppConfigurations(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "config":Ljava/lang/String;
    const-string v1, "ScreenManagerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activityConfig pkgName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " &activityName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " &config:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 520
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 521
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "areas"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 522
    .local v3, "supportArea":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 523
    const-string v4, "primary"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "secondary"

    .line 524
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    nop

    .line 523
    :cond_1
    :goto_0
    return v2

    .line 528
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "supportArea":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 526
    :catch_0
    move-exception v1

    .line 527
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 530
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_3
    :goto_1
    return v2
.end method

.method public removeSubScreenUidListCallback(Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$SubScreenUidListCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$SubScreenUidListCallback;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mSubScreenUidListCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mSubScreenUidListCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mSubScreenUidListCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 87
    :cond_0
    monitor-exit v0

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeWindowStatusCallback(Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$WindowStatusCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$WindowStatusCallback;

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    return-void
.end method

.method public setFullScreen()V
    .locals 2

    .line 626
    const-string v0, "primary"

    .line 627
    .local v0, "secondaryArea":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->enterFullScreen(Ljava/lang/String;)V

    .line 628
    return-void
.end method

.method public setFullScreen(Ljava/lang/String;)V
    .locals 1
    .param p1, "areaType"    # Ljava/lang/String;

    .line 631
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->enterFullScreen(Ljava/lang/String;)V

    .line 632
    return-void
.end method

.method public setPackageScreenId(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "screenId"    # I

    .line 556
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getPackageScreenId(Ljava/lang/String;)I

    move-result v0

    .line 557
    .local v0, "pkgScreenId":I
    const-string v1, "ScreenManagerProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pkgScreenId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " &screenId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    if-eq v0, p2, :cond_2

    .line 559
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getLauncherIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 560
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->get()Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    move-result-object v2

    invoke-virtual {v2, p2, p1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->checkAppStartMultiScreenStatus(ILjava/lang/String;)Z

    move-result v2

    .line 561
    .local v2, "allow":Z
    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 562
    const-string v4, "transferEvent"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 563
    if-eqz v2, :cond_0

    .line 564
    const-string v4, "ScreenManagerProxy"

    const-string v5, "moveTaskScreenOnly : true"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v4, "moveTaskScreenOnly"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 567
    :cond_0
    const-string v4, "ScreenManagerProxy"

    const-string v5, "setPackageScreenId : startActivity"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v1, p2, v6}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->startActivity(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 571
    :cond_1
    return v3

    .line 573
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "allow":Z
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public setScreenId(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "screenId"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 577
    const-string v0, "ScreenManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenId pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->setScreenId(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 579
    return-void
.end method

.method public setScreenOpened(I)I
    .locals 4
    .param p1, "screenId"    # I

    .line 589
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->get()Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;

    move-result-object v0

    const-string v1, "ScreenManagerProxy"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;->setScreenState(IIZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setSplitScreen()V
    .locals 1

    .line 622
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->enterSplitScreen()V

    .line 623
    return-void
.end method

.method public startActivity(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "screenId"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 91
    const-string v0, "ScreenManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivity screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->startActivity(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Bundle;)I

    .line 93
    return-void
.end method

.method public startHome(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screenId"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 115
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->startHome(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 116
    return-void
.end method

.method public stopPackage(ILjava/lang/String;)V
    .locals 4
    .param p1, "screenId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 242
    const-string v0, "ScreenManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPackage screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->mContext:Landroid/content/Context;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->stopActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 244
    return-void
.end method
