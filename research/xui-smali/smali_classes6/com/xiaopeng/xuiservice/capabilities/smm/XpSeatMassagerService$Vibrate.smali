.class Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;
.super Ljava/lang/Object;
.source "XpSeatMassagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Vibrate"
.end annotation


# instance fields
.field public effect:Ljava/lang/String;

.field public enable:Z

.field public ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public loop:I

.field public owner:Ljava/lang/String;

.field public position:I

.field public seats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/seatmassager/Seat;",
            ">;"
        }
    .end annotation
.end field

.field public streamId:I


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/lang/String;I)V
    .locals 0
    .param p1, "streamId"    # I
    .param p3, "effect"    # Ljava/lang/String;
    .param p4, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 216
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->streamId:I

    .line 218
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->ids:Ljava/util/List;

    .line 219
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->effect:Ljava/lang/String;

    .line 220
    iput p4, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->position:I

    .line 221
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .param p2, "effect"    # Ljava/lang/String;
    .param p3, "loop"    # I
    .param p4, "position"    # I
    .param p5, "owner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/seatmassager/Seat;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 208
    .local p1, "seats":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/seatmassager/Seat;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->seats:Ljava/util/List;

    .line 210
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->effect:Ljava/lang/String;

    .line 211
    if-gez p3, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->loop:I

    .line 212
    iput p4, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->position:I

    .line 213
    iput-object p5, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->owner:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZLjava/lang/String;)V
    .locals 0
    .param p2, "enable"    # Z
    .param p3, "owner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 223
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->ids:Ljava/util/List;

    .line 225
    iput-boolean p2, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->enable:Z

    .line 226
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->owner:Ljava/lang/String;

    .line 227
    return-void
.end method
