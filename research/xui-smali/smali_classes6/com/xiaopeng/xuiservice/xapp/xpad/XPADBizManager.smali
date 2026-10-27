.class public Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager;
.super Ljava/lang/Object;
.source "XPADBizManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/AppBizHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager$XPADBizManagerHolder;,
        Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager$MyAppFilterListner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XPADBizManager"

.field private static final XAPD_APP_EVENT_ACTION:Ljava/lang/String; = "com.xiaopeng.xui.lifecycle.change"

.field public static final XPAD_APP_PACKAGE_NAME:Ljava/lang/String; = "com.xp.xpad"

.field private static final XPAD_JSON_TEMPLATE_FILE:Ljava/lang/String; = "xpad.json"

.field private static final iPackageManager:Landroid/content/pm/IPackageManager;

.field private static mContext:Landroid/content/Context;

.field private static final mPackageManager:Landroid/content/pm/PackageManager;


# instance fields
.field private myAppFilterListner:Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager$MyAppFilterListner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager;->mContext:Landroid/content/Context;

    .line 54
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager;->iPackageManager:Landroid/content/pm/IPackageManager;

    .line 55
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager$MyAppFilterListner;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager$MyAppFilterListner;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager;->myAppFilterListner:Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager$MyAppFilterListner;

    .line 149
    const-string/jumbo v0, "xpadBiz"

    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/xpad/-$$Lambda$XPADBizManager$5bOoLdbeEkiFkeZW-ffJnBUUCDc;->INSTANCE:Lcom/xiaopeng/xuiservice/xapp/xpad/-$$Lambda$XPADBizManager$5bOoLdbeEkiFkeZW-ffJnBUUCDc;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 158
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager$1;

    .line 48
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/pm/PackageManager;
    .locals 1

    .line 48
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager;
    .locals 1

    .line 161
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager$XPADBizManagerHolder;->access$200()Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager;

    move-result-object v0

    return-object v0
.end method

