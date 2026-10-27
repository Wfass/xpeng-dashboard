.class public Lcom/xiaopeng/commonfunc/bean/http/TboxVerifyKey;
.super Ljava/lang/Object;
.source "TboxVerifyKey.java"


# instance fields
.field private mCertKeys:[Lcom/xiaopeng/commonfunc/bean/http/CertKey;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "certkeys"
    .end annotation
.end field

.field private mTboxCaCert:Lcom/xiaopeng/commonfunc/bean/http/TboxCaCert;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cas"
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lcom/xiaopeng/commonfunc/bean/http/CertKey;Lcom/xiaopeng/commonfunc/bean/http/TboxCaCert;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/http/TboxVerifyKey;->mCertKeys:[Lcom/xiaopeng/commonfunc/bean/http/CertKey;

    .line 14
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/bean/http/TboxVerifyKey;->mTboxCaCert:Lcom/xiaopeng/commonfunc/bean/http/TboxCaCert;

    .line 15
    return-void
.end method


# virtual methods
.method public getCertKeys()[Lcom/xiaopeng/commonfunc/bean/http/CertKey;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/http/TboxVerifyKey;->mCertKeys:[Lcom/xiaopeng/commonfunc/bean/http/CertKey;

    return-object v0
.end method

.method public getTboxCaCert()Lcom/xiaopeng/commonfunc/bean/http/TboxCaCert;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/http/TboxVerifyKey;->mTboxCaCert:Lcom/xiaopeng/commonfunc/bean/http/TboxCaCert;

    return-object v0
.end method

.method public setCertKeys([Lcom/xiaopeng/commonfunc/bean/http/CertKey;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/http/TboxVerifyKey;->mCertKeys:[Lcom/xiaopeng/commonfunc/bean/http/CertKey;

    .line 23
    return-void
.end method

.method public setTboxCaCert(Lcom/xiaopeng/commonfunc/bean/http/TboxCaCert;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/http/TboxVerifyKey;->mTboxCaCert:Lcom/xiaopeng/commonfunc/bean/http/TboxCaCert;

    .line 31
    return-void
.end method
