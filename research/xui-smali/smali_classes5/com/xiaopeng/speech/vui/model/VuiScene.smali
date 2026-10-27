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

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->sceneId:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->elements:Ljava/util/List;

    .line 25
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->packageName:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->appVersion:Ljava/lang/String;

    .line 28
    const-string v1, "2.0"

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->vuiVersion:Ljava/lang/String;

    .line 30
    const-string v1, "LF"

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->displayLocation:Ljava/lang/String;

    .line 31
    const-string v1, ""

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->areaLocation:Ljava/lang/String;

    .line 33
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->accessibilityScene:Z

    .line 35
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->props:Lcom/google/gson/JsonObject;

    .line 165
    return-void
.end method

.method private constructor <init>(Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->sceneId:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->elements:Ljava/util/List;

    .line 25
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->packageName:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->appVersion:Ljava/lang/String;

    .line 28
    const-string v1, "2.0"

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->vuiVersion:Ljava/lang/String;

    .line 30
    const-string v1, "LF"

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->displayLocation:Ljava/lang/String;

    .line 31
    const-string v1, ""

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->areaLocation:Ljava/lang/String;

    .line 33
    const/4 v1, 0x0

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

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->accessibilityScene:Z

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->sceneId:Ljava/lang/String;

    const-string v1, "SysDialog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "full"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->areaLocation:Ljava/lang/String;

    goto :goto_0

    .line 149
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getAppAreaLocation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->areaLocation:Ljava/lang/String;

    .line 151
    :goto_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v0

    .line 152
    .local v0, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getProps()Lcom/google/gson/JsonObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 153
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getProps()Lcom/google/gson/JsonObject;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->props:Lcom/google/gson/JsonObject;

    .line 155
    :cond_1
    if-eqz v0, :cond_2

    .line 156
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getDisplayLocation()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->displayLocation:Ljava/lang/String;

    .line 158
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->displayLocation:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 159
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->sceneId:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getAppDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->displayLocation:Ljava/lang/String;

    .line 161
    :cond_3
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;Lcom/xiaopeng/speech/vui/model/VuiScene$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;
    .param p2, "x1"    # Lcom/xiaopeng/speech/vui/model/VuiScene$1;

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

    .line 204
    return-void
.end method

.method public setAccessibilityScene(Z)V
    .locals 0
    .param p1, "accessibilityScene"    # Z

    .line 109
    nop

    .line 110
    return-void
.end method

.method public setAreaLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "areaLocation"    # Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->areaLocation:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setDisplayLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayLocation"    # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->displayLocation:Ljava/lang/String;

    .line 43
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
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->elements:Ljava/util/List;

    .line 94
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->packageName:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->sceneId:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .line 74
    iput-wide p1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->timestamp:J

    .line 75
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->appVersion:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setVuiVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "vuiVersion"    # Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->vuiVersion:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VuiScene{sceneId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", elements="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->elements:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", accessiblityScene=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->accessibilityScene:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
