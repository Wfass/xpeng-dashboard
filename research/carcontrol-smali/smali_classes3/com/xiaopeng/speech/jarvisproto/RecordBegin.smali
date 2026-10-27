.class public Lcom/xiaopeng/speech/jarvisproto/RecordBegin;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "RecordBegin.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "jarvis.record.begin"


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

    const-string v0, "jarvis.record.begin"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
