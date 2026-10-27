.class public Lcom/xiaopeng/factory/bean/http/TboxVerifyKey;
.super Ljava/lang/Object;
.source "TboxVerifyKey.java"


# instance fields
.field private mCertKeys:[Lcom/xiaopeng/factory/bean/http/CertKey;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "certkeys"
    .end annotation
.end field

.field private mTboxCaCert:Lcom/xiaopeng/factory/bean/http/TboxCaCert;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cas"
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lcom/xiaopeng/factory/bean/http/CertKey;Lcom/xiaopeng/factory/bean/http/TboxCaCert;)V
    .locals 0
    .param p1, "mCertKeys"    # [Lcom/xiaopeng/factory/bean/http/CertKey;
    .param p2, "mTboxCaCert"    # Lcom/xiaopeng/factory/bean/http/TboxCaCert;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/xiaopeng/factory/bean/http/TboxVerifyKey;->mCertKeys:[Lcom/xiaopeng/factory/bean/http/CertKey;

    .line 16
    iput-object p2, p0, Lcom/xiaopeng/factory/bean/http/TboxVerifyKey;->mTboxCaCert:Lcom/xiaopeng/factory/bean/http/TboxCaCert;

    .line 17
    return-void
.end method


# virtual methods
.method public getCertKeys()[Lcom/xiaopeng/factory/bean/http/CertKey;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/factory/bean/http/TboxVerifyKey;->mCertKeys:[Lcom/xiaopeng/factory/bean/http/CertKey;

    return-object v0
.end method

.method public getTboxCaCert()Lcom/xiaopeng/factory/bean/http/TboxCaCert;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/factory/bean/http/TboxVerifyKey;->mTboxCaCert:Lcom/xiaopeng/factory/bean/http/TboxCaCert;

    return-object v0
.end method

.method public setCertKeys([Lcom/xiaopeng/factory/bean/http/CertKey;)V
    .locals 0
    .param p1, "mCertKeys"    # [Lcom/xiaopeng/factory/bean/http/CertKey;

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/factory/bean/http/TboxVerifyKey;->mCertKeys:[Lcom/xiaopeng/factory/bean/http/CertKey;

    .line 25
    return-void
.end method

.method public setTboxCaCert(Lcom/xiaopeng/factory/bean/http/TboxCaCert;)V
    .locals 0
    .param p1, "mTboxCaCert"    # Lcom/xiaopeng/factory/bean/http/TboxCaCert;

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/factory/bean/http/TboxVerifyKey;->mTboxCaCert:Lcom/xiaopeng/factory/bean/http/TboxCaCert;

    .line 33
    return-void
.end method
