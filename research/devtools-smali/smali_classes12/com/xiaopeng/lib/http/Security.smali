.class public Lcom/xiaopeng/lib/http/Security;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/http/Security$EncryptionType;
    }
.end annotation


# static fields
.field public static final UL:[Ljava/lang/String;

.field public static final UM:[Ljava/lang/String;

.field private static UN:Lcom/xiaopeng/lib/security/a;

.field private static UO:Z

.field private static pl:Lcom/xiaopeng/lib/security/a;

.field private static pn:Z

.field private static sContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-string v0, "accessToken"

    const-string v1, "refreshToken"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/http/Security;->UL:[Ljava/lang/String;

    .line 25
    const-string v0, "accessToken"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/http/Security;->UM:[Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/lib/http/Security;->UO:Z

    .line 66
    invoke-static {}, Lcom/xiaopeng/lib/security/c;->ok()Lcom/xiaopeng/lib/security/a;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/http/Security;->pl:Lcom/xiaopeng/lib/security/a;

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 68
    invoke-static {}, Lcom/xiaopeng/lib/security/a/a;->op()Lcom/xiaopeng/lib/security/a/a;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/http/Security;->UN:Lcom/xiaopeng/lib/security/a;

    .line 70
    :cond_0
    return-void
.end method

.method public static D([B)Ljava/lang/String;
    .locals 0

    .line 238
    invoke-static {p0}, Lcom/xiaopeng/lib/security/b;->D([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    .line 231
    sget-boolean v0, Lcom/xiaopeng/lib/http/Security;->UO:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/http/Security;->UN:Lcom/xiaopeng/lib/security/a;

    if-eqz v0, :cond_0

    .line 232
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->UN:Lcom/xiaopeng/lib/security/a;

    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/lib/security/a;->a([Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 234
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->pl:Lcom/xiaopeng/lib/security/a;

    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/lib/security/a;->a([Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized destroy()V
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/http/Security;

    monitor-enter v0

    .line 145
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/http/Security;->pl:Lcom/xiaopeng/lib/security/a;

    invoke-interface {v1}, Lcom/xiaopeng/lib/security/a;->destroy()V

    .line 146
    const/4 v1, 0x0

    sput-boolean v1, Lcom/xiaopeng/lib/http/Security;->pn:Z

    .line 147
    sget-object v1, Lcom/xiaopeng/lib/http/Security;->UN:Lcom/xiaopeng/lib/security/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 149
    :try_start_1
    sget-object v1, Lcom/xiaopeng/lib/http/Security;->UN:Lcom/xiaopeng/lib/security/a;

    invoke-interface {v1}, Lcom/xiaopeng/lib/security/a;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    .line 151
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static es()Z
    .locals 1

    .line 126
    sget-boolean v0, Lcom/xiaopeng/lib/http/Security;->UO:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/http/Security;->UN:Lcom/xiaopeng/lib/security/a;

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->UN:Lcom/xiaopeng/lib/security/a;

    invoke-interface {v0}, Lcom/xiaopeng/lib/security/a;->og()Z

    move-result v0

    return v0

    .line 129
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->pl:Lcom/xiaopeng/lib/security/a;

    invoke-interface {v0}, Lcom/xiaopeng/lib/security/a;->og()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/xiaopeng/lib/http/Security;

    monitor-enter v0

    .line 93
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/http/Security;->pn:Z

    if-eqz v1, :cond_0

    .line 94
    const-string p0, "Security"

    const-string v1, "sSecureSDKManager has init"

    invoke-static {p0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit v0

    return-void

    .line 98
    :cond_0
    :try_start_1
    sput-object p0, Lcom/xiaopeng/lib/http/Security;->sContext:Landroid/content/Context;

    .line 100
    const/4 v1, 0x0

    sput-boolean v1, Lcom/xiaopeng/lib/http/Security;->pn:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :try_start_2
    sget-object v1, Lcom/xiaopeng/lib/http/Security;->pl:Lcom/xiaopeng/lib/security/a;

    invoke-interface {v1, p0}, Lcom/xiaopeng/lib/security/a;->an(Landroid/content/Context;)Lcom/xiaopeng/lib/security/a;

    .line 103
    const/4 v1, 0x1

    sput-boolean v1, Lcom/xiaopeng/lib/http/Security;->pn:Z

    .line 104
    sget-object v1, Lcom/xiaopeng/lib/http/Security;->UN:Lcom/xiaopeng/lib/security/a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    .line 106
    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Lcom/xiaopeng/lib/http/Security;->UN:Lcom/xiaopeng/lib/security/a;

    invoke-interface {v2, p0}, Lcom/xiaopeng/lib/security/a;->an(Landroid/content/Context;)Lcom/xiaopeng/lib/security/a;

    .line 107
    sget-object p0, Lcom/xiaopeng/lib/http/Security;->UN:Lcom/xiaopeng/lib/security/a;

    invoke-interface {p0}, Lcom/xiaopeng/lib/security/a;->og()Z

    move-result p0

    if-nez p0, :cond_1

    .line 108
    sput-object v1, Lcom/xiaopeng/lib/http/Security;->UN:Lcom/xiaopeng/lib/security/a;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    :cond_1
    goto :goto_0

    .line 110
    :catch_0
    move-exception p0

    .line 111
    :try_start_4
    sput-object v1, Lcom/xiaopeng/lib/http/Security;->UN:Lcom/xiaopeng/lib/security/a;

    .line 112
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    :cond_2
    :goto_0
    goto :goto_1

    .line 115
    :catch_1
    move-exception p0

    .line 116
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 118
    :goto_1
    monitor-exit v0

    return-void

    .line 92
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static oa()Lcom/xiaopeng/lib/http/Security$EncryptionType;
    .locals 1

    .line 81
    sget-boolean v0, Lcom/xiaopeng/lib/http/Security;->UO:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/http/Security;->UN:Lcom/xiaopeng/lib/security/a;

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->UN:Lcom/xiaopeng/lib/security/a;

    invoke-interface {v0}, Lcom/xiaopeng/lib/security/a;->of()Lcom/xiaopeng/lib/http/Security$EncryptionType;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->pl:Lcom/xiaopeng/lib/security/a;

    invoke-interface {v0}, Lcom/xiaopeng/lib/security/a;->of()Lcom/xiaopeng/lib/http/Security$EncryptionType;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized ob()Z
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/http/Security;

    monitor-enter v0

    .line 138
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/http/Security;->pn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
