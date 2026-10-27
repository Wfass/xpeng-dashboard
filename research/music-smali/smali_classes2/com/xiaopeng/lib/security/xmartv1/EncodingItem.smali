.class public final Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;
.super Ljava/lang/Object;
.source "EncodingItem.java"


# static fields
.field private static final FIXED_DATA_LENGTH:I = 0xf

.field private static final TAG:Ljava/lang/String; = "EncodingItem"

.field private static sDeviceId:[B

.field private static final sEmptyItem:Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;

.field private static final sKeyAlias:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMagicNumber:[B

.field private static final sSecureRandom:Ljava/security/SecureRandom;

.field private static sVersion:B


# instance fields
.field private mAesIv:[B

.field private mEncodedContent:Ljava/lang/String;

.field private mKeyIndex:B

.field private mNonce:[B

.field private mRawContent:[B

.field private mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "XP"

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->sMagicNumber:[B

    .line 29
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->sSecureRandom:Ljava/security/SecureRandom;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->sKeyAlias:Ljava/util/ArrayList;

    .line 34
    sget-byte v0, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->ALGORITHM_DEFAULT_REVISION:B

    sput-byte v0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->sVersion:B

    const/4 v0, 0x0

    .line 45
    :goto_0
    sget v1, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_NUM:I

    if-ge v0, v1, :cond_0

    .line 46
    sget-object v1, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->sKeyAlias:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getHardwareId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->sDeviceId:[B

    .line 49
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->empty()Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->sEmptyItem:Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([B)Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;
    .locals 5

    const/4 v0, 0x2

    .line 80
    invoke-static {p0, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    .line 81
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->sMagicNumber:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    const-string v3, "EncodingItem"

    if-ne v1, v2, :cond_4

    .line 83
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->sMagicNumber:[B

    const/4 v4, 0x1

    aget-byte v2, v2, v4

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 88
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    sget-byte v2, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->sVersion:B

    if-eq v1, v2, :cond_1

    const-string p0, "Wrong version number!"

    .line 89
    invoke-static {v3, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object p0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->sEmptyItem:Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;

    return-object p0

    .line 93
    :cond_1
    new-instance v1, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;

    invoke-direct {v1}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;-><init>()V

    .line 94
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, v1, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mKeyIndex:B

    .line 95
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-lez v2, :cond_2

    .line 98
    new-array v2, v2, [B

    .line 99
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 102
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 103
    new-array v2, v2, [B

    iput-object v2, v1, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mNonce:[B

    .line 104
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mTimestamp:J

    .line 105
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 106
    new-array v2, v2, [B

    iput-object v2, v1, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mAesIv:[B

    .line 107
    iget-object v2, v1, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mAesIv:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 109
    array-length v0, p0

    invoke-direct {v1}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->getBasicLength()I

    move-result v2

    sub-int/2addr v0, v2

    .line 110
    invoke-direct {v1}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->getBasicLength()I

    move-result v2

    invoke-static {p0, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 112
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->sKeyAlias:Ljava/util/ArrayList;

    iget-byte v2, v1, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mKeyIndex:B

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mAesIv:[B

    invoke-static {p0, v0, v2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->decryptWithByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/String;[B)[B

    move-result-object p0

    if-eqz p0, :cond_3

    .line 114
    array-length v0, p0

    if-lez v0, :cond_3

    .line 115
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 116
    iget-object v2, v1, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mNonce:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 118
    array-length p0, p0

    iget-object v2, v1, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mNonce:[B

    array-length v2, v2

    sub-int/2addr p0, v2

    .line 119
    new-array p0, p0, [B

    iput-object p0, v1, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mRawContent:[B

    .line 120
    iget-object p0, v1, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mRawContent:[B

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v1

    .line 124
    :cond_3
    sget-object p0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->sEmptyItem:Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;

    return-object p0

    :cond_4
    :goto_0
    const-string p0, "Wrong magic number!"

    .line 84
    invoke-static {v3, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget-object p0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->sEmptyItem:Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;

    return-object p0
.end method

.method public static empty()Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;
    .locals 2

    .line 60
    new-instance v0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;

    invoke-direct {v0}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;-><init>()V

    const/4 v1, 0x0

    .line 61
    new-array v1, v1, [B

    iput-object v1, v0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mRawContent:[B

    const-string v1, ""

    .line 62
    iput-object v1, v0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mEncodedContent:Ljava/lang/String;

    const/4 v1, -0x1

    .line 63
    iput-byte v1, v0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mKeyIndex:B

    return-object v0
.end method

.method public static encode([B)Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;
    .locals 1

    .line 129
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->pickOneRandomKey()B

    move-result v0

    invoke-static {p0, v0}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->encode([BI)Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;

    move-result-object p0

    return-object p0
.end method

.method public static encode([BI)Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;
    .locals 3

    if-nez p0, :cond_0

    .line 134
    array-length v0, p0

    if-nez v0, :cond_0

    .line 135
    sget-object p0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->sEmptyItem:Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;

    return-object p0

    :cond_0
    if-ltz p1, :cond_2

    .line 138
    sget v0, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_NUM:I

    if-gt p1, v0, :cond_2

    .line 142
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 144
    sget v1, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->ALGORITHM_IV_LENGTH:I

    new-array v1, v1, [B

    .line 145
    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->sSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 147
    new-instance v2, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;

    invoke-direct {v2}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;-><init>()V

    .line 148
    iput-object v0, v2, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mNonce:[B

    .line 149
    iput-object v1, v2, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mAesIv:[B

    int-to-byte p1, p1

    .line 150
    iput-byte p1, v2, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mKeyIndex:B

    .line 151
    iput-object p0, v2, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mRawContent:[B

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    iput-wide p0, v2, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mTimestamp:J

    .line 154
    invoke-direct {v2}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->encodeInternal()Z

    move-result p0

    if-nez p0, :cond_1

    .line 155
    sget-object p0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->sEmptyItem:Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;

    return-object p0

    :cond_1
    return-object v2

    .line 139
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Wrong security key index!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private encodeInternal()Z
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mRawContent:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mNonce:[B

    array-length v1, v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mNonce:[B

    .line 200
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mRawContent:[B

    .line 201
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 204
    sget-object v1, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->sKeyAlias:Ljava/util/ArrayList;

    iget-byte v2, p0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mKeyIndex:B

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mAesIv:[B

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->encryptString([BLjava/lang/String;[B)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 206
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->getBasicLength()I

    move-result v1

    array-length v2, v0

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->sMagicNumber:[B

    .line 212
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-byte v2, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->sVersion:B

    .line 213
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-byte v2, p0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mKeyIndex:B

    .line 214
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->sDeviceId:[B

    array-length v2, v2

    int-to-byte v2, v2

    .line 215
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->sDeviceId:[B

    .line 216
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mNonce:[B

    array-length v2, v2

    int-to-byte v2, v2

    .line 217
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mTimestamp:J

    .line 218
    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mAesIv:[B

    array-length v2, v2

    int-to-byte v2, v2

    .line 219
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mAesIv:[B

    .line 220
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 221
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x2

    .line 223
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mEncodedContent:Ljava/lang/String;

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const-string v0, "EncodingItem"

    const-string v1, "Failed to encrypt the string."

    .line 207
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private getBasicLength()I
    .locals 2

    .line 231
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->sDeviceId:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0xf

    iget-object v1, p0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mAesIv:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getGeneralKeyAlias()Ljava/lang/String;
    .locals 2

    .line 72
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->sKeyAlias:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static pickOneRandomKey()B
    .locals 2

    .line 235
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->sSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    and-int/lit8 v0, v0, 0x7f

    sget v1, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_NUM:I

    rem-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public static resetRandomSeed()V
    .locals 3

    .line 53
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->sSecureRandom:Ljava/security/SecureRandom;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/security/SecureRandom;->setSeed(J)V

    return-void
.end method


# virtual methods
.method public encodedString()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mEncodedContent:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mRawContent:[B

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public nonce()[B
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mNonce:[B

    return-object v0
.end method

.method public rawContent()[B
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mRawContent:[B

    return-object v0
.end method

.method public rawContentString()Ljava/lang/String;
    .locals 4

    .line 181
    invoke-virtual {p0}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 186
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mRawContent:[B

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "EncodingItem"

    const-string v2, "Failed to convert raw content to string!"

    .line 188
    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public timestamp()J
    .locals 2

    .line 166
    iget-wide v0, p0, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->mTimestamp:J

    return-wide v0
.end method
