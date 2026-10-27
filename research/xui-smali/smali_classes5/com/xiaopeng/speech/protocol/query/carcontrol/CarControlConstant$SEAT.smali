.class public final Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlConstant$SEAT;
.super Ljava/lang/Object;
.source "CarControlConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SEAT"
.end annotation


# static fields
.field public static final CAR_CONTORL_SUPPORT:I = 0x1

.field public static final CAR_DOOR_OPEN:I = 0x2

.field public static final CAR_IS_RUNNING:I = 0x3

.field public static final CAR_MAIN_NO_PERSON:I = 0x4

.field public static final CAR_SEAT_IS_MOVING:I = 0x5

.field public static final CAR_TYPE_NOT_SUPPORT:I


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlConstant;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlConstant;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlConstant;

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlConstant$SEAT;->this$0:Lcom/xiaopeng/speech/protocol/query/carcontrol/CarControlConstant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
