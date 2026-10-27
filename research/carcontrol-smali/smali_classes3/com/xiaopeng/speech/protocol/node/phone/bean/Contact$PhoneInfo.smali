.class public Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneInfo"
.end annotation


# instance fields
.field private flag:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private rawQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlag()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->flag:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getRawQuery()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->rawQuery:Ljava/lang/String;

    return-object v0
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->flag:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->number:Ljava/lang/String;

    return-void
.end method

.method public setRawQuery(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/Contact$PhoneInfo;->rawQuery:Ljava/lang/String;

    return-void
.end method
