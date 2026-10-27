.class public Lcom/xiaopeng/xuiservice/appconfig/AppConfigManagerServer;
.super Lcom/xiaopeng/xuimanager/pipebus/server/PipeBusManager;
.source "AppConfigManagerServer.java"


# static fields
.field private static final MODULE_NAME:Ljava/lang/String; = "AppConfigManager"

.field private static final TAG:Ljava/lang/String; = "AppConfigManagerServer"

.field private static singleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/appconfig/AppConfigManagerServer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final iPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/xiaopeng/xuiservice/appconfig/AppConfigManagerServer$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/appconfig/AppConfigManagerServer$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/appconfig/AppConfigManagerServer;->singleton:Landroid/util/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/pipebus/server/PipeBusManager;-><init>()V

    .line 39
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/appconfig/AppConfigManagerServer;->iPackageManager:Landroid/content/pm/IPackageManager;

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/appconfig/AppConfigManagerServer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/appconfig/AppConfigManagerServer$1;

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/appconfig/AppConfigManagerServer;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/appconfig/AppConfigManagerServer;
    .locals 1

    .line 33
    sget-object v0, Lcom/xiaopeng/xuiservice/appconfig/AppConfigManagerServer;->singleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/appconfig/AppConfigManagerServer;

    return-object v0
.end method

