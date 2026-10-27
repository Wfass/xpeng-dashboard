.class public Lcom/xiaopeng/lludancemanager/bean/LluDanceInstalledInfo;
.super Ljava/lang/Object;
.source "LluDanceInstalledInfo.java"


# instance fields
.field private effectName:Ljava/lang/String;

.field private videoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEffectName()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceInstalledInfo;->effectName:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceInstalledInfo;->videoPath:Ljava/lang/String;

    return-object v0
.end method

.method public setEffectName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectName"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceInstalledInfo;->effectName:Ljava/lang/String;

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoPath"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceInstalledInfo;->videoPath:Ljava/lang/String;

    return-void
.end method
