.class public Lcom/xiaopeng/speech/vui/model/VuiScene;
.super Ljava/lang/Object;
.source "VuiScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;
    }
.end annotation


# instance fields
.field private accessibilityScene:Z

.field private appVersion:Ljava/lang/String;

.field private areaLocation:Ljava/lang/String;

.field private displayLocation:Ljava/lang/String;

.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;"
        }
    .end annotation
.end field

.field private packageName:Ljava/lang/String;

.field private props:Lcom/google/gson/JsonObject;

.field private sceneId:Ljava/lang/String;

.field private timestamp:J

.field private vuiVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->sceneId:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->elements:Ljava/util/List;

    .line 25
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->packageName:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->appVersion:Ljava/lang/String;

    const-string v1, "2.0"

    .line 28
    iput-object v1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->vuiVersion:Ljava/lang/String;

    const-string v1, "LF"

    .line 30
    iput-object v1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->displayLocation:Ljava/lang/String;

    const-string v1, ""

    .line 31
    iput-object v1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->areaLocation:Ljava/lang/String;

    const/4 v1, 0x0

    .line 33
    iput-boolean v1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->accessibilityScene:Z

    .line 35
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->props:Lcom/google/gson/JsonObject;

    return-void
.end method

.method private constructor <init>(Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;)V
    .locals 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->sceneId:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->elements:Ljava/util/List;

    .line 25
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->packageName:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->appVersion:Ljava/lang/String;

    const-string v1, "2.0"

    .line 28
    iput-object v1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->vuiVersion:Ljava/lang/String;

    const-string v1, "LF"

    .line 30
    iput-object v1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->displayLocation:Ljava/lang/String;

    const-string v1, ""

    .line 31
    iput-object v1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->areaLocation:Ljava/lang/String;

    const/4 v1, 0x0

    .line 33
    iput-boolean v1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->accessibilityScene:Z

    .line 35
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->props:Lcom/google/gson/JsonObject;

    .line 127
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->access$000(Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->sceneId:Ljava/lang/String;

    .line 128
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->access$100(Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->packageName:Ljava/lang/String;

    .line 129
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->access$200(Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->appVersion:Ljava/lang/String;

    .line 130
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->access$300(Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->timestamp:J

    .line 131
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->access$400(Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->accessibilityScene:Z

    .line 146
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->sceneId:Ljava/lang/String;

    const-string v0, "SysDialog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "full"

    .line 147
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->areaLocation:Ljava/lang/String;

    goto :goto_0

    .line 149
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getAppAreaLocation()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->areaLocation:Ljava/lang/String;

    .line 151
    :goto_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->sceneId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 152
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getProps()Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getProps()Lcom/google/gson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->props:Lcom/google/gson/JsonObject;

    :cond_1
    if-eqz p1, :cond_2

    .line 156
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getDisplayLocation()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->displayLocation:Ljava/lang/String;

    .line 158
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->displayLocation:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 159
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->sceneId:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getAppDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->displayLocation:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;Lcom/xiaopeng/speech/vui/model/VuiScene$1;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/model/VuiScene;-><init>(Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;)V

    return-void
.end method


# virtual methods
.method public accessibilityScene()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->accessibilityScene:Z

    return v0
.end method

.method public getAreaLocation()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->areaLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayLocation()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->displayLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->elements:Ljava/util/List;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->sceneId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->timestamp:J

    return-wide v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getVuiVersion()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->vuiVersion:Ljava/lang/String;

    return-object v0
.end method

.method public publish()V
    .locals 2

    .line 202
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->buildScene(Lcom/xiaopeng/speech/vui/model/VuiScene;ZZ)V

    .line 203
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->buildScene(Lcom/xiaopeng/speech/vui/model/VuiScene;ZZ)V

    return-void
.end method

.method public setAccessibilityScene(Z)V
    .locals 0

    return-void
.end method

.method public setAreaLocation(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->areaLocation:Ljava/lang/String;

    return-void
.end method

.method public setDisplayLocation(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->displayLocation:Ljava/lang/String;

    return-void
.end method

.method public setElements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;)V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->elements:Ljava/util/List;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->sceneId:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 74
    iput-wide p1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->timestamp:J

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public setVuiVersion(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->vuiVersion:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VuiScene{sceneId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", elements="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->elements:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", appVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", accessiblityScene=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->accessibilityScene:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
