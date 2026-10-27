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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getHardwareId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/security/none/NoneSecurity;->mEncodingPsw:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/security/none/NoneSecurity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib/security/none/NoneSecurity$1;

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/lib/security/none/NoneSecurity;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/lib/security/none/NoneSecurity;
    .locals 1

    .line 283
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

    .line 111
    .local p1, "callback":Lcom/xiaopeng/lib/http/ICallback;, "Lcom/xiaopeng/lib/http/ICallback<[BLjava/lang/String;>;"
    return-void
.end method

.method public asyncSaveToken([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "token"    # [Ljava/lang/String;
    .param p3, "runnable"    # Ljava/lang/Runnable;

    .line 233
    new-instance v0, Lcom/xiaopeng/lib/security/none/NoneSecurity$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/lib/security/none/NoneSecurity$1;-><init>(Lcom/xiaopeng/lib/security/none/NoneSecurity;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    .line 245
    return-void
.end method

.method public asyncSaveTokenWithListener([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V
    .locals 1
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "token"    # [Ljava/lang/String;
    .param p3, "listener"    # Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;

    .line 249
    new-instance v0, Lcom/xiaopeng/lib/security/none/NoneSecurity$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/lib/security/none/NoneSecurity$2;-><init>(Lcom/xiaopeng/lib/security/none/NoneSecurity;[Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    .line 265
    return-void
.end method

.method public buildTokenData([Ljava/lang/String;[B)Ljava/lang/String;
    .locals 10
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "data"    # [B

    .line 183
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 185
    .local v0, "tokens":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 186
    .local v1, "extendedLength":I
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "extendedLength":I
    :goto_0
    array-length v4, p1

    const/4 v5, 0x2

    if-ge v1, v4, :cond_1

    .line 187
    aget-object v4, p1, v1

    invoke-virtual {p0, v4}, Lcom/xiaopeng/lib/security/none/NoneSecurity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, "token":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 189
    goto :goto_1

    .line 191
    :cond_0
    aget-object v6, p1, v1

    invoke-virtual {v0, v6, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    aget-object v6, p1, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 186
    .end local v4    # "token":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v1    # "i":I
    :cond_1
    if-lez v3, :cond_3

    .line 196
    array-length v1, p2

    add-int/2addr v1, v3

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 197
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    const/16 v4, 0x26

    .line 198
    .local v4, "andOpt":B
    const/16 v6, 0x3d

    .line 199
    .local v6, "equalOpt":B
    nop

    .local v2, "i":I
    :goto_2
    array-length v7, p1

    if-ge v2, v7, :cond_2

    .line 200
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v7

    aget-object v8, p1, v2

    const-string v9, "UTF-8"

    .line 201
    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 202
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v7

    aget-object v8, p1, v2

    .line 203
    invoke-virtual {v0, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 205
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    move-object p2, v2

    .line 207
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v4    # "andOpt":B
    .end local v6    # "equalOpt":B
    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-static {p2, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-direct {v1, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 208
    .end local v0    # "tokens":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "extendedLength":I
    :catch_0
    move-exception v0

    .line 209
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 212
    .end local v0    # "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public clearIndividualData()V
    .locals 0

    .line 84
    return-void
.end method

.method public cryptoDecode(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "Iv"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .line 217
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/lib/security/none/NoneSecurity;->cryptoDecodeInByteArray(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    .line 219
    .local v0, "result":[B
    if-eqz v0, :cond_0

    .line 220
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    .line 223
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public cryptoDecodeInByteArray(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "Iv"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .line 228
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p3, p1, v0}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->decryptStringWithKey([BLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 120
    return-object p1
.end method

.method public deleteString(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity;->mSecureStore:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 178
    return-void
.end method

.method public destroy()V
    .locals 0

    .line 103
    return-void
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 115
    return-object p1
.end method

.method public generateIndividualDataForServer()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 98
    const-string v0, ""

    return-object v0
.end method

.method public getEncryptionType()Lcom/xiaopeng/lib/http/Security$EncryptionType;
    .locals 1

    .line 46
    sget-object v0, Lcom/xiaopeng/lib/http/Security$EncryptionType;->NONE_ENCODING:Lcom/xiaopeng/lib/http/Security$EncryptionType;

    return-object v0
.end method

.method public getIndividualFlag()Ljava/lang/String;
    .locals 1

    .line 75
    const-string v0, ""

    return-object v0
.end method

.method public getIndividualRequestStr()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    const-string v0, ""

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;

    .line 125
    const-string v0, ""

    .line 126
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity;->mSecureStore:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "savedContent":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    return-object v0

    .line 130
    :cond_0
    const/4 v2, 0x0

    .line 132
    .local v2, "decryptResult":[B
    :try_start_0
    invoke-static {v1}, Lcom/xiaopeng/lib/security/SecurityCommon;->parseHexStr2Byte(Ljava/lang/String;)[B

    move-result-object v3

    .line 133
    .local v3, "sourceBytes":[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v5, Lcom/xiaopeng/lib/security/none/NoneSecurity;->mEncodingPsw:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "AES"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 134
    .local v4, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v5, "AES"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 135
    .local v5, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v8

    new-array v8, v8, [B

    invoke-direct {v7, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v5, v6, v4, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 136
    invoke-virtual {v5, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v6

    .line 139
    .end local v3    # "sourceBytes":[B
    .end local v4    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v5    # "cipher":Ljavax/crypto/Cipher;
    goto :goto_0

    .line 137
    :catch_0
    move-exception v3

    .line 138
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v2, :cond_2

    array-length v3, v2

    if-nez v3, :cond_1

    goto :goto_2

    .line 145
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v3

    .line 148
    goto :goto_1

    .line 146
    :catch_1
    move-exception v3

    .line 147
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_1
    return-object v0

    .line 141
    :cond_2
    :goto_2
    return-object v0
.end method

.method public individualWithData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public init(Landroid/content/Context;)Lcom/xiaopeng/lib/security/ISecurityModule;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    monitor-enter p0

    .line 52
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/xiaopeng/lib/security/none/NoneSecurity;->sIsInitSuccess:Z

    .line 53
    const-string v0, "NoneSecurity"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity;->mSecureStore:Landroid/content/SharedPreferences;

    .line 54
    monitor-exit p0

    .line 55
    return-object p0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initForIndividual(Landroid/content/Context;)Lcom/xiaopeng/lib/security/ISecurityModule;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    return-object p0
.end method

.method public isInitAndIndivSuccess()Z
    .locals 1

    .line 65
    sget-boolean v0, Lcom/xiaopeng/lib/security/none/NoneSecurity;->sIsInitSuccess:Z

    return v0
.end method

.method public isInitSuccess()Z
    .locals 1

    .line 70
    sget-boolean v0, Lcom/xiaopeng/lib/security/none/NoneSecurity;->sIsInitSuccess:Z

    return v0
.end method

.method public saveIndividualFlag()V
    .locals 0

    .line 80
    return-void
.end method

.method public saveMCUSecurityKey(Z)V
    .locals 0
    .param p1, "force"    # Z

    .line 107
    return-void
.end method

.method public saveToken([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "tokens"    # [Ljava/lang/String;

    .line 268
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 269
    const-string v0, "NoneSecurity"

    const-string v1, "Invalid tokens."

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    return-void

    .line 273
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 274
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/lib/security/none/NoneSecurity;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 155
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity;->mSecureStore:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 158
    return-void

    .line 162
    :cond_0
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/xiaopeng/lib/security/none/NoneSecurity;->mEncodingPsw:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 163
    .local v0, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 164
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v4

    new-array v4, v4, [B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 165
    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 166
    .local v2, "encoded":[B
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 167
    invoke-static {v2}, Lcom/xiaopeng/lib/security/SecurityCommon;->parseByte2HexStr([B)Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity;->mSecureStore:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, p1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v0    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "encoded":[B
    .end local v3    # "result":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 173
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
