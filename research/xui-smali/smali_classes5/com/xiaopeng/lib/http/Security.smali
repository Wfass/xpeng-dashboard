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

    .line 299
    .local p0, "callback":Lcom/xiaopeng/lib/http/ICallback;, "Lcom/xiaopeng/lib/http/ICallback<[BLjava/lang/String;>;"
    sget-boolean v0, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    if-eqz v0, :cond_0

    .line 300
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->asyncGetMCUSecurityKey(Lcom/xiaopeng/lib/http/ICallback;)V

    .line 301
    return-void

    .line 303
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->asyncGetMCUSecurityKey(Lcom/xiaopeng/lib/http/ICallback;)V

    .line 304
    return-void
.end method

.method public static declared-synchronized asyncSaveToken(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "token"    # [Ljava/lang/String;
    .param p3, "runnable"    # Ljava/lang/Runnable;

    const-class v0, Lcom/xiaopeng/lib/http/Security;

    monitor-enter v0

    .line 371
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    if-eqz v1, :cond_0

    .line 372
    sget-object v1, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/xiaopeng/lib/security/ISecurityModule;->asyncSaveToken(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    monitor-exit v0

    return-void

    .line 375
    :cond_0
    :try_start_1
    sget-object v1, Lcom/xiaopeng/lib/http/Security;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/xiaopeng/lib/security/ISecurityModule;->asyncSaveToken(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    monitor-exit v0

    return-void

    .line 370
    .end local p0    # "uid":Ljava/lang/String;
    .end local p1    # "ids":[Ljava/lang/String;
    .end local p2    # "token":[Ljava/lang/String;
    .end local p3    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized asyncSaveToken([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "ids"    # [Ljava/lang/String;
    .param p1, "token"    # [Ljava/lang/String;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    const-class v0, Lcom/xiaopeng/lib/http/Security;

    monitor-enter v0

    .line 349
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    if-eqz v1, :cond_0

    .line 350
    sget-object v1, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v1, p0, p1, p2}, Lcom/xiaopeng/lib/security/ISecurityModule;->asyncSaveToken([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    monitor-exit v0

    return-void

    .line 353
    :cond_0
    :try_start_1
    sget-object v1, Lcom/xiaopeng/lib/http/Security;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v1, p0, p1, p2}, Lcom/xiaopeng/lib/security/ISecurityModule;->asyncSaveToken([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    monitor-exit v0

    return-void

    .line 348
    .end local p0    # "ids":[Ljava/lang/String;
    .end local p1    # "token":[Ljava/lang/String;
    .end local p2    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized asyncSaveTokenWithListener(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/http/Security$ResultListener;)V
    .locals 2
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "token"    # [Ljava/lang/String;
    .param p3, "listener"    # Lcom/xiaopeng/lib/http/Security$ResultListener;

    const-class v0, Lcom/xiaopeng/lib/http/Security;

    monitor-enter v0

    .line 380
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    if-eqz v1, :cond_0

    .line 381
    sget-object v1, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/xiaopeng/lib/security/ISecurityModule;->asyncSaveTokenWithListener(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    monitor-exit v0

    return-void

    .line 384
    :cond_0
    :try_start_1
    sget-object v1, Lcom/xiaopeng/lib/http/Security;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/xiaopeng/lib/security/ISecurityModule;->asyncSaveTokenWithListener(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    monitor-exit v0

    return-void

    .line 379
    .end local p0    # "uid":Ljava/lang/String;
    .end local p1    # "ids":[Ljava/lang/String;
    .end local p2    # "token":[Ljava/lang/String;
    .end local p3    # "listener":Lcom/xiaopeng/lib/http/Security$ResultListener;
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

    .line 358
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    if-eqz v1, :cond_0

    .line 359
    sget-object v1, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v1, p0, p1, p2}, Lcom/xiaopeng/lib/security/ISecurityModule;->asyncSaveTokenWithListener([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    monitor-exit v0

    return-void

    .line 362
    :cond_0
    :try_start_1
    sget-object v1, Lcom/xiaopeng/lib/http/Security;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v1, p0, p1, p2}, Lcom/xiaopeng/lib/security/ISecurityModule;->asyncSaveTokenWithListener([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    monitor-exit v0

    return-void

    .line 357
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

    .line 277
    invoke-static {p0}, Lcom/xiaopeng/lib/security/SecurityCommon;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildTokenData([Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1
    .param p0, "ids"    # [Ljava/lang/String;
    .param p1, "data"    # [B

    .line 232
    sget-boolean v0, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    if-eqz v0, :cond_0

    .line 233
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/lib/security/ISecurityModule;->buildTokenData([Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 235
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

    .line 255
    sget-boolean v0, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    if-eqz v0, :cond_0

    .line 256
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0, p1, p2}, Lcom/xiaopeng/lib/security/ISecurityModule;->cryptoDecode(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 258
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

    .line 270
    sget-boolean v0, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    if-eqz v0, :cond_0

    .line 271
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0, p1, p2}, Lcom/xiaopeng/lib/security/ISecurityModule;->cryptoDecodeInByteArray(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0

    .line 273
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0, p1, p2}, Lcom/xiaopeng/lib/security/ISecurityModule;->cryptoDecodeInByteArray(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 177
    sget-boolean v0, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 180
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static deleteString(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 217
    sget-boolean v0, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    if-eqz v0, :cond_0

    .line 218
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->deleteString(Ljava/lang/String;)V

    .line 219
    return-void

    .line 221
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->deleteString(Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public static declared-synchronized destroy()V
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/http/Security;

    monitor-enter v0

    .line 146
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/http/Security;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v1}, Lcom/xiaopeng/lib/security/ISecurityModule;->destroy()V

    .line 147
    const/4 v1, 0x0

    sput-boolean v1, Lcom/xiaopeng/lib/http/Security;->sIsInitSuccess:Z

    .line 148
    sget-object v1, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 150
    :try_start_1
    sget-object v1, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v1}, Lcom/xiaopeng/lib/security/ISecurityModule;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    goto :goto_0

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 164
    sget-boolean v0, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    if-eqz v0, :cond_0

    .line 165
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 167
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getActiveEncryptionType()Lcom/xiaopeng/lib/http/Security$EncryptionType;
    .locals 1

    .line 82
    sget-boolean v0, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0}, Lcom/xiaopeng/lib/security/ISecurityModule;->getEncryptionType()Lcom/xiaopeng/lib/http/Security$EncryptionType;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0}, Lcom/xiaopeng/lib/security/ISecurityModule;->getEncryptionType()Lcom/xiaopeng/lib/http/Security$EncryptionType;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 190
    sget-boolean v0, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 193
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

    .line 94
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/lib/http/Security;->sIsInitSuccess:Z

    if-eqz v1, :cond_0

    .line 95
    const-string v1, "Security"

    const-string v2, "sSecureSDKManager has init"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit v0

    return-void

    .line 99
    :cond_0
    :try_start_1
    sput-object p0, Lcom/xiaopeng/lib/http/Security;->sContext:Landroid/content/Context;

    .line 101
    const/4 v1, 0x0

    sput-boolean v1, Lcom/xiaopeng/lib/http/Security;->sIsInitSuccess:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :try_start_2
    sget-object v1, Lcom/xiaopeng/lib/http/Security;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v1, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->init(Landroid/content/Context;)Lcom/xiaopeng/lib/security/ISecurityModule;

    .line 104
    const/4 v1, 0x1

    sput-boolean v1, Lcom/xiaopeng/lib/http/Security;->sIsInitSuccess:Z

    .line 105
    sget-object v1, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    .line 107
    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v2, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->init(Landroid/content/Context;)Lcom/xiaopeng/lib/security/ISecurityModule;

    .line 108
    sget-object v2, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v2}, Lcom/xiaopeng/lib/security/ISecurityModule;->isInitAndIndivSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    .line 109
    sput-object v1, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    :cond_1
    goto :goto_0

    .line 111
    :catch_0
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    sput-object v1, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    .line 113
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 118
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    goto :goto_1

    .line 116
    :catch_1
    move-exception v1

    .line 117
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 119
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    monitor-exit v0

    return-void

    .line 93
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isInitSuccess()Z
    .locals 1

    .line 127
    sget-boolean v0, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0}, Lcom/xiaopeng/lib/security/ISecurityModule;->isInitAndIndivSuccess()Z

    move-result v0

    return v0

    .line 130
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

    .line 139
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

    .line 239
    invoke-static {p0}, Lcom/xiaopeng/lib/security/SecurityCommon;->parseByte2HexStr([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseHexStr2Byte(Ljava/lang/String;)[B
    .locals 1
    .param p0, "hexStr"    # Ljava/lang/String;

    .line 243
    invoke-static {p0}, Lcom/xiaopeng/lib/security/SecurityCommon;->parseHexStr2Byte(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 203
    sget-boolean v0, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    if-eqz v0, :cond_0

    .line 204
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/lib/security/ISecurityModule;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void

    .line 207
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/lib/security/ISecurityModule;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public static setUidListener(Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;)V
    .locals 1
    .param p0, "uidListener"    # Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;

    .line 395
    sget-boolean v0, Lcom/xiaopeng/lib/http/Security;->sUseDepreciate:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    if-eqz v0, :cond_0

    .line 396
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sDepreciateUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->setUidListener(Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;)V

    goto :goto_0

    .line 398
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/http/Security;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->setUidListener(Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;)V

    .line 400
    :goto_0
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

    .line 289
    .local p1, "kV":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/xiaopeng/lib/http/Security;->sortParameterAndValues(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 290
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

    .line 313
    .local p0, "parameterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 314
    const-string v0, ""

    return-object v0

    .line 317
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 319
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 321
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

    .line 322
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 325
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 327
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 329
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

    .line 330
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

    .line 331
    goto :goto_1

    .line 333
    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 335
    .local v5, "valArr":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "valArr":Ljava/lang/String;
    goto :goto_1

    .line 338
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
