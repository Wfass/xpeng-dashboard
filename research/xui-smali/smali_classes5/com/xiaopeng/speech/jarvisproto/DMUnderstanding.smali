.class public Lcom/xiaopeng/speech/jarvisproto/DMUnderstanding;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "DMUnderstanding.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "jarvis.dm.understanding"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 13
    const-string v0, "jarvis.dm.understanding"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 1

    .line 17
    const-string v0, ""

    return-object v0
.end method
