.class public Lcom/xiaopeng/xuiservice/sr/XuiSrService;
.super Lcom/xiaopeng/xuimanager/sr/ISr$Stub;
.source "XuiSrService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/XUIServiceBase;


# static fields
.field private static final KEY_ICONS:Ljava/lang/String; = "icons"

.field private static final SINGLETON:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/sr/XuiSrService;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "xpSrService"


# instance fields
.field private final iSrListenerServiceRegisterAndNotify:Lcom/xiaopeng/xuiservice/sr/ISrListenerServiceRegisterAndNotify;

.field private final registerAndNotify:Lcom/xiaopeng/xuiservice/sr/SRIconClickListenerRegisterAndNotify;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/xiaopeng/xuiservice/sr/XuiSrService$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/sr/XuiSrService$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->SINGLETON:Landroid/util/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/sr/ISr$Stub;-><init>()V

    .line 40
    new-instance v0, Lcom/xiaopeng/xuiservice/sr/SRIconClickListenerRegisterAndNotify;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/sr/SRIconClickListenerRegisterAndNotify;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->registerAndNotify:Lcom/xiaopeng/xuiservice/sr/SRIconClickListenerRegisterAndNotify;

    .line 42
    new-instance v0, Lcom/xiaopeng/xuiservice/sr/ISrListenerServiceRegisterAndNotify;

    const-string/jumbo v1, "xpSrService"

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/sr/ISrListenerServiceRegisterAndNotify;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->iSrListenerServiceRegisterAndNotify:Lcom/xiaopeng/xuiservice/sr/ISrListenerServiceRegisterAndNotify;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/sr/XuiSrService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/sr/XuiSrService$1;

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;-><init>()V

    return-void
.end method

