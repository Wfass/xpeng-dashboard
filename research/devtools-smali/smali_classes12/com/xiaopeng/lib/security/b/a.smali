.class public Lcom/xiaopeng/lib/security/b/a;
.super Ljava/lang/Object;
.source "NoneSecurity.java"

# interfaces
.implements Lcom/xiaopeng/lib/security/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/security/b/a$a;
    }
.end annotation


# static fields
.field private static Vv:Ljava/lang/String;

.field private static pn:Z


# instance fields
.field private Vu:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    invoke-static {}, Lcom/xiaopeng/lib/utils/c/b;->getHardwareId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/d;->dJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/security/b/a;->Vv:Ljava/lang/String;

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

.method synthetic constructor <init>(Lcom/xiaopeng/lib/security/b/a$1;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/lib/security/b/a;-><init>()V

    return-void
.end method

.method public static or()Lcom/xiaopeng/lib/security/b/a;
    .locals 1

    .line 283
    invoke-static {}, Lcom/xiaopeng/lib/security/b/a$a;->os()Lcom/xiaopeng/lib/security/b/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a([Ljava/lang/String;[B)Ljava/lang/String;
    .locals 8

    .line 183
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 185
    nop

    .line 186
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    array-length v4, p1

    const/4 v5, 0x2

    if-ge v2, v4, :cond_1

    .line 187
    aget-object v4, p1, v2

    invoke-virtual {p0, v4}, Lcom/xiaopeng/lib/security/b/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 188
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 189
    goto :goto_1

    .line 191
    :cond_0
    aget-object v6, p1, v2

    invoke-virtual {v0, v6, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    aget-object v6, p1, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v5, v4

    add-int/2addr v3, v5

    .line 186
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    :cond_1
    if-lez v3, :cond_3

    .line 196
    array-length v2, p2

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 197
    const/16 v2, 0x26

    .line 198
    const/16 v3, 0x3d

    .line 199
    :goto_2
    array-length v4, p1

    if-ge v1, v4, :cond_2

    .line 200
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    aget-object v6, p1, v1

    const-string v7, "UTF-8"

    .line 201
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 202
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    aget-object v6, p1, v1

    .line 203
    invoke-virtual {v0, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 205
    :cond_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    .line 207
    :cond_3
    new-instance p1, Ljava/lang/String;

    invoke-static {p2, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p2

    const-string v0, "UTF-8"

    invoke-direct {p1, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 208
    :catch_0
    move-exception p1

    .line 209
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 212
    const/4 p1, 0x0

    return-object p1
.end method

.method public aP(Z)V
    .locals 0

    .line 107
    return-void
.end method

.method public an(Landroid/content/Context;)Lcom/xiaopeng/lib/security/a;
    .locals 2
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
    sput-boolean v0, Lcom/xiaopeng/lib/security/b/a;->pn:Z

    .line 53
    const-string v0, "NoneSecurity"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/security/b/a;->Vu:Landroid/content/SharedPreferences;

    .line 54
    monitor-exit p0

    .line 55
    return-object p0

    .line 54
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ao(Landroid/content/Context;)Lcom/xiaopeng/lib/security/a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    return-object p0
.end method

.method public b([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 268
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 269
    const-string p1, "NoneSecurity"

    const-string p2, "Invalid tokens."

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    return-void

    .line 273
    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 274
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/lib/security/b/a;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_1
    return-void
.end method

.method public dE(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    const/4 p1, 0x1

    return p1
.end method

.method public destroy()V
    .locals 0

    .line 103
    return-void
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 125
    const-string v0, ""

    .line 126
    iget-object v1, p0, Lcom/xiaopeng/lib/security/b/a;->Vu:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    return-object v0

    .line 130
    :cond_0
    const/4 v1, 0x0

    .line 132
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/lib/security/b;->dF(Ljava/lang/String;)[B

    move-result-object p1

    .line 133
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Lcom/xiaopeng/lib/security/b/a;->Vv:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 134
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 135
    const/4 v4, 0x2

    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v6

    new-array v6, v6, [B

    invoke-direct {v5, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v3, v4, v2, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 136
    invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_0

    .line 137
    :catch_0
    move-exception p1

    .line 138
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_2

    .line 145
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    nop

    .line 150
    move-object v0, v1

    goto :goto_1

    .line 146
    :catch_1
    move-exception p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    :goto_1
    return-object v0

    .line 141
    :cond_2
    :goto_2
    return-object v0
.end method

.method public of()Lcom/xiaopeng/lib/http/Security$EncryptionType;
    .locals 1

    .line 46
    sget-object v0, Lcom/xiaopeng/lib/http/Security$EncryptionType;->US:Lcom/xiaopeng/lib/http/Security$EncryptionType;

    return-object v0
.end method

.method public og()Z
    .locals 1

    .line 65
    sget-boolean v0, Lcom/xiaopeng/lib/security/b/a;->pn:Z

    return v0
.end method

.method public oh()V
    .locals 0

    .line 80
    return-void
.end method

.method public oi()V
    .locals 0

    .line 84
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 155
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/lib/security/b/a;->Vu:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 158
    return-void

    .line 162
    :cond_0
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/xiaopeng/lib/security/b/a;->Vv:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 163
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 164
    const/4 v2, 0x1

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v4

    new-array v4, v4, [B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 165
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    .line 166
    if-eqz p2, :cond_1

    array-length v0, p2

    if-lez v0, :cond_1

    .line 167
    invoke-static {p2}, Lcom/xiaopeng/lib/security/b;->D([B)Ljava/lang/String;

    move-result-object p2

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/lib/security/b/a;->Vu:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_1
    goto :goto_0

    .line 170
    :catch_0
    move-exception p1

    .line 171
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 173
    :goto_0
    return-void
.end method
