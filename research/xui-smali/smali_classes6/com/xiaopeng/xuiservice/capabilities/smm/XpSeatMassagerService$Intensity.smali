.class Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Intensity;
.super Ljava/lang/Object;
.source "XpSeatMassagerService.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Intensity"
.end annotation


# instance fields
.field public intensity:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$MapIntensity;",
            ">;"
        }
    .end annotation
.end field

.field public pattern:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
