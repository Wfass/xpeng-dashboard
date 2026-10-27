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

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity;->mUidListener:Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;

    .line 356
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

    .line 112
    .local p1, "callback":Lcom/xiaopeng/lib/http/ICallback;, "Lcom/xiaopeng/lib/http/ICallback<[BLjava/lang/String;>;"
    return-void
.end method

.method public asyncSaveToken(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "ids"    # [Ljava/lang/String;
    .param p3, "token"    # [Ljava/lang/String;
    .param p4, "runnable"    # Ljava/lang/Runnable;

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

    .line 293
    return-void
.end method

.method public asyncSaveToken([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "token"    # [Ljava/lang/String;
    .param p3, "runnable"    # Ljava/lang/Runnable;

    .line 242
    new-instance v0, Lcom/xiaopeng/lib/security/none/NoneSecurity$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/lib/security/none/NoneSecurity$1;-><init>(Lcom/xiaopeng/lib/security/none/NoneSecurity;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method

.method public asyncSaveTokenWithListener(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V
    .locals 7
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "ids"    # [Ljava/lang/String;
    .param p3, "token"    # [Ljava/lang/String;
    .param p4, "listener"    # Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;

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

    .line 316
    return-void
.end method

.method public asyncSaveTokenWithListener([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V
    .locals 1
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "token"    # [Ljava/lang/String;
    .param p3, "listener"    # Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;

    .line 258
    new-instance v0, Lcom/xiaopeng/lib/security/none/NoneSecurity$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/lib/security/none/NoneSecurity$2;-><init>(Lcom/xiaopeng/lib/security/none/NoneSecurity;[Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    .line 274
    return-void
.end method

.method public buildTokenData([Ljava/lang/String;[B)Ljava/lang/String;
    .locals 11
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "data"    # [B

    .line 184
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 186
    .local v0, "tokens":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 187
    .local v1, "extendedLength":I
    const/4 v2, 0x0

    .line 188
    .local v2, "uid":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity;->mUidListener:Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;

    if-eqz v3, :cond_0

    .line 189
    iget-object v3, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity;->mUidListener:Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;

    invoke-interface {v3}, Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;->getCurrentUid()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 191
    :cond_0
    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    .local v1, "i":I
    .local v4, "extendedLength":I
    :goto_0
    array-length v5, p1

    const/4 v6, 0x2

    if-ge v1, v5, :cond_3

    .line 192
    aget-object v5, p1, v1

    .line 193
    .local v5, "key":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 194
    aget-object v7, p1, v1

    invoke-static {v2, v7}, Lcom/xiaopeng/lib/security/SecurityCommon;->getUidIdsKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 196
    :cond_1
    invoke-virtual {p0, v5}, Lcom/xiaopeng/lib/security/none/NoneSecurity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 197
    .local v7, "token":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 198
    goto :goto_1

    .line 200
    :cond_2
    aget-object v8, p1, v1

    invoke-virtual {v0, v8, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    aget-object v8, p1, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v6, v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v6, v8

    add-int/2addr v4, v6

    .line 191
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "token":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    .end local v1    # "i":I
    :cond_3
    if-lez v4, :cond_5

    .line 205
    array-length v1, p2

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 206
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    const/16 v5, 0x26

    .line 207
    .local v5, "andOpt":B
    const/16 v7, 0x3d

    .line 208
    .local v7, "equalOpt":B
    nop

    .local v3, "i":I
    :goto_2
    array-length v8, p1

    if-ge v3, v8, :cond_4

    .line 209
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v8

    aget-object v9, p1, v3

    const-string v10, "UTF-8"

    .line 210
    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 211
    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v8

    aget-object v9, p1, v3

    .line 212
    invoke-virtual {v0, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 208
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 214
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    move-object p2, v3

    .line 216
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v5    # "andOpt":B
    .end local v7    # "equalOpt":B
    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-static {p2, v6}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    const-string v5, "UTF-8"

    invoke-direct {v1, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 217
    .end local v0    # "tokens":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "uid":Ljava/lang/String;
    .end local v4    # "extendedLength":I
    :catch_0
    move-exception v0

    .line 218
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    .end local v0    # "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public clearIndividualData()V
    .locals 0

    .line 85
    return-void
.end method

.method public cryptoDecode(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "Iv"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .line 226
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/lib/security/none/NoneSecurity;->cryptoDecodeInByteArray(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    .line 228
    .local v0, "result":[B
    if-eqz v0, :cond_0

    .line 229
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    .line 232
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public cryptoDecodeInByteArray(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "Iv"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .line 237
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p3, p1, v0}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->decryptStringWithKey([BLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 121
    return-object p1
.end method

.method public deleteString(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity;->mSecureStore:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 179
    return-void
.end method

.method public destroy()V
    .locals 0

    .line 104
    return-void
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 116
    return-object p1
.end method

.method public generateIndividualDataForServer()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
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

    .line 76
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

    .line 89
    const-string v0, ""

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;

    .line 126
    const-string v0, ""

    .line 127
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity;->mSecureStore:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "savedContent":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    return-object v0

    .line 131
    :cond_0
    const/4 v2, 0x0

    .line 133
    .local v2, "decryptResult":[B
    :try_start_0
    invoke-static {v1}, Lcom/xiaopeng/lib/security/SecurityCommon;->parseHexStr2Byte(Ljava/lang/String;)[B

    move-result-object v3

    .line 134
    .local v3, "sourceBytes":[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v5, Lcom/xiaopeng/lib/security/none/NoneSecurity;->mEncodingPsw:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "AES"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 135
    .local v4, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v5, "AES"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 136
    .local v5, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v8

    new-array v8, v8, [B

    invoke-direct {v7, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v5, v6, v4, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 137
    invoke-virtual {v5, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v6

    .line 140
    .end local v3    # "sourceBytes":[B
    .end local v4    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v5    # "cipher":Ljavax/crypto/Cipher;
    goto :goto_0

    .line 138
    :catch_0
    move-exception v3

    .line 139
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v2, :cond_2

    array-length v3, v2

    if-nez v3, :cond_1

    goto :goto_2

    .line 146
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v3

    .line 149
    goto :goto_1

    .line 147
    :catch_1
    move-exception v3

    .line 148
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_1
    return-object v0

    .line 142
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

    .line 94
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

    .line 52
    monitor-enter p0

    .line 53
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/xiaopeng/lib/security/none/NoneSecurity;->sIsInitSuccess:Z

    .line 54
    const-string v0, "NoneSecurity"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity;->mSecureStore:Landroid/content/SharedPreferences;

    .line 55
    monitor-exit p0

    .line 56
    return-object p0

    .line 55
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

    .line 61
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

    .line 81
    return-void
.end method

.method public saveMCUSecurityKey(Z)V
    .locals 0
    .param p1, "force"    # Z

    .line 108
    return-void
.end method

.method public saveToken(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "ids"    # [Ljava/lang/String;
    .param p3, "tokens"    # [Ljava/lang/String;

    .line 335
    array-length v0, p2

    array-length v1, p3

    if-eq v0, v1, :cond_0

    .line 336
    const-string v0, "NoneSecurity"

    const-string v1, "Invalid tokens."

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    return-void

    .line 340
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 341
    aget-object v1, p2, v0

    invoke-static {p1, v1}, Lcom/xiaopeng/lib/security/SecurityCommon;->getUidIdsKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "key":Ljava/lang/String;
    const-string v2, "NoneSecurity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveToken key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    aget-object v2, p3, v0

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/lib/security/none/NoneSecurity;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .end local v1    # "key":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public saveToken([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "tokens"    # [Ljava/lang/String;

    .line 324
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 325
    const-string v0, "NoneSecurity"

    const-string v1, "Invalid tokens."

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    return-void

    .line 329
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 330
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/lib/security/none/NoneSecurity;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 156
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity;->mSecureStore:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 159
    return-void

    .line 163
    :cond_0
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/xiaopeng/lib/security/none/NoneSecurity;->mEncodingPsw:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 164
    .local v0, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 165
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v4

    new-array v4, v4, [B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 166
    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 167
    .local v2, "encoded":[B
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 168
    invoke-static {v2}, Lcom/xiaopeng/lib/security/SecurityCommon;->parseByte2HexStr([B)Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/lib/security/none/NoneSecurity;->mSecureStore:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, p1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v0    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "encoded":[B
    .end local v3    # "result":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setUidListener(Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;)V
    .locals 0
    .param p1, "uidListener"    # Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;

    .line 321
    return-void
.end method
