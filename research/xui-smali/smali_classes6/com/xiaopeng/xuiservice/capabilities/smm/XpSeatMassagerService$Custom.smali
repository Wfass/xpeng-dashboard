.class Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Custom;
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
    name = "Custom"
.end annotation


# instance fields
.field public hasPreset:Z

.field public loop:I

.field public next:Ljava/lang/String;

.field public packets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Packet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
