.class public Lcom/xiaopeng/musicradio/bean/push/PushMsgBean;
.super Ljava/lang/Object;
.source "PushMsgBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/push/PushMsgBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Ljava/lang/String;

.field scene:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/push/PushMsgBean;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getScene()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/push/PushMsgBean;->scene:I

    return v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/push/PushMsgBean;->data:Ljava/lang/String;

    return-void
.end method

.method public setScene(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/push/PushMsgBean;->scene:I

    return-void
.end method
