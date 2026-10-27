.class Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;
.super Ljava/lang/Object;
.source "XpLightlanuageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlayEffect"
.end annotation


# instance fields
.field public count:I

.field public light:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;

.field public owner:Ljava/lang/String;

.field public ratio:F

.field public repeat:Z

.field public rhythm:Z

.field public source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;Ljava/lang/String;)V
    .locals 3
    .param p1, "light"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;
    .param p2, "owner"    # Ljava/lang/String;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->source:Ljava/lang/String;

    .line 165
    const/4 v1, 0x1

    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->count:I

    .line 166
    const/4 v2, 0x0

    iput v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->ratio:F

    .line 167
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->rhythm:Z

    .line 168
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->repeat:Z

    .line 169
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->owner:Ljava/lang/String;

    .line 180
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->light:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;

    .line 181
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->rhythm:Z

    .line 182
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->repeat:Z

    .line 183
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->owner:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 2
    .param p1, "light"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "count"    # I
    .param p4, "repeat"    # Z
    .param p5, "owner"    # Ljava/lang/String;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->source:Ljava/lang/String;

    .line 165
    const/4 v1, 0x1

    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->count:I

    .line 166
    const/4 v1, 0x0

    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->ratio:F

    .line 167
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->rhythm:Z

    .line 168
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->repeat:Z

    .line 169
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->owner:Ljava/lang/String;

    .line 172
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->light:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;

    .line 173
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->source:Ljava/lang/String;

    .line 174
    iput p3, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->count:I

    .line 175
    iput-boolean p4, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->repeat:Z

    .line 176
    iput-object p5, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->owner:Ljava/lang/String;

    .line 177
    return-void
.end method


# virtual methods
.method public setRatio(F)Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;
    .locals 0
    .param p1, "ratio"    # F

    .line 187
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;->ratio:F

    .line 188
    return-object p0
.end method
