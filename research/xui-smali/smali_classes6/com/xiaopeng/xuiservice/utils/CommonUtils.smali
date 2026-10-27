.class public Lcom/xiaopeng/xuiservice/utils/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# static fields
.field public static final CAR_HARDWARE_CORE_Q2:Ljava/lang/String; = "Q2"

.field public static final CAR_HARDWARE_CORE_Q5:Ljava/lang/String; = "Q5"

.field public static final HARDWARE_SOFTWARE_VERSION_PROPERTY:Ljava/lang/String; = "ro.xiaopeng.software"

.field private static final TAG:Ljava/lang/String; = "CommonUtils"

.field static versionFinger:Ljava/lang/String;

.field public static final xuiLogInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    const-string v0, "persist.sys.xui.loginterval"

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->xuiLogInterval:I

    .line 139
    const-string v0, ""

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->versionFinger:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHexString([BLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "array"    # [B
    .param p1, "separator"    # Ljava/lang/String;

    .line 78
    if-eqz p0, :cond_3

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 83
    .local v1, "formatter":Ljava/util/Formatter;
    const-string v2, "%02x"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-byte v6, p0, v5

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 84
    move v2, v3

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_2

    .line 85
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_1
    const-string v4, "%02x"

    new-array v6, v3, [Ljava/lang/Object;

    aget-byte v7, p0, v2

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v1, v4, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/util/Formatter;->flush()V

    .line 91
    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 78
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "formatter":Ljava/util/Formatter;
    :cond_3
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method public static bytesToString([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .line 128
    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 128
    :cond_1
    :goto_0
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public static getAppPkg(Landroid/content/Context;II)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 40
    const-string v0, ""

    .line 41
    .local v0, "processName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string v1, "android.uid.system:1000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    const-string v1, "CommonUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppPkg processName1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    :cond_0
    return-object v0
.end method

.method public static getHardwareCoreType()Ljava/lang/String;
    .locals 3

    .line 144
    const-string v0, ""

    sget-object v1, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->versionFinger:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "ro.xiaopeng.software"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->versionFinger:Ljava/lang/String;

    .line 147
    :cond_0
    const-string v0, ""

    sget-object v1, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->versionFinger:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->versionFinger:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    .line 150
    :cond_1
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->versionFinger:Ljava/lang/String;

    const/4 v1, 0x5

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "versionType":Ljava/lang/String;
    return-object v0

    .line 148
    .end local v0    # "versionType":Ljava/lang/String;
    :cond_2
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->versionFinger:Ljava/lang/String;

    return-object v0
.end method

.method private static getHomeComponentName(Landroid/content/Context;ILjava/lang/String;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screeId"    # I
    .param p2, "areaType"    # Ljava/lang/String;

    .line 201
    if-nez p1, :cond_0

    .line 202
    invoke-static {p0, p2}, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->getHomeComponentName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    .line 204
    :cond_0
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->getSecondaryHomeComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private static getHomeComponentName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "areaType"    # Ljava/lang/String;

    .line 208
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getHome(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/ComponentName;

    move-result-object v0

    .line 209
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 210
    const-string v1, "CommonUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHomeComponentName areaType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_0
    return-object v0
.end method

.method public static getOOBEState(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "xp_oobe_show"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "OOBEStatus":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 157
    const-string v1, "CommonUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOOBEState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 160
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static getSecondaryHomeComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 216
    const-string v0, "android.intent.category.SECONDARY_HOME"

    .line 217
    .local v0, "secondaryHomeKey":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getHome(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 218
    .local v1, "componentName":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 219
    const-string v2, "CommonUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHomeComponentName secondaryHomeKey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_0
    return-object v1
.end method

.method public static hexString2Bytes(Ljava/lang/String;)[B
    .locals 5
    .param p0, "src"    # Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 98
    .local v0, "l":I
    new-array v1, v0, [B

    .line 100
    .local v1, "ret":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 101
    mul-int/lit8 v3, v2, 0x2

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x2

    .line 102
    :try_start_0
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v2    # "i":I
    :catch_0
    move-exception v2

    goto :goto_1

    .line 106
    :cond_0
    nop

    .line 107
    :goto_1
    return-object v1
.end method

.method public static isHome(Landroid/content/Context;I)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screenId"    # I

    .line 164
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getTopActivity(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "topActivity":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 167
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 168
    .local v1, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 169
    .local v2, "itemCount":I
    const-string v3, "CommonUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTopComponent,array count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 171
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 172
    .local v5, "obj":Lorg/json/JSONObject;
    nop

    .line 173
    const-string v6, "areaType"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 174
    .local v6, "areaType":Ljava/lang/String;
    const-string v8, "component"

    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 175
    .local v7, "component":Ljava/lang/String;
    const-string v8, "CommonUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getTopComponent,areaType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",component="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {p0, p1, v7, v6}, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->isHome(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 177
    const-string v8, "CommonUtils"

    const-string v9, "isHome, false"

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    return v3

    .line 180
    .end local v6    # "areaType":Ljava/lang/String;
    .end local v7    # "component":Ljava/lang/String;
    :cond_0
    nop

    .line 170
    .end local v5    # "obj":Lorg/json/JSONObject;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 186
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v2    # "itemCount":I
    .end local v4    # "i":I
    :cond_1
    goto :goto_1

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CommonUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isHome, e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    const-string v1, "CommonUtils"

    const-string v2, "isHome, true"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v1, 0x1

    return v1
.end method

.method private static isHome(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screenId"    # I
    .param p2, "component"    # Ljava/lang/String;
    .param p3, "areaType"    # Ljava/lang/String;

    .line 193
    invoke-static {p0, p1, p3}, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->getHomeComponentName(Landroid/content/Context;ILjava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 194
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 195
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 197
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static reverse([B)[B
    .locals 5
    .param p0, "bytes"    # [B

    .line 50
    if-eqz p0, :cond_2

    array-length v0, p0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    .line 54
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v2, p0

    sub-int/2addr v2, v1

    .line 55
    .local v2, "j":I
    array-length v1, p0

    new-array v1, v1, [B

    .line 57
    .local v1, "result":[B
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 58
    add-int/lit8 v3, v0, 0x1

    .local v3, "i":I
    add-int/lit8 v4, v2, -0x1

    .local v4, "j":I
    aget-byte v2, p0, v2

    .end local v2    # "j":I
    aput-byte v2, v1, v0

    .line 55
    .end local v0    # "i":I
    move v0, v3

    move v2, v4

    goto :goto_0

    .line 61
    .end local v3    # "i":I
    .end local v4    # "j":I
    .restart local v0    # "i":I
    .restart local v2    # "j":I
    :cond_1
    return-object v1

    .line 51
    .end local v0    # "i":I
    .end local v1    # "result":[B
    .end local v2    # "j":I
    :cond_2
    :goto_1
    return-object p0
.end method

.method public static reverse([BII)[B
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "begin"    # I
    .param p2, "end"    # I

    .line 65
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 67
    .local v0, "result":[B
    :goto_0
    if-ge p1, p2, :cond_0

    .line 68
    aget-byte v1, p0, p2

    .line 70
    .local v1, "temp":B
    add-int/lit8 v2, p2, -0x1

    .local v2, "end":I
    aget-byte v3, v0, p1

    aput-byte v3, v0, p2

    .line 71
    .end local p2    # "end":I
    add-int/lit8 p2, p1, 0x1

    .local p2, "begin":I
    aput-byte v1, v0, p1

    .line 72
    .end local v1    # "temp":B
    .end local p1    # "begin":I
    nop

    .line 65
    move p1, p2

    move p2, v2

    goto :goto_0

    .line 74
    .end local v2    # "end":I
    .restart local p1    # "begin":I
    .local p2, "end":I
    :cond_0
    return-object v0
.end method

.method public static stringToBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 124
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->stringToBytes(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToBytes(Ljava/lang/String;I)[B
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "length"    # I

    .line 111
    if-gtz p1, :cond_0

    .line 112
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0

    .line 115
    :cond_0
    new-array v0, p1, [B

    .line 116
    .local v0, "result":[B
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 118
    .local v1, "srcBytes":[B
    array-length v2, v1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 120
    return-object v0
.end method
