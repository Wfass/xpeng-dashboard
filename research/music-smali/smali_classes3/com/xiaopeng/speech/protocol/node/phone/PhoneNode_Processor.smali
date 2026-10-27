.class public Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode_Processor;
.super Ljava/lang/Object;
.source "PhoneNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private a:Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "command://phone.out.help"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "command://phone.contact.sync.result"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "command://phone.callback"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "command://phone.select"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "command://phone.redial"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "command://phone.out"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "native://phone.redial.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_7
    const-string v0, "command://phone.contact.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_8
    const-string v0, "command://phone.out.customerservice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_9
    const-string v0, "native://phone.query.contacts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_a
    const-string v0, "command://phone.in.reject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_b
    const-string v0, "native://phone.callback.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_c
    const-string v0, "native://phone.query.bluetooth.sync"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_d
    const-string v0, "native://phone.query.bluetooth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_e
    const-string v0, "command://phone.in.accept"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_f
    const-string v0, "native://phone.query.detail.phone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 61
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->e()V

    goto :goto_2

    .line 58
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 55
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 52
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 49
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 46
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 43
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 40
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 37
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 34
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 31
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 28
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 22
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :pswitch_f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/phone/PhoneNode;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x51758b66 -> :sswitch_f
        -0x4a813ade -> :sswitch_e
        -0x4135abbb -> :sswitch_d
        -0x40f91d5c -> :sswitch_c
        -0x3b19fc77 -> :sswitch_b
        -0x2d5f7c47 -> :sswitch_a
        -0x27b64024 -> :sswitch_9
        -0x1dd46b98 -> :sswitch_8
        -0x14b50ea5 -> :sswitch_7
        -0x125955d9 -> :sswitch_6
        0x1c83c33f -> :sswitch_5
        0x4d956292 -> :sswitch_4
        0x4f4dcf6b -> :sswitch_3
        0x61cddaf4 -> :sswitch_2
        0x65eefbf3 -> :sswitch_1
        0x6c987490 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a()[Ljava/lang/String;
    .locals 16

    const-string v0, "native://phone.query.bluetooth.sync"

    const-string v1, "native://phone.query.contacts"

    const-string v2, "native://phone.query.detail.phone"

    const-string v3, "command://phone.out"

    const-string v4, "command://phone.select"

    const-string v5, "command://phone.in.accept"

    const-string v6, "command://phone.in.reject"

    const-string v7, "native://phone.redial.support"

    const-string v8, "command://phone.redial"

    const-string v9, "native://phone.callback.support"

    const-string v10, "command://phone.callback"

    const-string v11, "command://phone.out.customerservice"

    const-string v12, "command://phone.out.help"

    const-string v13, "native://phone.query.bluetooth"

    const-string v14, "command://phone.contact.sync.result"

    const-string v15, "command://phone.contact.close"

    .line 69
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
