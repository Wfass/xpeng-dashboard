.class public Lcom/xiaopeng/factory/bean/http/TboxCertKey;
.super Ljava/lang/Object;
.source "TboxCertKey.java"


# instance fields
.field private mBLeSecKey:Lcom/xiaopeng/factory/bean/http/CertKey;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bsk"
    .end annotation
.end field

.field private mCertKeys:[Lcom/xiaopeng/factory/bean/http/CertKey;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "certkeys"
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lcom/xiaopeng/factory/bean/http/CertKey;Lcom/xiaopeng/factory/bean/http/CertKey;)V
    .locals 0
    .param p1, "mCertKeys"    # [Lcom/xiaopeng/factory/bean/http/CertKey;
    .param p2, "mBLeSecKey"    # Lcom/xiaopeng/factory/bean/http/CertKey;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/xiaopeng/factory/bean/http/TboxCertKey;->mCertKeys:[Lcom/xiaopeng/factory/bean/http/CertKey;

    .line 15
    iput-object p2, p0, Lcom/xiaopeng/factory/bean/http/TboxCertKey;->mBLeSecKey:Lcom/xiaopeng/factory/bean/http/CertKey;

    .line 16
    return-void
.end method


# virtual methods
.method public getBLeSecKey()Lcom/xiaopeng/factory/bean/http/CertKey;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/factory/bean/http/TboxCertKey;->mBLeSecKey:Lcom/xiaopeng/factory/bean/http/CertKey;

    return-object v0
.end method

.method public getCertKeys()[Lcom/xiaopeng/factory/bean/http/CertKey;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/factory/bean/http/TboxCertKey;->mCertKeys:[Lcom/xiaopeng/factory/bean/http/CertKey;

    return-object v0
.end method

.method public setBLeSecKey(Lcom/xiaopeng/factory/bean/http/CertKey;)V
    .locals 0
    .param p1, "mBLeSecKey"    # Lcom/xiaopeng/factory/bean/http/CertKey;

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/factory/bean/http/TboxCertKey;->mBLeSecKey:Lcom/xiaopeng/factory/bean/http/CertKey;

    .line 32
    return-void
.end method

.method public setCertKeys([Lcom/xiaopeng/factory/bean/http/CertKey;)V
    .locals 0
    .param p1, "mCertKeys"    # [Lcom/xiaopeng/factory/bean/http/CertKey;

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/factory/bean/http/TboxCertKey;->mCertKeys:[Lcom/xiaopeng/factory/bean/http/CertKey;

    .line 24
    return-void
.end method
