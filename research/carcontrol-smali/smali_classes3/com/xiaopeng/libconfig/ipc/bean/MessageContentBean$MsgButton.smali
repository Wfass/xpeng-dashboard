.class public Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;
.super Ljava/lang/Object;
.source "MessageContentBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsgButton"
.end annotation


# instance fields
.field content:Ljava/lang/String;

.field guideWords:Ljava/lang/String;

.field name:Ljava/lang/String;

.field notResponseWord:Ljava/lang/String;

.field pack:Ljava/lang/String;

.field responseGuideTTS:Ljava/lang/String;

.field responseTTS:Ljava/lang/String;

.field responseWord:Ljava/lang/String;

.field speechResponse:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;
    .locals 1

    const/4 v0, 0x0

    .line 627
    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;
    .locals 1

    .line 640
    new-instance v0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;

    invoke-direct {v0}, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;-><init>()V

    .line 641
    iput-object p0, v0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->name:Ljava/lang/String;

    .line 642
    iput-object p1, v0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->pack:Ljava/lang/String;

    .line 643
    iput-object p2, v0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->content:Ljava/lang/String;

    .line 644
    iput-boolean p3, v0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->speechResponse:Z

    return-object v0
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getGuideWords()Ljava/lang/String;
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->guideWords:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNotResponseWord()Ljava/lang/String;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->notResponseWord:Ljava/lang/String;

    return-object v0
.end method

.method public getPack()Ljava/lang/String;
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->pack:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseGuideTTS()Ljava/lang/String;
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->responseGuideTTS:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseTTS()Ljava/lang/String;
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->responseTTS:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseWord()Ljava/lang/String;
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->responseWord:Ljava/lang/String;

    return-object v0
.end method

.method public isSpeechResponse()Z
    .locals 1

    .line 673
    iget-boolean v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->speechResponse:Z

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 669
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->content:Ljava/lang/String;

    return-void
.end method

.method public setGuideWords(Ljava/lang/String;)V
    .locals 0

    .line 717
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->guideWords:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->name:Ljava/lang/String;

    return-void
.end method

.method public setNotResponseWord(Ljava/lang/String;)V
    .locals 0

    .line 693
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->notResponseWord:Ljava/lang/String;

    return-void
.end method

.method public setPack(Ljava/lang/String;)V
    .locals 0

    .line 661
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->pack:Ljava/lang/String;

    return-void
.end method

.method public setResponseGuideTTS(Ljava/lang/String;)V
    .locals 0

    .line 709
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->responseGuideTTS:Ljava/lang/String;

    return-void
.end method

.method public setResponseTTS(Ljava/lang/String;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->responseTTS:Ljava/lang/String;

    return-void
.end method

.method public setResponseWord(Ljava/lang/String;)V
    .locals 0

    .line 685
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->responseWord:Ljava/lang/String;

    return-void
.end method

.method public setSpeechResponse(Z)V
    .locals 0

    .line 677
    iput-boolean p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$MsgButton;->speechResponse:Z

    return-void
.end method
