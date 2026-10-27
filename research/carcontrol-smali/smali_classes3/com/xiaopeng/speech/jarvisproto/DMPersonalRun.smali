.class public Lcom/xiaopeng/speech/jarvisproto/DMPersonalRun;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "DMPersonalRun.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "jarvis.dm.personal.run"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "jarvis.dm.personal.run"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
