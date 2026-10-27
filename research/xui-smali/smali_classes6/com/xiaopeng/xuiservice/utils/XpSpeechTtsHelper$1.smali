.class Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1;
.super Ljava/lang/Object;
.source "XpSpeechTtsHelper.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;

    .line 161
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1;->this$0:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 4
    .param p1, "status"    # I

    .line 165
    const-string v0, "XpSpeechTtsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TextToSpeech onInit status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->access$002(I)I

    .line 167
    if-nez p1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1;->this$0:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->access$100(Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 169
    .local v0, "result":I
    const-string v1, "XpSpeechTtsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLanguage CHINESE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1;->this$0:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->access$100(Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1$1;-><init>(Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1;)V

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 204
    .end local v0    # "result":I
    :cond_0
    return-void
.end method