.method public static synthetic lambda$ioControlWithParcelable$0(Lcom/xiaopeng/xuiservice/appconfig/AppConfigManagerServer;Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "configData"    # Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    iget-object v0, p1, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData;->config:Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/appconfig/AppConfigManagerServer;->saveConfig(Ljava/lang/String;Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private merge(Lcom/xiaopeng/app/xpPackageInfo;Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;)Z
    .locals 11
    .param p1, "info"    # Lcom/xiaopeng/app/xpPackageInfo;
    .param p2, "config"    # Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;

    .line 113
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 114
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 115
    const-string v1, "AppConfigManagerServer"

    const-string v2, "merge config bundle=null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v1, 0x0

    return v1

    .line 119
    :cond_0
    const/4 v1, 0x0

    .line 121
    .local v1, "changed":Z
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 123
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 124
    .local v4, "value":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 126
    .local v5, "success":Z
    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_3

    .line 127
    invoke-static {p1, v3}, Lcom/xiaopeng/xuiservice/innerutils/RU;->getInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v6

    .line 128
    .local v6, "old":I
    move-object v7, v4

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 129
    goto :goto_0

    .line 130
    :cond_1
    move-object v7, v4

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/xiaopeng/xuiservice/innerutils/RU;->setInt(Ljava/lang/Object;Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 131
    const/4 v5, 0x1

    .line 132
    const/4 v1, 0x1

    .line 133
    const-string v7, "AppConfigManagerServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "merge int success, key="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .end local v6    # "old":I
    :cond_2
    goto/16 :goto_1

    :cond_3
    instance-of v6, v4, Ljava/lang/Long;

    if-eqz v6, :cond_6

    .line 136
    invoke-static {p1, v3}, Lcom/xiaopeng/xuiservice/innerutils/RU;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v6

    .line 137
    .local v6, "old":J
    move-object v8, v4

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-nez v8, :cond_4

    .line 138
    goto :goto_0

    .line 139
    :cond_4
    move-object v8, v4

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p1, v3, v8, v9}, Lcom/xiaopeng/xuiservice/innerutils/RU;->setLong(Ljava/lang/Object;Ljava/lang/String;J)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 140
    const/4 v5, 0x1

    .line 141
    const/4 v1, 0x1

    .line 142
    const-string v8, "AppConfigManagerServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "merge long success, key="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .end local v6    # "old":J
    :cond_5
    goto/16 :goto_1

    :cond_6
    instance-of v6, v4, Ljava/lang/Float;

    if-eqz v6, :cond_9

    .line 145
    invoke-static {p1, v3}, Lcom/xiaopeng/xuiservice/innerutils/RU;->getFloat(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v6

    .line 146
    .local v6, "old":F
    move-object v7, v4

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpl-float v7, v6, v7

    if-nez v7, :cond_7

    .line 147
    goto/16 :goto_0

    .line 148
    :cond_7
    move-object v7, v4

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/xiaopeng/xuiservice/innerutils/RU;->setFloat(Ljava/lang/Object;Ljava/lang/String;F)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 149
    const/4 v5, 0x1

    .line 150
    const/4 v1, 0x1

    .line 151
    const-string v7, "AppConfigManagerServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "merge float success, key="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .end local v6    # "old":F
    :cond_8
    goto/16 :goto_1

    :cond_9
    instance-of v6, v4, Ljava/lang/Double;

    if-eqz v6, :cond_c

    .line 154
    invoke-static {p1, v3}, Lcom/xiaopeng/xuiservice/innerutils/RU;->getDouble(Ljava/lang/Object;Ljava/lang/String;)D

    move-result-wide v6

    .line 155
    .local v6, "old":D
    move-object v8, v4

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    cmpl-double v8, v6, v8

    if-nez v8, :cond_a

    .line 156
    goto/16 :goto_0

    .line 157
    :cond_a
    move-object v8, v4

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {p1, v3, v8, v9}, Lcom/xiaopeng/xuiservice/innerutils/RU;->setDouble(Ljava/lang/Object;Ljava/lang/String;D)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 158
    const/4 v5, 0x1

    .line 159
    const/4 v1, 0x1

    .line 160
    const-string v8, "AppConfigManagerServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "merge double success, key="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .end local v6    # "old":D
    :cond_b
    goto/16 :goto_1

    :cond_c
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_f

    .line 163
    invoke-static {p1, v3}, Lcom/xiaopeng/xuiservice/innerutils/RU;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 164
    .local v6, "old":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 165
    goto/16 :goto_0

    .line 166
    :cond_d
    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    invoke-static {p1, v3, v7}, Lcom/xiaopeng/xuiservice/innerutils/RU;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 167
    const/4 v5, 0x1

    .line 168
    const/4 v1, 0x1

    .line 169
    const-string v7, "AppConfigManagerServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "merge string success, key="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .end local v6    # "old":Ljava/lang/String;
    :cond_e
    goto :goto_1

    :cond_f
    instance-of v6, v4, Ljava/lang/Boolean;

    if-eqz v6, :cond_11

    .line 172
    invoke-static {p1, v3}, Lcom/xiaopeng/xuiservice/innerutils/RU;->getBoolean(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v6

    .line 173
    .local v6, "old":Z
    move-object v7, v4

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-ne v6, v7, :cond_10

    .line 174
    goto/16 :goto_0

    .line 175
    :cond_10
    move-object v7, v4

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {p1, v3, v7}, Lcom/xiaopeng/xuiservice/innerutils/RU;->setBoolean(Ljava/lang/Object;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 176
    const/4 v5, 0x1

    .line 177
    const/4 v1, 0x1

    .line 178
    const-string v7, "AppConfigManagerServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "merge boolean success, key="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .end local v6    # "old":Z
    :cond_11
    :goto_1
    if-nez v5, :cond_13

    .line 183
    const-string v6, "AppConfigManagerServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "merge fail, unknown key="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", value="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", value type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    goto :goto_2

    :cond_12
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "success":Z
    :cond_13
    goto/16 :goto_0

    .line 187
    :cond_14
    return v1
.end method

.method private saveConfig(Ljava/lang/String;Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/appconfig/AppConfigManagerServer;->iPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 80
    const-string v0, "AppConfigManagerServer"

    const-string v2, "can\'t get IPackageManager instance, impossible!"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return v1

    .line 85
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/appconfig/AppConfigManagerServer;->iPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .local v0, "info":Lcom/xiaopeng/app/xpPackageInfo;
    nop

    .line 88
    nop

    .line 91
    if-nez v0, :cond_1

    .line 92
    const-string v2, "AppConfigManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t config an app which is not installed, packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return v1

    .line 96
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/xuiservice/appconfig/AppConfigManagerServer;->merge(Lcom/xiaopeng/app/xpPackageInfo;Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;)Z

    move-result v1

    .line 98
    .local v1, "changed":Z
    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 99
    const-string v3, "AppConfigManagerServer"

    const-string v4, "skip saveXpPackageInfo for no update"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return v2

    .line 105
    :cond_2
    return v2

    .line 86
    .end local v0    # "info":Lcom/xiaopeng/app/xpPackageInfo;
    .end local v1    # "changed":Z
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AppConfigManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getXpPackageInfo fail, packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    return v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 198
    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 192
    const-string v0, "AppConfigManager"

    return-object v0
.end method

.method public init()I
    .locals 1

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public ioControl(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public ioControlWithParcelable(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;II)I
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "dataIn"    # Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;
    .param p3, "dataOut"    # Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;
    .param p4, "uid"    # I
    .param p5, "pid"    # I

    .line 59
    const/4 v0, -0x1

    .line 60
    .local v0, "ret":I
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, -0x2266ef61

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "CMD_SAVE_CONFIG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    .line 62
    :cond_2
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object v1

    aget-object v1, v1, v2

    check-cast v1, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData;

    .line 63
    .local v1, "configData":Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData;
    const-string v2, "AppConfigManagerServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_SAVE_CONFIG: packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", config="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData;->config:Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$Config;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v2, Lcom/xiaopeng/xuiservice/appconfig/-$$Lambda$AppConfigManagerServer$YUcsVdABcZJhABstN7USA7xxmqY;

    invoke-direct {v2, p0, v1}, Lcom/xiaopeng/xuiservice/appconfig/-$$Lambda$AppConfigManagerServer$YUcsVdABcZJhABstN7USA7xxmqY;-><init>(Lcom/xiaopeng/xuiservice/appconfig/AppConfigManagerServer;Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData;)V

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 66
    .local v2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_3

    .line 67
    const/4 v0, 0x0

    .line 71
    :cond_3
    goto :goto_2

    .line 69
    :catch_0
    move-exception v3

    .line 70
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "AppConfigManagerServer"

    const-string/jumbo v5, "wait saveConfig task error"

    invoke-static {v4, v5, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .end local v1    # "configData":Lcom/xiaopeng/xuimanager/appconfig/AppConfigManager$ConfigData;
    .end local v2    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    return v0
.end method

.method public ioControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "results"    # [Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "pid"    # I

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public onClientDied(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 202
    const-string v0, "AppConfigManagerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClientDied,pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public registerListener(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 208
    return-void
.end method

.method public unRegisterListener(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 213
    return-void
.end method
