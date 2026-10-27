.class public final Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager$wifi;
.super Ljava/lang/Object;
.source "XpAvpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "wifi"
.end annotation


# static fields
.field public static final DEFAULT_SSID:Ljava/lang/String; = "XP-AUTO"

.field public static final EAP_METHOD:I = 0x1

.field public static final PHASE2_METHOD:I = 0x0

.field public static final XP_AUTO_CA:Ljava/lang/String; = "xp-auto-ca"

.field public static final XP_AUTO_CLIENT:Ljava/lang/String; = "xp-auto-client"

.field public static final XP_AVP_PASSWARD:Ljava/lang/String; = "@qwert@fdsa!!"

.field public static final XP_AVP_SSID:Ljava/lang/String; = "XP-AVPRCV"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
