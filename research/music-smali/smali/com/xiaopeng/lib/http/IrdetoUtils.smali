.class public Lcom/xiaopeng/lib/http/IrdetoUtils;
.super Ljava/lang/Object;
.source "IrdetoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/http/IrdetoUtils$ResultListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IrdetoUtils"

.field public static final TOKEN_AC:[Ljava/lang/String;

.field public static final TOKEN_ALL:[Ljava/lang/String;

.field private static sIsInitSuccess:Z

.field private static sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "accessToken"

    const-string v1, "refreshToken"

    .line 19
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/lib/http/IrdetoUtils;->TOKEN_ALL:[Ljava/lang/String;

    .line 20
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/http/IrdetoUtils;->TOKEN_AC:[Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->getInstance()Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/http/IrdetoUtils;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asyncGetMCUSecurityKey(Lcom/xiaopeng/lib/http/ICallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/lib/http/ICallback<",
            "[B",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 191
    sget-object v0, Lcom/xiaopeng/lib/http/IrdetoUtils;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->asyncGetMCUSecurityKey(Lcom/xiaopeng/lib/http/ICallback;)V

    return-void
.end method

.method public static declared-synchronized asyncSaveToken([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/http/IrdetoUtils;

    monitor-enter v0

    .line 202
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/http/IrdetoUtils;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v1, p0, p1, p2}, Lcom/xiaopeng/lib/security/ISecurityModule;->asyncSaveToken([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized asyncSaveTokenWithListener([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/http/IrdetoUtils$ResultListener;)V
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/http/IrdetoUtils;

    monitor-enter v0

    .line 207
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/http/IrdetoUtils;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v1, p0, p1, p2}, Lcom/xiaopeng/lib/security/ISecurityModule;->asyncSaveTokenWithListener([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static base64UrlEncode([B)Ljava/lang/String;
    .locals 0

    .line 171
    invoke-static {p0}, Lcom/xiaopeng/lib/security/SecurityCommon;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildTokenData([Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    .line 135
    sget-object v0, Lcom/xiaopeng/lib/http/IrdetoUtils;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/lib/security/ISecurityModule;->buildTokenData([Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cryptoDecode(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    .line 155
    sget-object v0, Lcom/xiaopeng/lib/http/IrdetoUtils;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0, p1, p2}, Lcom/xiaopeng/lib/security/ISecurityModule;->cryptoDecode(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cryptoDecodeInByteArray(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1

    .line 167
    sget-object v0, Lcom/xiaopeng/lib/http/IrdetoUtils;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0, p1, p2}, Lcom/xiaopeng/lib/security/ISecurityModule;->cryptoDecodeInByteArray(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 94
    sget-object v0, Lcom/xiaopeng/lib/http/IrdetoUtils;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static deleteString(Ljava/lang/String;)V
    .locals 1

    .line 124
    sget-object v0, Lcom/xiaopeng/lib/http/IrdetoUtils;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->deleteString(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized destroy()V
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/http/IrdetoUtils;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/http/IrdetoUtils;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v1}, Lcom/xiaopeng/lib/security/ISecurityModule;->destroy()V

    const/4 v1, 0x0

    .line 74
    sput-boolean v1, Lcom/xiaopeng/lib/http/IrdetoUtils;->sIsInitSuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 84
    sget-object v0, Lcom/xiaopeng/lib/http/IrdetoUtils;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 104
    sget-object v0, Lcom/xiaopeng/lib/http/IrdetoUtils;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/http/IrdetoUtils;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/http/IrdetoUtils;->sIsInitSuccess:Z

    if-eqz v1, :cond_0

    const-string p0, "IrdetoUtils"

    const-string v1, "sSecureSDKManager has init"

    .line 39
    invoke-static {p0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit v0

    return-void

    .line 44
    :cond_0
    :try_start_1
    sget-object v1, Lcom/xiaopeng/lib/http/IrdetoUtils;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v1, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->init(Landroid/content/Context;)Lcom/xiaopeng/lib/security/ISecurityModule;

    const/4 p0, 0x1

    .line 45
    sput-boolean p0, Lcom/xiaopeng/lib/http/IrdetoUtils;->sIsInitSuccess:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 47
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isIrdetoInitSuccess()Z
    .locals 1

    .line 57
    sget-object v0, Lcom/xiaopeng/lib/http/IrdetoUtils;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0}, Lcom/xiaopeng/lib/security/ISecurityModule;->isInitAndIndivSuccess()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized isIrdetoInitSuccessWithoutIndiv()Z
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/http/IrdetoUtils;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/http/IrdetoUtils;->sIsInitSuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static parseByte2HexStr([B)Ljava/lang/String;
    .locals 0

    .line 139
    invoke-static {p0}, Lcom/xiaopeng/lib/security/SecurityCommon;->parseByte2HexStr([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseHexStr2Byte(Ljava/lang/String;)[B
    .locals 0

    .line 143
    invoke-static {p0}, Lcom/xiaopeng/lib/security/SecurityCommon;->parseHexStr2Byte(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 114
    sget-object v0, Lcom/xiaopeng/lib/http/IrdetoUtils;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/lib/security/ISecurityModule;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sign(Landroid/content/Context;Ljava/util/Map;J)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 182
    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/lib/http/Security;->sign(Landroid/content/Context;Ljava/util/Map;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
