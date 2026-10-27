.class public Lcom/xiaopeng/speech/jarvisproto/WakeupResult;
.super Lcom/xiaopeng/speech/jarvisproto/WakeupResultBase;
.source "WakeupResult.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "jarvis.wakeup.result"

.field public static final REASON_COMMAND:Ljava/lang/String; = "command"

.field public static final REASON_INTERRUPT:Ljava/lang/String; = "interrupt"

.field public static final REASON_MAJOR:Ljava/lang/String; = "major"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/WakeupResultBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "jarvis.wakeup.result"

    return-object v0
.end method
