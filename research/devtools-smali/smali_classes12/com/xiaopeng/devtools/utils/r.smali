.class public Lcom/xiaopeng/devtools/utils/r;
.super Ljava/lang/Object;
.source "SystemPropertyUtil.java"


# direct methods
.method public static F(Z)V
    .locals 1

    .line 42
    const-string v0, "UDISK_READONLY"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/a/a$d;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static H(Z)V
    .locals 1

    .line 185
    const-string v0, "SHOW_DIALOG"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/a/a$d;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public static U(Z)V
    .locals 1

    .line 34
    const-string v0, "DEBUG_MODE"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/a/a$d;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static V(Z)V
    .locals 1

    .line 46
    const-string v0, "BTSNOOP_ENABLE"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/a/a$d;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static W(Z)V
    .locals 1

    .line 174
    const-string v0, "GRAB_LOG"

    .line 175
    if-eqz p0, :cond_0

    const-string p0, "PROPERTY_VALUE_ON"

    invoke-static {p0}, Lcom/xiaopeng/a/a$e;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 176
    :cond_0
    const-string p0, "PROPERTY_VALUE_OFF"

    invoke-static {p0}, Lcom/xiaopeng/a/a$e;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 174
    :goto_0
    invoke-static {v0, p0}, Lcom/xiaopeng/a/a$d;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public static X(Z)V
    .locals 1

    .line 220
    const-string v0, "NAVI_LOG"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/a/a$d;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public static Y(Z)V
    .locals 1

    .line 239
    const-string v0, "FACTORY_MODE"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/a/a$d;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public static cD(I)V
    .locals 1

    .line 18
    const-string v0, "LOG_LEVEL"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/a/a$d;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static cE(I)V
    .locals 1

    .line 22
    const-string v0, "TCP_PORT"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/a/a$d;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static cF(I)V
    .locals 1

    .line 208
    const-string v0, "CFCINDEX"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/a/a$d;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public static cI(Ljava/lang/String;)V
    .locals 1

    .line 54
    const-string v0, "BTSNOOP_PATH"

    invoke-static {v0, p0}, Lcom/xiaopeng/a/a$d;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static cJ(Ljava/lang/String;)V
    .locals 1

    .line 72
    const-string v0, "LTE_APN"

    invoke-static {v0, p0}, Lcom/xiaopeng/a/a$d;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static cK(Ljava/lang/String;)V
    .locals 1

    .line 162
    const-string v0, "CONTROL_START"

    invoke-static {v0, p0}, Lcom/xiaopeng/a/a$d;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public static cL(Ljava/lang/String;)V
    .locals 1

    .line 166
    const-string v0, "CONTROL_RESTART"

    invoke-static {v0, p0}, Lcom/xiaopeng/a/a$d;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public static cM(Ljava/lang/String;)V
    .locals 1

    .line 170
    const-string v0, "CONTROL_STOP"

    invoke-static {v0, p0}, Lcom/xiaopeng/a/a$d;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public static eG()Ljava/lang/String;
    .locals 2

    .line 112
    const-string v0, "VIN"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaopeng/a/a$d;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHardwareId()Ljava/lang/String;
    .locals 2

    .line 120
    const-string v0, "HARDWARE_ID"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaopeng/a/a$d;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIccid()Ljava/lang/String;
    .locals 2

    .line 128
    const-string v0, "ICCID"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaopeng/a/a$d;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLogLevel()I
    .locals 2

    .line 14
    const-string v0, "LOG_LEVEL"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/a/a$d;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMcuVersion()Ljava/lang/String;
    .locals 1

    .line 140
    const-string v0, "MCU_VERSION"

    invoke-static {v0}, Lcom/xiaopeng/a/a$d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPartNumber()Ljava/lang/String;
    .locals 1

    .line 224
    const-string v0, "PARTNUMBER"

    invoke-static {v0}, Lcom/xiaopeng/a/a$d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hI()Ljava/lang/String;
    .locals 1

    .line 132
    const-string v0, "HARDWARE_VERSION"

    invoke-static {v0}, Lcom/xiaopeng/a/a$d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hK()Z
    .locals 1

    .line 38
    const-string v0, "UDISK_READONLY"

    invoke-static {v0}, Lcom/xiaopeng/a/a$d;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFactoryMode()Z
    .locals 1

    .line 243
    const-string v0, "FACTORY_MODE"

    invoke-static {v0}, Lcom/xiaopeng/a/a$d;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static lA()Z
    .locals 2

    .line 260
    const-string v0, "TCPDUMP_ICM"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaopeng/a/a$d;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "running"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const/4 v0, 0x1

    return v0

    .line 263
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static lB()I
    .locals 2

    .line 267
    const-string v0, "PROP_CODE_VERSION"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/a/a$d;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static lh()Z
    .locals 2

    .line 9
    const-string v0, "PROPERTY_VALUE_CHN_REGION"

    invoke-static {v0}, Lcom/xiaopeng/a/a$e;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOCALE_REGION"

    .line 10
    invoke-static {v1}, Lcom/xiaopeng/a/a$d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 9
    return v0
