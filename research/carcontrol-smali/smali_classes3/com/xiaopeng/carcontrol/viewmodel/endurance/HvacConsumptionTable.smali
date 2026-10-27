.class abstract Lcom/xiaopeng/carcontrol/viewmodel/endurance/HvacConsumptionTable;
.super Ljava/lang/Object;
.source "HvacConsumptionTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/endurance/HvacConsumptionTable$SingleHolder;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "HvacConsumptionTable"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/viewmodel/endurance/HvacConsumptionTable;
    .locals 1

    .line 16
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/endurance/HvacConsumptionTable$SingleHolder;->access$000()Lcom/xiaopeng/carcontrol/viewmodel/endurance/HvacConsumptionTable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract getHvacStableConsumption(ZFF)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "isInnerCircle",
            "targetTemp",
            "outerTemp"
        }
    .end annotation
.end method
