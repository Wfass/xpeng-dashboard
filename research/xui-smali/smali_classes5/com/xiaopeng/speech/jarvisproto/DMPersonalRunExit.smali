.class public Lcom/xiaopeng/speech/jarvisproto/DMPersonalRunExit;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "DMPersonalRunExit.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "jarvis.dm.personal.exit"


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

    .line 8
    const-string v0, "jarvis.dm.personal.exit"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 1

    .line 12
    const-string v0, ""

    return-object v0
.end method
