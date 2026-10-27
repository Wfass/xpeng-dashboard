.class public Lcom/xiaopeng/factory/utils/AtUtil$FmTest;
.super Ljava/lang/Object;
.source "AtUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/factory/utils/AtUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FmTest"
.end annotation


# static fields
.field public static final CMD_NAME:Ljava/lang/String; = "FMTEST"

.field public static final PATH_READ_FM_RSSI:Ljava/lang/String; = "/sys/devices/virtual/nxpradio/nxpradio/tunerlevel"

.field public static final RADIO_AM:I = 0x3

.field public static final RADIO_FM:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
