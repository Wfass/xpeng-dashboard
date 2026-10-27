.class Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;
.super Ljava/lang/Object;
.source "SeatMassagerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MassagerMessage"
.end annotation


# instance fields
.field public data:I

.field public id:I

.field public sdata:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput p1, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;->id:I

    .line 131
    iput p2, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;->type:I

    .line 132
    iput-object p3, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;->sdata:Ljava/lang/String;

    .line 133
    iput p4, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;->data:I

    return-void
.end method
