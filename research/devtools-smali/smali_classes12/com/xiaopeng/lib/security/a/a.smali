.class public Lcom/xiaopeng/lib/security/a/a;
.super Ljava/lang/Object;
.source "IrdetoSecurity.java"

# interfaces
.implements Lcom/xiaopeng/lib/security/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/security/a/a$a;
    }
.end annotation


# static fields
.field private static Vr:Lcom/irdeto/securesdk/SecureSDKManager;

.field private static pn:Z

.field private static sContext:Landroid/content/Context;


# instance fields
.field private volatile Vs:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/security/a/a$1;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/lib/security/a/a;-><init>()V

    return-void
.end method

.method private d(Landroid/content/Context;Z)V
    .locals 2

    .line 73
    sput-object p1, Lcom/xiaopeng/lib/security/a/a;->sContext:Landroid/content/Context;

    .line 75
    if-eqz p2, :cond_1

    .line 76
    new-instance p2, Ljava/io/File;

    const-string v0, "/private/sec/"

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/lib/security/a/a;->ol()V

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    invoke-static {}, Lcom/xiaopeng/lib/security/a/a;->oo()V

    .line 85
    :goto_0
    const/4 p2, 0x0

    sput-boolean p2, Lcom/xiaopeng/lib/security/a/a;->pn:Z

    .line 87
    const/4 p2, 0x1

    :try_start_0
    new-instance v0, Lcom/irdeto/securesdk/SecureSDKManager;

    invoke-direct {v0}, Lcom/irdeto/securesdk/SecureSDKManager;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/security/a/a;->Vr:Lcom/irdeto/securesdk/SecureSDKManager;

    .line 88
    sget-object v0, Lcom/xiaopeng/lib/security/a/a;->Vr:Lcom/irdeto/securesdk/SecureSDKManager;

    const-string v1, "/private/sec/"

    invoke-virtual {v0, p1, v1}, Lcom/irdeto/securesdk/SecureSDKManager;->isfInitialize(Landroid/content/Context;Ljava/lang/String;)I

    .line 89
    sput-boolean p2, Lcom/xiaopeng/lib/security/a/a;->pn:Z

    .line 90
    const-string p1, "IrdetoSecurity"

    const-string v0, "irdeto sdk init success"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/irdeto/securesdk/ISFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_2

    .line 91
    :catch_0
    move-exception p1

    .line 92
    const-string v0, "IrdetoSecurity"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/c;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 93
    invoke-virtual {p1}, Lcom/irdeto/securesdk/ISFException;->getErrorCode()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 p2, 0xe

    if-eq v0, p2, :cond_2

    goto :goto_1

    .line 101
    :cond_2
    const-string p2, "IrdetoSecurity"

    const-string v0, "irdeto sdk init failed : secure store error!!!!"

    invoke-static {p2, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Lcom/xiaopeng/lib/security/a/a;->om()V

    .line 104
    goto :goto_1

    .line 95
    :cond_3
    invoke-static {}, Lcom/xiaopeng/lib/utils/c/b;->pj()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    sput-boolean p2, Lcom/xiaopeng/lib/security/a/a;->pn:Z

    .line 97
    const-string p2, "IrdetoSecurity"

    const-string v0, "irdeto sdk init success for eng root"

    invoke-static {p2, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    :cond_4
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "irdeto init error for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/irdeto/securesdk/ISFException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " error code is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/irdeto/securesdk/ISFException;->getErrorCode()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/security/a/a;->Vs:Ljava/lang/String;

    .line 110
    :goto_2
    return-void
.end method

.method private dG(Ljava/lang/String;)V
    .locals 2

    .line 572
    const-string v0, "IrdetoSecurity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xiaopeng/lib/security/a/a;->Vs:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method private ol()V
    .locals 2

    .line 128
    invoke-static {}, Lcom/xiaopeng/lib/security/b;->oj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/lib/security/a/a;->on()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    const-string v0, "IrdetoSecurity"

    const-string v1, "irdeto delete indiv files"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcom/xiaopeng/lib/security/a/a;->om()V

    .line 132
    :cond_0
    return-void
.end method

.method private om()V
    .locals 3

    .line 137
    :try_start_0
    const-string v0, "/private/sec/irss0.dat"

    invoke-static {v0}, Lcom/xiaopeng/lib/http/a;->bn(Ljava/lang/String;)V

    .line 138
    const-string v0, "/private/sec/irss1.dat"

    invoke-static {v0}, Lcom/xiaopeng/lib/http/a;->bn(Ljava/lang/String;)V

    .line 139
    const-string v0, "/private/sec/irss2.dat"

    invoke-static {v0}, Lcom/xiaopeng/lib/http/a;->bn(Ljava/lang/String;)V

    .line 140
    const-string v0, "/private/sec/si_flag.dat"

    invoke-static {v0}, Lcom/xiaopeng/lib/http/a;->bn(Ljava/lang/String;)V

    .line 142
    const-string v0, "/private/sec/si_mcu.dat"

    invoke-static {v0}, Lcom/xiaopeng/lib/http/a;->bn(Ljava/lang/String;)V

    .line 145
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaopeng/lib/security/a/a;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "irss0.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_0
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    :goto_0
    return-void
.end method

.method private static oo()V
    .locals 3

    .line 540
    const-string v0, "IrdetoSecurity"

    const-string v1, "registerISFSecureStoreReloadReceiver"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 542
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 543
    const-string v1, "com.xiaopeng.action.ISF_SECURE_STORE_RELOAD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 544
    sget-object v1, Lcom/xiaopeng/lib/security/a/a;->sContext:Landroid/content/Context;

    new-instance v2, Lcom/xiaopeng/lib/security/a/a$2;

    invoke-direct {v2}, Lcom/xiaopeng/lib/security/a/a$2;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    goto :goto_0

    .line 558
    :catch_0
    move-exception v0

    .line 559
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 561
    :goto_0
    return-void
.end method

.method public static op()Lcom/xiaopeng/lib/security/a/a;
    .locals 1

    .line 568
    invoke-static {}, Lcom/xiaopeng/lib/security/a/a$a;->oq()Lcom/xiaopeng/lib/security/a/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a([Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3

    .line 370
    sget-object v0, Lcom/xiaopeng/lib/security/a/a;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/lib/security/b;->ap(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    sget-object v0, Lcom/xiaopeng/lib/security/a/a;->sContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/lib/http/b/a;->a(Landroid/content/Context;[Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 374
    :cond_0
    const-class v0, Lcom/xiaopeng/lib/security/a/a;

    monitor-enter v0

    .line 375
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/security/a/a;->pn:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 376
    const-string p1, "build token data error, "

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/security/a/a;->dG(Ljava/lang/String;)V

    .line 377
    monitor-exit v0

    return-object v2

    .line 379
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    :try_start_1
    invoke-static {p2}, Lcom/xiaopeng/lib/security/b;->E([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/irdeto/securesdk/isf;->isfTokenOperate([Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 383
    :catch_0
    move-exception p1

    .line 384
    const-string p2, "IrdetoSecurity"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/c;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 387
    return-object v2

    .line 379
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public aP(Z)V
    .locals 1

    .line 205
    if-nez p1, :cond_0

    .line 207
    new-instance p1, Ljava/io/File;

    const-string v0, "/private/sec/si_mcu.dat"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 209
    return-void

    .line 214
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/irdeto/securesdk/isf;->isfGetMCUSecurityAsset()[B

    move-result-object p1

    .line 215
    const-string v0, "/private/sec/si_mcu.dat"

    invoke-static {p1}, Lcom/xiaopeng/lib/security/b;->D([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/http/a;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    goto :goto_0

    .line 216
    :catch_0
    move-exception p1

    .line 217
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    :goto_0
    return-void
.end method

.method public synthetic an(Landroid/content/Context;)Lcom/xiaopeng/lib/security/a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/security/a/a;->aq(Landroid/content/Context;)Lcom/xiaopeng/lib/security/a/a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic ao(Landroid/content/Context;)Lcom/xiaopeng/lib/security/a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/security/a/a;->ar(Landroid/content/Context;)Lcom/xiaopeng/lib/security/a/a;

    move-result-object p1

    return-object p1
.end method

.method public aq(Landroid/content/Context;)Lcom/xiaopeng/lib/security/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/lib/security/a/a;->d(Landroid/content/Context;Z)V

    .line 63
    return-object p0
.end method

.method public ar(Landroid/content/Context;)Lcom/xiaopeng/lib/security/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/lib/security/a/a;->d(Landroid/content/Context;Z)V

    .line 69
    return-object p0
.end method

.method public dE(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 183
    invoke-static {p1}, Lcom/irdeto/securesdk/isf;->isfProvisionResponse(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/irdeto/securesdk/isf;->isfProvisioned()Z

    move-result p1

    return p1
.end method

.method public destroy()V
    .locals 1

    .line 114
    sget-object v0, Lcom/xiaopeng/lib/security/a/a;->Vr:Lcom/irdeto/securesdk/SecureSDKManager;

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/xiaopeng/lib/security/a/a;->Vr:Lcom/irdeto/securesdk/SecureSDKManager;

    invoke-virtual {v0}, Lcom/irdeto/securesdk/SecureSDKManager;->isfCleanup()I

    .line 116
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/lib/security/a/a;->Vr:Lcom/irdeto/securesdk/SecureSDKManager;

    .line 119
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/lib/security/a/a;->pn:Z

    .line 120
    return-void
.end method

.method public of()Lcom/xiaopeng/lib/http/Security$EncryptionType;
    .locals 1

    .line 57
    sget-object v0, Lcom/xiaopeng/lib/http/Security$EncryptionType;->UQ:Lcom/xiaopeng/lib/http/Security$EncryptionType;

    return-object v0
.end method

.method public og()Z
    .locals 5

    .line 423
    const-class v0, Lcom/xiaopeng/lib/security/a/a;

    monitor-enter v0

    .line 424
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/security/a/a;->pn:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 425
    const-string v1, "IrdetoSecurity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Irdeto sdk not init "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/lib/security/a/a;->Vs:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    monitor-exit v0

    return v2

    .line 428
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    :try_start_1
    invoke-static {}, Lcom/irdeto/securesdk/isf;->isfProvisioned()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaopeng/lib/security/b;->oj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/lib/security/a/a;->on()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_1

    .line 432
    const/4 v0, 0x1

    return v0

    .line 436
    :cond_1
    goto :goto_0

    .line 434
    :catch_0
    move-exception v0

    .line 435
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 438
    :goto_0
    return v2

    .line 428
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public oh()V
    .locals 2

    .line 193
    :try_start_0
    const-string v0, "/private/sec/si_flag.dat"

    invoke-static {}, Lcom/xiaopeng/lib/security/b;->oj()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/http/a;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 197
    :goto_0
    return-void
.end method

.method public oi()V
    .locals 1

    .line 162
    :try_start_0
    const-string v0, "/private/sec/irss2.dat"

    invoke-static {v0}, Lcom/xiaopeng/lib/http/a;->bn(Ljava/lang/String;)V

    .line 163
    const-string v0, "/private/sec/si_flag.dat"

    invoke-static {v0}, Lcom/xiaopeng/lib/http/a;->bn(Ljava/lang/String;)V

    .line 165
    const-string v0, "/private/sec/si_mcu.dat"

    invoke-static {v0}, Lcom/xiaopeng/lib/http/a;->bn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    :goto_0
    return-void
.end method

.method public on()Ljava/lang/String;
    .locals 3

    .line 408
    nop

    .line 410
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/private/sec/si_flag.dat"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/lib/http/a;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    nop

    .line 414
    move-object v0, v1

    goto :goto_0

    .line 411
    :catch_0
    move-exception v1

    .line 414
    :goto_0
    return-object v0
.end method
