.class public Lcom/xiaopeng/xuiservice/smart/action/Actions;
.super Ljava/lang/Object;
.source "Actions.java"


# static fields
.field public static final ACTION_ALL:Ljava/lang/String; = "all"

.field public static final ACTION_AMBIENT:Ljava/lang/String; = "ambient"

.field public static final ACTION_ANY:Ljava/lang/String; = "any"

.field public static final ACTION_AUDIO:Ljava/lang/String; = "audio"

.field public static final ACTION_AVAS:Ljava/lang/String; = "avas"

.field public static final ACTION_DELETE_FILE:Ljava/lang/String; = "delete"

.field public static final ACTION_DELETE_RESOURCE:Ljava/lang/String; = "delete_resource"

.field public static final ACTION_DIALOG:Ljava/lang/String; = "dialog"

.field public static final ACTION_IMAGE:Ljava/lang/String; = "image"

.field public static final ACTION_KILL_PROCESS:Ljava/lang/String; = "kill"

.field public static final ACTION_LLU:Ljava/lang/String; = "llu"

.field public static final ACTION_PM_CLEAR:Ljava/lang/String; = "pm_clear"

.field public static final ACTION_PUSH_FILE:Ljava/lang/String; = "push"

.field public static final ACTION_REBOOT:Ljava/lang/String; = "reboot"

.field public static final ACTION_REF:Ljava/lang/String; = "ref"

.field public static final ACTION_REPORT_KEY_VALUE:Ljava/lang/String; = "report_key_value"

.field public static final ACTION_RESOURCE:Ljava/lang/String; = "resource"

.field public static final ACTION_SELECT_RESOURCE:Ljava/lang/String; = "select_resource"

.field public static final ACTION_SEND_BROADCAST:Ljava/lang/String; = "broadcast"

.field public static final ACTION_SEQUENCE:Ljava/lang/String; = "sequence"

.field public static final ACTION_SET_PROPERTY:Ljava/lang/String; = "set_property"

.field public static final ACTION_SH:Ljava/lang/String; = "sh"

.field public static final ACTION_SR_ICON_HIDE:Ljava/lang/String; = "sr_icon_hide"

.field public static final ACTION_SR_ICON_SHOW:Ljava/lang/String; = "sr_icon_show"

.field public static final ACTION_START_ACTIVITY:Ljava/lang/String; = "activity"

.field public static final ACTION_TOAST:Ljava/lang/String; = "toast"

.field public static final ACTION_TTS:Ljava/lang/String; = "tts"

.field public static final ACTION_VIDEO:Ljava/lang/String; = "video"

.field private static final LOG_ENABLE:Z = true

.field public static final TAG:Ljava/lang/String; = "xpAction"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ERROR(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "xpAction"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method

.method public static ERROR(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 22
    const-string/jumbo v0, "xpAction"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    return-void
.end method

.method public static INFO(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "xpAction"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method

.method public static delayedStart(Lcom/xiaopeng/xuiservice/smart/action/Action;JLjava/util/concurrent/TimeUnit;)Lcom/xiaopeng/xuiservice/smart/action/Action;
    .locals 1
    .param p0, "action"    # Lcom/xiaopeng/xuiservice/smart/action/Action;
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 114
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/action/DelayedStart;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/smart/action/DelayedStart;-><init>(Lcom/xiaopeng/xuiservice/smart/action/Action;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static delayedStop(Lcom/xiaopeng/xuiservice/smart/action/Action;JLjava/util/concurrent/TimeUnit;)Lcom/xiaopeng/xuiservice/smart/action/Action;
    .locals 1
    .param p0, "action"    # Lcom/xiaopeng/xuiservice/smart/action/Action;
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 118
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/action/DelayedStop;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/smart/action/DelayedStop;-><init>(Lcom/xiaopeng/xuiservice/smart/action/Action;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static immediately(Lcom/xiaopeng/xuiservice/smart/action/Action;)Lcom/xiaopeng/xuiservice/smart/action/Action;
    .locals 4
    .param p0, "action"    # Lcom/xiaopeng/xuiservice/smart/action/Action;

    .line 122
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/action/DelayedStop;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/xiaopeng/xuiservice/smart/action/DelayedStop;-><init>(Lcom/xiaopeng/xuiservice/smart/action/Action;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static parallelAll(Ljava/util/List;)Lcom/xiaopeng/xuiservice/smart/action/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/smart/action/Action;",
            ">;)",
            "Lcom/xiaopeng/xuiservice/smart/action/Action;"
        }
    .end annotation

    .line 94
    .local p0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/smart/action/Action;>;"
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/action/All;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/action/All;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static varargs parallelAll([Lcom/xiaopeng/xuiservice/smart/action/Action;)Lcom/xiaopeng/xuiservice/smart/action/Action;
    .locals 1
    .param p0, "actions"    # [Lcom/xiaopeng/xuiservice/smart/action/Action;

    .line 90
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/action/All;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/action/All;-><init>([Lcom/xiaopeng/xuiservice/smart/action/Action;)V

    return-object v0
.end method

.method public static parallelAny(Ljava/util/List;)Lcom/xiaopeng/xuiservice/smart/action/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/smart/action/Action;",
            ">;)",
            "Lcom/xiaopeng/xuiservice/smart/action/Action;"
        }
    .end annotation

    .line 102
    .local p0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/smart/action/Action;>;"
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/action/Any;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/action/Any;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static varargs parallelAny([Lcom/xiaopeng/xuiservice/smart/action/Action;)Lcom/xiaopeng/xuiservice/smart/action/Action;
    .locals 1
    .param p0, "actions"    # [Lcom/xiaopeng/xuiservice/smart/action/Action;

    .line 98
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/action/Any;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/action/Any;-><init>([Lcom/xiaopeng/xuiservice/smart/action/Action;)V

    return-object v0
.end method

.method public static sequence(Ljava/util/List;)Lcom/xiaopeng/xuiservice/smart/action/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/smart/action/Action;",
            ">;)",
            "Lcom/xiaopeng/xuiservice/smart/action/Action;"
        }
    .end annotation

    .line 110
    .local p0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/smart/action/Action;>;"
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/action/Sequence;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/action/Sequence;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static varargs sequence([Lcom/xiaopeng/xuiservice/smart/action/Action;)Lcom/xiaopeng/xuiservice/smart/action/Action;
    .locals 1
    .param p0, "actions"    # [Lcom/xiaopeng/xuiservice/smart/action/Action;

    .line 106
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/action/Sequence;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/action/Sequence;-><init>([Lcom/xiaopeng/xuiservice/smart/action/Action;)V

    return-object v0
.end method
