.class public Lcom/xiaopeng/speech/vui/event/EventData;
.super Ljava/lang/Object;
.source "EventData.java"


# instance fields
.field private action:Ljava/lang/String;

.field private propsId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/event/EventData;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getPropsId()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/event/EventData;->propsId:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/event/EventData;->action:Ljava/lang/String;

    return-void
.end method

.method public setPropsId(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/event/EventData;->propsId:Ljava/lang/String;

    return-void
.end method
