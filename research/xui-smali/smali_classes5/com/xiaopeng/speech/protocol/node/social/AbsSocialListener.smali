.class public abstract Lcom/xiaopeng/speech/protocol/node/social/AbsSocialListener;
.super Ljava/lang/Object;
.source "AbsSocialListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/social/SocialListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSocialCancel(Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Ljava/lang/String;

    .line 51
    return-void
.end method

.method public onSocialConfirm(Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Ljava/lang/String;

    .line 46
    return-void
.end method

.method public onSocialCreateTopic()V
    .locals 0

    .line 31
    return-void
.end method

.method public onSocialGrabMic()V
    .locals 0

    .line 21
    return-void
.end method

.method public onSocialGrabMicCancel()V
    .locals 0

    .line 26
    return-void
.end method

.method public onSocialMotorcadeClose()V
    .locals 0

    .line 16
    return-void
.end method

.method public onSocialMotorcadeOpen()V
    .locals 0

    .line 11
    return-void
.end method

.method public onSocialQuitChat()V
    .locals 0

    .line 41
    return-void
.end method

.method public onSocialReplyTopic()V
    .locals 0

    .line 36
    return-void
.end method
