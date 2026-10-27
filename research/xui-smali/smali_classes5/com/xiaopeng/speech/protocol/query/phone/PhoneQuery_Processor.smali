.class public Lcom/xiaopeng/speech/protocol/query/phone/PhoneQuery_Processor;
.super Ljava/lang/Object;
.source "PhoneQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private mTarget:Lcom/xiaopeng/speech/protocol/query/phone/PhoneQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/phone/PhoneQuery;)V
    .locals 0
    .param p1, "target"    # Lcom/xiaopeng/speech/protocol/query/phone/PhoneQuery;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/phone/PhoneQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/phone/PhoneQuery;

    .line 12
    return-void
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 3

    .line 28
    const-string v0, "gui.page.open.btphone"

    const-string v1, "phone.get.bluetooth.status"

    const-string v2, "phone.get.contact.sync.status"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public querySensor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x3b1f7c3c

    if-eq v0, v1, :cond_2

    const v1, 0x22854f4a

    if-eq v0, v1, :cond_1

    const v1, 0x4260febf

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "phone.get.contact.sync.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "phone.get.bluetooth.status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "gui.page.open.btphone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 23
    const/4 v0, 0x0

    return-object v0

    .line 21
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/phone/PhoneQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/phone/PhoneQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/phone/PhoneQuery;->onQueryContactSyncStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 19
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/phone/PhoneQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/phone/PhoneQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/phone/PhoneQuery;->onQueryBluetooth(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 17
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/phone/PhoneQuery_Processor;->mTarget:Lcom/xiaopeng/speech/protocol/query/phone/PhoneQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/phone/PhoneQuery;->getGuiPageOpenState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
