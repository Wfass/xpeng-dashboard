.class public Lcom/xiaopeng/xuiservice/utils/KmsUtil;
.super Ljava/lang/Object;
.source "KmsUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDecryptedValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "encryptedValue"    # Ljava/lang/String;

    .line 15
    new-instance v0, Lcom/xiaopeng/kmslib/KmsSdk;

    invoke-direct {v0}, Lcom/xiaopeng/kmslib/KmsSdk;-><init>()V

    .line 16
    .local v0, "sdk":Lcom/xiaopeng/kmslib/KmsSdk;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/xiaopeng/kmslib/KmsSdk;->getKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    .local v1, "decryptedValue":Ljava/lang/String;
    return-object v1
.end method
