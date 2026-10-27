.class Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider$MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "ContextNetStatusProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyPhoneStateListener"
.end annotation


# instance fields
.field public signalStrengthValue:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider$1;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider$MyPhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 84
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    const/16 v1, 0x63

    if-eq v0, v1, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, -0x71

    iput p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider$MyPhoneStateListener;->signalStrengthValue:I

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider$MyPhoneStateListener;->signalStrengthValue:I

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider$MyPhoneStateListener;->signalStrengthValue:I

    .line 93
    :goto_0
    return-void
.end method
