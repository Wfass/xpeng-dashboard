.class Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;
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
    name = "Effect"
.end annotation


# instance fields
.field public colorTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public count:I

.field public displayId:I

.field public hasHue:Z

.field public hasMemColorType:Z

.field public hasRhythm:Z

.field public name:Ljava/lang/String;

.field public packets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Packet;",
            ">;"
        }
    .end annotation
.end field

.field public priority:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
