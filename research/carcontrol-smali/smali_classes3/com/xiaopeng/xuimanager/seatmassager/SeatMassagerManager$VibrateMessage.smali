.class Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;
.super Ljava/lang/Object;
.source "SeatMassagerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VibrateMessage"
.end annotation


# instance fields
.field public data:I

.field public ids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public sdata:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(Ljava/util/Set;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;->ids:Ljava/util/Set;

    .line 144
    iput p2, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;->type:I

    .line 145
    iput-object p3, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;->sdata:Ljava/lang/String;

    .line 146
    iput p4, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;->data:I

    return-void
.end method
