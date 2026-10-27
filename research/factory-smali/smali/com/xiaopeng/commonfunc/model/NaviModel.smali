.class public Lcom/xiaopeng/commonfunc/model/NaviModel;
.super Ljava/lang/Object;
.source "NaviModel.java"


# static fields
.field public static final PATH_NAVI_MAP_CONFIG:Ljava/lang/String;

.field public static final PATH_OLD_NAVI_MAP_VERSION:Ljava/lang/String;

.field private static final PATH_UUID:Ljava/lang/String;

.field private static final REGEX_STOCK_UUID:Ljava/lang/String; = "^[A-Z0-9]{6}HW[A-Z0-9]{24}$"

.field private static final REGEX_UUID:Ljava/lang/String; = "^[A-Z0-9]{6}UI[A-Z0-9]{24}$"

.field private static final TAG:Ljava/lang/String; = "NaviModel"

.field public static final VENDOR_AUTONAV:Ljava/lang/String; = "Autonav"

.field public static final VENDOR_HERE:Ljava/lang/String; = "Here"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mNaviCallback:Lcom/xiaopeng/commonfunc/callback/NaviCallback;

.field private mVmapConfig:Lcom/xiaopeng/commonfunc/bean/factorytest/VmapConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-string v0, "NAVI_MAP_CONFIG"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Path;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/model/NaviModel;->PATH_NAVI_MAP_CONFIG:Ljava/lang/String;

    .line 35
    const-string v0, "OLD_NAVI_MAP_VERSION"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Path;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/model/NaviModel;->PATH_OLD_NAVI_MAP_VERSION:Ljava/lang/String;

    .line 39
    const-string v0, "NAVI_UUID"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Path;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/model/NaviModel;->PATH_UUID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/NaviModel;->mContext:Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/model/NaviModel;->initVmapConfig()V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/commonfunc/callback/NaviCallback;Landroid/content/Context;)V
    .locals 0
    .param p1, "callback"    # Lcom/xiaopeng/commonfunc/callback/NaviCallback;
    .param p2, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/NaviModel;->mNaviCallback:Lcom/xiaopeng/commonfunc/callback/NaviCallback;

    .line 48
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/model/NaviModel;->mContext:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/model/NaviModel;->initVmapConfig()V

    .line 50
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/xiaopeng/commonfunc/model/NaviModel;->PATH_UUID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/commonfunc/model/NaviModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/NaviModel;

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/model/NaviModel;->updateUuid()V

    return-void
.end method

.method private initVmapConfig()V
    .locals 3

    .line 59
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sget-object v1, Lcom/xiaopeng/commonfunc/model/NaviModel;->PATH_NAVI_MAP_CONFIG:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/commonfunc/bean/factorytest/VmapConfig;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/commonfunc/bean/factorytest/VmapConfig;

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/NaviModel;->mVmapConfig:Lcom/xiaopeng/commonfunc/bean/factorytest/VmapConfig;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 63
    .end local v0    # "e":Lcom/google/gson/JsonSyntaxException;
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/NaviModel;->mVmapConfig:Lcom/xiaopeng/commonfunc/bean/factorytest/VmapConfig;

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "NaviModel"

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/NaviModel;->mVmapConfig:Lcom/xiaopeng/commonfunc/bean/factorytest/VmapConfig;

    invoke-virtual {v1}, Lcom/xiaopeng/commonfunc/bean/factorytest/VmapConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method

.method private updateUuid()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/NaviModel;->mNaviCallback:Lcom/xiaopeng/commonfunc/callback/NaviCallback;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/NaviModel;->mNaviCallback:Lcom/xiaopeng/commonfunc/callback/NaviCallback;

    invoke-interface {v0}, Lcom/xiaopeng/commonfunc/callback/NaviCallback;->updateUuid()V

    .line 181
    :cond_0
    return-void
.end method


