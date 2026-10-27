.class public Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;
.super Ljava/lang/Object;
.source "LogicHvacEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent$EventHolder;
    }
.end annotation


# static fields
.field public static final EVENT_AI_CABIN_SERVICE_CONTROL:I = 0x124f80


# instance fields
.field private final mNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    .line 10
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->initEventIds()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent$1;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;
    .locals 1

    .line 14
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent$EventHolder;->access$000()Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;

    move-result-object v0

    return-object v0
.end method

.method private initEventIds()V
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "logic://hvac.power"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "logic://hvac.power.r"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "logic://hvac.power.r.with_opt"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "logic://hvac.auto"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "logic://hvac.auto.r"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "logic://hvac.ac"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "logic://hvac.aqs"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "logic://hvac.circulation"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, "logic://hvac.defrost.f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x9

    const-string v2, "logic://hvac.windshield.heat.f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0xa

    const-string v2, "logic://hvac.mirror.heat.r"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0xb

    const-string v2, "logic://hvac.mode.eco"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const-string v2, "logic://hvac.mode.purge"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const-string v2, "logic://hvac.mode.newfresh"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const-string v2, "logic://hvac.mode.autodefog"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0xf

    const-string v2, "logic://hvac.mode.autodefog.status"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x10

    const-string v2, "logic://hvac.mode.selfdry"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x11

    const-string v2, "logic://hvac.mode.autovent"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x12

    const-string v2, "logic://hvac.mode.deodorant"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x13

    const-string v2, "logic://hvac.mode.deodorant.timer"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x14

    const-string v2, "logic://hvac.mode.maxcooling"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x15

    const-string v2, "logic://hvac.mode.maxwarming"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x16

    const-string v2, "logic://hvac.mode.nivent"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x17

    const-string v2, "logic://hvac.temp.drv"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x18

    const-string v2, "logic://hvac.temp.step.drv"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x19

    const-string v2, "logic://hvac.temp.psn"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x1a

    const-string v2, "logic://hvac.temp.step.psn"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x1b

    const-string v2, "logic://hvac.temp.rd"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x1c

    const-string v2, "logic://hvac.temp.step.rd"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x1d

    const-string v2, "logic://hvac.temp.rp"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x1e

    const-string v2, "logic://hvac.temp.step.rp"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x1f

    const-string v2, "logic://hvac.temp.td"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x20

    const-string v2, "logic://hvac.temp.step.td"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x21

    const-string v2, "logic://hvac.temp.sync"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x22

    const-string v2, "logic://hvac.temp.outer"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x23

    const-string v2, "logic://hvac.temp.inner"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x24

    const-string v2, "logic://hvac.pm25.outer"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x25

    const-string v2, "logic://hvac.pm25.inner"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x26

    const-string v2, "logic://hvac.wind.level"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x27

    const-string v2, "logic://hvac.wind.level.step"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x28

    const-string v2, "logic://hvac.wind.level.r"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x29

    const-string v2, "logic://hvac.wind.level.step.r"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x2a

    const-string v2, "logic://hvac.wind.color"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x2b

    const-string v2, "logic://hvac.wind.mode"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x2c

    const-string v2, "logic://hvac.wind.mode.group"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x2d

    const-string v2, "logic://hvac.wind.mode.r"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x2e

    const-string v2, "logic://hvac.wind.mode.group.r"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x2f

    const-string v2, "logic://hvac.eav.mode.sweep"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x30

    const-string v2, "logic://hvac.eav.mode.sweep.r"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x31

    const-string v2, "logic://hvac.eav.mode.drv"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x32

    const-string v2, "logic://hvac.eav.mode.rd"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x33

    const-string v2, "logic://hvac.eav.mode.psn"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x34

    const-string v2, "logic://hvac.eav.mode.rp"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x35

    const-string v2, "logic://hvac.eav.pos.dl.h"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x36

    const-string v2, "logic://hvac.eav.pos.dl.v"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x37

    const-string v2, "logic://hvac.eav.pos.dr.h"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x38

    const-string v2, "logic://hvac.eav.pos.dr.v"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x39

    const-string v2, "logic://hvac.eav.pos.pl.h"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x3a

    const-string v2, "logic://hvac.eav.pos.pl.v"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x3b

    const-string v2, "logic://hvac.eav.pos.pr.h"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x3c

    const-string v2, "logic://hvac.eav.pos.pr.v"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x3d

    const-string v2, "logic://hvac.eav.pos.rl.h"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x3e

    const-string v2, "logic://hvac.eav.pos.rl.v"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x3f

    const-string v2, "logic://hvac.eav.pos.rr.h"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x40

    const-string v2, "logic://hvac.eav.pos.rr.v"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x41

    const-string v2, "logic://hvac.steer.heat"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x42

    const-string v2, "logic://hvac.seat.heat"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x43

    const-string v2, "logic://hvac.seat.vent"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x44

    const-string v2, "logic://hvac.seat.heat.psn"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x45

    const-string v2, "logic://hvac.seat.vent.psn"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x46

    const-string v2, "logic://hvac.seat.heat.rl"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x47

    const-string v2, "logic://hvac.seat.vent.rl"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x48

    const-string v2, "logic://hvac.seat.heat.rr"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    const/16 v1, 0x49

    const-string v2, "logic://hvac.seat.vent.rr"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getEventId(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/hvac/LogicHvacEvent;->mNames:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const v0, 0x124f80

    add-int/2addr p1, v0

    return p1
.end method
