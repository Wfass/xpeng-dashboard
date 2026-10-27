.class public Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;
.super Ljava/lang/Object;
.source "NaviPresenter.java"


# static fields
.field public static final PATH_HERE_NAVI_MAP_VERSION:Ljava/lang/String; = "/mnt/vmap/data/manifest.json"

.field public static final PATH_NAVI_MAP_CONFIG:Ljava/lang/String; = "/mnt/vmap/config.txt"

.field public static final PATH_OLD_NAVI_MAP_VERSION:Ljava/lang/String; = "/mnt/vmap/version.txt"

.field private static final PATH_UUID:Ljava/lang/String; = "/mnt/vendor/private/uuid"

.field private static final REGEX_STOCK_UUID:Ljava/lang/String; = "^[A-Z0-9]{6}HW[A-Z0-9]{24}$"

.field private static final REGEX_UUID:Ljava/lang/String; = "^[A-Z0-9]{6}UI[A-Z0-9]{24}$"

.field private static final TAG:Ljava/lang/String; = "NaviPresenter"

.field public static final VENDOR_AUTONAV:Ljava/lang/String; = "Autonav"

.field public static final VENDOR_HERE:Ljava/lang/String; = "Here"


# instance fields
.field private mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

.field private mUuidView:Lcom/xiaopeng/factory/view/navi/IUuidView;

