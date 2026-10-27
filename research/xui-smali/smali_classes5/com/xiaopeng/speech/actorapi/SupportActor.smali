.class public Lcom/xiaopeng/speech/actorapi/SupportActor;
.super Lcom/xiaopeng/speech/actorapi/ResultActor;
.source "SupportActor.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "SupportActor"

.field public static final TTS_DEFAULT_NOT_SUPPORT:Ljava/lang/String;

.field public static final TTS_DEFAULT_SUPPORT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    sget v0, Lcom/xiaopeng/speech/protocol/R$string;->okay:I

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/actorapi/SupportActor;->TTS_DEFAULT_SUPPORT:Ljava/lang/String;

    .line 17
    sget v0, Lcom/xiaopeng/speech/protocol/R$string;->not_support:I

    .line 18
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/actorapi/SupportActor;->TTS_DEFAULT_NOT_SUPPORT:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .line 21
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/actorapi/ResultActor;-><init>(Ljava/lang/String;)V

    .line 22
    const-string v0, "SupportActor"

    iput-object v0, p0, Lcom/xiaopeng/speech/actorapi/SupportActor;->mName:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/actorapi/ResultActor;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getWidget()Lcom/xiaopeng/speech/speechwidget/SupportWidget;
    .locals 2

    .line 38
    new-instance v0, Lcom/xiaopeng/speech/speechwidget/SupportWidget;

    invoke-direct {v0}, Lcom/xiaopeng/speech/speechwidget/SupportWidget;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/speech/actorapi/SupportActor;->mResultData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/speechwidget/SupportWidget;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/speechwidget/SupportWidget;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setResult(Ljava/lang/String;)Lcom/xiaopeng/speech/actorapi/ResultActor;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/actorapi/SupportActor;->setResult(Ljava/lang/String;)Lcom/xiaopeng/speech/actorapi/SupportActor;

    move-result-object p1

    return-object p1
.end method

.method public setResult(Lcom/xiaopeng/speech/speechwidget/SupportWidget;)Lcom/xiaopeng/speech/actorapi/SupportActor;
    .locals 1
    .param p1, "supportWidget"    # Lcom/xiaopeng/speech/speechwidget/SupportWidget;

    .line 30
    invoke-super {p0, p1}, Lcom/xiaopeng/speech/actorapi/ResultActor;->setResult(Lcom/xiaopeng/speech/speechwidget/SpeechWidget;)Lcom/xiaopeng/speech/actorapi/ResultActor;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/actorapi/SupportActor;

    return-object v0
.end method

.method public setResult(Ljava/lang/String;)Lcom/xiaopeng/speech/actorapi/SupportActor;
    .locals 1
    .param p1, "resultData"    # Ljava/lang/String;

    .line 34
    invoke-super {p0, p1}, Lcom/xiaopeng/speech/actorapi/ResultActor;->setResult(Ljava/lang/String;)Lcom/xiaopeng/speech/actorapi/ResultActor;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/actorapi/SupportActor;

    return-object v0
.end method
