.class public Lcom/xiaopeng/lib/security/none/NoneSecurity;
.super Ljava/lang/Object;
.source "NoneSecurity.java"

# interfaces
.implements Lcom/xiaopeng/lib/security/ISecurityModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/security/none/NoneSecurity$Holder;
    }
.end annotation


# static fields
.field private static final NONE_ENCODING_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final TAG:Ljava/lang/String; = "NoneSecurity"

.field private static mEncodingPsw:Ljava/lang/String;

.field private static sIsInitSuccess:Z


# instance fields
.field private mSecureStore:Landroid/content/SharedPreferences;

.field private mUidListener:Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getHardwareId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/security/none/NoneSecurity;->mEncodingPsw:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity;->mUidListener:Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/security/none/NoneSecurity$1;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/lib/security/none/NoneSecurity;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/lib/security/none/NoneSecurity;
    .locals 1

    .line 352
    invoke-static {}, Lcom/xiaopeng/lib/security/none/NoneSecurity$Holder;->access$100()Lcom/xiaopeng/lib/security/none/NoneSecurity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asyncGetMCUSecurityKey(Lcom/xiaopeng/lib/http/ICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/lib/http/ICallback<",
            "[B",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public asyncSaveToken(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 7

    .line 278
    new-instance v6, Lcom/xiaopeng/lib/security/none/NoneSecurity$3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/lib/security/none/NoneSecurity$3;-><init>(Lcom/xiaopeng/lib/security/none/NoneSecurity;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v6}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncSaveToken([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .line 242
    new-instance v0, Lcom/xiaopeng/lib/security/none/NoneSecurity$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/lib/security/none/NoneSecurity$1;-><init>(Lcom/xiaopeng/lib/security/none/NoneSecurity;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncSaveTokenWithListener(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V
    .locals 7

    .line 297
    new-instance v6, Lcom/xiaopeng/lib/security/none/NoneSecurity$4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/lib/security/none/NoneSecurity$4;-><init>(Lcom/xiaopeng/lib/security/none/NoneSecurity;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V

    invoke-static {v6}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public asyncSaveTokenWithListener([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V
    .locals 1

    .line 258
    new-instance v0, Lcom/xiaopeng/lib/security/none/NoneSecurity$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/lib/security/none/NoneSecurity$2;-><init>(Lcom/xiaopeng/lib/security/none/NoneSecurity;[Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public buildTokenData([Ljava/lang/String;[B)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    .line 184
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 188
    iget-object v2, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity;->mUidListener:Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;

    if-eqz v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity;->mUidListener:Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;

    invoke-interface {v2}, Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;->getCurrentUid()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 191
    :goto_1
    array-length v6, p1

    const/4 v7, 0x2

    if-ge v4, v6, :cond_3

    .line 192
    aget-object v6, p1, v4

    .line 193
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 194
    aget-object v6, p1, v4

    invoke-static {v2, v6}, Lcom/xiaopeng/lib/security/SecurityCommon;->getUidIdsKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 196
    :cond_1
    invoke-virtual {p0, v6}, Lcom/xiaopeng/lib/security/none/NoneSecurity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 197
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    .line 200
    :cond_2
    aget-object v8, p1, v4

    invoke-virtual {v1, v8, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    aget-object v8, p1, v4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v8, v6

    add-int/2addr v5, v8

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const-string v2, "UTF-8"

    if-lez v5, :cond_5

    .line 205
    :try_start_1
    array-length v4, p2

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    const/16 v4, 0x26

    const/16 v5, 0x3d

    .line 208
    :goto_3
    array-length v6, p1

    if-ge v3, v6, :cond_4

    .line 209
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v6

    aget-object v8, p1, v3

    .line 210
    invoke-virtual {v8, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 211
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v6

    aget-object v8, p1, v3

    .line 212
    invoke-virtual {v1, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 214
    :cond_4
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    .line 216
    :cond_5
    new-instance p1, Ljava/lang/String;

    invoke-static {p2, v7}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p2

    invoke-direct {p1, p2, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 218
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public clearIndividualData()V
    .locals 0

    return-void
.end method

.method public cryptoDecode(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 0

    .line 226
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/lib/security/none/NoneSecurity;->cryptoDecodeInByteArray(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 229
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public cryptoDecodeInByteArray(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 0

    .line 237
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p3, p1, p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->decryptStringWithKey([BLjava/lang/String;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public deleteString(Ljava/lang/String;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity;->mSecureStore:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public generateIndividualDataForServer()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getEncryptionType()Lcom/xiaopeng/lib/http/Security$EncryptionType;
    .locals 1

    .line 47
    sget-object v0, Lcom/xiaopeng/lib/http/Security$EncryptionType;->NONE_ENCODING:Lcom/xiaopeng/lib/http/Security$EncryptionType;

    return-object v0
.end method

.method public getIndividualFlag()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getIndividualRequestStr()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "AES"

    .line 127
    iget-object v1, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity;->mSecureStore:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x0

    .line 133
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/lib/security/SecurityCommon;->parseHexStr2Byte(Ljava/lang/String;)[B

    move-result-object p1

    .line 134
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v4, Lcom/xiaopeng/lib/security/none/NoneSecurity;->mEncodingPsw:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 135
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v4, 0x2

    .line 136
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v6

    new-array v6, v6, [B

    invoke-direct {v5, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v4, v3, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 137
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 139
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v1, :cond_2

    .line 141
    array-length p1, v1

    if-nez p1, :cond_1

    goto :goto_2

    .line 146
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p1, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 148
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v2

    :goto_1
    return-object p1

    :cond_2
    :goto_2
    return-object v2
.end method

.method public individualWithData(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public init(Landroid/content/Context;)Lcom/xiaopeng/lib/security/ISecurityModule;
    .locals 2

    .line 52
    monitor-enter p0

    const/4 v0, 0x1

    .line 53
    :try_start_0
    sput-boolean v0, Lcom/xiaopeng/lib/security/none/NoneSecurity;->sIsInitSuccess:Z

    const-string v0, "NoneSecurity"

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity;->mSecureStore:Landroid/content/SharedPreferences;

    .line 55
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public initForIndividual(Landroid/content/Context;)Lcom/xiaopeng/lib/security/ISecurityModule;
    .locals 0

    return-object p0
.end method

.method public isInitAndIndivSuccess()Z
    .locals 1

    .line 66
    sget-boolean v0, Lcom/xiaopeng/lib/security/none/NoneSecurity;->sIsInitSuccess:Z

    return v0
.end method

.method public isInitSuccess()Z
    .locals 1

    .line 71
    sget-boolean v0, Lcom/xiaopeng/lib/security/none/NoneSecurity;->sIsInitSuccess:Z

    return v0
.end method

.method public saveIndividualFlag()V
    .locals 0

    return-void
.end method

.method public saveMCUSecurityKey(Z)V
    .locals 0

    return-void
.end method

.method public saveToken(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .line 335
    array-length v0, p2

    array-length v1, p3

    const-string v2, "NoneSecurity"

    if-eq v0, v1, :cond_0

    const-string p1, "Invalid tokens."

    .line 336
    invoke-static {v2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 340
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 341
    aget-object v1, p2, v0

    invoke-static {p1, v1}, Lcom/xiaopeng/lib/security/SecurityCommon;->getUidIdsKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveToken key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    aget-object v3, p3, v0

    invoke-virtual {p0, v1, v3}, Lcom/xiaopeng/lib/security/none/NoneSecurity;->setString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public saveToken([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 324
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    const-string p1, "NoneSecurity"

    const-string p2, "Invalid tokens."

    .line 325
    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 329
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 330
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/lib/security/none/NoneSecurity;->setString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "AES"

    .line 156
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity;->mSecureStore:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    .line 163
    :cond_0
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Lcom/xiaopeng/lib/security/none/NoneSecurity;->mEncodingPsw:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 164
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v2, 0x1

    .line 165
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v4

    new-array v4, v4, [B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const-string v1, "UTF-8"

    .line 166
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    if-eqz p2, :cond_1

    .line 167
    array-length v0, p2

    if-lez v0, :cond_1

    .line 168
    invoke-static {p2}, Lcom/xiaopeng/lib/security/SecurityCommon;->parseByte2HexStr([B)Ljava/lang/String;

    move-result-object p2

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity;->mSecureStore:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 172
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setUidListener(Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;)V
    .locals 0

    return-void
.end method
