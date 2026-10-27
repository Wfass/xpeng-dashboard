.class public Lcom/xiaopeng/speech/jarvisproto/DMWake;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "DMWake.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "jarvis.dm.wake"


# instance fields
.field public reason:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;

.field public wakeupResult:Lcom/xiaopeng/speech/jarvisproto/WakeupResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "jarvis.dm.wake"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