# virtual methods
.method public genUuid()V
    .locals 2

    .line 70
    const-string v0, "NaviModel"

    const-string v1, "genUuid"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    const-string v0, "generate navigation activation UUID"

    const-string v1, "triggered"

    invoke-static {v0, v1}, Lcom/xiaopeng/commonfunc/utils/AfterSalesHelper;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/xiaopeng/commonfunc/model/NaviModel$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/model/NaviModel$1;-><init>(Lcom/xiaopeng/commonfunc/model/NaviModel;)V

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/HttpUtil;->genUuid(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 97
    return-void
.end method

.method public isNeedUuid()Z
    .locals 2

    .line 100
    const-string v0, "Autonav"

    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/NaviModel;->readVmapVendor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUuidValid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .line 104
    if-eqz p1, :cond_1

    const-string v0, "^[A-Z0-9]{6}UI[A-Z0-9]{24}$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "^[A-Z0-9]{6}HW[A-Z0-9]{24}$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readCreateTime()Ljava/lang/String;
    .locals 2

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "value":I
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/NaviModel;->mVmapConfig:Lcom/xiaopeng/commonfunc/bean/factorytest/VmapConfig;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/NaviModel;->mVmapConfig:Lcom/xiaopeng/commonfunc/bean/factorytest/VmapConfig;

    invoke-virtual {v1}, Lcom/xiaopeng/commonfunc/bean/factorytest/VmapConfig;->getVersion()I

    move-result v0

    .line 158
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "N/A"

    :goto_0
    return-object v1
.end method

.method public readRegion()Ljava/lang/String;
    .locals 2

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "res":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/NaviModel;->mVmapConfig:Lcom/xiaopeng/commonfunc/bean/factorytest/VmapConfig;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/NaviModel;->mVmapConfig:Lcom/xiaopeng/commonfunc/bean/factorytest/VmapConfig;

    invoke-virtual {v1}, Lcom/xiaopeng/commonfunc/bean/factorytest/VmapConfig;->getRegion()Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_0
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    const-string v1, "N/A"

    :goto_0
    return-object v1
.end method

.method public readUuid()Ljava/lang/String;
    .locals 1

    .line 108
    sget-object v0, Lcom/xiaopeng/commonfunc/model/NaviModel;->PATH_UUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readVmapVendor()Ljava/lang/String;
    .locals 2

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "res":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/NaviModel;->mVmapConfig:Lcom/xiaopeng/commonfunc/bean/factorytest/VmapConfig;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/NaviModel;->mVmapConfig:Lcom/xiaopeng/commonfunc/bean/factorytest/VmapConfig;

    invoke-virtual {v1}, Lcom/xiaopeng/commonfunc/bean/factorytest/VmapConfig;->getVendor()Ljava/lang/String;

    move-result-object v0

    .line 166
    :cond_0
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    const-string v1, "N/A"

    :goto_0
    return-object v1
.end method

.method public readVmapVer()Ljava/lang/String;
    .locals 5

    .line 113
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/NaviModel;->readVmapVendor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x224410

    if-eq v1, v2, :cond_1

    const v2, 0x3cb2d0f4

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Autonav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "Here"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 143
    sget-object v0, Lcom/xiaopeng/commonfunc/model/NaviModel;->PATH_OLD_NAVI_MAP_VERSION:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "res":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 145
    const-string v1, "N/A"

    goto/16 :goto_5

    .line 123
    .end local v1    # "res":Ljava/lang/String;
    :pswitch_0
    const/4 v0, 0x0

    .line 125
    .local v0, "info":Lcom/xiaopeng/commonfunc/bean/factorytest/HereVmapInfo;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    const-string v3, "NAVI_MAP_VERSION"

    invoke-static {v3}, Lcom/xiaopeng/xmlconfig/Support$Path;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 126
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/google/gson/stream/JsonReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    const-class v4, Lcom/xiaopeng/commonfunc/bean/factorytest/HereVmapInfo;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/commonfunc/bean/factorytest/HereVmapInfo;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 132
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :goto_2
    goto :goto_3

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    goto :goto_3

    .line 128
    :catch_1
    move-exception v1

    .line 129
    .local v1, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v1}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .end local v1    # "e":Lcom/google/gson/JsonSyntaxException;
    goto :goto_2

    .line 134
    :goto_3
    if-eqz v0, :cond_3

    .line 135
    const-string v1, "NaviModel"

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/bean/factorytest/HereVmapInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/bean/factorytest/HereVmapInfo;->getMapSupplier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/bean/factorytest/HereVmapInfo;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/bean/factorytest/HereVmapInfo;->getMapVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 139
    :cond_3
    const-string v1, "N/A"

    .line 141
    .local v1, "res":Ljava/lang/String;
    goto :goto_5

    .line 115
    .end local v0    # "info":Lcom/xiaopeng/commonfunc/bean/factorytest/HereVmapInfo;
    .end local v1    # "res":Ljava/lang/String;
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/NaviModel;->mVmapConfig:Lcom/xiaopeng/commonfunc/bean/factorytest/VmapConfig;

    if-eqz v0, :cond_4

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/NaviModel;->readVmapVendor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/NaviModel;->readRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/NaviModel;->readCreateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "res":Ljava/lang/String;
    :goto_4
    goto :goto_5

    .line 119
    .end local v1    # "res":Ljava/lang/String;
    :cond_4
    const-string v1, "N/A"

    .line 121
    .restart local v1    # "res":Ljava/lang/String;
    nop

    .line 150
    :cond_5
    :goto_5
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
