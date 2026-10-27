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

    .line 11
    return-void
.end method


# virtual methods
.method protected getGuiPageOpenState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "gui.page.open.btphone"
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/phone/PhoneQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/phone/IPhoneQueryCaller;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/protocol/query/phone/IPhoneQueryCaller;->getGuiPageOpenState(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected onQueryBluetooth(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "phone.get.bluetooth.status"
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/phone/PhoneQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/phone/IPhoneQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/phone/IPhoneQueryCaller;->onQueryBluetooth()Z

    move-result v0

    return v0
.end method

.method protected onQueryContactSyncStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "phone.get.contact.sync.status"
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/phone/PhoneQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/phone/IPhoneQueryCaller;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/query/phone/IPhoneQueryCaller;->onQueryContactSyncStatus()I

    move-result v0

    return v0
.end method
