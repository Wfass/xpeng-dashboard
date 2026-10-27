.class public Lcom/xiaopeng/track/Track_AutoClass;
.super Ljava/lang/Object;
.source "Track_AutoClass.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collect()V
    .locals 4

    .line 6
    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNgpCustomSpeedPercent()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_ngp_custom_speed_percent"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getRaebState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_raeb"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getOverseasLkaState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_overseas_lka"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getRcwState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_rcw"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNgpTruckOffsetState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_ngp_truck_offset"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getLssState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_lss"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNedcState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_nedc"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getFcwSensitivity()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_fcw_sen"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getDsmTiredDistractionManualSw()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "about_sap_tired_remind_manual"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getDomesticIslaMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_isla"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getWogState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_wog"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getTrafficLightState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_traffic_light"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getHintMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_hint_mode"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getOverseasElkState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_overseas_elk"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getFcwState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_fcw"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getImageRetentionState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_image_retention"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getDsmTiredDistractionSw()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "about_sap_tired_remind"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getLdwState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_ldw"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNgpCustomSpeedMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_ngp_custom_speed_mode"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNgpCustomSpeedKph()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_ngp_custom_speed_kph"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getDsmTiredDistractionSensitivity()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "about_sap_tired_remind_sensitivity"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getLssSensitivity()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_lss_sen"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNgpState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_ngp"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNgpNewAflState()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "xpilot_ngp_new_afl"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNgpVoiceChangeLane()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_ngp_voice_change_lane"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getKeyParkState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_key_park"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNgpAflState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_ngp_afl"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getCrossBarrierState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_cross_barrier"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNgpCustomPreferenMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_ngp_custom_prefern"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNgpRemindMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_ngp_remind_mode"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNgpActivateModeState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_ngp_activate_mode"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getLccState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_lcc"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNgpOvertakeMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_ngp_overtake_mode"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getAutoParkState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_auto_park"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getAlcState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_alc"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getMemParkState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_mem_park"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getBsdState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_bsd"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getDowState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_dow"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNgpFreeNgpState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_ngp_fngp"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getSsaSw()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_ssa"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getRctaState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_rcta"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getEnhancedParkState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_enhanced_park"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->get_instance()Lcom/xiaopeng/unity/xpilot/XPilotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;->getNgpTipsMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xpilot_ngp_tips_mode"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->isLowSpdSoundEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "sound_low_speed_outside"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getCwcFRSwEnable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "charge_cwc_psn"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getPsnWelcomeMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "welcome_psn"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getRearSeatWelcomeMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "welcome_rear"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getPollingLightWelcomeMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "welcome_polling_light"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getTrunkSensorEnable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "windowdoor_sensor_trunk"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getTrunkFullOpenPos()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "windowdoor_trunk_open_angle"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getEspSw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "drive_settings_esp"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getAutoDoorHandleEnable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "windowdoor_dhc_sw"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getCarpetLightWelcomeMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "welcome_carpet"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getSnowMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "drive_settings_snowmode"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getLeftChildLock()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "windowdoor_left_child_lock"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getAwdSetting()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "drive_settings_awd"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getSecRowMiddleSeatBeltWarning()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "about_sec_mid_seat_belt_warning"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getAirSuspensionWelcome()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "welcome_as"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getTrdRowLeftSeatBeltWarning()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "about_trd_left_seat_belt_warning"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getAvasLowSpdEffect()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "sound_low_speed_mode"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getDsmStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "about_sap_vehicle_camera"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getEpbSystemStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "drive_settings_epb"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getCwcRLSwEnable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "charge_cwc_sec_left"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getWelcomeMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "welcome_drv"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getCwcSwEnable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "charge_cwc_drv"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getHighSpdCloseWin()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "windowdoor_high_speed_win_close"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getTrdRowRightSeatBeltWarning()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "about_trd_right_seat_belt_warning"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getNearUnlock()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "windowdoor_near_unlock"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getEsbMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "xpilot_pbvw"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getWiperSensitivity()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "windowdoor_wiper_level"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getAutoEasyLoadMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "windowdoor_auto_easy_load"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getParkingAutoUnlock()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "windowdoor_parking_unlock"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getBootSoundEffectValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "welcome_boot_effect_item"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getLockResponseNew()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "windowdoor_lock_feedback"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getSecRowLeftSeatBeltWarning()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "about_sec_left_seat_belt_warning"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getAutoWindowLockSw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "windowdoor_lock_auto_win_close"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getEspBpfMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "drive_settings_bpf"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getRightChildLock()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "windowdoor_right_child_lock"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getCwcRRSwEnable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "charge_cwc_sec_right"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getLeaveAutoLock()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "windowdoor_leave_lock"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getHdc()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "drive_settings_hdc"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getSecRowRightSeatBeltWarning()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "about_sec_right_seat_belt_warning"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getMicrophoneMute()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "about_sap_inner_mic"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getAvhSw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "drive_settings_avh"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getBackBeltSw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "drive_settings_rsur"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getUnLockResponseNew()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "windowdoor_unlock_feedback"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getTrdRowMiddleSeatBeltWarning()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "about_trd_mid_seat_belt_warning"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getRws()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "drive_settings_rws"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->getEspCstSw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "drive_settings_espcst"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/XKeyControlManager;->getXKeyValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "xkey_control_xkey_function"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/LampManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/LampManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/LampManager;->getHeadLampMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "lamp_exterior_mode"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/LampManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/LampManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/LampManager;->isRearFogLampOn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "lamp_exterior_rear_fog"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->getTurnAssistantSw()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "screenage_settings_turning_assist"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->getSteeringImageFullSelection()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "screenage_settings_steering_image_full_selection"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->getNarPerspectiveSelection()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "screenage_settings_nar_perspective"

    invoke-static {v3, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->getTransCarbodySw()Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "screenage_settings_transparent_carbody"

    invoke-static {v3, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->getNraState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "screenage_settings_narrow_assist_sensitivity"

    invoke-static {v3, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->getDrivingGuardSw()Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "screenage_settings_dvr"

    invoke-static {v3, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->getNraSw()Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "screenage_settings_narrow_assist"

    invoke-static {v3, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->getTransChasisSw()Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "screenage_settings_transparent_chassis"

    invoke-static {v3, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->getTurnSignalActivateRearVideoSw()Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "screenage_settings_turn_active_rear_side_video"

    invoke-static {v3, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->getPerspectiveSelection()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "screenage_settings_dvr_recording_perspective"

    invoke-static {v3, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->getSteeringImageFullState()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->getSaberMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "lamp_exterior_saber_mode"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->isLluChargingSwEnable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "lamp_exterior_llu_charging"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->getRearLogoLightSw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "lamp_exterior_rear_logo_light"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->getDomeLightBrightness()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "lamp_exterior_dome_light_brightness"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->getLightMeHomeTime()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "lamp_exterior_light_me_home_time"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->getLampHeightLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "lamp_exterior_height_level"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->getLightMeHome()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "lamp_exterior_light_me_home_sw"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->isAutoLampHeight()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "lamp_exterior_height_level_auto"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->isLluSleepSwEnable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "lamp_exterior_llu_sleep"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->getDomeLightSw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "lamp_exterior_dome_light_sw"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->getIhbState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "lamp_exterior_ihb"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/LampSettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/LampSettingManager;->isLluWakeWaitSwEnable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "lamp_exterior_llu_wake_wait"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/MainControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->getLeftSlideDoorState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "windowdoor_left_slide_door_act"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/MainControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->getTrunkState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "windowdoor_trunk"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/MainControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->getRightSlideDoorState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "windowdoor_right_slide_door_act"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/WindowControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->isWindowLockActive()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "windowdoor_window_lock"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/WindowControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/WindowControlManager;->getSunShadePos()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "windowdoor_sunshade_progress"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->getStartRemindStateSw()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "adrive_start_remind_state"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->getDrivingRiskWarningSw()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "adrive_driving_risk_warning"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->getIntelligentOverspeedRemindStateSw()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "adrive_intelligent_overspeed_remind_state"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->getBodyFaultIndicationSw()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "adrive_body_fault_indication"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/ADriveSystemManager;->getGreenLightRemindStateSw()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "adrive_greenlight_state"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->getDriveMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "drive_settings_drive_mode"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/AsHeightControlManager;->getAsHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "drive_settings_as_height"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->getImsMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "steam_rear_mirror_control_sw"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->getLMReverseSw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "rear_mirror_control_reverse_auto_tilt_left_sw"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->getImsAutoVisionSw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "steam_rear_mirror_control_reverse_auto_vision_sw"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->getRMReverseSw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "rear_mirror_control_reverse_auto_tilt_right_sw"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->getImsBrightLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "steam_rear_mirror_control_brightness"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->getImsHighSpeedAutoVisionSw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "steam_rear_mirror_control_hight_speed_auto_vision_sw"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->isCentralLocked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "windowdoor_central_lock"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getTrdRowRtSeatFol()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "seat_fold_right"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getSecRowRtSeatZeroGrav()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "seat_zero_right"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getTrdRowLtSeatFol()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "seat_fold_left"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getTrdRowSeatStow()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "seat_stow"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;->getSecRowLtSeatZeroGrav()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "seat_zero_left"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->getEnergyRecycleGrade()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "drive_settings_energy_recycle"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->getSteeringEps()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "drive_settings_eps"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->getLluLockingEffect()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "lamp_exterior_llu_locking_effect"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->getLluSayHiEffect()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "lamp_exterior_llu_sayhi_effect"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->isSayHiEnable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "lamp_exterior_sayhi"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/ArsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->getArsVehLockAutoFoldSwitchStatus()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "windowdoor_asr_auto_lock"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/ArsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->getArsWorkMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "windowdoor_asr_work_mode"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/AtlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->getAtlColorMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "lamp_ambient_color_mode"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/AtlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->isAtlSwEnable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "lamp_ambient_sw"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/AtlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->getAtlEffect()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "lamp_ambient_effect"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/AtlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->getAtlBrightness()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "lamp_ambient_brightness"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/AtlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->getDoubleColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "lamp_ambient_double_color"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/AtlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->getAtlFrontWindshieldSw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "lamp_ambient_front_windshield_sw"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/AtlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->getSingleColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "lamp_ambient_single_color"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SituationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->getAirSuspensionRepairMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "vehicle_as_repair_mode"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SituationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->getWiperRepairMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "vehicle_front_wiper_repair_mode"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SituationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->getRearWiperRepairMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "vehicle_rear_wiper_repair_mode"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->get_instance()Lcom/xiaopeng/unity/carcontrol/SituationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/SituationManager;->isAutoSelfCheck()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "vehicle_auto_check_sw"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/track/BIHelper;->collect(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method
