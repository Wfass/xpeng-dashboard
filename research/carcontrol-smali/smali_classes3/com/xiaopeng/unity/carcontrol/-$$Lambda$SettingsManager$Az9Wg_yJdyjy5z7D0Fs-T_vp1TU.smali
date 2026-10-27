.class public final synthetic Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$Az9Wg_yJdyjy5z7D0Fs-T_vp1TU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/SettingsManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$Az9Wg_yJdyjy5z7D0Fs-T_vp1TU;->f$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SettingsManager$Az9Wg_yJdyjy5z7D0Fs-T_vp1TU;->f$0:Lcom/xiaopeng/unity/carcontrol/SettingsManager;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SettingsManager;->lambda$observeData$39$SettingsManager(Ljava/lang/Boolean;)V

    return-void
.end method
