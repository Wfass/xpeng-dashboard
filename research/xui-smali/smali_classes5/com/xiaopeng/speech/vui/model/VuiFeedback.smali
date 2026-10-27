.class public Lcom/xiaopeng/speech/vui/model/VuiFeedback;
.super Ljava/lang/Object;
.source "VuiFeedback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;
    }
.end annotation


# instance fields
.field public code:Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;

.field public content:Ljava/lang/String;

.field private feedbackType:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

.field public resourceName:Ljava/lang/String;

.field public state:I


# direct methods
.method private constructor <init>(Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;->SUCCESS:Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->code:Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;

    .line 25
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiFeedbackType;->TTS:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->feedbackType:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    .line 75
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->access$000(Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->state:I

    .line 76
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->access$100(Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->content:Ljava/lang/String;

    .line 77
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->access$200(Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;)Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->code:Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;

    .line 78
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->access$300(Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;)Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->feedbackType:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;Lcom/xiaopeng/speech/vui/model/VuiFeedback$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;
    .param p2, "x1"    # Lcom/xiaopeng/speech/vui/model/VuiFeedback$1;

    .line 7
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback;-><init>(Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;)V

    return-void
.end method


# virtual methods
.method public getCode()Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->code:Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedbackType()Lcom/xiaopeng/vui/commons/VuiFeedbackType;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->feedbackType:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    return-object v0
.end method

.method public getResourceName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->resourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->state:I

    return v0
.end method

.method public setCode(Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;)V
    .locals 0
    .param p1, "code"    # Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->code:Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;

    .line 37
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->content:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setFeedbackType(Lcom/xiaopeng/vui/commons/VuiFeedbackType;)V
    .locals 0
    .param p1, "feedbackType"    # Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->feedbackType:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    .line 50
    return-void
.end method

.method public setResourceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->resourceName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 18
    iput p1, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->state:I

    .line 19
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VuiFeedback{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->code:Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;

    .line 64
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiFeedbackCode;->getFeedbackCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", content=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", resourceName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->resourceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", feedbackType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/model/VuiFeedback;->feedbackType:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    .line 68
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiFeedbackType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    return-object v0
.end method
