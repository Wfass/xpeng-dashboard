.class public Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;
.super Ljava/lang/Object;
.source "GeekConfig.java"


# instance fields
.field private settings:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "geekPwrSetting"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;",
            ">;"
        }
    .end annotation
.end field

.field private userId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userId"
    .end annotation
.end field

.field private uuid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "geekCfgUUID"
    .end annotation
.end field

.field private version:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field

.field private vid:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSettings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;->settings:Ljava/util/List;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;->userId:J

    return-wide v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;->version:I

    return v0
.end method

.method public getVid()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;->vid:I

    return v0
.end method

.method public setSettings(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "settings"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;",
            ">;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;->settings:Ljava/util/List;

    return-void
.end method

.method public setUserId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 33
    iput-wide p1, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;->userId:J

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uuid"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;->uuid:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 49
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;->version:I

    return-void
.end method

.method public setVid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vid"
        }
    .end annotation

    .line 41
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;->vid:I

    return-void
.end method
