.class public Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;
.super Ljava/lang/Object;
.source "LluAiLampBean.java"


# instance fields
.field private mIndex:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private mLampBg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lamp_beam_bg"
    .end annotation
.end field

.field private mLampBgResId:I

.field private mNoteAudio:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "note_audio"
    .end annotation
.end field

.field private mNoteAudioResId:I

.field private mNoteText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "note_text"
    .end annotation
.end field

.field private mNoteTextResId:I

.field private mPos:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lamp_beam_pos"
    .end annotation
.end field

.field private mWidth:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lamp_beam_width"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->mIndex:I

    return v0
.end method

.method public getLampBg()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->mLampBg:Ljava/lang/String;

    return-object v0
.end method

.method public getLampBgResId()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->mLampBgResId:I

    return v0
.end method

.method public getNoteAudio()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->mNoteAudio:Ljava/lang/String;

    return-object v0
.end method

.method public getNoteAudioResId()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->mNoteAudioResId:I

    return v0
.end method

.method public getNoteText()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->mNoteText:Ljava/lang/String;

    return-object v0
.end method

.method public getNoteTextResId()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->mNoteTextResId:I

    return v0
.end method

.method public getPos()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->mPos:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->mWidth:I

    return v0
.end method

.method public setIndex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 28
    iput p1, p0, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->mIndex:I

    return-void
.end method

.method public setLampBg(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lampBg"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->mLampBg:Ljava/lang/String;

    return-void
.end method

.method public setLampBgResId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lampBgResId"
        }
    .end annotation

    .line 76
    iput p1, p0, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->mLampBgResId:I

    return-void
.end method

.method public setNoteAudio(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "noteAudio"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->mNoteAudio:Ljava/lang/String;

    return-void
.end method

.method public setNoteAudioResId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "noteAudioResId"
        }
    .end annotation

    .line 84
    iput p1, p0, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->mNoteAudioResId:I

    return-void
.end method

.method public setNoteText(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "noteText"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->mNoteText:Ljava/lang/String;

    return-void
.end method

.method public setNoteTextResId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "noteTextResId"
        }
    .end annotation

    .line 92
    iput p1, p0, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->mNoteTextResId:I

    return-void
.end method

.method public setPos(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 36
    iput p1, p0, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->mPos:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    .line 44
    iput p1, p0, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->mWidth:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LluAiLampBean{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mIndex="

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPos="

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->mPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWidth="

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLampBg=\'"

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->mLampBg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mLampBgResId="

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->mLampBgResId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNoteAudio=\'"

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->mNoteAudio:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mNoteAudioResId="

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->mNoteAudioResId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNoteText=\'"

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->mNoteText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mNoteTextResId="

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->mNoteTextResId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