.end method

.method public static li()I
    .locals 2

    .line 26
    const-string v0, "TCP_PORT"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/a/a$d;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static lj()Z
    .locals 1

    .line 50
    const-string v0, "BTSNOOP_ENABLE"

    invoke-static {v0}, Lcom/xiaopeng/a/a$d;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static lk()Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, "LTE_APN"

    invoke-static {v0}, Lcom/xiaopeng/a/a$d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ll()Z
    .locals 1

    .line 104
    const-string v0, "NCM_CLUSTER"

    invoke-static {v0}, Lcom/xiaopeng/a/a$d;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static lm()Ljava/lang/String;
    .locals 2

    .line 116
    const-string v0, "UDISK_PATH"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaopeng/a/a$d;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ln()I
    .locals 2

    .line 124
    const-string v0, "VID"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/a/a$d;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static lo()Ljava/lang/String;
    .locals 1

    .line 136
    const-string v0, "SOFTWARE_VERSION"

    invoke-static {v0}, Lcom/xiaopeng/a/a$d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static lp()Ljava/lang/String;
    .locals 1

    .line 144
    const-string v0, "TBOX_VERSION"

    invoke-static {v0}, Lcom/xiaopeng/a/a$d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static lq()Ljava/lang/String;
    .locals 1

    .line 148
    const-string v0, "TMCU_VERSION"

    invoke-static {v0}, Lcom/xiaopeng/a/a$d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static lr()Z
    .locals 2

    .line 180
    const-string v0, "PROPERTY_VALUE_ON"

    invoke-static {v0}, Lcom/xiaopeng/a/a$e;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GRAB_LOG"

    .line 181
    invoke-static {v1}, Lcom/xiaopeng/a/a$d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 180
    return v0
.end method

.method public static ls()Z
    .locals 1

    .line 189
    const-string v0, "SHOW_DIALOG"

    invoke-static {v0}, Lcom/xiaopeng/a/a$d;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static lt()Z
    .locals 2

    .line 193
    const-string v0, "PROPERTY_VALUE_USER"

    invoke-static {v0}, Lcom/xiaopeng/a/a$e;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BUILD_TYPE"

    .line 194
    invoke-static {v1}, Lcom/xiaopeng/a/a$d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 193
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static lu()Z
    .locals 2

    .line 198
    const-string v0, "PROPERTY_VALUE_RAMDUMP_ON"

    invoke-static {v0}, Lcom/xiaopeng/a/a$e;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RAMDUMP"

    .line 199
    invoke-static {v1}, Lcom/xiaopeng/a/a$d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 198
    return v0
.end method

.method public static lv()I
    .locals 2

    .line 212
    const-string v0, "CFCINDEX"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/a/a$d;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static lw()Z
    .locals 1

    .line 216
    const-string v0, "NAVI_LOG"

    invoke-static {v0}, Lcom/xiaopeng/a/a$d;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static lx()Z
    .locals 5

    .line 228
    const-string v0, "UNKNOWN"

    .line 230
    const-string v1, "SOFTWARE_VERSION"

    invoke-static {v1}, Lcom/xiaopeng/a/a$d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    .line 231
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 232
    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-le v2, v4, :cond_0

    .line 233
    array-length v0, v1

    sub-int/2addr v0, v3

    aget-object v0, v1, v0

    .line 235
    :cond_0
    const-string v1, "DEV"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "FC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    nop

    :cond_2
    :goto_0
    return v3
.end method

.method public static ly()Z
    .locals 1

    .line 247
    const-string v0, "XPU"

    invoke-static {v0}, Lcom/xiaopeng/a/a$d;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static lz()Z
    .locals 2

    .line 251
    const-string v0, "TCPDUMP_TBOX"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaopeng/a/a$d;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "running"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TCPDUMP_WLAN"

    const-string v1, ""

    .line 252
    invoke-static {v0, v1}, Lcom/xiaopeng/a/a$d;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "running"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TCPDUMP_ETH"

    const-string v1, ""

    .line 253
    invoke-static {v0, v1}, Lcom/xiaopeng/a/a$d;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "running"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 254
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
