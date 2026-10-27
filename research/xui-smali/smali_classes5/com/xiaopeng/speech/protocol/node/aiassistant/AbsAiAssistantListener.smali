.class public abstract Lcom/xiaopeng/speech/protocol/node/aiassistant/AbsAiAssistantListener;
.super Ljava/lang/Object;
.source "AbsAiAssistantListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageClose()V
    .locals 0

    .line 26
    return-void
.end method

.method public onMessageOpen()V
    .locals 0

    .line 21
    return-void
.end method

.method public onOpenVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "videoName"    # Ljava/lang/String;
    .param p2, "videoTag"    # Ljava/lang/String;
    .param p3, "videoCategory"    # Ljava/lang/String;

    .line 41
    return-void
.end method

.method public onPlayVideo()V
    .locals 0

    .line 11
    return-void
.end method

.method public onPlayVideoTtsend()V
    .locals 0

    .line 16
    return-void
.end method

.method public onXiaoPChangeClothe(I)V
    .locals 0
    .param p1, "type"    # I

    .line 36
    return-void
.end method

.method public onXiaoPDance(I)V
    .locals 0
    .param p1, "type"    # I

    .line 31
    return-void
.end method
