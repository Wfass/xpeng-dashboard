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
    .locals 1

    .line 133
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->getNetType()I

    move-result v0

    .line 134
    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->getNetStrength(I)I

    move-result v0

    return v0
.end method

.method public static getNetStrength(I)I
    .locals 4

    .line 108
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0xa

    const-string v3, "NetChannel-MqttChannel"

    if-ne p0, v2, :cond_1

    .line 112
    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->getWifiRssi(Landroid/content/Context;)I

    move-result p0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current net type is wifi, rssi is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return p0

    .line 115
    :cond_1
    sget-object p0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->mPhoneStateListener:Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider$MyPhoneStateListener;

    if-eqz p0, :cond_2

    .line 116
    iget p0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider$MyPhoneStateListener;->signalStrengthValue:I

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current net type is mobile, dbm is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return p0

    :cond_2
    const-string p0, "not init or not wifi, signal strength is 0"

    .line 120
    invoke-static {v3, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v1
.end method

.method public static getNetType()I
    .locals 1

    .line 126
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 127
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getWifiRssi(Landroid/content/Context;)I
    .locals 1

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_0

    .line 99
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 3

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->getContext()Landroid/content/Context;

    move-result-object v0

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

    const-string v1, "phone"

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 43
    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->mPhoneStateListener:Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider$MyPhoneStateListener;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 47
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/SharePrefsANRFix;->fix()V

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
