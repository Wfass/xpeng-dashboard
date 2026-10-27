.class public abstract Lcom/xiaopeng/speech/protocol/node/phone/AbsPhoneListener;
.super Ljava/lang/Object;
.source "AbsPhoneListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback()V
    .locals 0

    .line 33
    return-void
.end method

.method public onCallbackSupport()V
    .locals 0

    .line 28
    return-void
.end method

.method public onInAccept()V
    .locals 0

    .line 48
    return-void
.end method

.method public onInReject()V
    .locals 0

    .line 53
    return-void
.end method

.method public onOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phoneNum"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;

    .line 13
    return-void
.end method

.method public onOutCustomerservice(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .line 38
    return-void
.end method

.method public onOutHelp(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .line 43
    return-void
.end method

.method public onQueryBluetooth()V
    .locals 0

    .line 68
    return-void
.end method

.method public onQueryContacts(Ljava/lang/String;Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "phone"    # Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;

    .line 58
    return-void
.end method

.method public onRedial()V
    .locals 0

    .line 23
    return-void
.end method

.method public onRedialSupport()V
    .locals 0

    .line 18
    return-void
.end method

.method public onSettingOpen()V
    .locals 0

    .line 63
    return-void
.end method

.method public onSyncContactResult(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .line 73
    return-void
.end method
