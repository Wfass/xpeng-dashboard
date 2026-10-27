.class public Lcom/xiaopeng/speech/jarvisproto/RecommendCardExit;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "RecommendCardExit.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "context.exit.recommend.card"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 14
    const-string v0, "context.exit.recommend.card"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 1

    .line 18
    const-string v0, ""

    return-object v0
.end method
