.class Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;
.super Ljava/lang/Object;
.source "XpSeatMassagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Massager"
.end annotation


# instance fields
.field public ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public owner:Ljava/lang/String;

.field public sdata:Ljava/lang/String;

.field public seats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/seatmassager/Seat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "sdata"    # Ljava/lang/String;
    .param p4, "owner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/seatmassager/Seat;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 192
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "seats":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/seatmassager/Seat;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;->ids:Ljava/util/List;

    .line 194
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;->seats:Ljava/util/List;

    .line 195
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;->sdata:Ljava/lang/String;

    .line 196
    iput-object p4, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;->owner:Ljava/lang/String;

    .line 197
    return-void
.end method
