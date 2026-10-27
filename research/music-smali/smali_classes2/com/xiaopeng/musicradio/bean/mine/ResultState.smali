.class public Lcom/xiaopeng/musicradio/bean/mine/ResultState;
.super Ljava/lang/Object;
.source "ResultState.java"


# instance fields
.field private state:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->state:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->type:I

    return v0
.end method

.method public setState(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->state:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->type:I

    return-void
.end method
