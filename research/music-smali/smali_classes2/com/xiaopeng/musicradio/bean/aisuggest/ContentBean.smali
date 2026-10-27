.class public Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;
.super Ljava/lang/Object;
.source "ContentBean.java"


# instance fields
.field private cmd:Ljava/lang/String;

.field private object:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCmd()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->cmd:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->object:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->type:I

    return v0
.end method

.method public setCmd(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->cmd:Ljava/lang/String;

    return-void
.end method

.method public setObject(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->object:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;->type:I

    return-void
.end method