.field private mVmapConfig:Lcom/xiaopeng/factory/bean/factorytest/VmapConfig;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;)V
    .locals 0
    .param p1, "writer"    # Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    .line 57
    invoke-direct {p0}, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->initVmapConfig()V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/factory/view/navi/IUuidView;)V
    .locals 0
    .param p1, "uuidView"    # Lcom/xiaopeng/factory/view/navi/IUuidView;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->mUuidView:Lcom/xiaopeng/factory/view/navi/IUuidView;

    .line 52
    invoke-direct {p0}, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->initVmapConfig()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;
    .param p1, "x1"    # Z

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->responseDm(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->updateUuidView()V

    return-void
.end method

.method private initVmapConfig()V
    .locals 3

    .line 62
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-string v1, "/mnt/vmap/config.txt"

    invoke-static {v1}, Lcom/xiaopeng/factory/utils/FileUtil;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/factory/bean/factorytest/VmapConfig;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/factory/bean/factorytest/VmapConfig;

    iput-object v0, p0, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->mVmapConfig:Lcom/xiaopeng/factory/bean/factorytest/VmapConfig;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->mVmapConfig:Lcom/xiaopeng/factory/bean/factorytest/VmapConfig;

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "NaviPresenter"

    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->mVmapConfig:Lcom/xiaopeng/factory/bean/factorytest/VmapConfig;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 69
    .end local v0    # "e":Lcom/google/gson/JsonSyntaxException;
    :goto_0
    return-void
.end method

.method private responseDm(Z)V
    .locals 3
    .param p1, "result"    # Z

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    if-eqz p1, :cond_0

    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil$NaviTest;->CMD_NAME:[B

    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_00_00:[B

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/DmUtil;->responseOK([B[B)[B

    move-result-object v1

    goto :goto_0

    .line 191
    :cond_0
    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil$NaviTest;->CMD_NAME:[B

    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_00_00:[B

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/DmUtil;->responseNG([B[B)[B

    move-result-object v1

    .line 190
    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    .line 193
    :cond_1
    return-void
.end method

.method private updateUuidView()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->mUuidView:Lcom/xiaopeng/factory/view/navi/IUuidView;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->mUuidView:Lcom/xiaopeng/factory/view/navi/IUuidView;

    invoke-interface {v0}, Lcom/xiaopeng/factory/view/navi/IUuidView;->updateUuid()V

    .line 199
    :cond_0
    return-void
.end method


# virtual methods
.method public genUuid()V
    .locals 2

    .line 73
    const-string v0, "NaviPresenter"

    const-string v1, "genUuid"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    const-string v0, "Autonav"

    invoke-virtual {p0}, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->readVmapVendor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->mUuidView:Lcom/xiaopeng/factory/view/navi/IUuidView;

    if-eqz v0, :cond_0

    .line 77
    const v0, 0x7f060217

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XToast;->showLong(I)V

    .line 79
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->responseDm(Z)V

    .line 80
    return-void

    .line 83
    :cond_1
    new-instance v0, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter$1;-><init>(Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;)V

    invoke-static {v0}, Lcom/xiaopeng/factory/utils/HttpUtil;->genUuid(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 112
    return-void
.end method

.method public isUuidValid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .line 115
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

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "value":I
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->mVmapConfig:Lcom/xiaopeng/factory/bean/factorytest/VmapConfig;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->mVmapConfig:Lcom/xiaopeng/factory/bean/factorytest/VmapConfig;

    invoke-virtual {v1}, Lcom/xiaopeng/factory/bean/factorytest/VmapConfig;->getVersion()I

    move-result v0

    .line 169
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

    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "res":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->mVmapConfig:Lcom/xiaopeng/factory/bean/factorytest/VmapConfig;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->mVmapConfig:Lcom/xiaopeng/factory/bean/factorytest/VmapConfig;

    invoke-virtual {v1}, Lcom/xiaopeng/factory/bean/factorytest/VmapConfig;->getRegion()Ljava/lang/String;

    move-result-object v0

    .line 185
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

    .line 119
    const-string v0, "/mnt/vendor/private/uuid"

    invoke-static {v0}, Lcom/xiaopeng/factory/utils/FileUtil;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readVmapVendor()Ljava/lang/String;
    .locals 2

    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "res":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->mVmapConfig:Lcom/xiaopeng/factory/bean/factorytest/VmapConfig;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->mVmapConfig:Lcom/xiaopeng/factory/bean/factorytest/VmapConfig;

    invoke-virtual {v1}, Lcom/xiaopeng/factory/bean/factorytest/VmapConfig;->getVendor()Ljava/lang/String;

    move-result-object v0

    .line 177
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

    .line 124
    invoke-virtual {p0}, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->readVmapVendor()Ljava/lang/String;

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

    .line 154
    const-string v0, "/mnt/vmap/version.txt"

    invoke-static {v0}, Lcom/xiaopeng/factory/utils/FileUtil;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "res":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 156
    const-string v1, "N/A"

    goto/16 :goto_5

    .line 134
    .end local v1    # "res":Ljava/lang/String;
    :pswitch_0
    const/4 v0, 0x0

    .line 136
    .local v0, "info":Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    const-string v3, "/mnt/vmap/data/manifest.json"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 137
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/google/gson/stream/JsonReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    const-class v4, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 143
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :goto_2
    goto :goto_3

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    goto :goto_3

    .line 139
    :catch_1
    move-exception v1

    .line 140
    .local v1, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v1}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .end local v1    # "e":Lcom/google/gson/JsonSyntaxException;
    goto :goto_2

    .line 145
    :goto_3
    if-eqz v0, :cond_3

    .line 146
    const-string v1, "NaviPresenter"

    invoke-virtual {v0}, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->getMapSupplier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0}, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->getMapVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 150
    :cond_3
    const-string v1, "N/A"

    .line 152
    .local v1, "res":Ljava/lang/String;
    goto :goto_5

    .line 126
    .end local v0    # "info":Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;
    .end local v1    # "res":Ljava/lang/String;
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->mVmapConfig:Lcom/xiaopeng/factory/bean/factorytest/VmapConfig;

    if-eqz v0, :cond_4

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->readVmapVendor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->readRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p0}, Lcom/xiaopeng/factory/presenter/navi/NaviPresenter;->readCreateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "res":Ljava/lang/String;
    :goto_4
    goto :goto_5

    .line 130
    .end local v1    # "res":Ljava/lang/String;
    :cond_4
    const-string v1, "N/A"

    .line 132
    .restart local v1    # "res":Ljava/lang/String;
    nop

    .line 161
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
