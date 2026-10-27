.class public Landroid/pso/XpPso;
.super Landroid/pso/PsoAKS;

# interfaces
.implements Landroid/pso/PsoCrypto;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/pso/XpPso$E28OtaPackhead;,
        Landroid/pso/XpPso$E28decKeybin;,
        Landroid/pso/XpPso$OtaEncBinInfo;,
        Landroid/pso/XpPso$PSOencKeybinData;,
        Landroid/pso/XpPso$PSOdecKeybin;
    }
.end annotation


# static fields
.field private static c:I

.field public static isBleService:Z

.field public static logSW:Z

.field public static stop:Z


# instance fields
.field b:Ljavax/crypto/SecretKey;

.field private d:F

.field private e:F

.field private f:[J

.field private g:[J

.field private h:[J

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/pso/XpPso;->stop:Z

    sput-boolean v0, Landroid/pso/XpPso;->isBleService:Z

    const/4 v0, 0x1

    sput-boolean v0, Landroid/pso/XpPso;->logSW:Z

    const/16 v0, 0x1c

    sput v0, Landroid/pso/XpPso;->c:I

    const-string v0, "XpPso"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Landroid/pso/PsoAKS;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/pso/XpPso;->d:F

    iput v0, p0, Landroid/pso/XpPso;->e:F

    const/4 v0, 0x1

    new-array v1, v0, [J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    iput-object v1, p0, Landroid/pso/XpPso;->f:[J

    new-array v1, v0, [J

    aput-wide v2, v1, v4

    iput-object v1, p0, Landroid/pso/XpPso;->g:[J

    new-array v0, v0, [J

    aput-wide v2, v0, v4

    iput-object v0, p0, Landroid/pso/XpPso;->h:[J

    iput-boolean v4, p0, Landroid/pso/XpPso;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/pso/XpPso;->b:Ljavax/crypto/SecretKey;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    iget-object p1, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/pso/Diagnosis;->init(Landroid/content/Context;)V

    return-void
.end method

.method private native DoXor(I[B)[B
.end method

.method private native GetUDSSecurityLuaEncData()[B
.end method

.method private native KeyBinProcess(Ljava/lang/String;)Landroid/pso/XpPso$E28decKeybin;
.end method

.method public static PemStringFormat2der(Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\r"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    :goto_0
    const/16 v1, 0x2d

    const/4 v2, 0x0

    if-ltz v0, :cond_1

    aget-byte v3, p0, v0

    if-ne v3, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    array-length v3, p0

    div-int/lit8 v3, v3, 0x2

    :goto_2
    array-length v4, p0

    if-ge v3, v4, :cond_3

    aget-byte v4, p0, v3

    if-ne v4, v1, :cond_2

    add-int/lit8 v1, v3, -0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_3
    if-le v1, v0, :cond_4

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    new-array v3, v1, [B

    invoke-static {p0, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Landroid/pso/Base64Util;->decode([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static PemStringFormat2der([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Landroid/pso/XpPso;->PemStringFormat2der(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    const-string v0, "HmacMD5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "nnnnaks"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p2, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    const-string p2, "AKa"

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/pso/XpPso;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    move v1, v0

    :goto_0
    const/16 v2, 0x64

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, p2}, Landroid/pso/XpPso;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x63

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/pso/XpPso;->genAliasRootKey()Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p2}, Landroid/pso/XpPso;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    const-wide/16 v2, 0x5

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    invoke-direct {p0, v0}, Landroid/pso/XpPso;->getAesSpecKeyVector(I)[B

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0}, Landroid/pso/XpPso;->a(Ljava/lang/String;[B[B)[B

    move-result-object p1

    invoke-static {p1}, Landroid/pso/Base64Util;->encodeToString([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/security/UnrecoverableKeyException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljavax/crypto/ShortBufferException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :catch_6
    move-exception p1

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :catch_7
    move-exception p1

    invoke-virtual {p1}, Ljava/security/KeyStoreException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :catch_8
    move-exception p1

    invoke-virtual {p1}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :catch_9
    move-exception p1

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    new-instance p2, Landroid/pso/XpPsoException;

    iget-object v0, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get Alias failed ...\r\n("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x7

    invoke-direct {p2, v0, p1, v1}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    move-object/from16 v12, p2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, -0x6

    if-eqz v1, :cond_7

    invoke-direct/range {p0 .. p1}, Landroid/pso/XpPso;->d(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    move-wide v7, v3

    goto :goto_0

    :cond_0
    move-wide v7, v5

    :goto_0
    invoke-direct {v11, v0, v7, v8}, Landroid/pso/XpPso;->getOtaEncBinInfo(Ljava/lang/String;J)Landroid/pso/XpPso$OtaEncBinInfo;

    move-result-object v13

    const/4 v1, -0x1

    if-eqz v13, :cond_6

    iget-wide v7, v13, Landroid/pso/XpPso$OtaEncBinInfo;->dstBinLen:J

    cmp-long v7, v7, v5

    if-lez v7, :cond_6

    iget-object v7, v11, Landroid/pso/XpPso;->h:[J

    const/4 v14, 0x0

    aput-wide v3, v7, v14

    iget v7, v13, Landroid/pso/XpPso$OtaEncBinInfo;->BINType:I

    const/4 v8, 0x2

    if-le v7, v8, :cond_1

    move/from16 v7, p3

    move v9, v8

    goto :goto_1

    :cond_1
    iget v7, v13, Landroid/pso/XpPso$OtaEncBinInfo;->BINType:I

    move v9, v7

    move/from16 v7, p3

    :goto_1
    if-ne v7, v8, :cond_2

    const-string v7, "CBC"

    const-string v8, "NoPadding"

    invoke-virtual {v11, v9, v7, v8}, Landroid/pso/XpPso;->a(ILjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    :goto_2
    move-object v8, v7

    goto :goto_3

    :cond_2
    invoke-virtual {v11, v9}, Landroid/pso/XpPso;->a(I)Ljavax/crypto/Cipher;

    move-result-object v7

    goto :goto_2

    :goto_3
    invoke-direct/range {p0 .. p0}, Landroid/pso/XpPso;->g()Ljava/security/PublicKey;

    move-result-object v15

    if-eqz v15, :cond_5

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v16

    cmp-long v5, v16, v5

    if-lez v5, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-wide v5, v13, Landroid/pso/XpPso$OtaEncBinInfo;->dstBinOffset:J

    invoke-virtual {v9, v5, v6}, Ljava/io/InputStream;->skip(J)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, v11, Landroid/pso/XpPso;->h:[J

    iget-wide v1, v13, Landroid/pso/XpPso$OtaEncBinInfo;->dstBinOffset:J

    add-long/2addr v1, v3

    aput-wide v1, v0, v14

    invoke-virtual {v11, v15}, Landroid/pso/XpPso;->a(Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v0

    iget-wide v5, v13, Landroid/pso/XpPso$OtaEncBinInfo;->dstBinLen:J

    iget-wide v1, v13, Landroid/pso/XpPso$OtaEncBinInfo;->dstBinOffset:J

    add-long/2addr v3, v1

    long-to-int v3, v3

    iget-object v4, v11, Landroid/pso/XpPso;->h:[J

    move-object v1, v11

    move-object v2, v13

    move/from16 v16, v3

    move-object/from16 v17, v4

    move-wide v3, v5

    move/from16 v5, v16

    move-object v6, v9

    move-object/from16 v18, v7

    move-object v14, v9

    move-object v9, v0

    move-object/from16 v19, v10

    move-object/from16 v10, v17

    invoke-virtual/range {v1 .. v10}, Landroid/pso/XpPso;->a(Landroid/pso/XpPso$OtaEncBinInfo;JILjava/io/InputStream;Ljava/io/OutputStream;Ljavax/crypto/Cipher;Ljava/security/Signature;[J)Z

    :try_start_2
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    move-object/from16 v0, v18

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    invoke-virtual {v11, v15}, Landroid/pso/XpPso;->a(Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v5

    iget-wide v3, v13, Landroid/pso/XpPso$OtaEncBinInfo;->dstBinLen:J

    iget-object v6, v13, Landroid/pso/XpPso$OtaEncBinInfo;->SignData:[B

    move-object v1, v11

    move-object v2, v12

    invoke-virtual/range {v1 .. v6}, Landroid/pso/XpPso;->a(Ljava/lang/String;JLjava/security/Signature;[B)Z

    iget-object v0, v11, Landroid/pso/XpPso;->h:[J

    move-object/from16 v1, v19

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    const/4 v0, 0x1

    return v0

    :catch_1
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v3, v11, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid File...\r\n("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, v1}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :catch_2
    move-exception v0

    new-instance v1, Landroid/pso/XpPsoException;

    iget-object v2, v11, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "create NewFile Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x2b

    invoke-direct {v1, v2, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v1

    :cond_4
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v11, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v3, "ota File is not exists..."

    invoke-direct {v0, v1, v3, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :cond_5
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v11, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/16 v2, -0xe

    const-string v3, "No PublicKey"

    invoke-direct {v0, v1, v3, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :cond_6
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v2, v11, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v3, "Invalid File...\r\n(parse head failed...)"

    invoke-direct {v0, v2, v3, v1}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :cond_7
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v11, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v3, "ota File is not exists..."

    invoke-direct {v0, v1, v3, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, ""

    return-object p1

    :pswitch_0
    const-string p1, "hao"

    return-object p1

    :pswitch_1
    const-string p1, "ni"

    return-object p1

    :pswitch_2
    const-string p1, "ppp"

    return-object p1

    :pswitch_3
    const-string p1, "xxx"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    const-string v0, "HmacMD5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "nnnnaks"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p2, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    const-string p2, "AKa"

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/pso/XpPso;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-direct {p0, v0}, Landroid/pso/XpPso;->getAesSpecKeyVector(I)[B

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0}, Landroid/pso/XpPso;->a(Ljava/lang/String;[B[B)[B

    move-result-object p1

    invoke-static {p1}, Landroid/pso/Base64Util;->encodeToString([B)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    move-object v1, p2

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, p2

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v1, p2

    goto :goto_2

    :catch_3
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :catch_4
    move-exception p1

    :goto_1
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :catch_5
    move-exception p1

    :goto_2
    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    new-instance p2, Landroid/pso/XpPsoException;

    iget-object v0, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get Alias failed ...("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")\r\n("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x7

    invoke-direct {p2, v0, p1, v1}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p2
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;I)[B
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p2

    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Landroid/pso/XpPso;->getE28OtaPackheadLen()I

    move-result v4

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-lez v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v1, -0x1

    :try_start_1
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-array v0, v4, [B

    invoke-virtual {v14, v0}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-direct {v11, v0, v2, v3}, Landroid/pso/XpPso;->getE28OtaPackhead([BJ)Landroid/pso/XpPso$E28OtaPackhead;

    move-result-object v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v10, :cond_4

    iget-object v0, v11, Landroid/pso/XpPso;->h:[J

    int-to-long v1, v4

    const/16 v16, 0x0

    aput-wide v1, v0, v16

    const/4 v0, 0x2

    move/from16 v1, p3

    if-ne v1, v0, :cond_1

    iget-object v0, v10, Landroid/pso/XpPso$E28OtaPackhead;->key_id:[B

    const-string v1, "CTR"

    const-string v2, "NoPadding"

    invoke-virtual {v11, v0, v1, v2}, Landroid/pso/XpPso;->a([BLjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_1
    iget-object v0, v10, Landroid/pso/XpPso$E28OtaPackhead;->key_id:[B

    invoke-virtual {v11, v0}, Landroid/pso/XpPso;->j([B)Ljavax/crypto/Cipher;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, v10, Landroid/pso/XpPso$E28OtaPackhead;->cert_id:[B

    invoke-virtual {v11, v0}, Landroid/pso/XpPso;->g([B)Ljava/security/PublicKey;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroid/pso/XpPso;->b(Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v0

    iget-wide v2, v10, Landroid/pso/XpPso$E28OtaPackhead;->datalen:J

    iget-object v8, v10, Landroid/pso/XpPso$E28OtaPackhead;->datasha256:[B

    iget-object v6, v11, Landroid/pso/XpPso;->h:[J

    move-object v1, v11

    move-object v5, v14

    move-object/from16 v17, v6

    move-object v6, v15

    move-object/from16 v18, v8

    move-object v8, v0

    move-object/from16 v19, v13

    move-object v13, v9

    move-object/from16 v9, v18

    move-object v12, v10

    move-object/from16 v10, v17

    invoke-virtual/range {v1 .. v10}, Landroid/pso/XpPso;->b(JILjava/io/InputStream;Ljava/io/OutputStream;Ljavax/crypto/Cipher;Ljava/security/Signature;[B[J)[B

    move-result-object v7

    const/4 v1, -0x4

    :try_start_2
    iget-object v2, v12, Landroid/pso/XpPso$E28OtaPackhead;->sign:[B

    invoke-virtual {v0, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v0
    :try_end_2
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    invoke-virtual {v11, v13}, Landroid/pso/XpPso;->b(Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v5

    iget-wide v3, v12, Landroid/pso/XpPso$E28OtaPackhead;->datalen:J

    iget-object v6, v12, Landroid/pso/XpPso$E28OtaPackhead;->sign:[B

    move-object v1, v11

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/pso/XpPso;->a(Ljava/lang/String;JLjava/security/Signature;[B)Z

    move-result v0

    iget-object v1, v11, Landroid/pso/XpPso;->h:[J

    move-object/from16 v2, v19

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    aput-wide v2, v1, v16

    if-eqz v0, :cond_2

    return-object v7

    :cond_2
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v11, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/16 v2, -0x2a

    const-string v3, "ota package decryptverify to file failed..."

    invoke-direct {v0, v1, v3, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :cond_3
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v2, v11, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v3, "bin Signed Data Verify  Fail..."

    invoke-direct {v0, v2, v3, v1}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v3, v11, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bin Signed Data Verify  Fail...\r\n("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/SignatureException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, v1}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_4
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v2, v11, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v3, "Invalid File...\r\n(Packhead null)"

    invoke-direct {v0, v2, v3, v1}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :catch_2
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v3, v11, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid File...\r\n("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, v1}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :catch_3
    move-exception v0

    move-object v2, v12

    new-instance v1, Landroid/pso/XpPsoException;

    iget-object v3, v11, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "create NewFile Fail...\r\n("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, -0x2b

    invoke-direct {v1, v3, v0, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v1

    :cond_5
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v11, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/4 v2, -0x6

    const-string v3, "ota File is not exists..."

    invoke-direct {v0, v1, v3, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0
.end method

.method private c(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Landroid/pso/XpPsoException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/KeyStoreException;,
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    const-string v0, "HmacMD5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "nnnnaks"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p2, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    const-string p2, "AKa"

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/pso/XpPso;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0}, Landroid/pso/XpPso;->getAesSpecKeyVector(I)[B

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0}, Landroid/pso/XpPso;->b(Ljava/lang/String;[B[B)[B

    move-result-object p1

    invoke-static {p1}, Landroid/pso/Base64Util;->encodeToString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p2

    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Landroid/pso/XpPso;->getE28OtaPackheadLen()I

    move-result v4

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-lez v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v1, -0x1

    :try_start_1
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-array v0, v4, [B

    invoke-virtual {v14, v0}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-direct {v11, v0, v2, v3}, Landroid/pso/XpPso;->getE28OtaPackhead([BJ)Landroid/pso/XpPso$E28OtaPackhead;

    move-result-object v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v10, :cond_4

    iget-object v0, v11, Landroid/pso/XpPso;->h:[J

    int-to-long v1, v4

    const/16 v16, 0x0

    aput-wide v1, v0, v16

    const/4 v0, 0x2

    move/from16 v1, p3

    if-ne v1, v0, :cond_1

    iget-object v0, v10, Landroid/pso/XpPso$E28OtaPackhead;->key_id:[B

    const-string v1, "CTR"

    const-string v2, "NoPadding"

    invoke-virtual {v11, v0, v1, v2}, Landroid/pso/XpPso;->a([BLjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_1
    iget-object v0, v10, Landroid/pso/XpPso$E28OtaPackhead;->key_id:[B

    invoke-virtual {v11, v0}, Landroid/pso/XpPso;->j([B)Ljavax/crypto/Cipher;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, v10, Landroid/pso/XpPso$E28OtaPackhead;->cert_id:[B

    invoke-virtual {v11, v0}, Landroid/pso/XpPso;->g([B)Ljava/security/PublicKey;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroid/pso/XpPso;->b(Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v0

    iget-wide v2, v10, Landroid/pso/XpPso$E28OtaPackhead;->datalen:J

    iget-object v8, v10, Landroid/pso/XpPso$E28OtaPackhead;->datasha256:[B

    iget-object v6, v11, Landroid/pso/XpPso;->h:[J

    move-object v1, v11

    move-object v5, v14

    move-object/from16 v17, v6

    move-object v6, v15

    move-object/from16 v18, v8

    move-object v8, v0

    move-object/from16 v19, v13

    move-object v13, v9

    move-object/from16 v9, v18

    move-object v12, v10

    move-object/from16 v10, v17

    invoke-virtual/range {v1 .. v10}, Landroid/pso/XpPso;->a(JILjava/io/InputStream;Ljava/io/OutputStream;Ljavax/crypto/Cipher;Ljava/security/Signature;[B[J)Z

    const/4 v1, -0x4

    :try_start_2
    iget-object v2, v12, Landroid/pso/XpPso$E28OtaPackhead;->sign:[B

    invoke-virtual {v0, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v0
    :try_end_2
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    invoke-virtual {v11, v13}, Landroid/pso/XpPso;->b(Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v5

    iget-wide v3, v12, Landroid/pso/XpPso$E28OtaPackhead;->datalen:J

    iget-object v6, v12, Landroid/pso/XpPso$E28OtaPackhead;->sign:[B

    move-object v1, v11

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/pso/XpPso;->a(Ljava/lang/String;JLjava/security/Signature;[B)Z

    move-result v0

    iget-object v1, v11, Landroid/pso/XpPso;->h:[J

    move-object/from16 v2, v19

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    aput-wide v2, v1, v16

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v11, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/16 v2, -0x2a

    const-string v3, "ota package decryptverify to file failed..."

    invoke-direct {v0, v1, v3, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :cond_3
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v2, v11, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v3, "bin Signed Data Verify  Fail..."

    invoke-direct {v0, v2, v3, v1}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v3, v11, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bin Signed Data Verify  Fail...\r\n("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/SignatureException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, v1}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_4
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v2, v11, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v3, "Invalid File...\r\n(Packhead null)"

    invoke-direct {v0, v2, v3, v1}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :catch_2
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v3, v11, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid File...\r\n("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, v1}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :catch_3
    move-exception v0

    move-object v2, v12

    new-instance v1, Landroid/pso/XpPsoException;

    iget-object v3, v11, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "create NewFile Fail...\r\n("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, -0x2b

    invoke-direct {v1, v3, v0, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v1

    :cond_5
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v11, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/4 v2, -0x6

    const-string v3, "ota File is not exists..."

    invoke-direct {v0, v1, v3, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0
.end method

.method private c(Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const-string v0, "HmacMD5"

    const-string v1, "XpIccid0Xdafedb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method

.method private d(Ljava/lang/String;)J
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const-wide/16 v1, 0x0

    if-nez p1, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int p1, v3

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-array v0, p1, [B

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, p1}, Ljava/io/InputStream;->read([BII)I

    const/16 p1, 0x64

    new-array p1, p1, [B

    array-length v3, p1

    invoke-static {v0, v4, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    const-string p1, "\r\n\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\r\n\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    const-string v0, "\r\n\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p1, v0

    int-to-long v3, p1

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long p1, v3, v1

    if-gez p1, :cond_2

    return-wide v1

    :cond_2
    move-wide v1, v3

    return-wide v1

    :catch_0
    move-exception p1

    return-wide v1
.end method

.method private d(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const-string v0, "HmacMD5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "rrrkkkksssss"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p2, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    invoke-static {p1}, Landroid/pso/Base64Util;->encodeToString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p1, v1

    const-string v1, "PSO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file Size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-array p1, p1, [B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object p1, v1

    :goto_0
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :catch_3
    move-exception v0

    move-object p1, v1

    :goto_1
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    if-eqz p1, :cond_c

    invoke-direct {p0, p1}, Landroid/pso/XpPso;->getKeybinEncData([B)Landroid/pso/XpPso$PSOencKeybinData;

    move-result-object p1

    iget v0, p1, Landroid/pso/XpPso$PSOencKeybinData;->result:I

    if-nez v0, :cond_b

    iget-object v0, p1, Landroid/pso/XpPso$PSOencKeybinData;->EncData:[B

    if-eqz v0, :cond_a

    iget-object v0, p1, Landroid/pso/XpPso$PSOencKeybinData;->SignData:[B

    if-eqz v0, :cond_9

    iget v0, p1, Landroid/pso/XpPso$PSOencKeybinData;->BINType:I

    invoke-direct {p0, v0}, Landroid/pso/XpPso;->getKeybinVerifyKey(I)[B

    move-result-object v0

    const-string v1, "EC"

    invoke-virtual {p0, v0, v1}, Landroid/pso/XpPso;->a([BLjava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    iget-object v1, p1, Landroid/pso/XpPso$PSOencKeybinData;->EncData:[B

    iget-object v2, p1, Landroid/pso/XpPso$PSOencKeybinData;->SignData:[B

    invoke-virtual {p0, v1, v2, v0}, Landroid/pso/XpPso;->a([B[BLjava/security/PublicKey;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "PSO"

    const-string v1, "bin Verify succeed!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/pso/XpPso$PSOencKeybinData;->EncData:[B

    iget-object p1, p1, Landroid/pso/XpPso$PSOencKeybinData;->EncData:[B

    array-length p1, p1

    invoke-direct {p0, v0, p1}, Landroid/pso/XpPso;->getKeybinList([BI)Landroid/pso/XpPso$PSOdecKeybin;

    move-result-object p1

    iget v0, p1, Landroid/pso/XpPso$PSOdecKeybin;->result:I

    if-nez v0, :cond_7

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    iget-object v2, p1, Landroid/pso/XpPso$PSOdecKeybin;->IntAES:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_2

    const-string v2, "AK"

    invoke-direct {p0, v2, v1}, Landroid/pso/XpPso;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Landroid/pso/XpPso$PSOdecKeybin;->IntAES:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AK "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/pso/XpPso;->b(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "PSO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "S:AK "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " succeed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v2, Landroid/pso/XpPso;->stop:Z

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    move v1, v0

    :goto_4
    iget-object v2, p1, Landroid/pso/XpPso$PSOdecKeybin;->ExtAES:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_5

    const-string v2, "AKe"

    invoke-direct {p0, v2, v1}, Landroid/pso/XpPso;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Landroid/pso/XpPso$PSOdecKeybin;->ExtAES:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AKe "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/pso/XpPso;->b(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "PSO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "S:AKe "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " succeed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v2, Landroid/pso/XpPso;->stop:Z

    if-eqz v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    sget-boolean p1, Landroid/pso/XpPso;->stop:Z

    if-eqz p1, :cond_6

    return v0

    :cond_6
    const/4 p1, 0x1

    return p1

    :cond_7
    new-instance p1, Landroid/pso/XpPsoException;

    iget-object v0, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/16 v1, -0x6f

    const-string v2, "Decrypt Keybin Failed"

    invoke-direct {p1, v0, v2, v1}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p1

    :cond_8
    new-instance p1, Landroid/pso/XpPsoException;

    iget-object v0, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/4 v1, -0x4

    const-string v2, "keybin Signed data Verify Fail..."

    invoke-direct {p1, v0, v2, v1}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p1

    :cond_9
    new-instance p1, Landroid/pso/XpPsoException;

    iget-object v0, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/16 v1, -0xd

    const-string v2, "No Signed Data"

    invoke-direct {p1, v0, v2, v1}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p1

    :cond_a
    new-instance p1, Landroid/pso/XpPsoException;

    iget-object v0, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/16 v1, -0xc

    const-string v2, "No Cert Key EncData"

    invoke-direct {p1, v0, v2, v1}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p1

    :cond_b
    new-instance p1, Landroid/pso/XpPsoException;

    iget-object v0, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/16 v1, -0xb

    const-string v2, "Parse Keybin Failed"

    invoke-direct {p1, v0, v2, v1}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p1

    :cond_c
    new-instance p1, Landroid/pso/XpPsoException;

    iget-object v0, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid File\r\n("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {p1, v0, v1, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p1

    :cond_d
    new-instance p1, Landroid/pso/XpPsoException;

    iget-object v0, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/4 v1, -0x6

    const-string v2, "keybinFile not exists"

    invoke-direct {p1, v0, v2, v1}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p1
.end method

.method private e(Ljava/lang/String;I)[B
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, -0x6

    if-eqz v2, :cond_6

    const/4 v2, -0x1

    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v1, v4

    new-array v1, v1, [B

    invoke-virtual {v10, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-direct {v9, v1}, Landroid/pso/XpPso;->l([B)J

    move-result-wide v4

    invoke-direct {v9, v1, v4, v5}, Landroid/pso/XpPso;->getOtaEncBinInfoFormMem([BJ)Landroid/pso/XpPso$OtaEncBinInfo;

    move-result-object v11

    iget v6, v11, Landroid/pso/XpPso$OtaEncBinInfo;->result:I

    if-nez v6, :cond_5

    iget-wide v6, v11, Landroid/pso/XpPso$OtaEncBinInfo;->dstBinLen:J

    long-to-int v6, v6

    new-array v6, v6, [B

    iget-wide v7, v11, Landroid/pso/XpPso$OtaEncBinInfo;->dstBinOffset:J

    add-long/2addr v7, v4

    long-to-int v7, v7

    iget-wide v12, v11, Landroid/pso/XpPso$OtaEncBinInfo;->dstBinLen:J

    long-to-int v8, v12

    const/4 v12, 0x0

    invoke-static {v1, v7, v6, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v11, :cond_4

    iget-wide v7, v11, Landroid/pso/XpPso$OtaEncBinInfo;->dstBinLen:J

    const-wide/16 v13, 0x0

    cmp-long v1, v7, v13

    if-lez v1, :cond_4

    iget-object v1, v9, Landroid/pso/XpPso;->g:[J

    aput-wide v4, v1, v12

    iget v1, v11, Landroid/pso/XpPso$OtaEncBinInfo;->BINType:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    move/from16 v1, p2

    move v7, v2

    goto :goto_0

    :cond_0
    iget v1, v11, Landroid/pso/XpPso$OtaEncBinInfo;->BINType:I

    move v7, v1

    move/from16 v1, p2

    :goto_0
    if-ne v1, v2, :cond_1

    const-string v1, "CBC"

    const-string v2, "NoPadding"

    invoke-virtual {v9, v7, v1, v2}, Landroid/pso/XpPso;->a(ILjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    :goto_1
    move-object v7, v1

    goto :goto_2

    :cond_1
    invoke-virtual {v9, v7}, Landroid/pso/XpPso;->a(I)Ljavax/crypto/Cipher;

    move-result-object v1

    goto :goto_1

    :goto_2
    invoke-direct/range {p0 .. p0}, Landroid/pso/XpPso;->g()Ljava/security/PublicKey;

    move-result-object v15

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v0, v0, v13

    if-lez v0, :cond_3

    iget-object v0, v9, Landroid/pso/XpPso;->g:[J

    iget-wide v1, v11, Landroid/pso/XpPso$OtaEncBinInfo;->dstBinOffset:J

    add-long/2addr v4, v1

    aput-wide v4, v0, v12

    invoke-virtual {v9, v15}, Landroid/pso/XpPso;->a(Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v0

    iget-wide v1, v11, Landroid/pso/XpPso$OtaEncBinInfo;->dstBinLen:J

    long-to-int v3, v1

    iget-object v1, v9, Landroid/pso/XpPso;->g:[J

    aget-wide v1, v1, v12

    long-to-int v4, v1

    iget-object v13, v9, Landroid/pso/XpPso;->g:[J

    move-object v1, v9

    move-object v2, v11

    move-object v5, v6

    move-object v6, v7

    move-object v7, v0

    move-object v14, v8

    move-object v8, v13

    invoke-virtual/range {v1 .. v8}, Landroid/pso/XpPso;->a(Landroid/pso/XpPso$OtaEncBinInfo;II[BLjavax/crypto/Cipher;Ljava/security/Signature;[J)[B

    move-result-object v7

    :try_start_1
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    invoke-virtual {v9, v15}, Landroid/pso/XpPso;->a(Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v5

    iget-wide v0, v11, Landroid/pso/XpPso$OtaEncBinInfo;->dstBinLen:J

    long-to-int v0, v0

    int-to-long v3, v0

    iget-object v6, v11, Landroid/pso/XpPso$OtaEncBinInfo;->SignData:[B

    move-object v1, v9

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Landroid/pso/XpPso;->a([BJLjava/security/Signature;[B)Z

    iget-object v0, v9, Landroid/pso/XpPso;->g:[J

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v1

    aput-wide v1, v0, v12

    if-eqz v7, :cond_2

    return-object v7

    :cond_2
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v9, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/16 v2, -0x2a

    const-string v3, "ota package decryptverify to mem failed..."

    invoke-direct {v0, v1, v3, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :cond_3
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v9, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v2, "ota File is not exists..."

    invoke-direct {v0, v1, v2, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :cond_4
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v9, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v3, "Invalid File...\r\n(parse head failed...)"

    invoke-direct {v0, v1, v3, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :cond_5
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v9, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v3, "Invalid File..."

    invoke-direct {v0, v1, v3, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Landroid/pso/XpPsoException;

    iget-object v3, v9, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid File...\r\n("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v1

    :cond_6
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v9, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v2, "ota File is not exists..."

    invoke-direct {v0, v1, v2, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0
.end method

.method private f()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AKa"

    invoke-direct {p0, v1, v0}, Landroid/pso/XpPso;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/pso/XpPso;->a(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v2, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No Root Key...\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, -0x62

    invoke-direct {v0, v2, v1, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0
.end method

.method private f(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Landroid/pso/XpPso;->KeyBinProcess(Ljava/lang/String;)Landroid/pso/XpPso$E28decKeybin;

    move-result-object p1

    iget-object v0, p1, Landroid/pso/XpPso$E28decKeybin;->CommKey:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pso/XpPso$E28decKeybin$KeyInfo;

    iget-object v3, v3, Landroid/pso/XpPso$E28decKeybin$KeyInfo;->ID:[B

    invoke-virtual {p0, v3}, Landroid/pso/XpPso;->c([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/pso/XpPso$E28decKeybin$KeyInfo;

    iget-object v4, v4, Landroid/pso/XpPso$E28decKeybin$KeyInfo;->KeyValue:[B

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CommKey "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Landroid/pso/XpPso;->a(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "PSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "S:CommKey "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " succeed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v3, Landroid/pso/XpPso;->stop:Z

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget p1, p1, Landroid/pso/XpPso$E28decKeybin;->result:I

    if-nez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    :cond_4
    new-instance p1, Landroid/pso/XpPsoException;

    iget-object v0, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/4 v1, -0x6

    const-string v2, "keybinFile not exists"

    invoke-direct {p1, v0, v2, v1}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p1
.end method

.method private f(Ljava/lang/String;I)[B
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    move-object/from16 v10, p0

    new-instance v0, Ljava/io/File;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Landroid/pso/XpPso;->getE28OtaPackheadLen()I

    move-result v3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-lez v1, :cond_3

    const/4 v1, -0x1

    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-array v2, v3, [B

    invoke-virtual {v11, v2}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-direct {v10, v2, v4, v5}, Landroid/pso/XpPso;->getE28OtaPackhead([BJ)Landroid/pso/XpPso$E28OtaPackhead;

    move-result-object v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v12, :cond_2

    iget-object v1, v10, Landroid/pso/XpPso;->g:[J

    int-to-long v4, v3

    const/4 v13, 0x0

    aput-wide v4, v1, v13

    iget-wide v1, v12, Landroid/pso/XpPso$E28OtaPackhead;->datalen:J

    long-to-int v1, v1

    new-array v4, v1, [B

    iget-wide v1, v12, Landroid/pso/XpPso$E28OtaPackhead;->datalen:J

    long-to-int v1, v1

    new-array v14, v1, [B

    :try_start_1
    invoke-virtual {v11, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v1, 0x2

    move/from16 v2, p2

    if-ne v2, v1, :cond_0

    iget-object v1, v12, Landroid/pso/XpPso$E28OtaPackhead;->key_id:[B

    const-string v2, "CTR"

    const-string v5, "NoPadding"

    invoke-virtual {v10, v1, v2, v5}, Landroid/pso/XpPso;->a([BLjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_0
    iget-object v1, v12, Landroid/pso/XpPso$E28OtaPackhead;->key_id:[B

    invoke-virtual {v10, v1}, Landroid/pso/XpPso;->j([B)Ljavax/crypto/Cipher;

    move-result-object v1

    goto :goto_0

    :goto_1
    iget-object v1, v12, Landroid/pso/XpPso$E28OtaPackhead;->cert_id:[B

    invoke-virtual {v10, v1}, Landroid/pso/XpPso;->g([B)Ljava/security/PublicKey;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/pso/XpPso;->b(Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v9

    iget-wide v1, v12, Landroid/pso/XpPso$E28OtaPackhead;->datalen:J

    long-to-int v2, v1

    iget-object v8, v12, Landroid/pso/XpPso$E28OtaPackhead;->datasha256:[B

    iget-object v7, v10, Landroid/pso/XpPso;->g:[J

    move-object v1, v10

    move-object v5, v14

    move-object/from16 v16, v7

    move-object v7, v9

    move-object v13, v9

    move-object/from16 v9, v16

    invoke-virtual/range {v1 .. v9}, Landroid/pso/XpPso;->a(II[B[BLjavax/crypto/Cipher;Ljava/security/Signature;[B[J)[B

    const/4 v7, -0x4

    :try_start_2
    iget-object v1, v12, Landroid/pso/XpPso$E28OtaPackhead;->sign:[B

    invoke-virtual {v13, v1}, Ljava/security/Signature;->verify([B)Z
    :try_end_2
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-virtual {v10, v15}, Landroid/pso/XpPso;->b(Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v5

    iget-wide v3, v12, Landroid/pso/XpPso$E28OtaPackhead;->datalen:J

    iget-object v6, v12, Landroid/pso/XpPso$E28OtaPackhead;->sign:[B

    move-object v1, v10

    move-object v2, v14

    invoke-virtual/range {v1 .. v6}, Landroid/pso/XpPso;->a([BJLjava/security/Signature;[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v10, Landroid/pso/XpPso;->g:[J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const/4 v0, 0x0

    aput-wide v2, v1, v0

    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v14

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return-object v14

    :cond_1
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v10, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v2, "ota package verify failed..."

    invoke-direct {v0, v1, v2, v7}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Landroid/pso/XpPsoException;

    iget-object v2, v10, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bin Signed Data Verify  Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/SignatureException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0, v7}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Landroid/pso/XpPsoException;

    iget-object v2, v10, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read File Failed\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x16

    invoke-direct {v1, v2, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v1

    :cond_2
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v2, v10, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v3, "Invalid File...\r\n(Packhead==null)"

    invoke-direct {v0, v2, v3, v1}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :catch_3
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v3, v10, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid File...\r\n("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, v1}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_3
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v10, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/4 v2, -0x6

    const-string v3, "ota File is not exists..."

    invoke-direct {v0, v1, v3, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0
.end method

.method private g()Ljava/security/PublicKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/pso/XpPso;->getD21OtaEcuCert()[B

    move-result-object v0

    const/4 v1, -0x2

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/pso/XpPso;->b([B)Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v3, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No Cert...\r\n("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, v1}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_0
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v2, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v3, "No Cert...\r\n(get D21 Ota Ecu Cert)"

    invoke-direct {v0, v2, v3, v1}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0
.end method

.method private native getAesSpecKeyVector(I)[B
.end method

.method private native getCheckSum([B)I
.end method

.method private native getD21AesSpecKey(I)[B
.end method

.method private native getD21OtaEcuCert()[B
.end method

.method private native getE28Cert(Ljava/lang/String;)[B
.end method

.method private native getE28OtaPackhead([BJ)Landroid/pso/XpPso$E28OtaPackhead;
.end method

.method private native getE28OtaPackheadLen()I
.end method

.method private native getEncAesSpecKey(I)[B
.end method

.method private native getKeybinEncData([B)Landroid/pso/XpPso$PSOencKeybinData;
.end method

.method private native getKeybinList([BI)Landroid/pso/XpPso$PSOdecKeybin;
.end method

.method private native getKeybinVerifyKey(I)[B
.end method

.method private native getMcuRtKey()[B
.end method

.method private native getOtaEncBinInfo(Ljava/lang/String;J)Landroid/pso/XpPso$OtaEncBinInfo;
.end method

.method private native getOtaEncBinInfoFormMem([BJ)Landroid/pso/XpPso$OtaEncBinInfo;
.end method

.method private l([B)J
    .locals 5

    const/16 v0, 0x64

    new-array v0, v0, [B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "\r\n\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "\r\n\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    const-string v0, "\r\n\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    int-to-long v3, p1

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    cmp-long p1, v3, v1

    if-gez p1, :cond_1

    return-wide v1

    :cond_1
    move-wide v1, v3

    return-wide v1
.end method


# virtual methods
.method public CertKeyPreset(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/pso/XpPso;->b()V

    sget v0, Landroid/pso/XpPso;->c:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroid/pso/XpPso;->f(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    invoke-virtual {p0}, Landroid/pso/XpPso;->e()Z

    move-result v0

    and-int/2addr p1, v0

    return p1

    :cond_0
    invoke-direct {p0, p1}, Landroid/pso/XpPso;->e(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0
.end method

.method public CertKeyVerify()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/pso/XpPso;->b()V

    invoke-direct {p0}, Landroid/pso/XpPso;->f()V

    sget v0, Landroid/pso/XpPso;->c:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/pso/XpPso;->D21CertKeyVerify()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/16 v2, -0x80

    const-string v3, "Can not Verify Cert Key ,Please user the input filename Api ..."

    invoke-direct {v0, v1, v3, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0
.end method

.method public CertKeyVerify(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/pso/XpPso;->b()V

    invoke-direct {p0}, Landroid/pso/XpPso;->f()V

    sget v0, Landroid/pso/XpPso;->c:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/pso/XpPso;->D21CertKeyVerify()Z

    move-result p1

    :goto_0
    invoke-virtual {p0}, Landroid/pso/XpPso;->c()Z

    move-result v0

    and-int/2addr p1, v0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/pso/XpPso;->E28CertKeyVerify(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0
.end method

.method public D21CertKeyVerify()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_2

    const-string v2, "AK"

    invoke-direct {p0, v2, v1}, Landroid/pso/XpPso;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AK "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/pso/XpPso;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "PSO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "T:AK "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " succeed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v2, Landroid/pso/XpPso;->stop:Z

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    const/16 v2, 0x8

    if-ge v1, v2, :cond_5

    const-string v2, "AKe"

    invoke-direct {p0, v2, v1}, Landroid/pso/XpPso;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AKe "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/pso/XpPso;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "PSO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "T:AKe "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " succeed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v2, Landroid/pso/XpPso;->stop:Z

    if-eqz v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move v1, v0

    :goto_2
    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ge v1, v2, :cond_9

    if-ne v1, v3, :cond_6

    goto :goto_3

    :cond_6
    invoke-direct {p0, v1}, Landroid/pso/XpPso;->getEncAesSpecKey(I)[B

    move-result-object v2

    const-string v3, "AKspec"

    invoke-direct {p0, v3, v1}, Landroid/pso/XpPso;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1}, Landroid/pso/XpPso;->getAesSpecKeyVector(I)[B

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AKs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Landroid/pso/XpPso;->c(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    const-string v2, "PSO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "T:AKs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " succeed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sget-boolean v2, Landroid/pso/XpPso;->stop:Z

    if-eqz v2, :cond_8

    return v0

    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    sget-boolean v1, Landroid/pso/XpPso;->stop:Z

    if-eqz v1, :cond_a

    return v0

    :cond_a
    return v3
.end method

.method public D21checkIfPreseted()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v1}, Landroid/pso/XpPso;->getEncAesSpecKey(I)[B

    move-result-object v2

    const-string v3, "AKspec"

    invoke-direct {p0, v3, v1}, Landroid/pso/XpPso;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/pso/XpPso;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    const-string v2, "PSO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "T:AKs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Preseted!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Landroid/pso/XpPso;->stop:Z

    if-eqz v2, :cond_1

    return v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "PSO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "T:AKs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not Preseted!"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    sget-boolean v1, Landroid/pso/XpPso;->stop:Z

    if-eqz v1, :cond_4

    return v0

    :cond_4
    return v3
.end method

.method public E28CertKeyVerify(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Landroid/pso/XpPso;->KeyBinProcess(Ljava/lang/String;)Landroid/pso/XpPso$E28decKeybin;

    move-result-object p1

    iget-object v0, p1, Landroid/pso/XpPso$E28decKeybin;->CommSignCert:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pso/XpPso$E28decKeybin$CertInfo;

    iget-object v3, v3, Landroid/pso/XpPso$E28decKeybin$CertInfo;->PriPem:[B

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/pso/XpPso$E28decKeybin$CertInfo;

    iget-object v4, v4, Landroid/pso/XpPso$E28decKeybin$CertInfo;->ID:[B

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CommSignCert "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Landroid/pso/XpPso;->a([B[BLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "PSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "T:CommSignCert "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " succeed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v3, Landroid/pso/XpPso;->stop:Z

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p1, Landroid/pso/XpPso$E28decKeybin;->CommKey:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    move v2, v1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pso/XpPso$E28decKeybin$KeyInfo;

    iget-object v3, v3, Landroid/pso/XpPso$E28decKeybin$KeyInfo;->ID:[B

    invoke-virtual {p0, v3}, Landroid/pso/XpPso;->getE28enccKey([B)[B

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/pso/XpPso$E28decKeybin$KeyInfo;

    iget-object v4, v4, Landroid/pso/XpPso$E28decKeybin$KeyInfo;->ID:[B

    invoke-virtual {p0, v4}, Landroid/pso/XpPso;->d([B)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CommKey "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/pso/XpPso;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    const-string v3, "PSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "T:CommKey "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " succeed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v3, Landroid/pso/XpPso;->stop:Z

    if-eqz v3, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget p1, p1, Landroid/pso/XpPso$E28decKeybin;->result:I

    if-nez p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1

    :cond_7
    new-instance p1, Landroid/pso/XpPsoException;

    iget-object v0, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/4 v1, -0x6

    const-string v2, "keybinFile not exists"

    invoke-direct {p1, v0, v2, v1}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p1
.end method

.method public E28checkIfPreseted()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x7f

    :goto_0
    const/16 v2, 0x80

    if-ge v1, v2, :cond_1

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/pso/XpPso;->getE28enccKeyId(I)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/pso/XpPso;->e([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/pso/XpPso;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "PSO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "T:CommKey "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " preseted!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string v2, "E28checkIfPreseted get key failed"
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljavax/crypto/ShortBufferException;->printStackTrace()V

    goto :goto_1

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/security/UnrecoverableKeyException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/16 v2, -0xe

    const-string v3, "E28checkIfPreseted  failed"

    invoke-direct {v0, v1, v3, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0
.end method

.method public GetPSUID(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    const-string v0, "HmacMD5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "A234567890123456"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    const-string v0, ""
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    const/4 v1, 0x0

    move-object v3, v0

    move v0, v1

    :goto_0
    :try_start_1
    array-length v4, p1

    if-ge v0, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-byte v7, p1, v0

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    move-object v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x28

    if-le p1, v0, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    rem-int/2addr p1, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    :cond_1
    move-object p1, v3

    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, p1

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v3, p1

    move-object p1, v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v3, p1

    move-object p1, v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v3, p1

    move-object p1, v0

    goto :goto_4

    :catch_3
    move-exception p1

    goto :goto_2

    :catch_4
    move-exception p1

    goto :goto_3

    :catch_5
    move-exception p1

    goto :goto_4

    :catch_6
    move-exception p1

    move-object v3, v2

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :catch_7
    move-exception p1

    move-object v3, v2

    :goto_3
    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :catch_8
    move-exception p1

    move-object v3, v2

    :goto_4
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5
    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    new-instance p1, Landroid/pso/XpPsoException;

    iget-object v0, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get PSUID Failed...\r\n("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x47

    invoke-direct {p1, v0, v1, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p1
.end method

.method public McuKeyPreset(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/pso/XpPso;->b()V

    invoke-direct {p0}, Landroid/pso/XpPso;->f()V

    const-string p1, "AKm"

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/pso/XpPso;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Landroid/pso/XpPso;->getMcuRtKey()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/pso/XpPso;->a(Ljava/lang/String;[B)Z

    move-result p1

    return p1
.end method

.method protected a(I)Ljavax/crypto/Cipher;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/pso/XpPso;->f()V

    :try_start_0
    invoke-direct {p0, p1}, Landroid/pso/XpPso;->getAesSpecKeyVector(I)[B

    move-result-object v0

    const-string v1, "AKspec"

    invoke-direct {p0, v1, p1}, Landroid/pso/XpPso;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/pso/XpPso;->b(Ljava/lang/String;[B)Ljavax/crypto/Cipher;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljavax/crypto/ShortBufferException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/security/KeyStoreException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/security/UnrecoverableKeyException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_6
    move-exception p1

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_7
    move-exception p1

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get Aes Key Cipher Failed...maybe need to preset\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v2, -0xf

    invoke-direct {v0, v1, p1, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0
.end method

.method protected a(ILjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/pso/XpPso;->f()V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AKspec"

    invoke-direct {p0, v1, p1}, Landroid/pso/XpPso;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/pso/XpPso;->getAesSpecKeyVector(I)[B

    move-result-object v2

    invoke-direct {p0, p1}, Landroid/pso/XpPso;->getEncAesSpecKey(I)[B

    move-result-object p1

    invoke-virtual {p0, v1, v2}, Landroid/pso/XpPso;->b(Ljava/lang/String;[B)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v1, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {p1, v3}, Ljava/util/Arrays;->fill([BB)V

    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AES/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    const/4 p3, 0x2

    :try_start_1
    invoke-virtual {p2, p3, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    move-object v0, p2

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v0, p2

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v0, p2

    goto :goto_2

    :catch_3
    move-exception p1

    move-object v0, p2

    goto :goto_3

    :catch_4
    move-exception p1

    move-object v0, p2

    goto :goto_4

    :catch_5
    move-exception p1

    move-object v0, p2

    goto :goto_5

    :catch_6
    move-exception p1

    goto :goto_6

    :catch_7
    move-exception p1

    move-object v0, p2

    goto :goto_7

    :catch_8
    move-exception p1

    move-object v0, p2

    goto :goto_8

    :catch_9
    move-exception p1

    move-object v0, p2

    goto :goto_9

    :catch_a
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :catch_b
    move-exception p1

    :goto_1
    invoke-virtual {p1}, Ljavax/crypto/ShortBufferException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :catch_c
    move-exception p1

    :goto_2
    invoke-virtual {p1}, Ljava/security/KeyStoreException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :catch_d
    move-exception p1

    :goto_3
    invoke-virtual {p1}, Ljava/security/UnrecoverableKeyException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :catch_e
    move-exception p1

    :goto_4
    invoke-virtual {p1}, Ljavax/crypto/IllegalBlockSizeException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :catch_f
    move-exception p1

    :goto_5
    invoke-virtual {p1}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :catch_10
    move-exception p1

    move-object p2, v0

    :goto_6
    invoke-virtual {p1}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    move-object p1, v0

    move-object v0, p2

    goto :goto_a

    :catch_11
    move-exception p1

    :goto_7
    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :catch_12
    move-exception p1

    :goto_8
    invoke-virtual {p1}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :catch_13
    move-exception p1

    :goto_9
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_a
    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance p2, Landroid/pso/XpPsoException;

    iget-object p3, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get Aes Key Cipher Failed...maybe need to preset\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0xf

    invoke-direct {p2, p3, p1, v0}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p2
.end method

.method protected a([BLjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/pso/XpPso;->f()V

    const/16 v0, 0x10

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v0, [B

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p1}, Landroid/pso/XpPso;->e([B)Ljava/lang/String;

    move-result-object v3

    const-string v5, "CTR"

    const-string v6, "NoPadding"

    invoke-virtual {p0, v3, v2, v5, v6}, Landroid/pso/XpPso;->c(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-virtual {p0, p1}, Landroid/pso/XpPso;->getE28enccKey([B)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    new-array v0, v0, [B

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([BB)V

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {p1, v4}, Ljava/util/Arrays;->fill([BB)V

    array-length p1, v0

    invoke-static {v0, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AES/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    const/4 p3, 0x2

    :try_start_1
    invoke-virtual {p2, p3, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    move-object v1, p2

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, p2

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v1, p2

    goto :goto_2

    :catch_3
    move-exception p1

    move-object v1, p2

    goto :goto_3

    :catch_4
    move-exception p1

    move-object v1, p2

    goto :goto_4

    :catch_5
    move-exception p1

    move-object v1, p2

    goto :goto_5

    :catch_6
    move-exception p1

    move-object v1, p2

    goto :goto_6

    :catch_7
    move-exception p1

    move-object v1, p2

    goto :goto_7

    :catch_8
    move-exception p1

    move-object v1, p2

    goto :goto_8

    :catch_9
    move-exception p1

    move-object v1, p2

    goto :goto_9

    :catch_a
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :catch_b
    move-exception p1

    :goto_1
    invoke-virtual {p1}, Ljavax/crypto/ShortBufferException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :catch_c
    move-exception p1

    :goto_2
    invoke-virtual {p1}, Ljava/security/KeyStoreException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :catch_d
    move-exception p1

    :goto_3
    invoke-virtual {p1}, Ljava/security/UnrecoverableKeyException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :catch_e
    move-exception p1

    :goto_4
    invoke-virtual {p1}, Ljavax/crypto/IllegalBlockSizeException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :catch_f
    move-exception p1

    :goto_5
    invoke-virtual {p1}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :catch_10
    move-exception p1

    :goto_6
    invoke-virtual {p1}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :catch_11
    move-exception p1

    :goto_7
    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :catch_12
    move-exception p1

    :goto_8
    invoke-virtual {p1}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :catch_13
    move-exception p1

    :goto_9
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_a
    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance p2, Landroid/pso/XpPsoException;

    iget-object p3, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get Aes Key Cipher Failed...maybe need to preset\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0xf

    invoke-direct {p2, p3, p1, v0}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p2
.end method

.method protected a(JILjava/io/InputStream;Ljava/io/OutputStream;Ljavax/crypto/Cipher;Ljava/security/Signature;[B[J)Z
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    const-wide/16 v8, 0x2800

    cmp-long v0, v8, v2

    if-lez v0, :cond_0

    long-to-int v0, v2

    :goto_0
    move v8, v0

    goto :goto_1

    :cond_0
    const/16 v0, 0x2800

    goto :goto_0

    :goto_1
    int-to-long v9, v8

    div-long v11, v2, v9

    rem-long v9, v2, v9

    const-wide/16 v13, 0x0

    cmp-long v0, v9, v13

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    :goto_2
    int-to-long v13, v0

    add-long/2addr v11, v13

    const/4 v13, 0x0

    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v13, v0

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_3
    new-array v0, v8, [B

    new-array v14, v8, [B

    mul-int/lit8 v15, v8, 0x3

    new-array v15, v15, [B

    const-wide/16 v16, 0x1

    cmp-long v16, v11, v16

    if-lez v16, :cond_9

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    :goto_4
    int-to-long v5, v10

    cmp-long v5, v5, v11

    if-gez v5, :cond_8

    iget-boolean v5, v1, Landroid/pso/XpPso;->i:Z

    if-nez v5, :cond_7

    add-int v5, v16, v8

    move/from16 v19, v10

    int-to-long v9, v5

    cmp-long v6, v9, v2

    if-gtz v6, :cond_8

    const/4 v6, 0x1

    xor-int/lit8 v9, v17, 0x1

    if-ne v9, v6, :cond_2

    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v10

    goto :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_8

    :cond_2
    invoke-virtual {v4, v14}, Ljava/io/InputStream;->read([B)I

    move-result v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    if-ne v10, v8, :cond_6

    if-ne v9, v6, :cond_3

    :try_start_2
    array-length v6, v0

    move/from16 v20, v5

    const/4 v5, 0x0

    move-object/from16 v10, p6

    invoke-virtual {v10, v0, v5, v6, v15}, Ljavax/crypto/Cipher;->update([BII[B)I

    move-result v6

    goto :goto_6

    :catch_2
    move-exception v0

    goto/16 :goto_7

    :cond_3
    move/from16 v20, v5

    const/4 v5, 0x0

    move-object/from16 v10, p6

    array-length v6, v14

    invoke-virtual {v10, v14, v5, v6, v15}, Ljavax/crypto/Cipher;->update([BII[B)I

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_6
    if-lez v6, :cond_5

    :try_start_3
    invoke-virtual {v13, v15, v5, v6}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v7, v15, v5, v6}, Ljava/security/Signature;->update([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move/from16 v21, v8

    move-object/from16 v8, p5

    :try_start_4
    invoke-virtual {v8, v15, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual/range {p5 .. p5}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    array-length v5, v15

    if-lez v5, :cond_4

    move/from16 v16, v20

    :cond_4
    add-int v6, p3, v16

    int-to-long v5, v6

    const/16 v18, 0x0

    aput-wide v5, p9, v18

    add-int/lit8 v5, v19, 0x1

    move v10, v5

    move/from16 v17, v9

    move/from16 v8, v21

    goto :goto_4

    :catch_3
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write File Failed...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x2c

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :catch_4
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bin Signed Data Verify update Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x4

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_5
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v2, "Decrypt update Fail...\r\n(out=null)"

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :goto_7
    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decrypt update Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x3

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_6
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v2, "Read File Failed\r\n(read len != blocksSize)"

    const/16 v3, -0x16

    invoke-direct {v0, v1, v2, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :goto_8
    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read File Failed\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x16

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_7
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/16 v2, -0x21

    const-string v3, "Decrypt Exit..."

    invoke-direct {v0, v1, v3, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :cond_8
    move-object/from16 v8, p5

    move-object/from16 v10, p6

    move/from16 v0, v16

    goto :goto_9

    :cond_9
    move-object v8, v5

    move-object v10, v6

    const/16 v18, 0x0

    move/from16 v0, v18

    :goto_9
    int-to-long v5, v0

    sub-long/2addr v2, v5

    long-to-int v0, v2

    if-lez v0, :cond_c

    new-array v2, v0, [B

    :try_start_5
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    if-ne v3, v0, :cond_b

    :try_start_6
    invoke-virtual {v10, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0
    :try_end_6
    .catch Ljavax/crypto/BadPaddingException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_6 .. :try_end_6} :catch_7

    if-eqz v0, :cond_a

    :try_start_7
    invoke-virtual {v13, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v7, v0}, Ljava/security/Signature;->update([B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_a

    :catch_5
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bin Signed Data Verify update Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x4

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_a
    :goto_a
    :try_start_8
    invoke-virtual {v8, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual/range {p5 .. p5}, Ljava/io/OutputStream;->flush()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_b

    :catch_6
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write File Failed...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x2c

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :catch_7
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decrypt update Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    invoke-virtual {v4}, Ljavax/crypto/IllegalBlockSizeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x3

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :catch_8
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decrypt update Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    invoke-virtual {v4}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x3

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_b
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v2, "Read File Failed\r\n(read len != lastLen)"

    const/16 v3, -0x16

    invoke-direct {v0, v1, v2, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :catch_9
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read File Failed\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x16

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_c
    :goto_b
    :try_start_9
    invoke-virtual {v13}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/pso/XpPso;->i([B)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p8

    invoke-virtual {v1, v2}, Landroid/pso/XpPso;->i([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sha256sum correct?="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",sha256result="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    const/4 v1, 0x1

    return v1

    :catch_a
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sha256sum check Failed...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x4

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2
.end method

.method protected a(Landroid/pso/XpPso$OtaEncBinInfo;JILjava/io/InputStream;Ljava/io/OutputStream;Ljavax/crypto/Cipher;Ljava/security/Signature;[J)Z
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    const-wide/16 v8, 0x2800

    cmp-long v8, v8, v2

    if-lez v8, :cond_0

    long-to-int v8, v2

    goto :goto_0

    :cond_0
    const/16 v8, 0x2800

    :goto_0
    int-to-long v9, v8

    div-long v11, v2, v9

    rem-long v13, v2, v9

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    const/16 v17, 0x0

    if-nez v13, :cond_1

    move/from16 v13, v17

    goto :goto_1

    :cond_1
    const/4 v13, 0x1

    :goto_1
    int-to-long v14, v13

    add-long/2addr v11, v14

    new-array v13, v8, [B

    const-wide/16 v14, 0x1

    cmp-long v14, v11, v14

    if-lez v14, :cond_5

    move/from16 v14, v17

    move/from16 v16, v14

    const-wide/16 v18, 0x0

    :goto_2
    int-to-long v5, v14

    cmp-long v5, v5, v11

    if-gez v5, :cond_4

    add-long v5, v18, v9

    cmp-long v20, v5, v2

    if-gtz v20, :cond_4

    :try_start_0
    invoke-virtual {v4, v13}, Ljava/io/InputStream;->read([B)I

    move-result v15
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    if-ne v15, v8, :cond_3

    move/from16 v21, v8

    const/4 v15, 0x7

    invoke-direct {v1, v15, v13}, Landroid/pso/XpPso;->DoXor(I[B)[B

    move-result-object v8

    move-object/from16 v15, p7

    :try_start_1
    invoke-virtual {v15, v8}, Ljavax/crypto/Cipher;->update([B)[B

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v8, :cond_2

    invoke-direct {v1, v8}, Landroid/pso/XpPso;->getCheckSum([B)I

    move-result v18

    add-int v16, v16, v18

    :try_start_2
    invoke-virtual {v7, v8}, Ljava/security/Signature;->update([B)V
    :try_end_2
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_1

    move-wide/from16 v22, v9

    move-object/from16 v9, p6

    :try_start_3
    invoke-virtual {v9, v8}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual/range {p6 .. p6}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    iget-object v8, v1, Landroid/pso/XpPso;->h:[J

    move/from16 v10, p4

    move-wide/from16 v24, v11

    int-to-long v11, v10

    add-long/2addr v11, v5

    aput-wide v11, v8, v17

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v18, v5

    move/from16 v8, v21

    move-wide/from16 v9, v22

    move-wide/from16 v11, v24

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write File Failed...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x2c

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bin Signed Data Verify update Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/security/SignatureException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x4

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_2
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v2, "Decrypt update Fail...\r\n(DecData=null)"

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :catch_2
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decrypt update Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x3

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_3
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v2, "Read File Failed\r\n(readLen error)"

    const/16 v3, -0x16

    invoke-direct {v0, v1, v2, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :catch_3
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read File Failed\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x16

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_4
    move-object/from16 v9, p6

    move-object/from16 v15, p7

    goto :goto_3

    :cond_5
    move-object v9, v5

    move-object v15, v6

    move/from16 v16, v17

    const-wide/16 v18, 0x0

    :goto_3
    sub-long v2, v2, v18

    long-to-int v2, v2

    if-lez v2, :cond_8

    new-array v3, v2, [B

    new-array v3, v2, [B

    :try_start_4
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    if-ne v4, v2, :cond_7

    const/4 v2, 0x7

    invoke-direct {v1, v2, v3}, Landroid/pso/XpPso;->DoXor(I[B)[B

    move-result-object v2

    :try_start_5
    invoke-virtual {v15, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    if-eqz v2, :cond_6

    invoke-direct {v1, v2}, Landroid/pso/XpPso;->getCheckSum([B)I

    move-result v3

    add-int v16, v16, v3

    :try_start_6
    invoke-virtual {v7, v2}, Ljava/security/Signature;->update([B)V
    :try_end_6
    .catch Ljava/security/SignatureException; {:try_start_6 .. :try_end_6} :catch_5

    :try_start_7
    invoke-virtual {v9, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual/range {p6 .. p6}, Ljava/io/OutputStream;->flush()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_4

    :catch_4
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write File Failed...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x2c

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :catch_5
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bin Signed Data Verify update Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/security/SignatureException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x4

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_6
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v2, "Decrypt update Fail...\r\n(DecData==null)"

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :catch_6
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decrypt update Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x3

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_7
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v2, "Read File Failed\r\n(len!=lastLen)"

    const/16 v3, -0x16

    invoke-direct {v0, v1, v2, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :catch_7
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read File Failed\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x16

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_8
    :goto_4
    move/from16 v2, v16

    :try_start_8
    iget-object v3, v0, Landroid/pso/XpPso$OtaEncBinInfo;->SignData:[B

    invoke-virtual {v7, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v3
    :try_end_8
    .catch Ljava/security/SignatureException; {:try_start_8 .. :try_end_8} :catch_8

    if-eqz v3, :cond_a

    iget v0, v0, Landroid/pso/XpPso$OtaEncBinInfo;->CheckSum:I

    if-ne v2, v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/4 v2, -0x5

    const-string v3, "ota package CheckSum Error..."

    invoke-direct {v0, v1, v3, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :cond_a
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v2, "bin Signed Data Verify  Fail..."

    const/4 v3, -0x4

    invoke-direct {v0, v1, v2, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :catch_8
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bin Signed Data Verify  Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/SignatureException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x4

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2
.end method

.method protected a(Ljava/lang/String;JLjava/security/Signature;[B)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-object/from16 v0, p4

    new-instance v4, Ljava/io/File;

    move-object/from16 v5, p1

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v5, v5, v2

    const/4 v6, -0x1

    if-nez v5, :cond_7

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    const-wide/16 v6, 0x2800

    cmp-long v4, v6, v2

    if-lez v4, :cond_0

    long-to-int v4, v2

    goto :goto_0

    :cond_0
    const/16 v4, 0x2800

    :goto_0
    int-to-long v6, v4

    div-long v8, v2, v6

    rem-long v10, v2, v6

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    const/4 v14, 0x1

    if-nez v10, :cond_1

    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    move v10, v14

    :goto_1
    int-to-long v11, v10

    add-long/2addr v8, v11

    new-array v4, v4, [B

    const-wide/16 v10, 0x1

    cmp-long v10, v8, v10

    if-lez v10, :cond_3

    const/4 v10, 0x0

    const-wide/16 v15, 0x0

    :goto_2
    int-to-long v11, v10

    cmp-long v11, v11, v8

    if-gez v11, :cond_4

    iget-boolean v11, v1, Landroid/pso/XpPso;->i:Z

    if-nez v11, :cond_2

    add-long v11, v15, v6

    cmp-long v13, v11, v2

    if-gtz v13, :cond_4

    :try_start_1
    invoke-virtual {v5, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v0, v4}, Ljava/security/Signature;->update([B)V
    :try_end_2
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v10, v10, 0x1

    move-wide v15, v11

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ota verify dec file data signature update Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/security/SignatureException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x4

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read File Failed\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x16

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_2
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/16 v2, -0x21

    const-string v3, "Decrypt Exit..."

    invoke-direct {v0, v1, v3, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :cond_3
    const-wide/16 v15, 0x0

    :cond_4
    sub-long/2addr v2, v15

    long-to-int v2, v2

    if-lez v2, :cond_5

    new-array v2, v2, [B

    :try_start_3
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    invoke-virtual {v0, v2}, Ljava/security/Signature;->update([B)V
    :try_end_4
    .catch Ljava/security/SignatureException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ota verify dec file data signature update Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/security/SignatureException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x4

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :catch_3
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read File Failed\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x16

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_5
    :goto_3
    :try_start_5
    invoke-virtual/range {p4 .. p5}, Ljava/security/Signature;->verify([B)Z

    move-result v0
    :try_end_5
    .catch Ljava/security/SignatureException; {:try_start_5 .. :try_end_5} :catch_4

    if-eqz v0, :cond_6

    return v14

    :cond_6
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/16 v2, -0x2a

    const-string v3, "ota verify dec file failed..."

    invoke-direct {v0, v1, v3, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :catch_4
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ota verify dec file failed...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/security/SignatureException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x4

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :catch_5
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create FileInputStream failed...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0, v6}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_7
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v2, "file length is not correct"

    invoke-direct {v0, v1, v2, v6}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :cond_8
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/4 v2, -0x6

    const-string v3, "ota dec file Not Exists..."

    invoke-direct {v0, v1, v3, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0
.end method

.method protected a([BJLjava/security/Signature;[B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    array-length v0, p1

    int-to-long v0, v0

    cmp-long p2, v0, p2

    if-nez p2, :cond_1

    const/4 p2, -0x4

    :try_start_0
    invoke-virtual {p4, p1}, Ljava/security/Signature;->update([B)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p4, p5}, Ljava/security/Signature;->verify([B)Z

    move-result p1
    :try_end_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance p1, Landroid/pso/XpPsoException;

    iget-object p2, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/16 p3, -0x2a

    const-string p4, "ota verify Dec Data failed..."

    invoke-direct {p1, p2, p4, p3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p1

    :catch_0
    move-exception p1

    new-instance p3, Landroid/pso/XpPsoException;

    iget-object p4, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ota verify Dec Data failed...\r\n("

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/SignatureException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p4, p1, p2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p3

    :catch_1
    move-exception p1

    new-instance p3, Landroid/pso/XpPsoException;

    iget-object p4, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ota verify Dec Data signature update Fail...\r\n("

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/SignatureException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p4, p1, p2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p3

    :cond_1
    new-instance p1, Landroid/pso/XpPsoException;

    iget-object p2, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/4 p3, -0x1

    const-string p4, "Dec Data length is not correct"

    invoke-direct {p1, p2, p4, p3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p1
.end method

.method protected a([B[BLjava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    const/4 p1, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/pso/XpPso;->PemStringFormat2der(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/pso/XpPso;->a([B)Ljava/security/PrivateKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v1, v0

    move-object v0, p1

    :goto_1
    if-eqz v0, :cond_3

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v2}, Landroid/pso/XpPso;->getE28Cert(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_1
    invoke-static {v2}, Landroid/pso/XpPso;->PemStringFormat2der([B)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/pso/XpPso;->b([B)Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object p1, v2

    goto :goto_2

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    if-eqz p1, :cond_1

    :try_start_2
    const-string v2, "tttttttPlanText"

    invoke-virtual {p0, v2, v0}, Landroid/pso/XpPso;->a(Ljava/lang/String;Ljava/security/PrivateKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0, p1}, Landroid/pso/XpPso;->a(Ljava/lang/String;Ljava/lang/String;Ljava/security/PublicKey;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_3

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_0

    if-nez v1, :cond_0

    return p1

    :cond_0
    new-instance p1, Landroid/pso/XpPsoException;

    iget-object v0, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RSA cert Key Test "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Failed\r\n("

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, -0x7a

    invoke-direct {p1, v0, p2, p3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p1

    :cond_1
    new-instance p1, Landroid/pso/XpPsoException;

    iget-object p2, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/16 p3, -0xe

    const-string v0, "No Public Key"

    invoke-direct {p1, p2, v0, p3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p1

    :cond_2
    new-instance p1, Landroid/pso/XpPsoException;

    iget-object p2, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/4 p3, -0x2

    const-string v0, "No Cert Bytes"

    invoke-direct {p1, p2, v0, p3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p1

    :cond_3
    new-instance p1, Landroid/pso/XpPsoException;

    iget-object p2, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/16 p3, -0x17

    const-string v0, "No PrivateKey"

    invoke-direct {p1, p2, v0, p3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p1
.end method

.method protected a(II[B[BLjavax/crypto/Cipher;Ljava/security/Signature;[B[J)[B
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    const/16 v2, 0x2800

    if-le v2, v0, :cond_0

    move v10, v0

    goto :goto_0

    :cond_0
    move v10, v2

    :goto_0
    div-int v2, v0, v10

    rem-int v3, v0, v10

    const/4 v4, 0x1

    const/4 v11, 0x0

    if-nez v3, :cond_1

    move v3, v11

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    add-int v12, v2, v3

    const/4 v13, -0x3

    const/4 v14, -0x4

    if-le v12, v4, :cond_6

    move v7, v11

    move v15, v7

    move/from16 v16, v15

    :goto_2
    if-ge v15, v12, :cond_5

    iget-boolean v2, v1, Landroid/pso/XpPso;->i:Z

    if-nez v2, :cond_4

    add-int v6, v16, v10

    if-gt v6, v0, :cond_5

    move-object/from16 v2, p5

    move-object/from16 v3, p3

    move/from16 v4, v16

    move v5, v10

    move/from16 v17, v6

    move-object v6, v8

    move/from16 v18, v7

    :try_start_0
    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v2
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v2, :cond_2

    move/from16 v3, v18

    :try_start_1
    invoke-virtual {v9, v8, v3, v2}, Ljava/security/Signature;->update([BII)V
    :try_end_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bin Signed Data Verify update Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/security/SignatureException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0, v14}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_2
    move/from16 v3, v18

    :goto_3
    if-lez v2, :cond_3

    add-int v7, v3, v2

    add-int v3, p2, v17

    int-to-long v3, v3

    aput-wide v3, p8, v11

    move/from16 v16, v17

    goto :goto_4

    :cond_3
    move v7, v3

    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decrypt update Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    invoke-virtual {v4}, Ljavax/crypto/ShortBufferException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0, v13}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_4
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/16 v2, -0x21

    const-string v3, "Decrypt Exit..."

    invoke-direct {v0, v1, v3, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :cond_5
    move v3, v7

    move/from16 v2, v16

    goto :goto_5

    :cond_6
    move v2, v11

    move v3, v2

    :goto_5
    sub-int/2addr v0, v2

    if-lez v0, :cond_8

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    :try_start_2
    invoke-virtual {v5, v4, v2, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    if-eqz v0, :cond_7

    array-length v2, v0

    invoke-static {v0, v11, v8, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_7
    if-eqz v0, :cond_8

    :try_start_3
    invoke-virtual {v9, v0}, Ljava/security/Signature;->update([B)V
    :try_end_3
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bin Signed Data Verify update Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/security/SignatureException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0, v14}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :catch_3
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decrypt update Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0, v13}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :catch_4
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decrypt update Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0, v13}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_8
    :goto_6
    :try_start_4
    invoke-virtual {v1, v8}, Landroid/pso/XpPso;->h([B)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/pso/XpPso;->i([B)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p7

    invoke-virtual {v1, v2}, Landroid/pso/XpPso;->i([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sha256sum correct?="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",sha256result="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    return-object v8

    :catch_5
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sha256sum check Failed...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0, v14}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2
.end method

.method protected a(Landroid/pso/XpPso$OtaEncBinInfo;II[BLjavax/crypto/Cipher;Ljava/security/Signature;[J)[B
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    new-array v6, v2, [B

    const/16 v7, 0x2800

    if-le v7, v2, :cond_0

    move v7, v2

    :cond_0
    div-int v8, v2, v7

    rem-int v9, v2, v7

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v9, :cond_1

    move v9, v11

    goto :goto_0

    :cond_1
    move v9, v10

    :goto_0
    add-int/2addr v8, v9

    new-array v9, v7, [B

    const/4 v12, 0x7

    if-le v8, v10, :cond_4

    move v10, v11

    move v14, v10

    move v15, v14

    move/from16 v16, v15

    :goto_1
    if-ge v10, v8, :cond_5

    add-int v13, v15, v7

    if-gt v13, v2, :cond_5

    move/from16 v17, v7

    array-length v7, v9

    invoke-static {v3, v15, v9, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {v1, v12, v9}, Landroid/pso/XpPso;->DoXor(I[B)[B

    move-result-object v7

    :try_start_0
    invoke-virtual {v4, v7}, Ljavax/crypto/Cipher;->update([B)[B

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v7, :cond_3

    array-length v15, v7

    invoke-static {v7, v11, v6, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v15, v7

    new-array v15, v15, [B

    array-length v12, v15

    invoke-static {v7, v11, v15, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {v1, v15}, Landroid/pso/XpPso;->getCheckSum([B)I

    move-result v12

    add-int v16, v16, v12

    :try_start_1
    invoke-virtual {v5, v7}, Ljava/security/Signature;->update([B)V
    :try_end_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_0

    add-int v15, p3, v13

    move/from16 v18, v8

    move-object/from16 v19, v9

    int-to-long v8, v15

    aput-wide v8, p7, v11

    if-eqz v7, :cond_2

    array-length v7, v7

    add-int/2addr v14, v7

    :cond_2
    add-int/lit8 v10, v10, 0x1

    move v15, v13

    move/from16 v7, v17

    move/from16 v8, v18

    move-object/from16 v9, v19

    const/4 v12, 0x7

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bin Signed Data Verify update Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/security/SignatureException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x4

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_3
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v2, "Decrypt update Fail...\r\n(out null)"

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decrypt update Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x3

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_4
    move v14, v11

    move v15, v14

    move/from16 v16, v15

    :cond_5
    sub-int/2addr v2, v15

    if-lez v2, :cond_7

    new-array v2, v2, [B

    array-length v7, v2

    invoke-static {v3, v15, v2, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x7

    invoke-direct {v1, v3, v2}, Landroid/pso/XpPso;->DoXor(I[B)[B

    move-result-object v2

    :try_start_2
    invoke-virtual {v4, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v2, :cond_6

    array-length v3, v2

    invoke-static {v2, v11, v6, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v2

    new-array v3, v3, [B

    array-length v4, v3

    invoke-static {v2, v11, v3, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {v1, v3}, Landroid/pso/XpPso;->getCheckSum([B)I

    move-result v3

    add-int v16, v16, v3

    :try_start_3
    invoke-virtual {v5, v2}, Ljava/security/Signature;->update([B)V
    :try_end_3
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bin Signed Data Verify update Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/security/SignatureException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x4

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_6
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v2, "Decrypt doFinal Fail...\r\n(out null)"

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :catch_3
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decrypt doFinal Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x3

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :catch_4
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decrypt doFinal Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    invoke-virtual {v4}, Ljavax/crypto/IllegalBlockSizeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x3

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :catch_5
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decrypt doFinal Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    invoke-virtual {v4}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x3

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_7
    :goto_2
    move/from16 v2, v16

    :try_start_4
    iget-object v3, v0, Landroid/pso/XpPso$OtaEncBinInfo;->SignData:[B

    invoke-virtual {v5, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v3
    :try_end_4
    .catch Ljava/security/SignatureException; {:try_start_4 .. :try_end_4} :catch_6

    if-eqz v3, :cond_9

    iget v0, v0, Landroid/pso/XpPso$OtaEncBinInfo;->CheckSum:I

    if-ne v2, v0, :cond_8

    return-object v6

    :cond_8
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/4 v2, -0x5

    const-string v3, "ota package CheckSum Error..."

    invoke-direct {v0, v1, v3, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :cond_9
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v2, "bin Signed Data Verify  Fail..."

    const/4 v3, -0x4

    invoke-direct {v0, v1, v2, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :catch_6
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bin Signed Data Verify  Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/SignatureException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x4

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2
.end method

.method protected a([BI)[B
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p0}, Landroid/pso/XpPso;->getE28OtaPackheadLen()I

    move-result v3

    new-array v1, v3, [B

    const/4 v11, 0x0

    invoke-static {v0, v11, v1, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v0

    int-to-long v4, v2

    invoke-direct {v10, v1, v4, v5}, Landroid/pso/XpPso;->getE28OtaPackhead([BJ)Landroid/pso/XpPso$E28OtaPackhead;

    move-result-object v12

    if-eqz v12, :cond_2

    iget-object v1, v10, Landroid/pso/XpPso;->f:[J

    int-to-long v4, v3

    aput-wide v4, v1, v11

    iget-wide v1, v12, Landroid/pso/XpPso$E28OtaPackhead;->datalen:J

    long-to-int v1, v1

    new-array v4, v1, [B

    iget-wide v1, v12, Landroid/pso/XpPso$E28OtaPackhead;->datalen:J

    long-to-int v1, v1

    new-array v13, v1, [B

    array-length v1, v4

    invoke-static {v0, v3, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x2

    move/from16 v2, p2

    if-ne v2, v1, :cond_0

    iget-object v1, v12, Landroid/pso/XpPso$E28OtaPackhead;->key_id:[B

    const-string v2, "CTR"

    const-string v5, "NoPadding"

    invoke-virtual {v10, v1, v2, v5}, Landroid/pso/XpPso;->a([BLjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_0
    iget-object v1, v12, Landroid/pso/XpPso$E28OtaPackhead;->key_id:[B

    invoke-virtual {v10, v1}, Landroid/pso/XpPso;->j([B)Ljavax/crypto/Cipher;

    move-result-object v1

    goto :goto_0

    :goto_1
    iget-object v1, v12, Landroid/pso/XpPso$E28OtaPackhead;->cert_id:[B

    invoke-virtual {v10, v1}, Landroid/pso/XpPso;->g([B)Ljava/security/PublicKey;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/pso/XpPso;->b(Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v15

    iget-wide v1, v12, Landroid/pso/XpPso$E28OtaPackhead;->datalen:J

    long-to-int v2, v1

    iget-object v8, v12, Landroid/pso/XpPso$E28OtaPackhead;->datasha256:[B

    iget-object v9, v10, Landroid/pso/XpPso;->f:[J

    move-object v1, v10

    move-object v5, v13

    move-object v7, v15

    invoke-virtual/range {v1 .. v9}, Landroid/pso/XpPso;->a(II[B[BLjavax/crypto/Cipher;Ljava/security/Signature;[B[J)[B

    const/4 v7, -0x4

    :try_start_0
    iget-object v1, v12, Landroid/pso/XpPso$E28OtaPackhead;->sign:[B

    invoke-virtual {v15, v1}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v10, v14}, Landroid/pso/XpPso;->b(Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v5

    iget-wide v3, v12, Landroid/pso/XpPso$E28OtaPackhead;->datalen:J

    iget-object v6, v12, Landroid/pso/XpPso$E28OtaPackhead;->sign:[B

    move-object v1, v10

    move-object v2, v13

    invoke-virtual/range {v1 .. v6}, Landroid/pso/XpPso;->a([BJLjava/security/Signature;[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v10, Landroid/pso/XpPso;->f:[J

    array-length v0, v0

    int-to-long v2, v0

    aput-wide v2, v1, v11

    return-object v13

    :cond_1
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v10, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v2, "ota package verify failed..."

    invoke-direct {v0, v1, v2, v7}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/pso/XpPsoException;

    iget-object v2, v10, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bin Signed Data Verify  Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/SignatureException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0, v7}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v1

    :cond_2
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v10, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/4 v2, -0x1

    const-string v3, "Invalid File...\r\n(Packhead==null)"

    invoke-direct {v0, v1, v3, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0
.end method

.method protected b([BLjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/pso/XpPso;->f()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/pso/XpPso;->a(I)Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-virtual {p0, p1}, Landroid/pso/XpPso;->getD22encKey([B)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const/16 v2, 0x10

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, p1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {p1, v3}, Ljava/util/Arrays;->fill([BB)V

    array-length p1, v2

    invoke-static {v2, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AES/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    :try_start_1
    invoke-virtual {p2, v0, v4, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    move-object v1, p2

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, p2

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v1, p2

    goto :goto_2

    :catch_3
    move-exception p1

    move-object v1, p2

    goto :goto_3

    :catch_4
    move-exception p1

    move-object v1, p2

    goto :goto_4

    :catch_5
    move-exception p1

    move-object v1, p2

    goto :goto_5

    :catch_6
    move-exception p1

    move-object v1, p2

    goto :goto_6

    :catch_7
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :catch_8
    move-exception p1

    :goto_1
    invoke-virtual {p1}, Ljavax/crypto/IllegalBlockSizeException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :catch_9
    move-exception p1

    :goto_2
    invoke-virtual {p1}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :catch_a
    move-exception p1

    :goto_3
    invoke-virtual {p1}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :catch_b
    move-exception p1

    :goto_4
    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :catch_c
    move-exception p1

    :goto_5
    invoke-virtual {p1}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :catch_d
    move-exception p1

    :goto_6
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_7
    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance p2, Landroid/pso/XpPsoException;

    iget-object p3, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get Aes Key Cipher Failed...maybe need to preset\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0xf

    invoke-direct {p2, p3, p1, v0}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p2
.end method

.method protected b(JILjava/io/InputStream;Ljava/io/OutputStream;Ljavax/crypto/Cipher;Ljava/security/Signature;[B[J)[B
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    const-wide/16 v7, 0x2800

    cmp-long v0, v7, v2

    if-lez v0, :cond_0

    long-to-int v0, v2

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_0
    const/16 v0, 0x2800

    goto :goto_0

    :goto_1
    int-to-long v8, v7

    div-long v10, v2, v8

    rem-long v12, v2, v8

    const-wide/16 v14, 0x0

    cmp-long v0, v12, v14

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    :goto_2
    int-to-long v14, v0

    add-long/2addr v10, v14

    const/4 v14, 0x0

    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v15
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v14, v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v15, v14

    :goto_3
    new-array v0, v7, [B

    new-array v13, v7, [B

    mul-int/lit8 v12, v7, 0x3

    new-array v12, v12, [B

    const-wide/16 v18, 0x1

    cmp-long v18, v10, v18

    if-lez v18, :cond_8

    move-object/from16 v25, v14

    move-object/from16 v24, v15

    const/4 v5, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x1

    :goto_4
    int-to-long v14, v5

    cmp-long v14, v14, v10

    if-gez v14, :cond_7

    iget-boolean v14, v1, Landroid/pso/XpPso;->i:Z

    if-nez v14, :cond_6

    add-long v14, v16, v8

    cmp-long v19, v14, v2

    if-gtz v19, :cond_7

    move-wide/from16 v26, v8

    const/4 v8, 0x1

    xor-int/lit8 v9, v18, 0x1

    if-ne v9, v8, :cond_2

    :try_start_2
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v16

    :goto_5
    move/from16 v8, v16

    goto :goto_6

    :catch_2
    move-exception v0

    goto/16 :goto_9

    :cond_2
    invoke-virtual {v4, v13}, Ljava/io/InputStream;->read([B)I

    move-result v16
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :goto_6
    if-ne v8, v7, :cond_5

    const/4 v8, 0x1

    if-ne v9, v8, :cond_3

    const/16 v20, 0x0

    :try_start_3
    array-length v8, v0

    const/16 v23, 0x0

    move-object/from16 v18, p6

    move-object/from16 v19, v0

    move/from16 v21, v8

    move-object/from16 v22, v12

    invoke-virtual/range {v18 .. v23}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v8

    goto :goto_7

    :catch_3
    move-exception v0

    goto/16 :goto_8

    :cond_3
    const/16 v20, 0x0

    array-length v8, v13

    const/16 v23, 0x0

    move-object/from16 v18, p6

    move-object/from16 v19, v13

    move/from16 v21, v8

    move-object/from16 v22, v12

    invoke-virtual/range {v18 .. v23}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_7
    if-lez v8, :cond_4

    move-object/from16 v28, v0

    move/from16 v29, v7

    move-object/from16 v0, v24

    const/4 v7, 0x0

    :try_start_4
    invoke-virtual {v0, v12, v7, v8}, Ljava/security/MessageDigest;->update([BII)V

    move/from16 v30, v9

    move-object/from16 v9, v25

    invoke-virtual {v9, v12, v7, v8}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v6, v12, v7, v8}, Ljava/security/Signature;->update([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-wide/from16 v31, v10

    move-object/from16 v10, p5

    const/16 v11, -0x2c

    :try_start_5
    invoke-virtual {v10, v12, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual/range {p5 .. p5}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move/from16 v8, p3

    move-object/from16 v33, v12

    int-to-long v11, v8

    add-long/2addr v11, v14

    aput-wide v11, p9, v7

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v24, v0

    move-object/from16 v25, v9

    move-wide/from16 v16, v14

    move-wide/from16 v8, v26

    move-object/from16 v0, v28

    move/from16 v7, v29

    move/from16 v18, v30

    move-wide/from16 v10, v31

    move-object/from16 v12, v33

    goto/16 :goto_4

    :catch_4
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write File Failed...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x2c

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :catch_5
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bin Signed Data Verify update Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x4

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_4
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v2, "Decrypt update Fail...\r\n(out = null)"

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :goto_8
    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decrypt update Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x3

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_5
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v2, "Read File Failed\r\n(read len error)"

    const/16 v3, -0x16

    invoke-direct {v0, v1, v2, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :goto_9
    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read File Failed\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x16

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_6
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/16 v2, -0x21

    const-string v3, "Decrypt Exit..."

    invoke-direct {v0, v1, v3, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :cond_7
    move-object/from16 v0, v24

    move-object/from16 v9, v25

    move-object/from16 v10, p5

    goto :goto_a

    :cond_8
    move-object v9, v14

    move-object v0, v15

    move-object/from16 v10, p5

    const-wide/16 v16, 0x0

    :goto_a
    sub-long v2, v2, v16

    long-to-int v2, v2

    if-lez v2, :cond_b

    new-array v2, v2, [B

    :try_start_6
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    array-length v4, v2

    if-ne v3, v4, :cond_a

    move-object/from16 v3, p6

    :try_start_7
    invoke-virtual {v3, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    if-eqz v2, :cond_9

    :try_start_8
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v9, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v6, v2}, Ljava/security/Signature;->update([B)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :try_start_9
    invoke-virtual {v10, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual/range {p5 .. p5}, Ljava/io/OutputStream;->flush()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_b

    :catch_6
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write File Failed...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x2c

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :catch_7
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bin Signed Data Verify update Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x4

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_9
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v2, "Decrypt update Fail...\r\n(out null)"

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :catch_8
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decrypt update Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x3

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_a
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v2, "Read File Failed\r\n(read len error)"

    const/16 v3, -0x16

    invoke-direct {v0, v1, v2, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :catch_9
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read File Failed\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x16

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2

    :cond_b
    :goto_b
    :try_start_a
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-virtual {v1, v0}, Landroid/pso/XpPso;->i([B)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, p8

    invoke-virtual {v1, v3}, Landroid/pso/XpPso;->i([B)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PSO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sha256sum correct?="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",sha256result="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    return-object v2

    :catch_a
    move-exception v0

    new-instance v2, Landroid/pso/XpPsoException;

    iget-object v1, v1, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sha256sum check Failed...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x4

    invoke-direct {v2, v1, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v2
.end method

.method protected b([BI)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/pso/XpPso;->l([B)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Landroid/pso/XpPso;->getOtaEncBinInfoFormMem([BJ)Landroid/pso/XpPso$OtaEncBinInfo;

    move-result-object v8

    iget v2, v8, Landroid/pso/XpPso$OtaEncBinInfo;->result:I

    if-nez v2, :cond_3

    iget-wide v2, v8, Landroid/pso/XpPso$OtaEncBinInfo;->dstBinLen:J

    long-to-int v2, v2

    new-array v4, v2, [B

    iget-wide v2, v8, Landroid/pso/XpPso$OtaEncBinInfo;->dstBinOffset:J

    add-long/2addr v2, v0

    long-to-int v2, v2

    iget-wide v5, v8, Landroid/pso/XpPso$OtaEncBinInfo;->dstBinLen:J

    long-to-int v3, v5

    const/4 v9, 0x0

    invoke-static {p1, v2, v4, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Landroid/pso/XpPso;->f:[J

    aput-wide v0, v2, v9

    iget v2, v8, Landroid/pso/XpPso$OtaEncBinInfo;->BINType:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    iget v2, v8, Landroid/pso/XpPso$OtaEncBinInfo;->BINType:I

    move v5, v2

    :goto_0
    if-ne p2, v3, :cond_1

    const-string v2, "CBC"

    const-string v3, "NoPadding"

    invoke-virtual {p0, v5, v2, v3}, Landroid/pso/XpPso;->a(ILjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    :goto_1
    move-object v5, v2

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v5}, Landroid/pso/XpPso;->a(I)Ljavax/crypto/Cipher;

    move-result-object v2

    goto :goto_1

    :goto_2
    invoke-direct {p0}, Landroid/pso/XpPso;->g()Ljava/security/PublicKey;

    move-result-object v10

    iget-object v2, p0, Landroid/pso/XpPso;->f:[J

    iget-wide v6, v8, Landroid/pso/XpPso$OtaEncBinInfo;->dstBinOffset:J

    add-long/2addr v0, v6

    aput-wide v0, v2, v9

    invoke-virtual {p0, v10}, Landroid/pso/XpPso;->a(Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v6

    iget-wide v0, v8, Landroid/pso/XpPso$OtaEncBinInfo;->dstBinLen:J

    long-to-int v2, v0

    iget-object v0, p0, Landroid/pso/XpPso;->f:[J

    aget-wide v0, v0, v9

    long-to-int v3, v0

    iget-object v7, p0, Landroid/pso/XpPso;->f:[J

    move-object v0, p0

    move-object v1, v8

    invoke-virtual/range {v0 .. v7}, Landroid/pso/XpPso;->a(Landroid/pso/XpPso$OtaEncBinInfo;II[BLjavax/crypto/Cipher;Ljava/security/Signature;[J)[B

    move-result-object v6

    iget-object v0, p0, Landroid/pso/XpPso;->f:[J

    array-length v1, p1

    int-to-long v1, v1

    aput-wide v1, v0, v9

    invoke-virtual {p0, v10}, Landroid/pso/XpPso;->a(Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v4

    iget-wide v0, v8, Landroid/pso/XpPso$OtaEncBinInfo;->dstBinLen:J

    long-to-int v0, v0

    int-to-long v2, v0

    iget-object v5, v8, Landroid/pso/XpPso$OtaEncBinInfo;->SignData:[B

    move-object v0, p0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/pso/XpPso;->a([BJLjava/security/Signature;[B)Z

    if-eqz v6, :cond_2

    return-object v6

    :cond_2
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/16 v2, -0x2a

    const-string v3, "ota package decryptverify to mem failed..."

    invoke-direct {v0, v1, v3, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :cond_3
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/4 v2, -0x1

    const-string v3, "Invalid File..."

    invoke-direct {v0, v1, v3, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0
.end method

.method public ble_package_decryptverify_mtom([BI)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/pso/XpPso;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/pso/XpPso;->i:Z

    const/4 v0, 0x2

    const/16 v1, 0x1c

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, p1, v0}, Landroid/pso/XpPso;->a([BI)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v1, 0x16

    if-ne p2, v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/pso/XpPso;->f([B)[B

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0, p1, v0}, Landroid/pso/XpPso;->b([BI)[B

    move-result-object p1

    return-object p1
.end method

.method protected c([B)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    const-string v0, "HmacMD5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "nnnnaks"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    const-string v0, "AKa"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/pso/XpPso;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move v2, v1

    :goto_0
    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v0}, Landroid/pso/XpPso;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x63

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/pso/XpPso;->genAliasRootKey()Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/pso/XpPso;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    const-wide/16 v3, 0x5

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    invoke-direct {p0, v1}, Landroid/pso/XpPso;->getAesSpecKeyVector(I)[B

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Landroid/pso/XpPso;->a(Ljava/lang/String;[B[B)[B

    move-result-object p1

    invoke-static {p1}, Landroid/pso/Base64Util;->encodeToString([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/security/UnrecoverableKeyException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljavax/crypto/ShortBufferException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :catch_6
    move-exception p1

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :catch_7
    move-exception p1

    invoke-virtual {p1}, Ljava/security/KeyStoreException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :catch_8
    move-exception p1

    invoke-virtual {p1}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :catch_9
    move-exception p1

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get Alias failed ...\r\n("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, -0x7

    invoke-direct {v0, v1, p1, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0
.end method

.method c()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/pso/XpPso;->ota_gen_mcu_key()[B

    move-result-object v0

    const/16 v1, -0x7b

    if-eqz v0, :cond_1

    const-string v0, "12345679"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/pso/XpPso;->ota_mcu_encrypt([B)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/pso/XpPso;->ota_mcu_decrypt([B)[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PSO"

    const-string v1, "Mcu Key Test succeed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v2, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v3, "Mcu Key Test Failed...!"

    invoke-direct {v0, v2, v3, v1}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :cond_1
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v2, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v3, "get Mcu Key Failed...!"

    invoke-direct {v0, v2, v3, v1}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0
.end method

.method public checkIfPreseted()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/pso/XpPso;->b()V

    invoke-direct {p0}, Landroid/pso/XpPso;->f()V

    sget v0, Landroid/pso/XpPso;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Landroid/pso/XpPso;->D21checkIfPreseted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/pso/XpPso;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/pso/XpPso;->E28checkIfPreseted()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/pso/XpPso;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method protected d([B)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    const-string v0, "HmacMD5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "nnnnaks"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    const-string v0, "AKa"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/pso/XpPso;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-direct {p0, v1}, Landroid/pso/XpPso;->getAesSpecKeyVector(I)[B

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Landroid/pso/XpPso;->a(Ljava/lang/String;[B[B)[B

    move-result-object p1

    invoke-static {p1}, Landroid/pso/Base64Util;->encodeToString([B)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    move-object v2, v0

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v2, v0

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v2, v0

    goto :goto_2

    :catch_3
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :catch_4
    move-exception p1

    :goto_1
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :catch_5
    move-exception p1

    :goto_2
    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get Alias failed ...("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")\r\n("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, -0x7

    invoke-direct {v0, v1, p1, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0
.end method

.method d()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/pso/XpPso;->ota_gen_mcu_key()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "PSO"

    const-string v1, "Mcu Key preseted!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/16 v2, -0x7b

    const-string v3, "get Mcu Key Failed...!"

    invoke-direct {v0, v1, v3, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0
.end method

.method protected e([B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/KeyStoreException;,
            Ljavax/crypto/ShortBufferException;,
            Landroid/pso/XpPsoException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    const-string v0, "HmacMD5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "nnnnaks"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    const-string v0, "AKa"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/pso/XpPso;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1}, Landroid/pso/XpPso;->getAesSpecKeyVector(I)[B

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Landroid/pso/XpPso;->b(Ljava/lang/String;[B[B)[B

    move-result-object p1

    invoke-static {p1}, Landroid/pso/Base64Util;->encodeToString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method e()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/pso/XpPso;->b()V

    invoke-direct {p0}, Landroid/pso/XpPso;->f()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    const-string v2, "AKspec"

    invoke-direct {p0, v2, v1}, Landroid/pso/XpPso;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1}, Landroid/pso/XpPso;->getD21AesSpecKey(I)[B

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AKs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/pso/XpPso;->b(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "PSO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "S:AKs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " succeed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v2, Landroid/pso/XpPso;->stop:Z

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "AKm"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/pso/XpPso;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Landroid/pso/XpPso;->getMcuRtKey()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/pso/XpPso;->a(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public e28ota_package_decryptverify_tofile(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/pso/XpPso;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/pso/XpPso;->i:Z

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Landroid/pso/XpPso;->b(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method protected f([B)[B
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p0}, Landroid/pso/XpPso;->getE28OtaPackheadLen()I

    move-result v3

    new-array v1, v3, [B

    const/4 v11, 0x0

    invoke-static {v0, v11, v1, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v0

    int-to-long v4, v2

    invoke-direct {v10, v1, v4, v5}, Landroid/pso/XpPso;->getE28OtaPackhead([BJ)Landroid/pso/XpPso$E28OtaPackhead;

    move-result-object v12

    if-eqz v12, :cond_1

    iget-object v1, v10, Landroid/pso/XpPso;->f:[J

    int-to-long v4, v3

    aput-wide v4, v1, v11

    iget-wide v1, v12, Landroid/pso/XpPso$E28OtaPackhead;->datalen:J

    long-to-int v1, v1

    new-array v4, v1, [B

    iget-wide v1, v12, Landroid/pso/XpPso$E28OtaPackhead;->datalen:J

    long-to-int v1, v1

    new-array v13, v1, [B

    array-length v1, v4

    invoke-static {v0, v3, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v12, Landroid/pso/XpPso$E28OtaPackhead;->key_id:[B

    const-string v2, "CTR"

    const-string v5, "NoPadding"

    invoke-virtual {v10, v1, v2, v5}, Landroid/pso/XpPso;->b([BLjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    iget-object v1, v12, Landroid/pso/XpPso$E28OtaPackhead;->cert_id:[B

    invoke-virtual {v10, v1}, Landroid/pso/XpPso;->g([B)Ljava/security/PublicKey;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/pso/XpPso;->b(Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v15

    iget-wide v1, v12, Landroid/pso/XpPso$E28OtaPackhead;->datalen:J

    long-to-int v2, v1

    iget-object v8, v12, Landroid/pso/XpPso$E28OtaPackhead;->datasha256:[B

    iget-object v9, v10, Landroid/pso/XpPso;->f:[J

    move-object v1, v10

    move-object v5, v13

    move-object v7, v15

    invoke-virtual/range {v1 .. v9}, Landroid/pso/XpPso;->a(II[B[BLjavax/crypto/Cipher;Ljava/security/Signature;[B[J)[B

    const/4 v7, -0x4

    :try_start_0
    iget-object v1, v12, Landroid/pso/XpPso$E28OtaPackhead;->sign:[B

    invoke-virtual {v15, v1}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v10, v14}, Landroid/pso/XpPso;->b(Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v5

    iget-wide v3, v12, Landroid/pso/XpPso$E28OtaPackhead;->datalen:J

    iget-object v6, v12, Landroid/pso/XpPso$E28OtaPackhead;->sign:[B

    move-object v1, v10

    move-object v2, v13

    invoke-virtual/range {v1 .. v6}, Landroid/pso/XpPso;->a([BJLjava/security/Signature;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v10, Landroid/pso/XpPso;->f:[J

    array-length v0, v0

    int-to-long v2, v0

    aput-wide v2, v1, v11

    return-object v13

    :cond_0
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v10, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v2, "package verify failed..."

    invoke-direct {v0, v1, v2, v7}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/pso/XpPsoException;

    iget-object v2, v10, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data Signed Verify  Fail...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/SignatureException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0, v7}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v1

    :cond_1
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, v10, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const/4 v2, -0x1

    const-string v3, "Invalid Input...\r\n(Packhead==null)"

    invoke-direct {v0, v1, v3, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0
.end method

.method protected g([B)Ljava/security/PublicKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v0}, Landroid/pso/XpPso;->getE28Cert(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, -0x2

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/pso/XpPso;->PemStringFormat2der([B)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/pso/XpPso;->b([B)Ljava/security/cert/Certificate;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :cond_0
    return-object v1

    :catch_3
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :catch_4
    move-exception p1

    :goto_1
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :catch_5
    move-exception p1

    :goto_2
    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    if-nez v1, :cond_1

    new-instance v1, Landroid/pso/XpPsoException;

    iget-object v2, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No Cert\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1, v0}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v1

    :cond_1
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No PublicKey\r\n("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v2, -0xe

    invoke-direct {v0, v1, p1, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0

    :cond_2
    new-instance p1, Landroid/pso/XpPsoException;

    iget-object v1, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string v2, "No Cert(get E28 Cert pem)"

    invoke-direct {p1, v1, v2, v0}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p1
.end method

.method public genAliasRootKey()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AKa"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/pso/XpPso;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/pso/XpPso;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected native getD22encKey([B)[B
.end method

.method protected native getE28enccKey([B)[B
.end method

.method protected native getE28enccKeyId(I)[B
.end method

.method public get_carType()I
    .locals 1

    sget v0, Landroid/pso/XpPso;->c:I

    return v0
.end method

.method public get_dec_mtom_processed_len()J
    .locals 2

    iget-object v0, p0, Landroid/pso/XpPso;->f:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public get_dec_tofile_processed_len()J
    .locals 2

    iget-object v0, p0, Landroid/pso/XpPso;->h:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public get_dec_tomem_processed_len()J
    .locals 2

    iget-object v0, p0, Landroid/pso/XpPso;->g:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method protected h([B)[B
    .locals 1

    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 p1, 0x0

    return-object p1
.end method

.method protected i([B)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p1, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method protected j([B)Ljavax/crypto/Cipher;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/pso/XpPso;->f()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    invoke-virtual {p0, p1}, Landroid/pso/XpPso;->e([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "CTR"

    const-string v2, "NoPadding"

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/pso/XpPso;->c(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljavax/crypto/ShortBufferException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/security/KeyStoreException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/security/UnrecoverableKeyException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_6
    move-exception p1

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_7
    move-exception p1

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get Aes Key Cipher Failed...maybe need to preset\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v2, -0xf

    invoke-direct {v0, v1, p1, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0
.end method

.method protected k([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/pso/XpPso;->f()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/pso/XpPso;->a(I)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v1

    array-length v2, p1

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    array-length v2, p1

    add-int/2addr v2, v1

    new-array v1, v2, [B

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p1

    new-array v2, v2, [B

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/pso/XpPso;->a(Ljavax/crypto/Cipher;[B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length p1, p1

    invoke-static {v0, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    :cond_0
    return-object v2
.end method

.method public ota_dec_stop()V
    .locals 2

    sget v0, Landroid/pso/XpPso;->c:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/pso/XpPso;->i:Z

    :cond_0
    return-void
.end method

.method public ota_gen_mcu_key()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/pso/XpPso;->b()V

    invoke-direct {p0}, Landroid/pso/XpPso;->f()V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AKm"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/pso/XpPso;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v4, v0

    move v3, v2

    :goto_0
    const/4 v5, 0x4

    if-ge v3, v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Landroid/pso/XpPso;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v4}, Landroid/pso/XpPso;->c(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {p0, v2}, Landroid/pso/XpPso;->getAesSpecKeyVector(I)[B

    move-result-object v2

    invoke-virtual {p0, v1, v3, v2}, Landroid/pso/XpPso;->b(Ljava/lang/String;[B[B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/security/KeyStoreException;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljavax/crypto/ShortBufferException;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/security/UnrecoverableKeyException;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v2, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get MCU Key failed...maybe need to preset\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, -0xf

    invoke-direct {v0, v2, v1, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0
.end method

.method public ota_mcu_decrypt([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    iget-object v0, p0, Landroid/pso/XpPso;->b:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/pso/XpPso;->ota_gen_mcu_key()[B

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Landroid/pso/XpPso;->b:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Landroid/pso/XpPsoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/pso/XpPsoException;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Landroid/pso/XpPso;->b:Ljavax/crypto/SecretKey;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Landroid/pso/XpPsoException;

    iget-object v1, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get MCU Key failed ...maybe need to preset\r\n("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, -0xf

    invoke-direct {p1, v1, v0, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p1

    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/pso/XpPso;->b:Ljavax/crypto/SecretKey;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/pso/XpPso;->getAesSpecKeyVector(I)[B

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/pso/XpPso;->a([BLjavax/crypto/SecretKey;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public ota_mcu_encrypt([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    iget-object v0, p0, Landroid/pso/XpPso;->b:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/pso/XpPso;->ota_gen_mcu_key()[B

    move-result-object v0

    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Landroid/pso/XpPso;->b:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/pso/XpPso;->b:Ljavax/crypto/SecretKey;

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/pso/XpPso;->b:Ljavax/crypto/SecretKey;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/pso/XpPso;->getAesSpecKeyVector(I)[B

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/pso/XpPso;->b([BLjavax/crypto/SecretKey;[B)[B

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Landroid/pso/XpPsoException;

    iget-object v1, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get MCU Key failed ...maybe need to preset\r\n("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, -0xf

    invoke-direct {p1, v1, v0, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p1
.end method

.method public ota_package_decryptverify_mtom([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/pso/XpPso;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/pso/XpPso;->i:Z

    sget v0, Landroid/pso/XpPso;->c:I

    const/4 v1, 0x2

    const/16 v2, 0x1c

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p1, v1}, Landroid/pso/XpPso;->a([BI)[B

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, v1}, Landroid/pso/XpPso;->b([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public ota_package_decryptverify_tofile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/pso/XpPso;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/pso/XpPso;->i:Z

    sget v0, Landroid/pso/XpPso;->c:I

    const/4 v1, 0x2

    const/16 v2, 0x1c

    if-ne v0, v2, :cond_0

    invoke-direct {p0, p1, p2, v1}, Landroid/pso/XpPso;->c(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1, p2, v1}, Landroid/pso/XpPso;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public ota_package_decryptverify_tomem(Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/pso/XpPso;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/pso/XpPso;->i:Z

    sget v0, Landroid/pso/XpPso;->c:I

    const/4 v1, 0x2

    const/16 v2, 0x1c

    if-ne v0, v2, :cond_0

    invoke-direct {p0, p1, v1}, Landroid/pso/XpPso;->f(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1, v1}, Landroid/pso/XpPso;->e(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method public ota_security_access_key(III)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/pso/XpPso;->b()V

    invoke-direct {p0}, Landroid/pso/XpPso;->GetUDSSecurityLuaEncData()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/pso/XpPso;->k([B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const/16 v0, -0x49

    :try_start_0
    const-string v2, "%x"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "%x"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "%x"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lorg/luaj/vm2/lib/jse/JsePlatform;->standardGlobals()Lorg/luaj/vm2/Globals;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/luaj/vm2/Globals;->load(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object p3

    invoke-static {p1}, Lorg/luaj/vm2/LuaValue;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/luaj/vm2/LuaValue;->call(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    const-string p1, "re_key"

    invoke-virtual {p2, p1}, Lorg/luaj/vm2/Globals;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 p2, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-wide v1, p2

    :goto_0
    cmp-long p1, v1, p2

    if-eqz p1, :cond_1

    long-to-int p1, v1

    return p1

    :cond_1
    new-instance p1, Landroid/pso/XpPsoException;

    iget-object p2, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    const-string p3, "get ota security access key failed..."

    invoke-direct {p1, p2, p3, v0}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p1

    :catch_0
    move-exception p1

    new-instance p2, Landroid/pso/XpPsoException;

    iget-object p3, p0, Landroid/pso/XpPso;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get ota security access key failed...\r\n("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1, v0}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p2
.end method

.method public set_carType(I)V
    .locals 0

    sput p1, Landroid/pso/XpPso;->c:I

    return-void
.end method