.method private installXpadJson(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 183
    const-string v0, "XPADBizManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installXpadJson begin, packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager;->installXpadJsonPre(Ljava/lang/String;)Z

    move-result v0

    .line 186
    .local v0, "ret":Z
    if-nez v0, :cond_0

    .line 187
    const-string v1, "XPADBizManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installXpadJson check failed, packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return v0

    .line 192
    :cond_0
    const-string/jumbo v1, "xpad.json"

    invoke-static {v1}, Lcom/xiaopeng/util/xpSysConfigUtil;->getConfigContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "jsonTemplate":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 197
    .local v3, "templateJson":Lorg/json/JSONObject;
    const-string v4, "packages"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 198
    .local v4, "pkgArray":Lorg/json/JSONArray;
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 199
    .local v5, "pkgJson":Lorg/json/JSONObject;
    const-string v6, "packageName"

    invoke-virtual {v5, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 202
    sget-object v6, Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager;->iPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, p1, v1}, Landroid/content/pm/IPackageManager;->setXpPackageInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v3    # "templateJson":Lorg/json/JSONObject;
    .end local v4    # "pkgArray":Lorg/json/JSONArray;
    .end local v5    # "pkgJson":Lorg/json/JSONObject;
    nop

    .line 208
    const-string v2, "XPADBizManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installXpadJson done, packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return v0

    .line 203
    :catch_0
    move-exception v3

    .line 204
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "XPADBizManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installXpadJson e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",cause="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return v2
.end method

.method private installXpadJsonPre(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 165
    const/4 v0, 0x1

    move v1, v0

    .line 168
    .local v1, "ret":Z
    :try_start_0
    sget-object v2, Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 169
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "XPADBizManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installXpadJsonPre, system app, packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x0

    .line 177
    .end local v1    # "ret":Z
    .local v0, "ret":Z
    move v1, v0

    goto :goto_0

    .line 173
    .end local v0    # "ret":Z
    .restart local v1    # "ret":Z
    :cond_0
    const-string v0, "XPADBizManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installXpadJsonPre, third app, packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    goto :goto_1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "XPADBizManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installXpadJsonPre e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",cause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return v1
.end method

.method static synthetic lambda$init$0(II)V
    .locals 4
    .param p0, "pid"    # I
    .param p1, "uid"    # I

    .line 103
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "pkg":Ljava/lang/String;
    const-string v1, "XPADBizManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app client died, pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "com.xp.xpad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method static synthetic lambda$init$1(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 113
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    const v3, 0x44c4752a

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.xiaopeng.xui.lifecycle.change"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 115
    :cond_2
    const-string v0, "status"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 116
    .local v0, "state":I
    const-string v1, "XPADBizManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "xpad app event, state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    nop

    .line 121
    .end local v0    # "state":I
    nop

    .line 125
    :goto_2
    return-void
.end method

.method static synthetic lambda$new$2(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "args"    # [Ljava/lang/String;

    .line 150
    const-string v0, "XPADBizManager dump:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 152
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic lambda$stopXpadApps$3()V
    .locals 11

    .line 215
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 218
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 219
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 221
    .local v1, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 222
    .local v3, "procInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->isXpadApp(Ljava/lang/String;)Z

    move-result v4

    .line 223
    .local v4, "isXpadApp":Z
    if-eqz v4, :cond_0

    iget-object v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 224
    .local v5, "stopPkg":Ljava/lang/String;
    :goto_1
    if-nez v4, :cond_1

    .line 225
    iget-object v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_1

    .line 226
    iget-object v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v5, v6, v7

    .line 227
    invoke-static {v5}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->isXpadApp(Ljava/lang/String;)Z

    move-result v4

    .line 230
    :cond_1
    if-eqz v4, :cond_3

    .line 231
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isPackageTopActivity(Ljava/lang/String;)Z

    move-result v6

    .line 232
    .local v6, "isTop":Z
    const-string v7, "XPADBizManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "stop xpad app check, process="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",stopPkg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",isTop="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    if-eqz v6, :cond_2

    .line 235
    goto :goto_0

    .line 238
    :cond_2
    :try_start_0
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    goto :goto_2

    .line 239
    :catch_0
    move-exception v7

    .line 240
    .local v7, "e":Ljava/lang/Exception;
    const-string v8, "XPADBizManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "stop xpad app e="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ",cause="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .end local v3    # "procInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "isXpadApp":Z
    .end local v5    # "stopPkg":Ljava/lang/String;
    .end local v6    # "isTop":Z
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    goto/16 :goto_0

    .line 244
    :cond_4
    return-void
.end method

.method private stopXpadApps()V
    .locals 1

    .line 213
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/xpad/-$$Lambda$XPADBizManager$vVGI3K9f4l-WzOcU1p_YPjoiebc;->INSTANCE:Lcom/xiaopeng/xuiservice/xapp/xpad/-$$Lambda$XPADBizManager$vVGI3K9f4l-WzOcU1p_YPjoiebc;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 245
    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .line 101
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->getInstance()Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager;->myAppFilterListner:Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager$MyAppFilterListner;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->addFilteredListener(Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;)V

    .line 102
    invoke-static {}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->getInstance()Lcom/xiaopeng/xuiservice/IXUIServiceImpl;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/xpad/-$$Lambda$XPADBizManager$ln7Y13FsOkq-VPpB4pbUGXuMNxs;->INSTANCE:Lcom/xiaopeng/xuiservice/xapp/xpad/-$$Lambda$XPADBizManager$ln7Y13FsOkq-VPpB4pbUGXuMNxs;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->addClientObserver(Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ClientObserver;)V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "com.xiaopeng.xui.lifecycle.change"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xuiservice/xapp/xpad/-$$Lambda$XPADBizManager$hTrbu1t6EVwh6Sw6PGCS_dlgRZg;->INSTANCE:Lcom/xiaopeng/xuiservice/xapp/xpad/-$$Lambda$XPADBizManager$hTrbu1t6EVwh6Sw6PGCS_dlgRZg;

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->registerListenerDynamically(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;Ljava/util/List;)V

    .line 126
    const-string v1, "XPADBizManager"

    const-string v2, "init done"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public notifyAppEvent(Ljava/lang/String;ILandroid/os/Bundle;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "event"    # I
    .param p3, "params"    # Landroid/os/Bundle;

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "ret":I
    const-string v1, "XPADBizManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyAppEvent, packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager;->installXpadJson(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, -0x64

    :goto_0
    move v0, v1

    .line 137
    nop

    .line 141
    :goto_1
    return v0
.end method
