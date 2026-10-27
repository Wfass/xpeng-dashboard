.class Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;
.super Ljava/lang/Object;
.source "XpAmbientLightService.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlowingEffect"
.end annotation


# instance fields
.field public fadeTime:I

.field public mode:I

.field public name:Ljava/lang/String;

.field public period:I

.field public protocol:Ljava/lang/String;

.field public rate:I

.field public sdata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 605
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;->sdata:Ljava/util/List;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffect;->sdata:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
