.class public Lcom/xiaopeng/carcontrol/bean/message/ApiRouterMessageBean;
.super Ljava/lang/Object;
.source "ApiRouterMessageBean.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private receiverPackageName:Ljava/lang/String;

.field private senderPackageName:Ljava/lang/String;

.field private string_msg:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReceiverPackageName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/message/ApiRouterMessageBean;->receiverPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderPackageName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/message/ApiRouterMessageBean;->senderPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getString_msg()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/message/ApiRouterMessageBean;->string_msg:Ljava/lang/Object;

    return-object v0
.end method

.method public setReceiverPackageName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receiverPackageName"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/message/ApiRouterMessageBean;->receiverPackageName:Ljava/lang/String;

    return-void
.end method

.method public setSenderPackageName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "senderPackageName"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/message/ApiRouterMessageBean;->senderPackageName:Ljava/lang/String;

    return-void
.end method

.method public setString_msg(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string_msg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/message/ApiRouterMessageBean;->string_msg:Ljava/lang/Object;

    return-void
.end method
