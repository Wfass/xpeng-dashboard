.class public Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;
.super Ljava/lang/Object;
.source "NaviNode_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/ICommandProcessor;


# instance fields
.field private a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "command://navi.control.favorite.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "command://navi.smart.recommend"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x60

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "command://navi.park.recommend.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4a

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "command://navi.exit.find.path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x25

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "command://navi.enter.find.path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x24

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "command://navi.control.favorite.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x29

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "command://navi.gaode.account.page.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x59

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "command://navi.list.cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7a

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "command://navi.drive.highway.first.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "command://navi.small.map.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x44

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "command://navi.control.settings.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x56

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "command://navi.control.display.3d"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x36

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "command://navi.drive.avoid.controls"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "command://navi.control.security.remind.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "command://navi.ribbon.map.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x47

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "native://navi.select.parking.count"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "command://navi.auto.reroute.better.route"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x50

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "command://navi.small.map.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x45

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "command://navi.avoid.route.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "command://navi.drive.time.priority.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x67

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "command://navi.smart.charging.route.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5f

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "command://navi.control.speech.cruise.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5d

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "command://navi.search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x74

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "native://navi.nearby.search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2d

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "command://navi.drive.time.priority"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x66

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "native://navi.poi.search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "native://navi.settings.info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x49

    goto/16 :goto_1

    :sswitch_1b
    const-string v0, "command://navi.commuter.route.show.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x69

    goto/16 :goto_1

    :sswitch_1c
    const-string v0, "command://navi.map.zoomout.min"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    goto/16 :goto_1

    :sswitch_1d
    const-string v0, "command://navi.traffic.incident.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x71

    goto/16 :goto_1

    :sswitch_1e
    const-string v0, "command://navi.address.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x30

    goto/16 :goto_1

    :sswitch_1f
    const-string v0, "command://navi.route.refresh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e

    goto/16 :goto_1

    :sswitch_20
    const-string v0, "command://navi.main.road"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x27

    goto/16 :goto_1

    :sswitch_21
    const-string v0, "navi.commuter.route.show"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x68

    goto/16 :goto_1

    :sswitch_22
    const-string v0, "command://navi.control.history.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x57

    goto/16 :goto_1

    :sswitch_23
    const-string v0, "navi.traffic.incident"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x70

    goto/16 :goto_1

    :sswitch_24
    const-string v0, "command://navi.road.info.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_25
    const-string v0, "command://navi.road.info.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_26
    const-string v0, "command://navi.control.smart.scale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_27
    const-string v0, "command://navi.control.speech.simple"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x32

    goto/16 :goto_1

    :sswitch_28
    const-string v0, "command://navi.drive.avoid.congestion.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_29
    const-string v0, "command://navi.drive.highroad.first"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    goto/16 :goto_1

    :sswitch_2a
    const-string v0, "command://navi.control.dashboard.display.3d.headup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6d

    goto/16 :goto_1

    :sswitch_2b
    const-string v0, "command://navi.scale.level.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4c

    goto/16 :goto_1

    :sswitch_2c
    const-string v0, "command://navi.alerts.preference.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4e

    goto/16 :goto_1

    :sswitch_2d
    const-string v0, "command://navi.control.speech.super.simple"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_2e
    const-string v0, "command://navi.map.overview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_2f
    const-string v0, "command://navi.smart.recommend.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x61

    goto/16 :goto_1

    :sswitch_30
    const-string v0, "native://navi.control.charge.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_31
    const-string v0, "command://navi.control.speech.detail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x33

    goto/16 :goto_1

    :sswitch_32
    const-string v0, "command://navi.control.speech.cruise"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5c

    goto/16 :goto_1

    :sswitch_33
    const-string v0, "command://navi.bridge.area.3d.map"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x72

    goto/16 :goto_1

    :sswitch_34
    const-string v0, "native://navi.route.nearby.search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x39

    goto/16 :goto_1

    :sswitch_35
    const-string v0, "command://navi.control.speech.general"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_36
    const-string v0, "command://navi.control.road.ahead"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_37
    const-string v0, "command://navi.drive.radar.route.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_38
    const-string v0, "command://navi.control.display.north"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x34

    goto/16 :goto_1

    :sswitch_39
    const-string v0, "command://navi.map.zoomout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_3a
    const-string v0, "command://navi.control.display.2d.headup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6a

    goto/16 :goto_1

    :sswitch_3b
    const-string v0, "command://navi.control.road.ahead.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2a

    goto/16 :goto_1

    :sswitch_3c
    const-string v0, "command://navi.confirm.cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3c

    goto/16 :goto_1

    :sswitch_3d
    const-string v0, "command://navi.control.speech.mute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_3e
    const-string v0, "command://navi.traffic.info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3f

    goto/16 :goto_1

    :sswitch_3f
    const-string v0, "command://navi.control.display.car"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x35

    goto/16 :goto_1

    :sswitch_40
    const-string v0, "command://navi.control.security.remind"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_41
    const-string v0, "command://navi.drive.highroad.first.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x65

    goto/16 :goto_1

    :sswitch_42
    const-string v0, "command://navi.control.waypoint.start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x43

    goto/16 :goto_1

    :sswitch_43
    const-string v0, "command://navi.poi.details.favorite.del"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x55

    goto/16 :goto_1

    :sswitch_44
    const-string v0, "command://navi.poi.details.favorite.add"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x54

    goto/16 :goto_1

    :sswitch_45
    const-string v0, "command://navi.control.smart.scale.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_46
    const-string v0, "command://navi.confirm.ok"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3b

    goto/16 :goto_1

    :sswitch_47
    const-string v0, "command://navi.map.show.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x53

    goto/16 :goto_1

    :sswitch_48
    const-string v0, "command://navi.drive.avoid.congestion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_49
    const-string v0, "command://navi.park.recommend.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4b

    goto/16 :goto_1

    :sswitch_4a
    const-string v0, "command://navi.side.road"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    goto/16 :goto_1

    :sswitch_4b
    const-string v0, "command://navi.control.history"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x48

    goto/16 :goto_1

    :sswitch_4c
    const-string v0, "native://navi.waypoint.search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x42

    goto/16 :goto_1

    :sswitch_4d
    const-string v0, "command://navi.route.select"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3d

    goto/16 :goto_1

    :sswitch_4e
    const-string v0, "command://navi.drive.charge.less.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x63

    goto/16 :goto_1

    :sswitch_4f
    const-string v0, "command://navi.drive.avoid.charge.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_50
    const-string v0, "command://navi.bridge.area.3d.map.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x73

    goto/16 :goto_1

    :sswitch_51
    const-string v0, "command://navi.address.pending.route"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    goto/16 :goto_1

    :sswitch_52
    const-string v0, "command://navi.control.overview.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_53
    const-string v0, "command://navi.drive.highway.no.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_54
    const-string v0, "command://navi.drive.highway.no"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_55
    const-string v0, "command://navi.control.vol.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x38

    goto/16 :goto_1

    :sswitch_56
    const-string v0, "command://navi.parking.select"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3a

    goto/16 :goto_1

    :sswitch_57
    const-string v0, "command://navi.control.speech.eye.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_58
    const-string v0, "command://navi.control.speech.eye"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_59
    const-string v0, "command://navi.drive.avoid.controls.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_5a
    const-string v0, "command://navi.charging.search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x78

    goto/16 :goto_1

    :sswitch_5b
    const-string v0, "command://navi.perform.immediate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x75

    goto/16 :goto_1

    :sswitch_5c
    const-string v0, "native://navi.address.get"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2e

    goto/16 :goto_1

    :sswitch_5d
    const-string v0, "command://navi.smart.charging.route"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5e

    goto/16 :goto_1

    :sswitch_5e
    const-string v0, "command://navi.drive.highway.first"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto/16 :goto_1

    :sswitch_5f
    const-string v0, "native://navi.navigating.get"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_60
    const-string v0, "command://navi.control.speech.standard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5b

    goto/16 :goto_1

    :sswitch_61
    const-string v0, "command://navi.control.vol.on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x37

    goto/16 :goto_1

    :sswitch_62
    const-string v0, "command://navi.drive.charge.less"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x62

    goto/16 :goto_1

    :sswitch_63
    const-string v0, "native://navi.control.settings.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_64
    const-string v0, "navi.realtime.traffic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6f

    goto/16 :goto_1

    :sswitch_65
    const-string v0, "native://navi.select.route.count"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x41

    goto/16 :goto_1

    :sswitch_66
    const-string v0, "command://navi.realtime.traffic.off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6e

    goto/16 :goto_1

    :sswitch_67
    const-string v0, "command://navi.map.zoomin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_68
    const-string v0, "command://navi.search.filter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x77

    goto/16 :goto_1

    :sswitch_69
    const-string v0, "command://navi.ribbon.map.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x46

    goto/16 :goto_1

    :sswitch_6a
    const-string v0, "command://navi.drive.avoid.charge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_6b
    const-string v0, "command://navi.control.overview.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_6c
    const-string v0, "command://navi.list.item.selected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x58

    goto/16 :goto_1

    :sswitch_6d
    const-string v0, "command://navi.control.display.3d.headup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6b

    goto/16 :goto_1

    :sswitch_6e
    const-string v0, "command://navi.multi.poi.search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x79

    goto/16 :goto_1

    :sswitch_6f
    const-string v0, "command://navi.auto.reroute.never"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x52

    goto/16 :goto_1

    :sswitch_70
    const-string v0, "command://navi.map.zoomin.max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2b

    goto/16 :goto_1

    :sswitch_71
    const-string v0, "command://navi.oritention.metre.set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4d

    goto/16 :goto_1

    :sswitch_72
    const-string v0, "command://navi.control.dashboard.display.2d.headup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6c

    goto :goto_1

    :sswitch_73
    const-string v0, "native://navi.control.charge.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_74
    const-string v0, "command://navi.auto.reroute.ask.first"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x51

    goto :goto_1

    :sswitch_75
    const-string v0, "command://navi.charge.service.open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5a

    goto :goto_1

    :sswitch_76
    const-string v0, "command://navi.search.onway"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x76

    goto :goto_1

    :sswitch_77
    const-string v0, "command://navi.search.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x26

    goto :goto_1

    :sswitch_78
    const-string v0, "command://navi.control.start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x31

    goto :goto_1

    :sswitch_79
    const-string v0, "command://navi.drive.radar.route"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_1

    :sswitch_7a
    const-string v0, "command://navi.control.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 382
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->bt(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 379
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->bs(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 376
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->br(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 373
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->bq(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 370
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->bp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 367
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->bo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 364
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->bn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 361
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->bm(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 358
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->bl(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 355
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->bk(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 352
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->bj(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 349
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->bi(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 346
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->bh(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 343
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->bg(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 340
    :pswitch_e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->bf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 337
    :pswitch_f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->be(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 334
    :pswitch_10
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->bd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 331
    :pswitch_11
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->bc(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 328
    :pswitch_12
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->bb(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 325
    :pswitch_13
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->ba(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 322
    :pswitch_14
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->aZ(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 319
    :pswitch_15
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->aY(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 316
    :pswitch_16
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->aX(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 313
    :pswitch_17
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->aW(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 310
    :pswitch_18
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->aV(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 307
    :pswitch_19
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->aU(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 304
    :pswitch_1a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->aT(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 301
    :pswitch_1b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->aS(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 298
    :pswitch_1c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->aR(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 295
    :pswitch_1d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->aQ(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 292
    :pswitch_1e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->aP(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 289
    :pswitch_1f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->aO(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 286
    :pswitch_20
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->aN(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 283
    :pswitch_21
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->aM(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 280
    :pswitch_22
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->aL(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 277
    :pswitch_23
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->aK(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 274
    :pswitch_24
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->aJ(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 271
    :pswitch_25
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->aI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 268
    :pswitch_26
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->aH(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 265
    :pswitch_27
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->aG(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 262
    :pswitch_28
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->aF(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 259
    :pswitch_29
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->aE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 256
    :pswitch_2a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->aD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 253
    :pswitch_2b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->aC(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 250
    :pswitch_2c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->aB(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 247
    :pswitch_2d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->aA(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 244
    :pswitch_2e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->az(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 241
    :pswitch_2f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->ay(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 238
    :pswitch_30
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->ax(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 235
    :pswitch_31
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->aw(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 232
    :pswitch_32
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->av(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 229
    :pswitch_33
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->au(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 226
    :pswitch_34
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->at(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 223
    :pswitch_35
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->as(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 220
    :pswitch_36
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->ar(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 217
    :pswitch_37
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->aq(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 214
    :pswitch_38
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->ap(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 211
    :pswitch_39
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 208
    :pswitch_3a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->an(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 205
    :pswitch_3b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->am(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 202
    :pswitch_3c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->al(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 199
    :pswitch_3d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->ak(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 196
    :pswitch_3e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->aj(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 193
    :pswitch_3f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->ai(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 190
    :pswitch_40
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->ah(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 187
    :pswitch_41
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->ag(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 184
    :pswitch_42
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->af(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 181
    :pswitch_43
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->ae(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 178
    :pswitch_44
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->ad(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 175
    :pswitch_45
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->ac(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 172
    :pswitch_46
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->ab(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 169
    :pswitch_47
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->aa(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 166
    :pswitch_48
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->Z(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 163
    :pswitch_49
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->Y(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 160
    :pswitch_4a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->X(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 157
    :pswitch_4b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 154
    :pswitch_4c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 151
    :pswitch_4d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->U(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 148
    :pswitch_4e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->T(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 145
    :pswitch_4f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->S(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 142
    :pswitch_50
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->R(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 139
    :pswitch_51
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->Q(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 136
    :pswitch_52
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->P(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 133
    :pswitch_53
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->O(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 130
    :pswitch_54
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->N(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 127
    :pswitch_55
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->M(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 124
    :pswitch_56
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->L(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 121
    :pswitch_57
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->K(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 118
    :pswitch_58
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->J(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 115
    :pswitch_59
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 112
    :pswitch_5a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->H(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 109
    :pswitch_5b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->G(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 106
    :pswitch_5c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->F(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 103
    :pswitch_5d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 100
    :pswitch_5e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 97
    :pswitch_5f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->C(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 94
    :pswitch_60
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->B(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 91
    :pswitch_61
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->A(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 88
    :pswitch_62
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->z(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 85
    :pswitch_63
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->y(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 82
    :pswitch_64
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->x(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 79
    :pswitch_65
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 76
    :pswitch_66
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 73
    :pswitch_67
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->u(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 70
    :pswitch_68
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 67
    :pswitch_69
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 64
    :pswitch_6a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 61
    :pswitch_6b
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 58
    :pswitch_6c
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 55
    :pswitch_6d
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 52
    :pswitch_6e
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 49
    :pswitch_6f
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 46
    :pswitch_70
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 43
    :pswitch_71
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 40
    :pswitch_72
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 37
    :pswitch_73
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 34
    :pswitch_74
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 31
    :pswitch_75
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 28
    :pswitch_76
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :pswitch_77
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 22
    :pswitch_78
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :pswitch_79
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :pswitch_7a
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode_Processor;->a:Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/node/navi/NaviNode;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f5f9372 -> :sswitch_7a
        -0x7f1fee1c -> :sswitch_79
        -0x7e7aad08 -> :sswitch_78
        -0x76760d15 -> :sswitch_77
        -0x75cbee5d -> :sswitch_76
        -0x727fa3fc -> :sswitch_75
        -0x71d28203 -> :sswitch_74
        -0x71ab664c -> :sswitch_73
        -0x70c8f579 -> :sswitch_72
        -0x69d41467 -> :sswitch_71
        -0x6365a707 -> :sswitch_70
        -0x6364a172 -> :sswitch_6f
        -0x63635626 -> :sswitch_6e
        -0x62d0921e -> :sswitch_6d
        -0x5e50e041 -> :sswitch_6c
        -0x5a888c93 -> :sswitch_6b
        -0x57f0bad6 -> :sswitch_6a
        -0x5770f5a5 -> :sswitch_69
        -0x5358ab1b -> :sswitch_68
        -0x52447bfd -> :sswitch_67
        -0x51ed1a4c -> :sswitch_66
        -0x51281d03 -> :sswitch_65
        -0x50d0523e -> :sswitch_64
        -0x4e7f5381 -> :sswitch_63
        -0x4d277aea -> :sswitch_62
        -0x4bfedefc -> :sswitch_61
        -0x462d4ea1 -> :sswitch_60
        -0x45b93e65 -> :sswitch_5f
        -0x440324ae -> :sswitch_5e
        -0x43e668f6 -> :sswitch_5d
        -0x42dbbdc9 -> :sswitch_5c
        -0x3f0b27b5 -> :sswitch_5b
        -0x3d114f94 -> :sswitch_5a
        -0x3a8c7bd3 -> :sswitch_59
        -0x3a40a5b1 -> :sswitch_58
        -0x390dceb0 -> :sswitch_57
        -0x3413a195 -> :sswitch_56
        -0x33dd0116 -> :sswitch_55
        -0x2f4a67a1 -> :sswitch_54
        -0x2e8518a0 -> :sswitch_53
        -0x2c3071cb -> :sswitch_52
        -0x2bd8a9e1 -> :sswitch_51
        -0x2b835b6b -> :sswitch_50
        -0x28b4c955 -> :sswitch_4f
        -0x25a55f69 -> :sswitch_4e
        -0x257fab06 -> :sswitch_4d
        -0x22dfed70 -> :sswitch_4c
        -0x222eda56 -> :sswitch_4b
        -0x20cea4c2 -> :sswitch_4a
        -0x1cd127ce -> :sswitch_49
        -0x1ccfb063 -> :sswitch_48
        -0x1c171104 -> :sswitch_47
        -0x1ba4293d -> :sswitch_46
        -0x19ca4804 -> :sswitch_45
        -0x140b9e28 -> :sswitch_44
        -0x140b92be -> :sswitch_43
        -0x112791a1 -> :sswitch_42
        -0xfbd6fde -> :sswitch_41
        -0xf5fcd77 -> :sswitch_40
        -0xea3e942 -> :sswitch_3f
        -0xe4e2d48 -> :sswitch_3e
        -0xdd07a45 -> :sswitch_3d
        -0x396d41f -> :sswitch_3c
        0x1d4689e -> :sswitch_3b
        0x8eafee1 -> :sswitch_3a
        0x9b51430 -> :sswitch_39
        0xb52cd6f -> :sswitch_38
        0xd131665 -> :sswitch_37
        0xe0d689d -> :sswitch_36
        0xf359a06 -> :sswitch_35
        0x11a0d9ed -> :sswitch_34
        0x12283814 -> :sswitch_33
        0x132ad7f7 -> :sswitch_32
        0x1427eb73 -> :sswitch_31
        0x1521030e -> :sswitch_30
        0x160f32ff -> :sswitch_2f
        0x17c52284 -> :sswitch_2e
        0x19b88927 -> :sswitch_2d
        0x216db06d -> :sswitch_2c
        0x234d1ffb -> :sswitch_2b
        0x237b7988 -> :sswitch_2a
        0x25a3f221 -> :sswitch_29
        0x2d2bcf9e -> :sswitch_28
        0x2df604d4 -> :sswitch_27
        0x2ec916fb -> :sswitch_26
        0x31f5d8ed -> :sswitch_25
        0x332e78b5 -> :sswitch_24
        0x34736aeb -> :sswitch_23
        0x38a988b4 -> :sswitch_22
        0x3de03050 -> :sswitch_21
        0x3e68201c -> :sswitch_20
        0x4055729d -> :sswitch_1f
        0x40800b8f -> :sswitch_1e
        0x4371e65d -> :sswitch_1d
        0x43c60b94 -> :sswitch_1c
        0x4962eac0 -> :sswitch_1b
        0x4a60bcb4 -> :sswitch_1a
        0x4acee291 -> :sswitch_19
        0x4c341768 -> :sswitch_18
        0x50d3a112 -> :sswitch_17
        0x50ff4521 -> :sswitch_16
        0x51969af8 -> :sswitch_15
        0x5819988b -> :sswitch_14
        0x5c20b9e9 -> :sswitch_13
        0x613c82ab -> :sswitch_12
        0x6154ff66 -> :sswitch_11
        0x64925e89 -> :sswitch_10
        0x6778ac6c -> :sswitch_f
        0x68a77c07 -> :sswitch_e
        0x68d85c8a -> :sswitch_d
        0x69eea3ac -> :sswitch_c
        0x6ae1ea67 -> :sswitch_b
        0x6d321a97 -> :sswitch_a
        0x6e841f1c -> :sswitch_9
        0x70b178d3 -> :sswitch_8
        0x71e2b9f1 -> :sswitch_7
        0x72d1ab97 -> :sswitch_6
        0x74e56950 -> :sswitch_5
        0x7507784b -> :sswitch_4
        0x799868e3 -> :sswitch_3
        0x7af0febc -> :sswitch_2
        0x7b468b7e -> :sswitch_1
        0x7fa9cff2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a()[Ljava/lang/String;
    .locals 123

    const-string v0, "command://navi.control.close"

    const-string v1, "command://navi.map.zoomin"

    const-string v2, "command://navi.map.zoomout"

    const-string v3, "command://navi.road.info.open"

    const-string v4, "command://navi.road.info.close"

    const-string v5, "command://navi.control.overview.open"

    const-string v6, "command://navi.control.overview.close"

    const-string v7, "command://navi.map.overview"

    const-string v8, "command://navi.control.favorite.open"

    const-string v9, "native://navi.control.settings.open"

    const-string v10, "native://navi.control.charge.open"

    const-string v11, "native://navi.control.charge.close"

    const-string v12, "command://navi.drive.avoid.congestion"

    const-string v13, "command://navi.drive.avoid.congestion.off"

    const-string v14, "command://navi.drive.avoid.charge"

    const-string v15, "command://navi.drive.avoid.charge.off"

    const-string v16, "command://navi.drive.highway.first.off"

    const-string v17, "command://navi.drive.avoid.controls"

    const-string v18, "command://navi.drive.avoid.controls.off"

    const-string v19, "command://navi.drive.radar.route"

    const-string v20, "command://navi.drive.radar.route.off"

    const-string v21, "command://navi.control.speech.mute"

    const-string v22, "command://navi.control.speech.super.simple"

    const-string v23, "command://navi.control.speech.general"

    const-string v24, "command://navi.control.speech.eye"

    const-string v25, "command://navi.control.speech.eye.off"

    const-string v26, "command://navi.control.smart.scale"

    const-string v27, "command://navi.control.smart.scale.off"

    const-string v28, "command://navi.control.security.remind"

    const-string v29, "command://navi.control.road.ahead"

    const-string v30, "command://navi.drive.highway.no"

    const-string v31, "command://navi.drive.highway.no.off"

    const-string v32, "command://navi.drive.highway.first"

    const-string v33, "native://navi.navigating.get"

    const-string v34, "native://navi.poi.search"

    const-string v35, "command://navi.control.security.remind.off"

    const-string v36, "command://navi.enter.find.path"

    const-string v37, "command://navi.exit.find.path"

    const-string v38, "command://navi.search.close"

    const-string v39, "command://navi.main.road"

    const-string v40, "command://navi.side.road"

    const-string v41, "command://navi.control.favorite.close"

    const-string v42, "command://navi.control.road.ahead.off"

    const-string v43, "command://navi.map.zoomin.max"

    const-string v44, "command://navi.map.zoomout.min"

    const-string v45, "native://navi.nearby.search"

    const-string v46, "native://navi.address.get"

    const-string v47, "command://navi.address.pending.route"

    const-string v48, "command://navi.address.set"

    const-string v49, "command://navi.control.start"

    const-string v50, "command://navi.control.speech.simple"

    const-string v51, "command://navi.control.speech.detail"

    const-string v52, "command://navi.control.display.north"

    const-string v53, "command://navi.control.display.car"

    const-string v54, "command://navi.control.display.3d"

    const-string v55, "command://navi.control.vol.on"

    const-string v56, "command://navi.control.vol.off"

    const-string v57, "native://navi.route.nearby.search"

    const-string v58, "command://navi.parking.select"

    const-string v59, "command://navi.confirm.ok"

    const-string v60, "command://navi.confirm.cancel"

    const-string v61, "command://navi.route.select"

    const-string v62, "command://navi.route.refresh"

    const-string v63, "command://navi.traffic.info"

    const-string v64, "native://navi.select.parking.count"

    const-string v65, "native://navi.select.route.count"

    const-string v66, "native://navi.waypoint.search"

    const-string v67, "command://navi.control.waypoint.start"

    const-string v68, "command://navi.small.map.open"

    const-string v69, "command://navi.small.map.close"

    const-string v70, "command://navi.ribbon.map.open"

    const-string v71, "command://navi.ribbon.map.close"

    const-string v72, "command://navi.control.history"

    const-string v73, "native://navi.settings.info"

    const-string v74, "command://navi.park.recommend.on"

    const-string v75, "command://navi.park.recommend.off"

    const-string v76, "command://navi.scale.level.set"

    const-string v77, "command://navi.oritention.metre.set"

    const-string v78, "command://navi.alerts.preference.set"

    const-string v79, "command://navi.avoid.route.set"

    const-string v80, "command://navi.auto.reroute.better.route"

    const-string v81, "command://navi.auto.reroute.ask.first"

    const-string v82, "command://navi.auto.reroute.never"

    const-string v83, "command://navi.map.show.set"

    const-string v84, "command://navi.poi.details.favorite.add"

    const-string v85, "command://navi.poi.details.favorite.del"

    const-string v86, "command://navi.control.settings.close"

    const-string v87, "command://navi.control.history.close"

    const-string v88, "command://navi.list.item.selected"

    const-string v89, "command://navi.gaode.account.page.open"

    const-string v90, "command://navi.charge.service.open"

    const-string v91, "command://navi.control.speech.standard"

    const-string v92, "command://navi.control.speech.cruise"

    const-string v93, "command://navi.control.speech.cruise.off"

    const-string v94, "command://navi.smart.charging.route"

    const-string v95, "command://navi.smart.charging.route.off"

    const-string v96, "command://navi.smart.recommend"

    const-string v97, "command://navi.smart.recommend.off"

    const-string v98, "command://navi.drive.charge.less"

    const-string v99, "command://navi.drive.charge.less.off"

    const-string v100, "command://navi.drive.highroad.first"

    const-string v101, "command://navi.drive.highroad.first.off"

    const-string v102, "command://navi.drive.time.priority"

    const-string v103, "command://navi.drive.time.priority.off"

    const-string v104, "navi.commuter.route.show"

    const-string v105, "command://navi.commuter.route.show.off"

    const-string v106, "command://navi.control.display.2d.headup"

    const-string v107, "command://navi.control.display.3d.headup"

    const-string v108, "command://navi.control.dashboard.display.2d.headup"

    const-string v109, "command://navi.control.dashboard.display.3d.headup"

    const-string v110, "command://navi.realtime.traffic.off"

    const-string v111, "navi.realtime.traffic"

    const-string v112, "navi.traffic.incident"

    const-string v113, "command://navi.traffic.incident.off"

    const-string v114, "command://navi.bridge.area.3d.map"

    const-string v115, "command://navi.bridge.area.3d.map.off"

    const-string v116, "command://navi.search"

    const-string v117, "command://navi.perform.immediate"

    const-string v118, "command://navi.search.onway"

    const-string v119, "command://navi.search.filter"

    const-string v120, "command://navi.charging.search"

    const-string v121, "command://navi.multi.poi.search"

    const-string v122, "command://navi.list.cancel"

    .line 390
    filled-new-array/range {v0 .. v122}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
