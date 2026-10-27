.class public Lcom/xiaopeng/commonfunc/bean/http/TboxCaCert;
.super Ljava/lang/Object;
.source "TboxCaCert.java"


# instance fields
.field private mCa1:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ca1"
    .end annotation
.end field

.field private mCa2:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ca2"
    .end annotation
.end field

.field private mEuCa:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "euca"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/http/TboxCaCert;->mEuCa:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/bean/http/TboxCaCert;->mCa1:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/xiaopeng/commonfunc/bean/http/TboxCaCert;->mCa2:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getCa1()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/http/TboxCaCert;->mCa1:Ljava/lang/String;

    return-object v0
.end method

.method public getCa2()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/http/TboxCaCert;->mCa2:Ljava/lang/String;

    return-object v0
.end method

.method public getEuCa()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/http/TboxCaCert;->mEuCa:Ljava/lang/String;

    return-object v0
.end method

.method public setCa1(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/http/TboxCaCert;->mCa1:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setCa2(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/http/TboxCaCert;->mCa2:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setEuCa(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/http/TboxCaCert;->mEuCa:Ljava/lang/String;

    .line 26
    return-void
.end method
