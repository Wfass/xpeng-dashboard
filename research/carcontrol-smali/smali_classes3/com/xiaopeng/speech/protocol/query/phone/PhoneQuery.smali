.class public Lcom/xiaopeng/speech/protocol/query/phone/PhoneQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "PhoneQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/phone/IPhoneQueryCaller;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechQuery;-><init>()V

    return-void
.end method


# virtual methods
.method protected getGuiPageOpenState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 15
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/phone/PhoneQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/phone/IPhoneQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/phone/IPhoneQueryCaller;->getGuiPageOpenState(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected onQueryBluetooth(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 20
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/phone/PhoneQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/phone/IPhoneQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/phone/IPhoneQueryCaller;->onQueryBluetooth()Z

    move-result p1

    return p1
.end method

.method protected onQueryContactSyncStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/phone/PhoneQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/phone/IPhoneQueryCaller;

    invoke-interface {p1}, Lcom/xiaopeng/speech/protocol/query/phone/IPhoneQueryCaller;->onQueryContactSyncStatus()I

    move-result p1

    return p1
.end method
