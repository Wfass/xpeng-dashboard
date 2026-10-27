.class public Lcom/xiaopeng/speech/jarvisproto/ErrorMsg;
.super Ljava/lang/Object;
.source "ErrorMsg.java"


# static fields
.field public static final ASR_ERROR:I = 0x7d3

.field public static final ASR_ERROR_NONE:I = 0x7d0

.field public static final ASR_NULL:I = 0x7d1

.field public static final ASR_NULL_RETRY_MAX_EXIT:I = 0x7d4

.field public static final ASR_OUT_OF_CONFIDENCE:I = 0x11492

.field public static final ASR_RESULT_IS_NULL_OFFLINE:I = 0x11491

.field public static final ASR_RESULT_IS_NULL_ONLINE:I = 0x2841

.field public static final ASR_VAD_TIMEOUT:I = 0x7d2

.field public static final DM_ERROR_NONE:I = 0xbb8

.field public static final DM_TIMEOUT:I = 0xbb9

.field public static final FEED_IS_TRIGGER:Ljava/lang/String; = "feed is trigger"

.field public static final LOCAL_NLP_MAX_TRY:I = 0x1388e

.field public static final LOCAL_NLP_NOT_FOUND:I = 0x28a0

.field public static final LOCAL_NLP_UNEXPECTED:I = 0x1f40

.field public static final LOCAL_NLP_UNMATCHED:I = 0x13884

.field public static final NLU_ERROR_NONE:I = 0x3e8

.field public static final NLU_EVENT_UN_SUBSCRIBE:I = 0x3e9

.field public static final SKILL_IS_LOCAL_MSG:Ljava/lang/String; = "this skill is local"

.field public static final SKILL_IS_LOCAL_OR_NOT_LOCAL:I = 0x4

.field public static final SKILL_IS_NOT_LOCAL_MSG:Ljava/lang/String; = "this skill is not local"

.field public static final XP_NLU_ACCESS_ERROR_MSG:Ljava/lang/String; = "access server error"

.field public static final XP_NLU_ACCESS_SERVER_ID:I = 0x3

.field public static final XP_NLU_FEED_EMPTY_ID:I = 0x2

.field public static final XP_NLU_FEED_EMPTY_MSG:Ljava/lang/String; = "feed text is empty"

.field public static final XP_NLU_NETWORK_ID:I = 0x1

.field public static final XP_NLU_NETWORK_MSG:Ljava/lang/String; = "network is unavailable"


# instance fields
.field public errId:I

.field public errMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/xiaopeng/speech/jarvisproto/ErrorMsg;->errId:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/xiaopeng/speech/jarvisproto/ErrorMsg;->errId:I

    .line 55
    iput p1, p0, Lcom/xiaopeng/speech/jarvisproto/ErrorMsg;->errId:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/jarvisproto/ErrorMsg;-><init>(I)V

    .line 60
    iput-object p2, p0, Lcom/xiaopeng/speech/jarvisproto/ErrorMsg;->errMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrorMsg{errId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/jarvisproto/ErrorMsg;->errId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errMsg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/jarvisproto/ErrorMsg;->errMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
