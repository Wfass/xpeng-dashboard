.class public Lcom/xiaopeng/libconfig/ipc/bean/MqttContentBase;
.super Ljava/lang/Object;
.source "MqttContentBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CODE_SUCCESS:I = 0xc8

.field public static final RESPONSE_TYPE_RECIEVED:I = 0x1

.field public static final RESPONSE_TYPE_SUCCESS:I = 0x63


# instance fields
.field private code:I

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private respType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MqttContentBase;->code:I

    return v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MqttContentBase;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getRespType()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MqttContentBase;->respType:I

    return v0
.end method

.method public setCode(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MqttContentBase;->code:I

    .line 24
    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MqttContentBase;->data:Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public setRespType(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MqttContentBase;->respType:I

    .line 32
    return-void
.end method
