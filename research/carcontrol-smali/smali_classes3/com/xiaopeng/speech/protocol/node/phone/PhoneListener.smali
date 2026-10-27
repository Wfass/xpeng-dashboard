.class public interface abstract Lcom/xiaopeng/speech/protocol/node/phone/PhoneListener;
.super Ljava/lang/Object;
.source "PhoneListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/INodeListener;


# virtual methods
.method public abstract onCallback()V
.end method

.method public abstract onCallbackSupport()V
.end method

.method public onIgnore()V
    .locals 0

    return-void
.end method

.method public abstract onInAccept()V
.end method

.method public abstract onInReject()V
.end method

.method public abstract onOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onOutCustomerservice(Ljava/lang/String;)V
.end method

.method public abstract onOutHelp(Ljava/lang/String;)V
.end method

.method public abstract onPhoneContactClose()V
.end method

.method public abstract onQueryBluetooth()V
.end method

.method public abstract onQueryContacts(Ljava/lang/String;Lcom/xiaopeng/speech/protocol/node/phone/bean/PhoneBean;)V
.end method

.method public abstract onQueryDetailPhoneInfo(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRedial()V
.end method

.method public abstract onRedialSupport()V
.end method

.method public abstract onSettingOpen()V
.end method

.method public abstract onSyncContactResult(I)V
.end method
