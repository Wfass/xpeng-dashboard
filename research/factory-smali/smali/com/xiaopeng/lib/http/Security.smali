.class public Lcom/xiaopeng/lib/http/Security;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/http/Security$ResultListener;,
        Lcom/xiaopeng/lib/http/Security$EncryptionType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Security"

.field public static final TOKEN_AC:[Ljava/lang/String;

.field public static final TOKEN_ALL:[Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

.field private static sIsInitSuccess:Z

.field private static sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

.field private static sUseDepreciate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-string v0, "accessToken"

    const-string v1, "refreshToken"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/http/Security;->TOKEN_ALL:[Ljava/lang/String;

    .line 25
    const-string v0, "accessToken"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/http/Security;->TOKEN_AC:[Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    .line 66
    invoke-static {}, Lcom/xiaopeng/lib/security/SecurityModuleFactory;->getSecurityModule()Lcom/xiaopeng/lib/security/ISecurityModule;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/http/Security;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 68
    invoke-static {}, Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;->getInstance()Lcom/xiaopeng/lib/security/irdeto/IrdetoSecurity;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    .line 70
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
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

    .line 298
    .local p0, "callback":Lcom/xiaopeng/lib/http/ICallback;, "Lcom/xiaopeng/lib/http/ICallback<[BLjava/lang/String;>;"
    sget-boolean v0, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    if-eqz v0, :cond_0

    .line 299
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->asyncGetMCUSecurityKey(Lcom/xiaopeng/lib/http/ICallback;)V

    .line 300
    return-void

    .line 302
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->asyncGetMCUSecurityKey(Lcom/xiaopeng/lib/http/ICallback;)V

    .line 303
    return-void
.end method

.method public static declared-synchronized asyncSaveToken([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "ids"    # [Ljava/lang/String;
    .param p1, "token"    # [Ljava/lang/String;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    const-class v0, Lcom/xiaopeng/lib/http/Security;

    monitor-enter v0

    .line 348
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    if-eqz v1, :cond_0

    .line 349
    sget-object v1, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v1, p0, p1, p2}, Lcom/xiaopeng/lib/security/ISecurityModule;->asyncSaveToken([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    monitor-exit v0

    return-void

    .line 352
    :cond_0
    :try_start_1
    sget-object v1, Lcom/xiaopeng/lib/http/Security;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v1, p0, p1, p2}, Lcom/xiaopeng/lib/security/ISecurityModule;->asyncSaveToken([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    monitor-exit v0

    return-void

    .line 347
    .end local p0    # "ids":[Ljava/lang/String;
    .end local p1    # "token":[Ljava/lang/String;
    .end local p2    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized asyncSaveTokenWithListener([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/http/Security$ResultListener;)V
    .locals 2
    .param p0, "ids"    # [Ljava/lang/String;
    .param p1, "token"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaopeng/lib/http/Security$ResultListener;

    const-class v0, Lcom/xiaopeng/lib/http/Security;

    monitor-enter v0

    .line 357
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    if-eqz v1, :cond_0

    .line 358
    sget-object v1, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v1, p0, p1, p2}, Lcom/xiaopeng/lib/security/ISecurityModule;->asyncSaveTokenWithListener([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    monitor-exit v0

    return-void

    .line 361
    :cond_0
    :try_start_1
    sget-object v1, Lcom/xiaopeng/lib/http/Security;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v1, p0, p1, p2}, Lcom/xiaopeng/lib/security/ISecurityModule;->asyncSaveTokenWithListener([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    monitor-exit v0

    return-void

    .line 356
    .end local p0    # "ids":[Ljava/lang/String;
    .end local p1    # "token":[Ljava/lang/String;
    .end local p2    # "listener":Lcom/xiaopeng/lib/http/Security$ResultListener;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static base64UrlEncode([B)Ljava/lang/String;
    .locals 1
    .param p0, "simple"    # [B

    .line 276
    invoke-static {p0}, Lcom/xiaopeng/lib/security/SecurityCommon;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildTokenData([Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1
    .param p0, "ids"    # [Ljava/lang/String;
    .param p1, "data"    # [B

    .line 231
    sget-boolean v0, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    if-eqz v0, :cond_0

    .line 232
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/lib/security/ISecurityModule;->buildTokenData([Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 234
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/lib/security/ISecurityModule;->buildTokenData([Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cryptoDecode(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "Iv"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .line 254
    sget-boolean v0, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    if-eqz v0, :cond_0

    .line 255
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0, p1, p2}, Lcom/xiaopeng/lib/security/ISecurityModule;->cryptoDecode(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 257
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0, p1, p2}, Lcom/xiaopeng/lib/security/ISecurityModule;->cryptoDecode(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cryptoDecodeInByteArray(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "Iv"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .line 269
    sget-boolean v0, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    if-eqz v0, :cond_0

    .line 270
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0, p1, p2}, Lcom/xiaopeng/lib/security/ISecurityModule;->cryptoDecodeInByteArray(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0

    .line 272
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0, p1, p2}, Lcom/xiaopeng/lib/security/ISecurityModule;->cryptoDecodeInByteArray(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 176
    sget-boolean v0, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 179
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static deleteString(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 216
    sget-boolean v0, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    if-eqz v0, :cond_0

    .line 217
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->deleteString(Ljava/lang/String;)V

    .line 218
    return-void

    .line 220
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->deleteString(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public static declared-synchronized destroy()V
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/http/Security;

    monitor-enter v0

    .line 145
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/http/Security;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v1}, Lcom/xiaopeng/lib/security/ISecurityModule;->destroy()V

    .line 146
    const/4 v1, 0x0

    sput-boolean v1, Lcom/xiaopeng/lib/http/Security;->sIsInitSuccess:Z

    .line 147
    sget-object v1, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 149
    :try_start_1
    sget-object v1, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v1}, Lcom/xiaopeng/lib/security/ISecurityModule;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    .end local v1    # "e":Ljava/lang/Exception;
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

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 163
    sget-boolean v0, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 166
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getActiveEncryptionType()Lcom/xiaopeng/lib/http/Security$EncryptionType;
    .locals 1

    .line 81
    sget-boolean v0, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0}, Lcom/xiaopeng/lib/security/ISecurityModule;->getEncryptionType()Lcom/xiaopeng/lib/http/Security$EncryptionType;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0}, Lcom/xiaopeng/lib/security/ISecurityModule;->getEncryptionType()Lcom/xiaopeng/lib/http/Security$EncryptionType;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 189
    sget-boolean v0, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    if-eqz v0, :cond_0

    .line 190
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 192
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/xiaopeng/lib/http/Security;

    monitor-enter v0

    .line 93
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/http/Security;->sIsInitSuccess:Z

    if-eqz v1, :cond_0

    .line 94
    const-string v1, "Security"

    const-string v2, "sSecureSDKManager has init"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
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

    sput-boolean v1, Lcom/xiaopeng/lib/http/Security;->sIsInitSuccess:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :try_start_2
    sget-object v1, Lcom/xiaopeng/lib/http/Security;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v1, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->init(Landroid/content/Context;)Lcom/xiaopeng/lib/security/ISecurityModule;

    .line 103
    const/4 v1, 0x1

    sput-boolean v1, Lcom/xiaopeng/lib/http/Security;->sIsInitSuccess:Z

    .line 104
    sget-object v1, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    .line 106
    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v2, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->init(Landroid/content/Context;)Lcom/xiaopeng/lib/security/ISecurityModule;

    .line 107
    sget-object v2, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v2}, Lcom/xiaopeng/lib/security/ISecurityModule;->isInitAndIndivSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    .line 108
    sput-object v1, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    :cond_1
    goto :goto_0

    .line 110
    :catch_0
    move-exception v2

    .line 111
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    sput-object v1, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    .line 112
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    goto :goto_1

    .line 115
    :catch_1
    move-exception v1

    .line 116
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 118
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    monitor-exit v0

    return-void

    .line 92
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isInitSuccess()Z
    .locals 1

    .line 126
    sget-boolean v0, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0}, Lcom/xiaopeng/lib/security/ISecurityModule;->isInitAndIndivSuccess()Z

    move-result v0

    return v0

    .line 129
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0}, Lcom/xiaopeng/lib/security/ISecurityModule;->isInitAndIndivSuccess()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized isInitSuccessWithoutIndiv()Z
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/http/Security;

    monitor-enter v0

    .line 138
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/http/Security;->sIsInitSuccess:Z
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
    .locals 1
    .param p0, "buf"    # [B

    .line 238
    invoke-static {p0}, Lcom/xiaopeng/lib/security/SecurityCommon;->parseByte2HexStr([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseHexStr2Byte(Ljava/lang/String;)[B
    .locals 1
    .param p0, "hexStr"    # Ljava/lang/String;

    .line 242
    invoke-static {p0}, Lcom/xiaopeng/lib/security/SecurityCommon;->parseHexStr2Byte(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 202
    sget-boolean v0, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    if-eqz v0, :cond_0

    .line 203
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/lib/security/ISecurityModule;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void

    .line 206
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/lib/security/ISecurityModule;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public static sign(Landroid/content/Context;Ljava/util/Map;J)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "time"    # J
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

    .line 288
    .local p1, "kV":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/xiaopeng/lib/http/Security;->sortParameterAndValues(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "k":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xmart:appid:002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "B638C588DCAD7C1A43E6FB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static sortParameterAndValues(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 312
    .local p0, "parameterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 313
    const-string v0, ""

    return-object v0

    .line 316
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 318
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v1, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 321
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 324
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 326
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 328
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 329
    .local v4, "key":Ljava/lang/String;
    const-string v5, "app_id"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "timestamp"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "sign"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 330
    goto :goto_1

    .line 332
    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 334
    .local v5, "valArr":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "valArr":Ljava/lang/String;
    goto :goto_1

    .line 337
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static useIrdeto(Z)V
    .locals 0
    .param p0, "use"    # Z

    .line 73
    sput-boolean p0, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    .line 74
    return-void
.end method
