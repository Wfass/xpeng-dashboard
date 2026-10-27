.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;
.super Landroid/preference/Preference;
.source "AccessPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;
    }
.end annotation


# static fields
.field private static final MY:[I

.field private static final MZ:[I


# instance fields
.field Na:Z

.field Nb:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

.field private Nc:Landroid/net/wifi/WifiConfiguration;

.field Nd:Landroid/net/wifi/ScanResult;

.field private Ne:Landroid/net/wifi/WifiInfo;

.field private Nf:Landroid/net/NetworkInfo$DetailedState;

.field bssid:Ljava/lang/String;

.field private mRssi:I

.field networkId:I

.field security:I

.field ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0402cc

    aput v2, v0, v1

    sput-object v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->MY:[I

    .line 52
    new-array v0, v1, [I

    sput-object v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->MZ:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 0

    .line 160
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 73
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Na:Z

    .line 75
    sget-object p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;->Nh:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nb:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    .line 161
    const p1, 0x7f0c00eb

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->setWidgetLayoutResource(I)V

    .line 162
    invoke-direct {p0, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->c(Landroid/net/wifi/ScanResult;)V

    .line 163
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->refresh()V

    .line 164
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 73
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Na:Z

    .line 75
    sget-object p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;->Nh:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nb:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    .line 154
    const p1, 0x7f0c00eb

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->setWidgetLayoutResource(I)V

    .line 155
    invoke-direct {p0, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->b(Landroid/net/wifi/WifiConfiguration;)V

    .line 156
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->refresh()V

    .line 157
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 167
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 73
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Na:Z

    .line 75
    sget-object p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;->Nh:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nb:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    .line 168
    const p1, 0x7f0c00eb

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->setWidgetLayoutResource(I)V

    .line 170
    const-string p1, "key_config"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nc:Landroid/net/wifi/WifiConfiguration;

    .line 171
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nc:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nc:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->b(Landroid/net/wifi/WifiConfiguration;)V

    .line 174
    :cond_0
    const-string p1, "key_scanresult"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/ScanResult;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nd:Landroid/net/wifi/ScanResult;

    .line 175
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nd:Landroid/net/wifi/ScanResult;

    if-eqz p1, :cond_1

    .line 176
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nd:Landroid/net/wifi/ScanResult;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->c(Landroid/net/wifi/ScanResult;)V

    .line 178
    :cond_1
    const-string p1, "key_wifiinfo"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiInfo;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Ne:Landroid/net/wifi/WifiInfo;

    .line 179
    const-string p1, "key_detailedstate"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 180
    const-string p1, "key_detailedstate"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nf:Landroid/net/NetworkInfo$DetailedState;

    .line 182
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Ne:Landroid/net/wifi/WifiInfo;

    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nf:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->a(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 183
    return-void
.end method

.method private static a(Landroid/net/wifi/ScanResult;)I
    .locals 2

    .line 96
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 p0, 0x1

    return p0

    .line 98
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    const/4 p0, 0x2

    return p0

    .line 100
    :cond_1
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "EAP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 101
    const/4 p0, 0x3

    return p0

    .line 103
    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static a(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3

    .line 85
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 86
    return v2

    .line 88
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x3

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 89
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-eqz p0, :cond_2

    move v0, v1

    nop

    :cond_2
    return v0

    .line 90
    :cond_3
    :goto_0
    return v2
.end method

.method private static b(Landroid/net/wifi/ScanResult;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;
    .locals 3

    .line 138
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPA-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 139
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WPA2-PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 140
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 141
    sget-object p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;->Nk:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    return-object p0

    .line 142
    :cond_0
    if-eqz v1, :cond_1

    .line 143
    sget-object p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;->Nj:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    return-object p0

    .line 144
    :cond_1
    if-eqz v0, :cond_2

    .line 145
    sget-object p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;->Ni:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    return-object p0

    .line 147
    :cond_2
    const-string v0, "Settings.AccessPoint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received abnormal flag string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget-object p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;->Nh:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    return-object p0
.end method

.method private b(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    .line 195
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->ssid:Ljava/lang/String;

    .line 196
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->bssid:Ljava/lang/String;

    .line 197
    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->a(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->security:I

    .line 198
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->networkId:I

    .line 199
    const v0, 0x7fffffff

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->mRssi:I

    .line 200
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nc:Landroid/net/wifi/WifiConfiguration;

    .line 201
    return-void
.end method

.method private c(Landroid/net/wifi/ScanResult;)V
    .locals 2

    .line 204
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->ssid:Ljava/lang/String;

    .line 205
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->bssid:Ljava/lang/String;

    .line 206
    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->a(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->security:I

    .line 207
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->security:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Na:Z

    .line 208
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->security:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 209
    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->b(Landroid/net/wifi/ScanResult;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nb:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    .line 210
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->networkId:I

    .line 211
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->mRssi:I

    .line 212
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nd:Landroid/net/wifi/ScanResult;

    .line 213
    return-void
.end method

.method static dn(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private refresh()V
    .locals 6

    .line 369
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    .line 371
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 372
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nc:Landroid/net/wifi/WifiConfiguration;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nc:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v1, v2, :cond_0

    goto/16 :goto_2

    .line 384
    :cond_0
    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->mRssi:I

    const v3, 0x7fffffff

    if-ne v1, v3, :cond_1

    .line 385
    const v1, 0x7f100488

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 386
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nf:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v1, :cond_2

    .line 387
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nf:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/d;->a(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 389
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    iget-object v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nc:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_3

    .line 391
    const v3, 0x7f10048b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    :cond_3
    iget v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->security:I

    if-eqz v3, :cond_5

    .line 396
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 397
    const v3, 0x7f100490

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 399
    :cond_4
    const v3, 0x7f100491

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 401
    :goto_0
    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->aA(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :cond_5
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nc:Landroid/net/wifi/WifiConfiguration;

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Na:Z

    if-eqz v2, :cond_7

    .line 405
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 406
    const v2, 0x7f1004b0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 408
    :cond_6
    const v2, 0x7f1004b1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_7
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 413
    :goto_2
    return-void
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 353
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 354
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_0

    sub-int/2addr v0, v1

    .line 355
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 356
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 358
    :cond_0
    return-object p0
.end method


# virtual methods
.method a(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4

    .line 314
    nop

    .line 315
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->networkId:I

    .line 316
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 317
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Ne:Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->mRssi:I

    .line 319
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Ne:Landroid/net/wifi/WifiInfo;

    .line 320
    iput-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nf:Landroid/net/NetworkInfo$DetailedState;

    .line 321
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->refresh()V

    goto :goto_1

    .line 322
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Ne:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_2

    .line 323
    nop

    .line 324
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Ne:Landroid/net/wifi/WifiInfo;

    .line 325
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nf:Landroid/net/NetworkInfo$DetailedState;

    .line 326
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->refresh()V

    goto :goto_1

    .line 328
    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 329
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->notifyHierarchyChanged()V

    .line 331
    :cond_3
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .line 186
    const-string v0, "key_config"

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nc:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 187
    const-string v0, "key_scanresult"

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nd:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 188
    const-string v0, "key_wifiinfo"

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Ne:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nf:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v0, :cond_0

    .line 190
    const-string v0, "key_detailedstate"

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nf:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_0
    return-void
.end method

.method public aA(Z)Ljava/lang/String;
    .locals 3

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 108
    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->security:I

    packed-switch v1, :pswitch_data_0

    .line 133
    if-eqz p1, :cond_6

    const-string p1, ""

    goto/16 :goto_6

    .line 110
    :pswitch_0
    if-eqz p1, :cond_0

    const p1, 0x7f100496

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 111
    :cond_0
    const p1, 0x7f100493

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 110
    :goto_0
    return-object p1

    .line 113
    :pswitch_1
    sget-object v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$1;->Ng:[I

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nb:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 125
    if-eqz p1, :cond_4

    const p1, 0x7f100497

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 121
    :pswitch_2
    if-eqz p1, :cond_1

    const p1, 0x7f10049b

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 122
    :cond_1
    const p1, 0x7f10049f

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 121
    :goto_1
    return-object p1

    .line 118
    :pswitch_3
    if-eqz p1, :cond_2

    const p1, 0x7f10049a

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 119
    :cond_2
    const p1, 0x7f10049e

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 118
    :goto_2
    return-object p1

    .line 115
    :pswitch_4
    if-eqz p1, :cond_3

    const p1, 0x7f100499

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 116
    :cond_3
    const p1, 0x7f10049d

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 115
    :goto_3
    return-object p1

    .line 126
    :cond_4
    const p1, 0x7f100495

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 125
    :goto_4
    return-object p1

    .line 129
    :pswitch_5
    if-eqz p1, :cond_5

    const p1, 0x7f100498

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 130
    :cond_5
    const p1, 0x7f10049c

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 129
    :goto_5
    return-object p1

    .line 133
    :cond_6
    const p1, 0x7f100494

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_6
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public compareTo(Landroid/preference/Preference;)I
    .locals 4

    .line 251
    instance-of v0, p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 252
    return v1

    .line 254
    :cond_0
    check-cast p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Ne:Landroid/net/wifi/WifiInfo;

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Ne:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_1

    return v2

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Ne:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Ne:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_2

    return v1

    .line 260
    :cond_2
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->mRssi:I

    const v3, 0x7fffffff

    if-eq v0, v3, :cond_3

    iget v0, p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->mRssi:I

    if-ne v0, v3, :cond_3

    return v2

    .line 261
    :cond_3
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->mRssi:I

    if-ne v0, v3, :cond_4

    iget v0, p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->mRssi:I

    if-eq v0, v3, :cond_4

    return v1

    .line 264
    :cond_4
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->networkId:I

    if-eq v0, v2, :cond_5

    iget v0, p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->networkId:I

    if-ne v0, v2, :cond_5

    .line 265
    return v2

    .line 266
    :cond_5
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->networkId:I

    if-ne v0, v2, :cond_6

    iget v0, p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->networkId:I

    if-eq v0, v2, :cond_6

    .line 267
    return v1

    .line 270
    :cond_6
    iget v0, p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->mRssi:I

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->mRssi:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    .line 271
    if-eqz v0, :cond_7

    .line 272
    return v0

    .line 275
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->ssid:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 41
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result p1

    return p1
.end method

.method d(Landroid/net/wifi/ScanResult;)Z
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->security:I

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->a(Landroid/net/wifi/ScanResult;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 296
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->mRssi:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    if-lez v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->getLevel()I

    move-result v0

    .line 298
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->mRssi:I

    .line 299
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->notifyChanged()V

    .line 304
    :cond_0
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->security:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 305
    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->b(Landroid/net/wifi/ScanResult;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nb:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint$PskType;

    .line 307
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->refresh()V

    .line 308
    const/4 p1, 0x1

    return p1

    .line 310
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 280
    instance-of v0, p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 281
    :cond_0
    check-cast p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nc:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method getLevel()I
    .locals 2

    .line 334
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 335
    const/4 v0, -0x1

    return v0

    .line 337
    :cond_0
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->mRssi:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 286
    nop

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Ne:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Ne:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 288
    :cond_0
    const/16 v0, 0x13

    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->mRssi:I

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 289
    const/16 v0, 0x17

    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->networkId:I

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 290
    const/16 v0, 0x1d

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 291
    return v1
.end method

.method mV()Landroid/net/wifi/WifiInfo;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Ne:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method mW()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nf:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method protected mX()V
    .locals 2

    .line 422
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->security:I

    if-nez v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nc:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 425
    return-void

    .line 426
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nc:Landroid/net/wifi/WifiConfiguration;

    .line 427
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nc:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->dn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 428
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->Nc:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 429
    return-void

    .line 423
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5

    .line 217
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 218
    const-string v0, "accessPoint"

    const-string v1, "onBindView"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 220
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 221
    const/16 v2, 0x26

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 222
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 224
    const/high16 v3, 0x41d00000    # 26.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 225
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 226
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 227
    const/16 v4, 0x8

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 228
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 230
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 231
    const v0, 0x7f090340

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 233
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 234
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 235
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 238
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 241
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x7f040377

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 242
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->security:I

    if-eqz v2, :cond_1

    .line 244
    sget-object v2, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->MY:[I

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/AccessPoint;->MZ:[I

    .line 243
    :goto_0
    invoke-virtual {p1, v2, v1}, Landroid/widget/ImageView;->setImageState([IZ)V

    .line 245
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 247
    :goto_1
    return-void
.end method
