.class public Lcom/xiaopeng/speech/protocol/node/floater/AbsFloaterSpeech;
.super Ljava/lang/Object;
.source "AbsFloaterSpeech.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/floater/FloaterSpeechListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseWindow(I)V
    .locals 0
    .param p1, "from"    # I

    .line 12
    return-void
.end method

.method public onSetAnimState(Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;)V
    .locals 0
    .param p1, "windowAnimState"    # Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;

    .line 17
    return-void
.end method

.method public onXiaopExpression(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 22
    return-void
.end method
