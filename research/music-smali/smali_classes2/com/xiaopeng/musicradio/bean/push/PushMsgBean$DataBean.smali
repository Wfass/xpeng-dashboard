.class public Lcom/xiaopeng/musicradio/bean/push/PushMsgBean$DataBean;
.super Ljava/lang/Object;
.source "PushMsgBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/push/PushMsgBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field source:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSource()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/push/PushMsgBean$DataBean;->source:I

    return v0
.end method

.method public setSource(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/push/PushMsgBean$DataBean;->source:I

    return-void
.end method
