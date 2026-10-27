.class public Lcom/xiaopeng/devtools/model/f/c;
.super Ljava/lang/Object;
.source "NetworkModel.java"


# static fields
.field private static volatile uo:Lcom/xiaopeng/devtools/model/f/c;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private uk:Landroid/telephony/PhoneStateListener;

.field private ul:Ljava/lang/StringBuilder;

.field private um:Ljava/lang/String;

.field private un:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/c;->ul:Ljava/lang/StringBuilder;

    .line 37
    new-instance v0, Lcom/xiaopeng/devtools/model/f/c$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/model/f/c$1;-><init>(Lcom/xiaopeng/devtools/model/f/c;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/c;->mHandler:Landroid/os/Handler;

    .line 72
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/c;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 74
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/c;->mContext:Landroid/content/Context;

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/c;->ul:Ljava/lang/StringBuilder;

    const-string v1, "N/A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/c;->un:Ljava/lang/String;

    .line 77
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/c;->um:Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/devtools/model/f/c;->hm()V

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/model/f/c;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/f/c;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/model/f/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/f/c;->um:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/model/f/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/f/c;->un:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/model/f/c;)Ljava/lang/StringBuilder;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/f/c;->ul:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/model/f/c;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/f/c;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/model/f/c;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/f/c;->um:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaopeng/devtools/model/f/c;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/f/c;->un:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaopeng/devtools/model/f/c;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/f/c;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private hm()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/c;->uk:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/xiaopeng/devtools/model/f/c$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/model/f/c$2;-><init>(Lcom/xiaopeng/devtools/model/f/c;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/c;->uk:Landroid/telephony/PhoneStateListener;

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/c;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/f/c;->uk:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/c;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/f/c;->uk:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/c;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/f/c;->uk:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 152
    :cond_0
    return-void
.end method

.method public static hn()Lcom/xiaopeng/devtools/model/f/c;
    .locals 2

    .line 155
    sget-object v0, Lcom/xiaopeng/devtools/model/f/c;->uo:Lcom/xiaopeng/devtools/model/f/c;

    if-nez v0, :cond_1

    .line 156
    const-class v0, Lcom/xiaopeng/devtools/model/f/c;

    monitor-enter v0

    .line 157
    :try_start_0
    sget-object v1, Lcom/xiaopeng/devtools/model/f/c;->uo:Lcom/xiaopeng/devtools/model/f/c;

    if-nez v1, :cond_0

    .line 158
    new-instance v1, Lcom/xiaopeng/devtools/model/f/c;

    invoke-direct {v1}, Lcom/xiaopeng/devtools/model/f/c;-><init>()V

    sput-object v1, Lcom/xiaopeng/devtools/model/f/c;->uo:Lcom/xiaopeng/devtools/model/f/c;

    .line 160
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 162
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/devtools/model/f/c;->uo:Lcom/xiaopeng/devtools/model/f/c;

    return-object v0
.end method


# virtual methods
.method public getIccid()Ljava/lang/String;
    .locals 1

    .line 166
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->getIccid()Ljava/lang/String;

    move-result-object v0

    .line 167
    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/c;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ho()Ljava/lang/String;
    .locals 4

    .line 175
    const-string v0, "N/A"

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/f/c;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 178
    if-eqz v1, :cond_5

    .line 179
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MOBILE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const v3, 0x7f1000b4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/xiaopeng/devtools/model/f/c;->mContext:Landroid/content/Context;

    .line 180
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 182
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UNICOM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const v3, 0x7f1000b6

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/xiaopeng/devtools/model/f/c;->mContext:Landroid/content/Context;

    .line 183
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TELECOM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const v3, 0x7f1000b5

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/xiaopeng/devtools/model/f/c;->mContext:Landroid/content/Context;

    .line 186
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 187
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/f/c;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 184
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/f/c;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 181
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/f/c;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_2
    move-object v0, v1

    :cond_5
    goto :goto_3

    .line 190
    :catch_0
    move-exception v1

    .line 191
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    :goto_3
    return-object v0
.end method

.method public hp()Ljava/lang/String;
    .locals 2

    .line 197
    const-string v0, "ril.cellinfo.band"

    const-string v1, "N/A"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    return-object v0
.end method

.method public hq()Ljava/lang/String;
    .locals 2

    .line 202
    const-string v0, "ril.cellinfo.channel"

    const-string v1, "N/A"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    return-object v0
.end method

.method public hr()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/c;->ul:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hs()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/c;->um:Ljava/lang/String;

    return-object v0
.end method

.method public ht()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/c;->un:Ljava/lang/String;

    return-object v0
.end method
