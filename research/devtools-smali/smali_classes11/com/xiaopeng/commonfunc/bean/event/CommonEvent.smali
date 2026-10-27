.class public Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;
.super Ljava/lang/Object;
.source "CommonEvent.java"


# static fields
.field public static final DIAGNOSIS_ACTION_PAUSE:I = 0x2712

.field public static final DIAGNOSIS_DISMISS_LOADING_DIALOG:I = 0x2713

.field public static final DIAGNOSIS_LOGICTREE_INIT_FINISH:I = 0x2714

.field public static final DISPLAY_LOGICTREE_TOAST:I = 0x2716

.field public static final DISPLAY_ONE_CLICK_DIAGNOSIS_RUNNING:I = 0x2715

.field public static final HTTP_PING_EVENT:I = 0x2711

.field public static final REMOTE_ONE_CLICK_DIAGNOSIS_INIT_FINISH:I = 0x2719

.field public static final REMOTE_ONE_CLICK_DIAGNOSIS_INTERACTIVE:I = 0x271b

.field public static final REMOTE_ONE_CLICK_DIAGNOSIS_LOG_UPLOAD:I = 0x271c

.field public static final REMOTE_ONE_CLICK_DIAGNOSIS_LOG_UPLOAD_PASSWORD:I = 0x271d

.field public static final REMOTE_ONE_CLICK_DIAGNOSIS_RESULT:I = 0x271a

.field public static final UPGRADE_LOGICTREE_FAIL:I = 0x2717

.field public static final UPGRADE_LOGICTREE_SUCCESS:I = 0x2718


# instance fields
.field private final mMsg:Ljava/lang/String;

.field private final mState:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;->mState:I

    .line 30
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;->mMsg:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;->mMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;->mState:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommonEvent{mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMsg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;->mMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
