.class Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;
.super Ljava/lang/Object;
.source "XpAmbientLightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AmbientMessage"
.end annotation


# instance fields
.field public color:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public data:I

.field public effect:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

.field public flowingTask:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;

.field public hasManual:Z

.field public owner:Ljava/lang/String;

.field public sdata:Ljava/lang/String;

.field public sdata2:Ljava/lang/String;

.field public status:Z


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;Ljava/lang/String;)V
    .locals 0
    .param p1, "flowingTask"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;
    .param p2, "owner"    # Ljava/lang/String;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->flowingTask:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;

    .line 173
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->owner:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "sdata"    # Ljava/lang/String;
    .param p2, "data"    # I
    .param p3, "owner"    # Ljava/lang/String;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->sdata:Ljava/lang/String;

    .line 178
    iput p2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->data:I

    .line 179
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->owner:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/util/Pair;Ljava/lang/String;)V
    .locals 0
    .param p1, "sdata"    # Ljava/lang/String;
    .param p3, "owner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 201
    .local p2, "color":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->sdata:Ljava/lang/String;

    .line 203
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->color:Landroid/util/Pair;

    .line 204
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->owner:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;Ljava/lang/String;)V
    .locals 0
    .param p1, "sdata"    # Ljava/lang/String;
    .param p2, "effect"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;
    .param p3, "owner"    # Ljava/lang/String;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->sdata:Ljava/lang/String;

    .line 184
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->effect:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    .line 185
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->owner:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "sdata"    # Ljava/lang/String;
    .param p2, "sdata2"    # Ljava/lang/String;
    .param p3, "data"    # I
    .param p4, "owner"    # Ljava/lang/String;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->sdata:Ljava/lang/String;

    .line 196
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->sdata2:Ljava/lang/String;

    .line 197
    iput p3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->data:I

    .line 198
    iput-object p4, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->owner:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "sdata"    # Ljava/lang/String;
    .param p2, "sdata2"    # Ljava/lang/String;
    .param p3, "owner"    # Ljava/lang/String;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->sdata:Ljava/lang/String;

    .line 190
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->sdata2:Ljava/lang/String;

    .line 191
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->owner:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .param p1, "status"    # Z
    .param p2, "owner"    # Ljava/lang/String;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->status:Z

    .line 209
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->owner:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;)V
    .locals 0
    .param p1, "status"    # Z
    .param p2, "hasManual"    # Z
    .param p3, "owner"    # Ljava/lang/String;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->status:Z

    .line 214
    iput-boolean p2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->hasManual:Z

    .line 215
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->owner:Ljava/lang/String;

    .line 216
    return-void
.end method
