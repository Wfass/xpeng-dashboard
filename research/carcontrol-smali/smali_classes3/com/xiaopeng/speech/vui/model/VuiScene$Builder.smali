.class public Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;
.super Ljava/lang/Object;
.source "VuiScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/vui/model/VuiScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private accessibilityScene:Z

.field private appVersion:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private sceneId:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->sceneId:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->packageName:Ljava/lang/String;

    .line 170
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->appVersion:Ljava/lang/String;

    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->accessibilityScene:Z

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;)Ljava/lang/String;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->sceneId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;)Ljava/lang/String;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;)Ljava/lang/String;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;)J
    .locals 2

    .line 167
    iget-wide v0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->timestamp:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;)Z
    .locals 0

    .line 167
    iget-boolean p0, p0, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->accessibilityScene:Z

    return p0
.end method


# virtual methods
.method public accessibility(Z)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;
    .locals 0

    .line 192
    iput-boolean p1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->accessibilityScene:Z

    return-object p0
.end method

.method public appVersion(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/xiaopeng/speech/vui/model/VuiScene;
    .locals 2

    .line 197
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiScene;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/speech/vui/model/VuiScene;-><init>(Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;Lcom/xiaopeng/speech/vui/model/VuiScene$1;)V

    return-object v0
.end method

.method public packageName(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public sceneId(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->sceneId:Ljava/lang/String;

    return-object p0
.end method

.method public timestamp(J)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;
    .locals 0

    .line 187
    iput-wide p1, p0, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->timestamp:J

    return-object p0
.end method
