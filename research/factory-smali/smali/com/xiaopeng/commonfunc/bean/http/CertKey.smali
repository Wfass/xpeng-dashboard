.class public Lcom/xiaopeng/commonfunc/bean/http/CertKey;
.super Ljava/lang/Object;
.source "CertKey.java"


# instance fields
.field private mCert:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cert"
    .end annotation
.end field

.field private mIndex:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "index"
    .end annotation
.end field

.field private mKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "key"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "mCert"    # Ljava/lang/String;
    .param p2, "mKey"    # Ljava/lang/String;
    .param p3, "mIndex"    # I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/http/CertKey;->mCert:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/bean/http/CertKey;->mKey:Ljava/lang/String;

    .line 17
    iput p3, p0, Lcom/xiaopeng/commonfunc/bean/http/CertKey;->mIndex:I

    .line 18
    return-void
.end method


# virtual methods
.method public getCert()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/http/CertKey;->mCert:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/http/CertKey;->mIndex:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/http/CertKey;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public setCert(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCert"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/http/CertKey;->mCert:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "mIndex"    # I

    .line 41
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/http/CertKey;->mIndex:I

    .line 42
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "mKey"    # Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/http/CertKey;->mKey:Ljava/lang/String;

    .line 34
    return-void
.end method
