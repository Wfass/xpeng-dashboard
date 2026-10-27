.class public Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;
.super Landroid/content/ContentProvider;
.source "ContextNetStatusProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider$MyPhoneStateListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "NetChannel-MqttChannel"

.field private static mContext:Landroid/content/Context;

.field private static mPhoneStateListener:Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider$MyPhoneStateListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 30
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getNetStrength()I
    .locals 2

    .line 133
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->getNetType()I

    move-result v0

    .line 134
    .local v0, "type":I
    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->getNetStrength(I)I

    move-result v1

    return v1
.end method

.method public static getNetStrength(I)I
    .locals 4
    .param p0, "type"    # I

    .line 108
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 109
    return v1

    .line 111
    :cond_0
    const/16 v0, 0xa

    if-ne p0, v0, :cond_1

    .line 112
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->getWifiRssi(Landroid/content/Context;)I

    move-result v0

    .line 113
    .local v0, "rssi":I
    const-string v1, "NetChannel-MqttChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current net type is wifi, rssi is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    return v0

    .line 115
    .end local v0    # "rssi":I
    :cond_1
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->mPhoneStateListener:Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider$MyPhoneStateListener;

    if-eqz v0, :cond_2

    .line 116
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->mPhoneStateListener:Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider$MyPhoneStateListener;

    iget v0, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider$MyPhoneStateListener;->signalStrengthValue:I

    .line 117
    .local v0, "dbm":I
    const-string v1, "NetChannel-MqttChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current net type is mobile, dbm is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    return v0

    .line 120
    .end local v0    # "dbm":I
    :cond_2
    const-string v0, "NetChannel-MqttChannel"

    const-string v2, "not init or not wifi, signal strength is 0"

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    return v1
.end method

.method public static getNetType()I
    .locals 1

    .line 126
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    return v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getWifiRssi(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 98
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 100
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    return v2

    .line 104
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "selection"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "selectionArgs"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 4

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    .local v0, "ctx":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->mContext:Landroid/content/Context;

    .line 39
    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->mPhoneStateListener:Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider$MyPhoneStateListener;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider$MyPhoneStateListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider$MyPhoneStateListener;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider$1;)V

    sput-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->mPhoneStateListener:Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider$MyPhoneStateListener;

    .line 41
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 42
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 43
    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->mPhoneStateListener:Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider$MyPhoneStateListener;

    const/16 v3, 0x100

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 47
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/SharePrefsANRFix;->fix()V

    .line 48
    const/4 v1, 0x1

    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "projection"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "selection"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "selectionArgs"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "sortOrder"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "selection"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "selectionArgs"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 76
    const/4 v0, 0x0

    return v0
.end method