.method private get(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 282
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 283
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "xpSrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 286
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private getIcon(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/sr/SrIcon;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .line 208
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->getWidgetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "widgetInfo":Ljava/lang/String;
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 210
    return-object v2

    .line 214
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 215
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "path"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "path":Ljava/lang/String;
    const-string v4, "location"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "location":Ljava/lang/String;
    new-instance v5, Lcom/xiaopeng/xuimanager/sr/SrIcon;

    invoke-direct {v5}, Lcom/xiaopeng/xuimanager/sr/SrIcon;-><init>()V

    .line 219
    .local v5, "icon":Lcom/xiaopeng/xuimanager/sr/SrIcon;
    iput-object p1, v5, Lcom/xiaopeng/xuimanager/sr/SrIcon;->name:Ljava/lang/String;

    .line 220
    iput-object v3, v5, Lcom/xiaopeng/xuimanager/sr/SrIcon;->path:Ljava/lang/String;

    .line 221
    iput-object v4, v5, Lcom/xiaopeng/xuimanager/sr/SrIcon;->location:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    return-object v5

    .line 223
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "location":Ljava/lang/String;
    .end local v5    # "icon":Lcom/xiaopeng/xuimanager/sr/SrIcon;
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "xpSrService"

    const-string v4, "parse sr icon error"

    invoke-static {v3, v4, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    return-object v2
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/sr/XuiSrService;
    .locals 1

    .line 45
    sget-object v0, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->SINGLETON:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/sr/XuiSrService;

    return-object v0
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 307
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "sr_icons"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private getWidgetInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "icons."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWidgetNames()[Ljava/lang/String;
    .locals 4

    .line 243
    const-string v0, "icons"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "widgetsPropValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 245
    return-object v2

    .line 249
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 250
    .local v1, "jsonArray":Lorg/json/JSONArray;
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/utils/JsonUtil;->jsonArray2StringArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 251
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Ljava/lang/Exception;
    return-object v2
.end method

.method static synthetic lambda$hide$0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "n"    # Ljava/lang/String;

    .line 176
    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$hide$1(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 176
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method private notifyHide(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "location"    # Ljava/lang/String;

    .line 200
    new-instance v0, Lcom/xiaopeng/xuimanager/sr/SrIcon;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/sr/SrIcon;-><init>()V

    .line 201
    .local v0, "icon":Lcom/xiaopeng/xuimanager/sr/SrIcon;
    iput-object p1, v0, Lcom/xiaopeng/xuimanager/sr/SrIcon;->name:Ljava/lang/String;

    .line 202
    iput-object p2, v0, Lcom/xiaopeng/xuimanager/sr/SrIcon;->path:Ljava/lang/String;

    .line 203
    iput-object p3, v0, Lcom/xiaopeng/xuimanager/sr/SrIcon;->location:Ljava/lang/String;

    .line 204
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->iSrListenerServiceRegisterAndNotify:Lcom/xiaopeng/xuiservice/sr/ISrListenerServiceRegisterAndNotify;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/sr/ISrListenerServiceRegisterAndNotify;->onHideSrIcon(Lcom/xiaopeng/xuimanager/sr/SrIcon;)V

    .line 205
    return-void
.end method

.method private notifyShow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "location"    # Ljava/lang/String;

    .line 192
    new-instance v0, Lcom/xiaopeng/xuimanager/sr/SrIcon;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/sr/SrIcon;-><init>()V

    .line 193
    .local v0, "icon":Lcom/xiaopeng/xuimanager/sr/SrIcon;
    iput-object p1, v0, Lcom/xiaopeng/xuimanager/sr/SrIcon;->name:Ljava/lang/String;

    .line 194
    iput-object p2, v0, Lcom/xiaopeng/xuimanager/sr/SrIcon;->path:Ljava/lang/String;

    .line 195
    iput-object p3, v0, Lcom/xiaopeng/xuimanager/sr/SrIcon;->location:Ljava/lang/String;

    .line 196
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->iSrListenerServiceRegisterAndNotify:Lcom/xiaopeng/xuiservice/sr/ISrListenerServiceRegisterAndNotify;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/sr/ISrListenerServiceRegisterAndNotify;->onShowSrIcon(Lcom/xiaopeng/xuimanager/sr/SrIcon;)V

    .line 197
    return-void
.end method

.method private removeWidgetInfo(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "icons."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private save(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 291
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 292
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p2}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 295
    :cond_0
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 297
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    const/4 v1, 0x1

    return v1

    .line 299
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "xpSrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    const/4 v1, 0x0

    return v1
.end method

.method private saveWidgetInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "location"    # Ljava/lang/String;

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "icons."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->widgetInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private saveWidgetNames([Ljava/lang/String;)Z
    .locals 3
    .param p1, "widgets"    # [Ljava/lang/String;

    .line 258
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 262
    .local v0, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "jsonArray":Lorg/json/JSONArray;
    goto :goto_1

    .line 259
    :cond_1
    :goto_0
    const-string v0, ""

    .line 262
    .local v0, "value":Ljava/lang/String;
    :goto_1
    nop

    .line 265
    const-string v1, "icons"

    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static widgetInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "location"    # Ljava/lang/String;

    .line 230
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 232
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "path"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    const-string v1, "location"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    goto :goto_0

    .line 234
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "xpSrService"

    const-string/jumbo v3, "widgetInfo"

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 65
    return-void
.end method

.method public declared-synchronized getIcons()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/sr/SrIcon;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 84
    :try_start_0
    const-string/jumbo v0, "xpSrService"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->getWidgetNames()[Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "current":[Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 88
    .local v2, "length":I
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    add-int/lit8 v4, v2, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuimanager/sr/SrIcon;>;"
    nop

    .line 89
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 90
    aget-object v4, v0, v1

    invoke-direct {p0, v4}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->getIcon(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/sr/SrIcon;

    move-result-object v4

    .line 91
    .local v4, "icon":Lcom/xiaopeng/xuimanager/sr/SrIcon;
    if-eqz v4, :cond_1

    .line 92
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v4    # "icon":Lcom/xiaopeng/xuimanager/sr/SrIcon;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 95
    .end local v1    # "i":I
    :cond_2
    monitor-exit p0

    return-object v3

    .line 83
    .end local v0    # "current":[Ljava/lang/String;
    .end local v2    # "length":I
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuimanager/sr/SrIcon;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    .line 83
    .end local p0    # "this":Lcom/xiaopeng/xuiservice/sr/XuiSrService;
    throw v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 69
    const-string/jumbo v0, "xuiSr"

    return-object v0
.end method

.method public declared-synchronized hide(Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 159
    :try_start_0
    const-string/jumbo v0, "xpSrService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SR ICON element, hide name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", START"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->getWidgetNames()[Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "current":[Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 163
    .local v2, "length":I
    :goto_0
    const/4 v3, 0x0

    .line 164
    .local v3, "exist":Z
    nop

    .line 164
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 165
    aget-object v4, v0, v1

    invoke-static {p1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 166
    const/4 v3, 0x1

    .line 167
    goto :goto_2

    .line 164
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 171
    .end local v1    # "i":I
    :cond_2
    :goto_2
    if-nez v3, :cond_3

    .line 172
    const-string/jumbo v1, "xpSrService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SR ICON element, hide name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", SUCCESS (not exist)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 176
    :cond_3
    :try_start_1
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/xiaopeng/xuiservice/sr/-$$Lambda$XuiSrService$p2f0-CbzqQHZGYubf3LrWuoO85I;

    invoke-direct {v4, p1}, Lcom/xiaopeng/xuiservice/sr/-$$Lambda$XuiSrService$p2f0-CbzqQHZGYubf3LrWuoO85I;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v4, Lcom/xiaopeng/xuiservice/sr/-$$Lambda$XuiSrService$Z4UGXvQhtu4cZD163DC7d9t997s;->INSTANCE:Lcom/xiaopeng/xuiservice/sr/-$$Lambda$XuiSrService$Z4UGXvQhtu4cZD163DC7d9t997s;

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 177
    .local v1, "target":[Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->saveWidgetNames([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 178
    const-string/jumbo v4, "xpSrService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SR ICON element, hide name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", FAIL (save widget names fail)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 182
    :cond_4
    :try_start_2
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->getIcon(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/sr/SrIcon;

    move-result-object v4

    .line 183
    .local v4, "icon":Lcom/xiaopeng/xuimanager/sr/SrIcon;
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->removeWidgetInfo(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 184
    const/4 v5, 0x0

    if-eqz v4, :cond_5

    iget-object v6, v4, Lcom/xiaopeng/xuimanager/sr/SrIcon;->path:Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object v6, v5

    :goto_3
    if-eqz v4, :cond_6

    iget-object v5, v4, Lcom/xiaopeng/xuimanager/sr/SrIcon;->location:Ljava/lang/String;

    nop

    :cond_6
    invoke-direct {p0, p1, v6, v5}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->notifyHide(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string/jumbo v5, "xpSrService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SR ICON element, hide name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", SUCCESS"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 187
    :cond_7
    const-string/jumbo v5, "xpSrService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SR ICON element, hide name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", FAIL (remove widget info fail)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    :goto_4
    monitor-exit p0

    return-void

    .line 158
    .end local v0    # "current":[Ljava/lang/String;
    .end local v1    # "target":[Ljava/lang/String;
    .end local v2    # "length":I
    .end local v3    # "exist":Z
    .end local v4    # "icon":Lcom/xiaopeng/xuimanager/sr/SrIcon;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .line 158
    .end local p0    # "this":Lcom/xiaopeng/xuiservice/sr/XuiSrService;
    throw p1
.end method

.method public init()V
    .locals 2

    .line 54
    const-string/jumbo v0, "xpSrService"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public registerSRIconClickListener(Lcom/xiaopeng/xuiservice/sr/SRIconClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/sr/SRIconClickListener;

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->registerAndNotify:Lcom/xiaopeng/xuiservice/sr/SRIconClickListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/sr/SRIconClickListenerRegisterAndNotify;->register(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public registerSrListener(Lcom/xiaopeng/xuimanager/sr/ISrListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/sr/ISrListener;

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->iSrListenerServiceRegisterAndNotify:Lcom/xiaopeng/xuiservice/sr/ISrListenerServiceRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/sr/ISrListenerServiceRegisterAndNotify;->registerListener(Landroid/os/IInterface;)Z

    .line 75
    return-void
.end method

.method public release()V
    .locals 2

    .line 59
    const-string/jumbo v0, "xpSrService"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public reportIconClick(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 100
    const-string/jumbo v0, "xpSrService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportIconClick name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->registerAndNotify:Lcom/xiaopeng/xuiservice/sr/SRIconClickListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/sr/SRIconClickListenerRegisterAndNotify;->onSRIconClick(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public declared-synchronized show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "location"    # Ljava/lang/String;

    monitor-enter p0

    .line 116
    :try_start_0
    const-string/jumbo v0, "xpSrService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SR ICON element, show name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", location="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", START"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p2}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p3}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 122
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->saveWidgetInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    const-string/jumbo v0, "xpSrService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SR ICON element, show name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", location="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", FAIL (save widget info fail)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 127
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->getWidgetNames()[Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "current":[Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    .line 130
    .local v2, "length":I
    :goto_0
    const/4 v3, 0x0

    .line 131
    .local v3, "exist":Z
    move v4, v1

    .line 131
    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_4

    .line 132
    aget-object v5, v0, v4

    invoke-static {p1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 133
    const/4 v3, 0x1

    .line 134
    goto :goto_2

    .line 131
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 138
    .end local v4    # "i":I
    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 139
    const-string/jumbo v1, "xpSrService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SR ICON element, show name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", location="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", SUCCESS (exist)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->notifyShow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 144
    :cond_5
    add-int/lit8 v4, v2, 0x1

    :try_start_2
    new-array v4, v4, [Ljava/lang/String;

    .line 145
    .local v4, "target":[Ljava/lang/String;
    nop

    .line 145
    .local v1, "i":I
    :goto_3
    if-ge v1, v2, :cond_6

    .line 146
    aget-object v5, v0, v1

    aput-object v5, v4, v1

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 148
    .end local v1    # "i":I
    :cond_6
    aput-object p1, v4, v2

    .line 150
    invoke-direct {p0, v4}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->saveWidgetNames([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 151
    const-string/jumbo v1, "xpSrService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SR ICON element, show name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", location="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", SUCCESS"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->notifyShow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 154
    :cond_7
    const-string/jumbo v1, "xpSrService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SR ICON element, show name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", location="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", FAIL (save widget names fail)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    :goto_4
    monitor-exit p0

    return-void

    .line 119
    .end local v0    # "current":[Ljava/lang/String;
    .end local v2    # "length":I
    .end local v3    # "exist":Z
    .end local v4    # "target":[Ljava/lang/String;
    :cond_8
    :goto_5
    monitor-exit p0

    return-void

    .line 115
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "path":Ljava/lang/String;
    .end local p3    # "location":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .line 115
    .end local p0    # "this":Lcom/xiaopeng/xuiservice/sr/XuiSrService;
    throw p1
.end method

.method public unregisterSRIconClickListener(Lcom/xiaopeng/xuiservice/sr/SRIconClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/sr/SRIconClickListener;

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->registerAndNotify:Lcom/xiaopeng/xuiservice/sr/SRIconClickListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/sr/SRIconClickListenerRegisterAndNotify;->unregister(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public unregisterSrListener(Lcom/xiaopeng/xuimanager/sr/ISrListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/sr/ISrListener;

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->iSrListenerServiceRegisterAndNotify:Lcom/xiaopeng/xuiservice/sr/ISrListenerServiceRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/sr/ISrListenerServiceRegisterAndNotify;->unregisterListener(Landroid/os/IInterface;)Z

    .line 80
    return-void
.end method
